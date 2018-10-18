package android.support.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public class TransitionSet
  extends Transition
{
  public static final int ORDERING_SEQUENTIAL = 1;
  public static final int ORDERING_TOGETHER = 0;
  int a;
  boolean i = false;
  private ArrayList<Transition> j = new ArrayList();
  private boolean k = true;
  private int l = 0;
  
  public TransitionSet() {}
  
  public TransitionSet(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.i);
    setOrdering(TypedArrayUtils.getNamedInt(paramContext, (XmlResourceParser)paramAttributeSet, "transitionOrdering", 0, 0));
    paramContext.recycle();
  }
  
  private void a()
  {
    a localA = new a(this);
    Iterator localIterator = j.iterator();
    while (localIterator.hasNext()) {
      ((Transition)localIterator.next()).addListener(localA);
    }
    a = j.size();
  }
  
  String a(String paramString)
  {
    Object localObject = super.a(paramString);
    int m = 0;
    while (m < j.size())
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append((String)localObject);
      localStringBuilder1.append("\n");
      localObject = (Transition)j.get(m);
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(paramString);
      localStringBuilder2.append("  ");
      localStringBuilder1.append(((Transition)localObject).a(localStringBuilder2.toString()));
      localObject = localStringBuilder1.toString();
      m += 1;
    }
    return localObject;
  }
  
  void a(TransitionValues paramTransitionValues)
  {
    super.a(paramTransitionValues);
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).a(paramTransitionValues);
      m += 1;
    }
  }
  
  @NonNull
  public TransitionSet addListener(@NonNull Transition.TransitionListener paramTransitionListener)
  {
    return (TransitionSet)super.addListener(paramTransitionListener);
  }
  
  @NonNull
  public TransitionSet addTarget(@IdRes int paramInt)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).addTarget(paramInt);
      m += 1;
    }
    return (TransitionSet)super.addTarget(paramInt);
  }
  
  @NonNull
  public TransitionSet addTarget(@NonNull View paramView)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).addTarget(paramView);
      m += 1;
    }
    return (TransitionSet)super.addTarget(paramView);
  }
  
  @NonNull
  public TransitionSet addTarget(@NonNull Class paramClass)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).addTarget(paramClass);
      m += 1;
    }
    return (TransitionSet)super.addTarget(paramClass);
  }
  
  @NonNull
  public TransitionSet addTarget(@NonNull String paramString)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).addTarget(paramString);
      m += 1;
    }
    return (TransitionSet)super.addTarget(paramString);
  }
  
  @NonNull
  public TransitionSet addTransition(@NonNull Transition paramTransition)
  {
    j.add(paramTransition);
    e = this;
    if (b >= 0L) {
      paramTransition.setDuration(b);
    }
    if ((l & 0x1) != 0) {
      paramTransition.setInterpolator(getInterpolator());
    }
    if ((l & 0x2) != 0) {
      paramTransition.setPropagation(getPropagation());
    }
    if ((l & 0x4) != 0) {
      paramTransition.setPathMotion(getPathMotion());
    }
    if ((l & 0x8) != 0) {
      paramTransition.setEpicenterCallback(getEpicenterCallback());
    }
    return this;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void b(ViewGroup paramViewGroup)
  {
    super.b(paramViewGroup);
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).b(paramViewGroup);
      m += 1;
    }
  }
  
  void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).b(paramBoolean);
      m += 1;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void cancel()
  {
    super.cancel();
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).cancel();
      m += 1;
    }
  }
  
  public void captureEndValues(@NonNull TransitionValues paramTransitionValues)
  {
    if (b(view))
    {
      Iterator localIterator = j.iterator();
      while (localIterator.hasNext())
      {
        Transition localTransition = (Transition)localIterator.next();
        if (localTransition.b(view))
        {
          localTransition.captureEndValues(paramTransitionValues);
          a.add(localTransition);
        }
      }
    }
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    if (b(view))
    {
      Iterator localIterator = j.iterator();
      while (localIterator.hasNext())
      {
        Transition localTransition = (Transition)localIterator.next();
        if (localTransition.b(view))
        {
          localTransition.captureStartValues(paramTransitionValues);
          a.add(localTransition);
        }
      }
    }
  }
  
  public Transition clone()
  {
    TransitionSet localTransitionSet = (TransitionSet)super.clone();
    j = new ArrayList();
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      localTransitionSet.addTransition(((Transition)j.get(m)).clone());
      m += 1;
    }
    return localTransitionSet;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void createAnimators(ViewGroup paramViewGroup, o paramO1, o paramO2, ArrayList<TransitionValues> paramArrayList1, ArrayList<TransitionValues> paramArrayList2)
  {
    long l1 = getStartDelay();
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      Transition localTransition = (Transition)j.get(m);
      if ((l1 > 0L) && ((k) || (m == 0)))
      {
        long l2 = localTransition.getStartDelay();
        if (l2 > 0L) {
          localTransition.setStartDelay(l2 + l1);
        } else {
          localTransition.setStartDelay(l1);
        }
      }
      localTransition.createAnimators(paramViewGroup, paramO1, paramO2, paramArrayList1, paramArrayList2);
      m += 1;
    }
  }
  
  TransitionSet d(ViewGroup paramViewGroup)
  {
    super.c(paramViewGroup);
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).c(paramViewGroup);
      m += 1;
    }
    return this;
  }
  
  @NonNull
  public Transition excludeTarget(int paramInt, boolean paramBoolean)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).excludeTarget(paramInt, paramBoolean);
      m += 1;
    }
    return super.excludeTarget(paramInt, paramBoolean);
  }
  
  @NonNull
  public Transition excludeTarget(@NonNull View paramView, boolean paramBoolean)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).excludeTarget(paramView, paramBoolean);
      m += 1;
    }
    return super.excludeTarget(paramView, paramBoolean);
  }
  
  @NonNull
  public Transition excludeTarget(@NonNull Class paramClass, boolean paramBoolean)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).excludeTarget(paramClass, paramBoolean);
      m += 1;
    }
    return super.excludeTarget(paramClass, paramBoolean);
  }
  
  @NonNull
  public Transition excludeTarget(@NonNull String paramString, boolean paramBoolean)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).excludeTarget(paramString, paramBoolean);
      m += 1;
    }
    return super.excludeTarget(paramString, paramBoolean);
  }
  
  public int getOrdering()
  {
    return k ^ true;
  }
  
  public Transition getTransitionAt(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < j.size())) {
      return (Transition)j.get(paramInt);
    }
    return null;
  }
  
  public int getTransitionCount()
  {
    return j.size();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void pause(View paramView)
  {
    super.pause(paramView);
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).pause(paramView);
      m += 1;
    }
  }
  
  @NonNull
  public TransitionSet removeListener(@NonNull Transition.TransitionListener paramTransitionListener)
  {
    return (TransitionSet)super.removeListener(paramTransitionListener);
  }
  
  @NonNull
  public TransitionSet removeTarget(@IdRes int paramInt)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).removeTarget(paramInt);
      m += 1;
    }
    return (TransitionSet)super.removeTarget(paramInt);
  }
  
  @NonNull
  public TransitionSet removeTarget(@NonNull View paramView)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).removeTarget(paramView);
      m += 1;
    }
    return (TransitionSet)super.removeTarget(paramView);
  }
  
  @NonNull
  public TransitionSet removeTarget(@NonNull Class paramClass)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).removeTarget(paramClass);
      m += 1;
    }
    return (TransitionSet)super.removeTarget(paramClass);
  }
  
  @NonNull
  public TransitionSet removeTarget(@NonNull String paramString)
  {
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).removeTarget(paramString);
      m += 1;
    }
    return (TransitionSet)super.removeTarget(paramString);
  }
  
  @NonNull
  public TransitionSet removeTransition(@NonNull Transition paramTransition)
  {
    j.remove(paramTransition);
    e = null;
    return this;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void resume(View paramView)
  {
    super.resume(paramView);
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).resume(paramView);
      m += 1;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void runAnimators()
  {
    if (j.isEmpty())
    {
      start();
      end();
      return;
    }
    a();
    Object localObject;
    if (!k)
    {
      int m = 1;
      while (m < j.size())
      {
        ((Transition)j.get(m - 1)).addListener(new TransitionListenerAdapter()
        {
          public void onTransitionEnd(@NonNull Transition paramAnonymousTransition)
          {
            a.runAnimators();
            paramAnonymousTransition.removeListener(this);
          }
        });
        m += 1;
      }
      localObject = (Transition)j.get(0);
      if (localObject != null) {
        ((Transition)localObject).runAnimators();
      }
    }
    else
    {
      localObject = j.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((Transition)((Iterator)localObject).next()).runAnimators();
      }
    }
  }
  
  @NonNull
  public TransitionSet setDuration(long paramLong)
  {
    super.setDuration(paramLong);
    if (b >= 0L)
    {
      int n = j.size();
      int m = 0;
      while (m < n)
      {
        ((Transition)j.get(m)).setDuration(paramLong);
        m += 1;
      }
    }
    return this;
  }
  
  public void setEpicenterCallback(Transition.EpicenterCallback paramEpicenterCallback)
  {
    super.setEpicenterCallback(paramEpicenterCallback);
    l |= 0x8;
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).setEpicenterCallback(paramEpicenterCallback);
      m += 1;
    }
  }
  
  @NonNull
  public TransitionSet setInterpolator(@Nullable TimeInterpolator paramTimeInterpolator)
  {
    l |= 0x1;
    if (j != null)
    {
      int n = j.size();
      int m = 0;
      while (m < n)
      {
        ((Transition)j.get(m)).setInterpolator(paramTimeInterpolator);
        m += 1;
      }
    }
    return (TransitionSet)super.setInterpolator(paramTimeInterpolator);
  }
  
  @NonNull
  public TransitionSet setOrdering(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid parameter for TransitionSet ordering: ");
      localStringBuilder.append(paramInt);
      throw new AndroidRuntimeException(localStringBuilder.toString());
    case 1: 
      k = false;
      return this;
    }
    k = true;
    return this;
  }
  
  public void setPathMotion(PathMotion paramPathMotion)
  {
    super.setPathMotion(paramPathMotion);
    l |= 0x4;
    int m = 0;
    while (m < j.size())
    {
      ((Transition)j.get(m)).setPathMotion(paramPathMotion);
      m += 1;
    }
  }
  
  public void setPropagation(TransitionPropagation paramTransitionPropagation)
  {
    super.setPropagation(paramTransitionPropagation);
    l |= 0x2;
    int n = j.size();
    int m = 0;
    while (m < n)
    {
      ((Transition)j.get(m)).setPropagation(paramTransitionPropagation);
      m += 1;
    }
  }
  
  @NonNull
  public TransitionSet setStartDelay(long paramLong)
  {
    return (TransitionSet)super.setStartDelay(paramLong);
  }
  
  static class a
    extends TransitionListenerAdapter
  {
    TransitionSet a;
    
    a(TransitionSet paramTransitionSet)
    {
      a = paramTransitionSet;
    }
    
    public void onTransitionEnd(@NonNull Transition paramTransition)
    {
      TransitionSet localTransitionSet = a;
      a -= 1;
      if (a.a == 0)
      {
        a.i = false;
        a.end();
      }
      paramTransition.removeListener(this);
    }
    
    public void onTransitionStart(@NonNull Transition paramTransition)
    {
      if (!a.i)
      {
        a.start();
        a.i = true;
      }
    }
  }
}
