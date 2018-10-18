package com.bumptech.glide;

public enum MemoryCategory
{
  private final float a;
  
  private MemoryCategory(float paramFloat)
  {
    a = paramFloat;
  }
  
  public float getMultiplier()
  {
    return a;
  }
}
