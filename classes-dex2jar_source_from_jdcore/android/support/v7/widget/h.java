package android.support.v7.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.support.v4.graphics.drawable.WrappedDrawable;
import android.util.AttributeSet;
import android.widget.ProgressBar;

class h
{
  private static final int[] a = { 16843067, 16843068 };
  private final ProgressBar b;
  private Bitmap c;
  
  h(ProgressBar paramProgressBar)
  {
    b = paramProgressBar;
  }
  
  private Drawable a(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if ((paramDrawable instanceof AnimationDrawable))
    {
      paramDrawable = (AnimationDrawable)paramDrawable;
      int j = paramDrawable.getNumberOfFrames();
      localObject = new AnimationDrawable();
      ((AnimationDrawable)localObject).setOneShot(paramDrawable.isOneShot());
      int i = 0;
      while (i < j)
      {
        Drawable localDrawable = a(paramDrawable.getFrame(i), true);
        localDrawable.setLevel(10000);
        ((AnimationDrawable)localObject).addFrame(localDrawable, paramDrawable.getDuration(i));
        i += 1;
      }
      ((AnimationDrawable)localObject).setLevel(10000);
    }
    return localObject;
  }
  
  private Drawable a(Drawable paramDrawable, boolean paramBoolean)
  {
    Object localObject1;
    Object localObject2;
    if ((paramDrawable instanceof WrappedDrawable))
    {
      localObject1 = (WrappedDrawable)paramDrawable;
      localObject2 = ((WrappedDrawable)localObject1).getWrappedDrawable();
      if (localObject2 != null)
      {
        ((WrappedDrawable)localObject1).setWrappedDrawable(a((Drawable)localObject2, paramBoolean));
        return paramDrawable;
      }
    }
    else
    {
      if ((paramDrawable instanceof LayerDrawable))
      {
        paramDrawable = (LayerDrawable)paramDrawable;
        int k = paramDrawable.getNumberOfLayers();
        localObject1 = new Drawable[k];
        int j = 0;
        int i = 0;
        while (i < k)
        {
          int m = paramDrawable.getId(i);
          localObject2 = paramDrawable.getDrawable(i);
          if ((m != 16908301) && (m != 16908303)) {
            paramBoolean = false;
          } else {
            paramBoolean = true;
          }
          localObject1[i] = a((Drawable)localObject2, paramBoolean);
          i += 1;
        }
        localObject1 = new LayerDrawable((Drawable[])localObject1);
        i = j;
        while (i < k)
        {
          ((LayerDrawable)localObject1).setId(i, paramDrawable.getId(i));
          i += 1;
        }
        return localObject1;
      }
      if ((paramDrawable instanceof BitmapDrawable))
      {
        paramDrawable = (BitmapDrawable)paramDrawable;
        localObject2 = paramDrawable.getBitmap();
        if (c == null) {
          c = ((Bitmap)localObject2);
        }
        localObject1 = new ShapeDrawable(b());
        localObject2 = new BitmapShader((Bitmap)localObject2, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
        ((ShapeDrawable)localObject1).getPaint().setShader((Shader)localObject2);
        ((ShapeDrawable)localObject1).getPaint().setColorFilter(paramDrawable.getPaint().getColorFilter());
        if (paramBoolean) {
          return new ClipDrawable((Drawable)localObject1, 3, 1);
        }
        return localObject1;
      }
    }
    return paramDrawable;
  }
  
  private Shape b()
  {
    return new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null);
  }
  
  Bitmap a()
  {
    return c;
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(b.getContext(), paramAttributeSet, a, paramInt, 0);
    Drawable localDrawable = paramAttributeSet.getDrawableIfKnown(0);
    if (localDrawable != null) {
      b.setIndeterminateDrawable(a(localDrawable));
    }
    localDrawable = paramAttributeSet.getDrawableIfKnown(1);
    if (localDrawable != null) {
      b.setProgressDrawable(a(localDrawable, false));
    }
    paramAttributeSet.recycle();
  }
}
