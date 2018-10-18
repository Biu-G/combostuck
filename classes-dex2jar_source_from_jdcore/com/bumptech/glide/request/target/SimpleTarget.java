package com.bumptech.glide.request.target;

import android.support.annotation.NonNull;
import com.bumptech.glide.util.Util;

public abstract class SimpleTarget<Z>
  extends BaseTarget<Z>
{
  private final int a;
  private final int b;
  
  public SimpleTarget()
  {
    this(Integer.MIN_VALUE, Integer.MIN_VALUE);
  }
  
  public SimpleTarget(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public final void getSize(@NonNull SizeReadyCallback paramSizeReadyCallback)
  {
    if (Util.isValidDimensions(a, b))
    {
      paramSizeReadyCallback.onSizeReady(a, b);
      return;
    }
    paramSizeReadyCallback = new StringBuilder();
    paramSizeReadyCallback.append("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ");
    paramSizeReadyCallback.append(a);
    paramSizeReadyCallback.append(" and height: ");
    paramSizeReadyCallback.append(b);
    paramSizeReadyCallback.append(", either provide dimensions in the constructor or call override()");
    throw new IllegalArgumentException(paramSizeReadyCallback.toString());
  }
  
  public void removeCallback(@NonNull SizeReadyCallback paramSizeReadyCallback) {}
}
