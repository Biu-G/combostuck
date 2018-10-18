package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.util.Util;

class p
{
  private boolean a;
  private final Handler b = new Handler(Looper.getMainLooper(), new a());
  
  p() {}
  
  void a(Resource<?> paramResource)
  {
    
    if (a)
    {
      b.obtainMessage(1, paramResource).sendToTarget();
      return;
    }
    a = true;
    paramResource.recycle();
    a = false;
  }
  
  private static final class a
    implements Handler.Callback
  {
    a() {}
    
    public boolean handleMessage(Message paramMessage)
    {
      if (what == 1)
      {
        ((Resource)obj).recycle();
        return true;
      }
      return false;
    }
  }
}
