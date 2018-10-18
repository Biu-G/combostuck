package com.bumptech.glide.load.engine.bitmap_recycle;

public final class IntegerArrayAdapter
  implements a<int[]>
{
  public IntegerArrayAdapter() {}
  
  public int getArrayLength(int[] paramArrayOfInt)
  {
    return paramArrayOfInt.length;
  }
  
  public int getElementSizeInBytes()
  {
    return 4;
  }
  
  public String getTag()
  {
    return "IntegerArrayPool";
  }
  
  public int[] newArray(int paramInt)
  {
    return new int[paramInt];
  }
}
