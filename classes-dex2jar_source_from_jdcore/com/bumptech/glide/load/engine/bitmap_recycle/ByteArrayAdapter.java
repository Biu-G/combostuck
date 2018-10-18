package com.bumptech.glide.load.engine.bitmap_recycle;

public final class ByteArrayAdapter
  implements a<byte[]>
{
  public ByteArrayAdapter() {}
  
  public int getArrayLength(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte.length;
  }
  
  public int getElementSizeInBytes()
  {
    return 1;
  }
  
  public String getTag()
  {
    return "ByteArrayPool";
  }
  
  public byte[] newArray(int paramInt)
  {
    return new byte[paramInt];
  }
}
