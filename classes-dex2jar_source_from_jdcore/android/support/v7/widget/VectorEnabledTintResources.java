package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.lang.ref.WeakReference;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class VectorEnabledTintResources
  extends Resources
{
  public static final int MAX_SDK_WHERE_REQUIRED = 20;
  private static boolean a = false;
  private final WeakReference<Context> b;
  
  public VectorEnabledTintResources(@NonNull Context paramContext, @NonNull Resources paramResources)
  {
    super(paramResources.getAssets(), paramResources.getDisplayMetrics(), paramResources.getConfiguration());
    b = new WeakReference(paramContext);
  }
  
  public static boolean isCompatVectorFromResourcesEnabled()
  {
    return a;
  }
  
  public static void setCompatVectorFromResourcesEnabled(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public static boolean shouldBeUsed()
  {
    return (isCompatVectorFromResourcesEnabled()) && (Build.VERSION.SDK_INT <= 20);
  }
  
  final Drawable a(int paramInt)
  {
    return super.getDrawable(paramInt);
  }
  
  public Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Context localContext = (Context)b.get();
    if (localContext != null) {
      return AppCompatDrawableManager.get().a(localContext, this, paramInt);
    }
    return super.getDrawable(paramInt);
  }
}
