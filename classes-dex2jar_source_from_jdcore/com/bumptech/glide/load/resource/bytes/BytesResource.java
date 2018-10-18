package com.bumptech.glide.load.resource.bytes;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

public class BytesResource
  implements Resource<byte[]>
{
  private final byte[] a;
  
  public BytesResource(byte[] paramArrayOfByte)
  {
    a = ((byte[])Preconditions.checkNotNull(paramArrayOfByte));
  }
  
  @NonNull
  public byte[] get()
  {
    return a;
  }
  
  @NonNull
  public Class<byte[]> getResourceClass()
  {
    return [B.class;
  }
  
  public int getSize()
  {
    return a.length;
  }
  
  public void recycle() {}
}
