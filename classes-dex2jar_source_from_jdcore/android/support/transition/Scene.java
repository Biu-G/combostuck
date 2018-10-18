package android.support.transition;

import android.content.Context;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class Scene
{
  private Context a;
  private int b = -1;
  private ViewGroup c;
  private View d;
  private Runnable e;
  private Runnable f;
  
  public Scene(@NonNull ViewGroup paramViewGroup)
  {
    c = paramViewGroup;
  }
  
  private Scene(ViewGroup paramViewGroup, int paramInt, Context paramContext)
  {
    a = paramContext;
    c = paramViewGroup;
    b = paramInt;
  }
  
  public Scene(@NonNull ViewGroup paramViewGroup, @NonNull View paramView)
  {
    c = paramViewGroup;
    d = paramView;
  }
  
  static Scene a(View paramView)
  {
    return (Scene)paramView.getTag(R.id.transition_current_scene);
  }
  
  static void a(View paramView, Scene paramScene)
  {
    paramView.setTag(R.id.transition_current_scene, paramScene);
  }
  
  @NonNull
  public static Scene getSceneForLayout(@NonNull ViewGroup paramViewGroup, @LayoutRes int paramInt, @NonNull Context paramContext)
  {
    Object localObject2 = (SparseArray)paramViewGroup.getTag(R.id.transition_scene_layoutid_cache);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new SparseArray();
      paramViewGroup.setTag(R.id.transition_scene_layoutid_cache, localObject1);
    }
    localObject2 = (Scene)((SparseArray)localObject1).get(paramInt);
    if (localObject2 != null) {
      return localObject2;
    }
    paramViewGroup = new Scene(paramViewGroup, paramInt, paramContext);
    ((SparseArray)localObject1).put(paramInt, paramViewGroup);
    return paramViewGroup;
  }
  
  boolean a()
  {
    return b > 0;
  }
  
  public void enter()
  {
    if ((b > 0) || (d != null))
    {
      getSceneRoot().removeAllViews();
      if (b > 0) {
        LayoutInflater.from(a).inflate(b, c);
      } else {
        c.addView(d);
      }
    }
    if (e != null) {
      e.run();
    }
    a(c, this);
  }
  
  public void exit()
  {
    if ((a(c) == this) && (f != null)) {
      f.run();
    }
  }
  
  @NonNull
  public ViewGroup getSceneRoot()
  {
    return c;
  }
  
  public void setEnterAction(@Nullable Runnable paramRunnable)
  {
    e = paramRunnable;
  }
  
  public void setExitAction(@Nullable Runnable paramRunnable)
  {
    f = paramRunnable;
  }
}
