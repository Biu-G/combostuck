package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class TransitionManager
{
  static ArrayList<ViewGroup> a = new ArrayList();
  private static Transition b = new AutoTransition();
  private static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>>> e = new ThreadLocal();
  private ArrayMap<Scene, Transition> c = new ArrayMap();
  private ArrayMap<Scene, ArrayMap<Scene, Transition>> d = new ArrayMap();
  
  public TransitionManager() {}
  
  private Transition a(Scene paramScene)
  {
    Object localObject = paramScene.getSceneRoot();
    if (localObject != null)
    {
      localObject = Scene.a((View)localObject);
      if (localObject != null)
      {
        ArrayMap localArrayMap = (ArrayMap)d.get(paramScene);
        if (localArrayMap != null)
        {
          localObject = (Transition)localArrayMap.get(localObject);
          if (localObject != null) {
            return localObject;
          }
        }
      }
    }
    paramScene = (Transition)c.get(paramScene);
    if (paramScene != null) {
      return paramScene;
    }
    return b;
  }
  
  static ArrayMap<ViewGroup, ArrayList<Transition>> a()
  {
    Object localObject = (WeakReference)e.get();
    if (localObject != null)
    {
      localObject = (ArrayMap)((WeakReference)localObject).get();
      if (localObject != null) {
        return localObject;
      }
    }
    localObject = new ArrayMap();
    WeakReference localWeakReference = new WeakReference(localObject);
    e.set(localWeakReference);
    return localObject;
  }
  
  private static void a(Scene paramScene, Transition paramTransition)
  {
    ViewGroup localViewGroup = paramScene.getSceneRoot();
    if (!a.contains(localViewGroup))
    {
      if (paramTransition == null)
      {
        paramScene.enter();
        return;
      }
      a.add(localViewGroup);
      paramTransition = paramTransition.clone();
      paramTransition.c(localViewGroup);
      Scene localScene = Scene.a(localViewGroup);
      if ((localScene != null) && (localScene.a())) {
        paramTransition.b(true);
      }
      b(localViewGroup, paramTransition);
      paramScene.enter();
      a(localViewGroup, paramTransition);
    }
  }
  
  private static void a(ViewGroup paramViewGroup, Transition paramTransition)
  {
    if ((paramTransition != null) && (paramViewGroup != null))
    {
      paramTransition = new a(paramTransition, paramViewGroup);
      paramViewGroup.addOnAttachStateChangeListener(paramTransition);
      paramViewGroup.getViewTreeObserver().addOnPreDrawListener(paramTransition);
    }
  }
  
  private static void b(ViewGroup paramViewGroup, Transition paramTransition)
  {
    Object localObject = (ArrayList)a().get(paramViewGroup);
    if ((localObject != null) && (((ArrayList)localObject).size() > 0))
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Transition)((Iterator)localObject).next()).pause(paramViewGroup);
      }
    }
    if (paramTransition != null) {
      paramTransition.a(paramViewGroup, true);
    }
    paramViewGroup = Scene.a(paramViewGroup);
    if (paramViewGroup != null) {
      paramViewGroup.exit();
    }
  }
  
  public static void beginDelayedTransition(@NonNull ViewGroup paramViewGroup)
  {
    beginDelayedTransition(paramViewGroup, null);
  }
  
  public static void beginDelayedTransition(@NonNull ViewGroup paramViewGroup, @Nullable Transition paramTransition)
  {
    if ((!a.contains(paramViewGroup)) && (ViewCompat.isLaidOut(paramViewGroup)))
    {
      a.add(paramViewGroup);
      Transition localTransition = paramTransition;
      if (paramTransition == null) {
        localTransition = b;
      }
      paramTransition = localTransition.clone();
      b(paramViewGroup, paramTransition);
      Scene.a(paramViewGroup, null);
      a(paramViewGroup, paramTransition);
    }
  }
  
  public static void endTransitions(ViewGroup paramViewGroup)
  {
    a.remove(paramViewGroup);
    ArrayList localArrayList = (ArrayList)a().get(paramViewGroup);
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      localArrayList = new ArrayList(localArrayList);
      int i = localArrayList.size() - 1;
      while (i >= 0)
      {
        ((Transition)localArrayList.get(i)).b(paramViewGroup);
        i -= 1;
      }
    }
  }
  
  public static void go(@NonNull Scene paramScene)
  {
    a(paramScene, b);
  }
  
  public static void go(@NonNull Scene paramScene, @Nullable Transition paramTransition)
  {
    a(paramScene, paramTransition);
  }
  
  public void setTransition(@NonNull Scene paramScene1, @NonNull Scene paramScene2, @Nullable Transition paramTransition)
  {
    ArrayMap localArrayMap2 = (ArrayMap)d.get(paramScene2);
    ArrayMap localArrayMap1 = localArrayMap2;
    if (localArrayMap2 == null)
    {
      localArrayMap1 = new ArrayMap();
      d.put(paramScene2, localArrayMap1);
    }
    localArrayMap1.put(paramScene1, paramTransition);
  }
  
  public void setTransition(@NonNull Scene paramScene, @Nullable Transition paramTransition)
  {
    c.put(paramScene, paramTransition);
  }
  
  public void transitionTo(@NonNull Scene paramScene)
  {
    a(paramScene, a(paramScene));
  }
  
  private static class a
    implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener
  {
    Transition a;
    ViewGroup b;
    
    a(Transition paramTransition, ViewGroup paramViewGroup)
    {
      a = paramTransition;
      b = paramViewGroup;
    }
    
    private void a()
    {
      b.getViewTreeObserver().removeOnPreDrawListener(this);
      b.removeOnAttachStateChangeListener(this);
    }
    
    public boolean onPreDraw()
    {
      a();
      if (!TransitionManager.a.remove(b)) {
        return true;
      }
      final ArrayMap localArrayMap = TransitionManager.a();
      ArrayList localArrayList2 = (ArrayList)localArrayMap.get(b);
      ArrayList localArrayList1 = null;
      Object localObject;
      if (localArrayList2 == null)
      {
        localObject = new ArrayList();
        localArrayMap.put(b, localObject);
      }
      else
      {
        localObject = localArrayList2;
        if (localArrayList2.size() > 0)
        {
          localArrayList1 = new ArrayList(localArrayList2);
          localObject = localArrayList2;
        }
      }
      ((ArrayList)localObject).add(a);
      a.addListener(new TransitionListenerAdapter()
      {
        public void onTransitionEnd(@NonNull Transition paramAnonymousTransition)
        {
          ((ArrayList)localArrayMap.get(b)).remove(paramAnonymousTransition);
        }
      });
      a.a(b, false);
      if (localArrayList1 != null)
      {
        localObject = localArrayList1.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((Transition)((Iterator)localObject).next()).resume(b);
        }
      }
      a.a(b);
      return true;
    }
    
    public void onViewAttachedToWindow(View paramView) {}
    
    public void onViewDetachedFromWindow(View paramView)
    {
      a();
      TransitionManager.a.remove(b);
      paramView = (ArrayList)TransitionManager.a().get(b);
      if ((paramView != null) && (paramView.size() > 0))
      {
        paramView = paramView.iterator();
        while (paramView.hasNext()) {
          ((Transition)paramView.next()).resume(b);
        }
      }
      a.a(true);
    }
  }
}
