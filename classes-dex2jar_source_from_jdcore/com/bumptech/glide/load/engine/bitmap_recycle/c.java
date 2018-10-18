package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.util.Util;
import java.util.Queue;

abstract class c<T extends f>
{
  private final Queue<T> a = Util.createQueue(20);
  
  c() {}
  
  public void a(T paramT)
  {
    if (a.size() < 20) {
      a.offer(paramT);
    }
  }
  
  abstract T b();
  
  T c()
  {
    f localF2 = (f)a.poll();
    f localF1 = localF2;
    if (localF2 == null) {
      localF1 = b();
    }
    return localF1;
  }
}
