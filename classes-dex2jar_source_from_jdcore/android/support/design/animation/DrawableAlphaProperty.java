package android.support.design.animation;

import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Property;
import java.util.WeakHashMap;

public class DrawableAlphaProperty
  extends Property<Drawable, Integer>
{
  public static final Property<Drawable, Integer> DRAWABLE_ALPHA_COMPAT = new DrawableAlphaProperty();
  private final WeakHashMap<Drawable, Integer> a = new WeakHashMap();
  
  private DrawableAlphaProperty()
  {
    super(Integer.class, "drawableAlphaCompat");
  }
  
  public Integer get(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return Integer.valueOf(paramDrawable.getAlpha());
    }
    if (a.containsKey(paramDrawable)) {
      return (Integer)a.get(paramDrawable);
    }
    return Integer.valueOf(255);
  }
  
  public void set(Drawable paramDrawable, Integer paramInteger)
  {
    if (Build.VERSION.SDK_INT < 19) {
      a.put(paramDrawable, paramInteger);
    }
    paramDrawable.setAlpha(paramInteger.intValue());
  }
}
