package com.bumptech.glide.load.resource.bitmap;

public abstract class DownsampleStrategy
{
  public static final DownsampleStrategy AT_LEAST;
  public static final DownsampleStrategy AT_MOST;
  public static final DownsampleStrategy CENTER_INSIDE;
  public static final DownsampleStrategy CENTER_OUTSIDE;
  public static final DownsampleStrategy DEFAULT = CENTER_OUTSIDE;
  public static final DownsampleStrategy FIT_CENTER = new e();
  public static final DownsampleStrategy NONE;
  
  static
  {
    CENTER_OUTSIDE = new d();
    AT_LEAST = new a();
    AT_MOST = new b();
    CENTER_INSIDE = new c();
    NONE = new f();
  }
  
  public DownsampleStrategy() {}
  
  public abstract SampleSizeRounding getSampleSizeRounding(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract float getScaleFactor(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public static enum SampleSizeRounding
  {
    private SampleSizeRounding() {}
  }
  
  private static class a
    extends DownsampleStrategy
  {
    a() {}
    
    public DownsampleStrategy.SampleSizeRounding getSampleSizeRounding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float getScaleFactor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramInt1 = Math.min(paramInt2 / paramInt4, paramInt1 / paramInt3);
      if (paramInt1 == 0) {
        return 1.0F;
      }
      return 1.0F / Integer.highestOneBit(paramInt1);
    }
  }
  
  private static class b
    extends DownsampleStrategy
  {
    b() {}
    
    public DownsampleStrategy.SampleSizeRounding getSampleSizeRounding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.MEMORY;
    }
    
    public float getScaleFactor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramInt3 = (int)Math.ceil(Math.max(paramInt2 / paramInt4, paramInt1 / paramInt3));
      paramInt2 = Integer.highestOneBit(paramInt3);
      paramInt1 = 1;
      paramInt2 = Math.max(1, paramInt2);
      if (paramInt2 >= paramInt3) {
        paramInt1 = 0;
      }
      return 1.0F / (paramInt2 << paramInt1);
    }
  }
  
  private static class c
    extends DownsampleStrategy
  {
    c() {}
    
    public DownsampleStrategy.SampleSizeRounding getSampleSizeRounding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float getScaleFactor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.min(1.0F, FIT_CENTER.getScaleFactor(paramInt1, paramInt2, paramInt3, paramInt4));
    }
  }
  
  private static class d
    extends DownsampleStrategy
  {
    d() {}
    
    public DownsampleStrategy.SampleSizeRounding getSampleSizeRounding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float getScaleFactor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.max(paramInt3 / paramInt1, paramInt4 / paramInt2);
    }
  }
  
  private static class e
    extends DownsampleStrategy
  {
    e() {}
    
    public DownsampleStrategy.SampleSizeRounding getSampleSizeRounding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float getScaleFactor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return Math.min(paramInt3 / paramInt1, paramInt4 / paramInt2);
    }
  }
  
  private static class f
    extends DownsampleStrategy
  {
    f() {}
    
    public DownsampleStrategy.SampleSizeRounding getSampleSizeRounding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return DownsampleStrategy.SampleSizeRounding.QUALITY;
    }
    
    public float getScaleFactor(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return 1.0F;
    }
  }
}
