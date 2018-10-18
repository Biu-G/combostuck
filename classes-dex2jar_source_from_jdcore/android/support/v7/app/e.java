package android.support.v7.app;

class e
{
  private static e d;
  public long a;
  public long b;
  public int c;
  
  e() {}
  
  static e a()
  {
    if (d == null) {
      d = new e();
    }
    return d;
  }
  
  public void a(long paramLong, double paramDouble1, double paramDouble2)
  {
    float f1 = (float)(paramLong - 946728000000L) / 8.64E7F;
    float f2 = 0.01720197F * f1 + 6.24006F;
    double d2 = f2;
    double d1 = Math.sin(d2) * 0.03341960161924362D + d2 + Math.sin(2.0F * f2) * 3.4906598739326E-4D + Math.sin(f2 * 3.0F) * 5.236000106378924E-6D + 1.796593063D + 3.141592653589793D;
    paramDouble2 = -paramDouble2 / 360.0D;
    paramDouble2 = (float)Math.round(f1 - 9.0E-4F - paramDouble2) + 9.0E-4F + paramDouble2 + Math.sin(d2) * 0.0053D + Math.sin(2.0D * d1) * -0.0069D;
    d1 = Math.asin(Math.sin(d1) * Math.sin(0.4092797040939331D));
    paramDouble1 = 0.01745329238474369D * paramDouble1;
    paramDouble1 = (Math.sin(-0.10471975803375244D) - Math.sin(paramDouble1) * Math.sin(d1)) / (Math.cos(paramDouble1) * Math.cos(d1));
    if (paramDouble1 >= 1.0D)
    {
      c = 1;
      a = -1L;
      b = -1L;
      return;
    }
    if (paramDouble1 <= -1.0D)
    {
      c = 0;
      a = -1L;
      b = -1L;
      return;
    }
    paramDouble1 = (float)(Math.acos(paramDouble1) / 6.283185307179586D);
    a = (Math.round((paramDouble2 + paramDouble1) * 8.64E7D) + 946728000000L);
    b = (Math.round((paramDouble2 - paramDouble1) * 8.64E7D) + 946728000000L);
    if ((b < paramLong) && (a > paramLong))
    {
      c = 0;
      return;
    }
    c = 1;
  }
}
