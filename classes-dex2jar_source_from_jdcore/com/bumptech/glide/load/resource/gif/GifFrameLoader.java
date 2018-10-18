package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

class GifFrameLoader
{
  final RequestManager a;
  private final GifDecoder b;
  private final Handler c;
  private final List<FrameCallback> d = new ArrayList();
  private final BitmapPool e;
  private boolean f;
  private boolean g;
  private boolean h;
  private RequestBuilder<Bitmap> i;
  private a j;
  private boolean k;
  private a l;
  private Bitmap m;
  private Transformation<Bitmap> n;
  private a o;
  @Nullable
  private c p;
  
  GifFrameLoader(Glide paramGlide, GifDecoder paramGifDecoder, int paramInt1, int paramInt2, Transformation<Bitmap> paramTransformation, Bitmap paramBitmap)
  {
    this(paramGlide.getBitmapPool(), Glide.with(paramGlide.getContext()), paramGifDecoder, null, a(Glide.with(paramGlide.getContext()), paramInt1, paramInt2), paramTransformation, paramBitmap);
  }
  
  GifFrameLoader(BitmapPool paramBitmapPool, RequestManager paramRequestManager, GifDecoder paramGifDecoder, Handler paramHandler, RequestBuilder<Bitmap> paramRequestBuilder, Transformation<Bitmap> paramTransformation, Bitmap paramBitmap)
  {
    a = paramRequestManager;
    paramRequestManager = paramHandler;
    if (paramHandler == null) {
      paramRequestManager = new Handler(Looper.getMainLooper(), new b());
    }
    e = paramBitmapPool;
    c = paramRequestManager;
    i = paramRequestBuilder;
    b = paramGifDecoder;
    a(paramTransformation, paramBitmap);
  }
  
  private static RequestBuilder<Bitmap> a(RequestManager paramRequestManager, int paramInt1, int paramInt2)
  {
    return paramRequestManager.asBitmap().apply(RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE).useAnimationPool(true).skipMemoryCache(true).override(paramInt1, paramInt2));
  }
  
  private int m()
  {
    return Util.getBitmapByteSize(k().getWidth(), k().getHeight(), k().getConfig());
  }
  
  private void n()
  {
    if (f) {
      return;
    }
    f = true;
    k = false;
    p();
  }
  
  private void o()
  {
    f = false;
  }
  
  private void p()
  {
    if (f)
    {
      if (g) {
        return;
      }
      if (h)
      {
        boolean bool;
        if (o == null) {
          bool = true;
        } else {
          bool = false;
        }
        Preconditions.checkArgument(bool, "Pending target must be null when starting from the first frame");
        b.resetFrameIndex();
        h = false;
      }
      if (o != null)
      {
        a localA = o;
        o = null;
        a(localA);
        return;
      }
      g = true;
      int i1 = b.getNextDelay();
      long l1 = SystemClock.uptimeMillis();
      long l2 = i1;
      b.advance();
      l = new a(c, b.getCurrentFrameIndex(), l1 + l2);
      i.apply(RequestOptions.signatureOf(r())).load(b).into(l);
      return;
    }
  }
  
  private void q()
  {
    if (m != null)
    {
      e.put(m);
      m = null;
    }
  }
  
  private static Key r()
  {
    return new ObjectKey(Double.valueOf(Math.random()));
  }
  
  Transformation<Bitmap> a()
  {
    return n;
  }
  
  void a(Transformation<Bitmap> paramTransformation, Bitmap paramBitmap)
  {
    n = ((Transformation)Preconditions.checkNotNull(paramTransformation));
    m = ((Bitmap)Preconditions.checkNotNull(paramBitmap));
    i = i.apply(new RequestOptions().transform(paramTransformation));
  }
  
  void a(FrameCallback paramFrameCallback)
  {
    if (!k)
    {
      if (!d.contains(paramFrameCallback))
      {
        boolean bool = d.isEmpty();
        d.add(paramFrameCallback);
        if (bool) {
          n();
        }
        return;
      }
      throw new IllegalStateException("Cannot subscribe twice in a row");
    }
    throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
  }
  
  @VisibleForTesting
  void a(a paramA)
  {
    if (p != null) {
      p.a();
    }
    g = false;
    if (k)
    {
      c.obtainMessage(2, paramA).sendToTarget();
      return;
    }
    if (!f)
    {
      o = paramA;
      return;
    }
    if (paramA.a() != null)
    {
      q();
      a localA = j;
      j = paramA;
      int i1 = d.size() - 1;
      while (i1 >= 0)
      {
        ((FrameCallback)d.get(i1)).onFrameReady();
        i1 -= 1;
      }
      if (localA != null) {
        c.obtainMessage(2, localA).sendToTarget();
      }
    }
    p();
  }
  
  Bitmap b()
  {
    return m;
  }
  
  void b(FrameCallback paramFrameCallback)
  {
    d.remove(paramFrameCallback);
    if (d.isEmpty()) {
      o();
    }
  }
  
  int c()
  {
    return k().getWidth();
  }
  
  int d()
  {
    return k().getHeight();
  }
  
  int e()
  {
    return b.getByteSize() + m();
  }
  
  int f()
  {
    if (j != null) {
      return j.a;
    }
    return -1;
  }
  
  ByteBuffer g()
  {
    return b.getData().asReadOnlyBuffer();
  }
  
  int h()
  {
    return b.getFrameCount();
  }
  
  int i()
  {
    return b.getTotalIterationCount();
  }
  
  void j()
  {
    d.clear();
    q();
    o();
    if (j != null)
    {
      a.clear(j);
      j = null;
    }
    if (l != null)
    {
      a.clear(l);
      l = null;
    }
    if (o != null)
    {
      a.clear(o);
      o = null;
    }
    b.clear();
    k = true;
  }
  
  Bitmap k()
  {
    if (j != null) {
      return j.a();
    }
    return m;
  }
  
  void l()
  {
    Preconditions.checkArgument(f ^ true, "Can't restart a running animation");
    h = true;
    if (o != null)
    {
      a.clear(o);
      o = null;
    }
  }
  
  public static abstract interface FrameCallback
  {
    public abstract void onFrameReady();
  }
  
  @VisibleForTesting
  static class a
    extends SimpleTarget<Bitmap>
  {
    final int a;
    private final Handler b;
    private final long c;
    private Bitmap d;
    
    a(Handler paramHandler, int paramInt, long paramLong)
    {
      b = paramHandler;
      a = paramInt;
      c = paramLong;
    }
    
    Bitmap a()
    {
      return d;
    }
    
    public void a(@NonNull Bitmap paramBitmap, @Nullable Transition<? super Bitmap> paramTransition)
    {
      d = paramBitmap;
      paramBitmap = b.obtainMessage(1, this);
      b.sendMessageAtTime(paramBitmap, c);
    }
  }
  
  private class b
    implements Handler.Callback
  {
    b() {}
    
    public boolean handleMessage(Message paramMessage)
    {
      if (what == 1)
      {
        paramMessage = (GifFrameLoader.a)obj;
        a(paramMessage);
        return true;
      }
      if (what == 2)
      {
        paramMessage = (GifFrameLoader.a)obj;
        a.clear(paramMessage);
      }
      return false;
    }
  }
  
  @VisibleForTesting
  static abstract interface c
  {
    public abstract void a();
  }
}
