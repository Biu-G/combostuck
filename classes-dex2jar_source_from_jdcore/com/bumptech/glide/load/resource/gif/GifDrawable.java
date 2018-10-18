package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.view.Gravity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.nio.ByteBuffer;

public class GifDrawable
  extends Drawable
  implements Animatable, GifFrameLoader.FrameCallback
{
  public static final int LOOP_FOREVER = -1;
  public static final int LOOP_INTRINSIC = 0;
  private final a a;
  private boolean b;
  private boolean c;
  private boolean d;
  private boolean e = true;
  private int f;
  private int g = -1;
  private boolean h;
  private Paint i;
  private Rect j;
  
  public GifDrawable(Context paramContext, GifDecoder paramGifDecoder, Transformation<Bitmap> paramTransformation, int paramInt1, int paramInt2, Bitmap paramBitmap)
  {
    this(new a(new GifFrameLoader(Glide.get(paramContext), paramGifDecoder, paramInt1, paramInt2, paramTransformation, paramBitmap)));
  }
  
  @Deprecated
  public GifDrawable(Context paramContext, GifDecoder paramGifDecoder, BitmapPool paramBitmapPool, Transformation<Bitmap> paramTransformation, int paramInt1, int paramInt2, Bitmap paramBitmap)
  {
    this(paramContext, paramGifDecoder, paramTransformation, paramInt1, paramInt2, paramBitmap);
  }
  
  GifDrawable(a paramA)
  {
    a = ((a)Preconditions.checkNotNull(paramA));
  }
  
  private void a()
  {
    f = 0;
  }
  
  private void b()
  {
    Preconditions.checkArgument(d ^ true, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
    if (a.a.h() == 1)
    {
      invalidateSelf();
      return;
    }
    if (!b)
    {
      b = true;
      a.a.a(this);
      invalidateSelf();
    }
  }
  
  private void c()
  {
    b = false;
    a.a.b(this);
  }
  
  private Rect d()
  {
    if (j == null) {
      j = new Rect();
    }
    return j;
  }
  
  private Paint e()
  {
    if (i == null) {
      i = new Paint(2);
    }
    return i;
  }
  
  private Drawable.Callback f()
  {
    for (Drawable.Callback localCallback = getCallback(); (localCallback instanceof Drawable); localCallback = ((Drawable)localCallback).getCallback()) {}
    return localCallback;
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    if (d) {
      return;
    }
    if (h)
    {
      Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
      h = false;
    }
    paramCanvas.drawBitmap(a.a.k(), null, d(), e());
  }
  
  public ByteBuffer getBuffer()
  {
    return a.a.g();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return a;
  }
  
  public Bitmap getFirstFrame()
  {
    return a.a.b();
  }
  
  public int getFrameCount()
  {
    return a.a.h();
  }
  
  public int getFrameIndex()
  {
    return a.a.f();
  }
  
  public Transformation<Bitmap> getFrameTransformation()
  {
    return a.a.a();
  }
  
  public int getIntrinsicHeight()
  {
    return a.a.d();
  }
  
  public int getIntrinsicWidth()
  {
    return a.a.c();
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public int getSize()
  {
    return a.a.e();
  }
  
  public boolean isRunning()
  {
    return b;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    h = true;
  }
  
  public void onFrameReady()
  {
    if (f() == null)
    {
      stop();
      invalidateSelf();
      return;
    }
    invalidateSelf();
    if (getFrameIndex() == getFrameCount() - 1) {
      f += 1;
    }
    if ((g != -1) && (f >= g)) {
      stop();
    }
  }
  
  public void recycle()
  {
    d = true;
    a.a.j();
  }
  
  public void setAlpha(int paramInt)
  {
    e().setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    e().setColorFilter(paramColorFilter);
  }
  
  public void setFrameTransformation(Transformation<Bitmap> paramTransformation, Bitmap paramBitmap)
  {
    a.a.a(paramTransformation, paramBitmap);
  }
  
  public void setLoopCount(int paramInt)
  {
    if ((paramInt <= 0) && (paramInt != -1) && (paramInt != 0)) {
      throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
    }
    if (paramInt == 0)
    {
      int k = a.a.i();
      paramInt = k;
      if (k == 0) {
        paramInt = -1;
      }
      g = paramInt;
      return;
    }
    g = paramInt;
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    Preconditions.checkArgument(d ^ true, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
    e = paramBoolean1;
    if (!paramBoolean1) {
      c();
    } else if (c) {
      b();
    }
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    c = true;
    a();
    if (e) {
      b();
    }
  }
  
  public void startFromFirstFrame()
  {
    Preconditions.checkArgument(b ^ true, "You cannot restart a currently running animation.");
    a.a.l();
    start();
  }
  
  public void stop()
  {
    c = false;
    c();
  }
  
  static final class a
    extends Drawable.ConstantState
  {
    @VisibleForTesting
    final GifFrameLoader a;
    
    a(GifFrameLoader paramGifFrameLoader)
    {
      a = paramGifFrameLoader;
    }
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    @NonNull
    public Drawable newDrawable()
    {
      return new GifDrawable(this);
    }
    
    @NonNull
    public Drawable newDrawable(Resources paramResources)
    {
      return newDrawable();
    }
  }
}
