package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import java.lang.ref.WeakReference;

class ae
  extends w
{
  private final WeakReference<Context> a;
  
  public ae(@NonNull Context paramContext, @NonNull Resources paramResources)
  {
    super(paramResources);
    a = new WeakReference(paramContext);
  }
  
  public Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    Context localContext = (Context)a.get();
    if ((localDrawable != null) && (localContext != null))
    {
      AppCompatDrawableManager.get();
      AppCompatDrawableManager.a(localContext, paramInt, localDrawable);
    }
    return localDrawable;
  }
}
