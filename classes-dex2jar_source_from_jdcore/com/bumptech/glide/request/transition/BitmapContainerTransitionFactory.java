package com.bumptech.glide.request.transition;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bumptech.glide.load.DataSource;

public abstract class BitmapContainerTransitionFactory<R>
  implements TransitionFactory<R>
{
  private final TransitionFactory<Drawable> a;
  
  public BitmapContainerTransitionFactory(TransitionFactory<Drawable> paramTransitionFactory)
  {
    a = paramTransitionFactory;
  }
  
  public Transition<R> build(DataSource paramDataSource, boolean paramBoolean)
  {
    return new a(a.build(paramDataSource, paramBoolean));
  }
  
  protected abstract Bitmap getBitmap(R paramR);
  
  private final class a
    implements Transition<R>
  {
    private final Transition<Drawable> b;
    
    a()
    {
      Object localObject;
      b = localObject;
    }
    
    public boolean transition(R paramR, Transition.ViewAdapter paramViewAdapter)
    {
      paramR = new BitmapDrawable(paramViewAdapter.getView().getResources(), getBitmap(paramR));
      return b.transition(paramR, paramViewAdapter);
    }
  }
}
