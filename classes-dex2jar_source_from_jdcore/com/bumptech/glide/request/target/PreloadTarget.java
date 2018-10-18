package com.bumptech.glide.request.target;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.transition.Transition;

public final class PreloadTarget<Z>
  extends SimpleTarget<Z>
{
  private static final Handler a = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      if (what == 1)
      {
        ((PreloadTarget)obj).a();
        return true;
      }
      return false;
    }
  });
  private final RequestManager b;
  
  private PreloadTarget(RequestManager paramRequestManager, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    b = paramRequestManager;
  }
  
  public static <Z> PreloadTarget<Z> obtain(RequestManager paramRequestManager, int paramInt1, int paramInt2)
  {
    return new PreloadTarget(paramRequestManager, paramInt1, paramInt2);
  }
  
  void a()
  {
    b.clear(this);
  }
  
  public void onResourceReady(@NonNull Z paramZ, @Nullable Transition<? super Z> paramTransition)
  {
    a.obtainMessage(1, this).sendToTarget();
  }
}
