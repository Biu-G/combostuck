package com.bumptech.glide.gifdecoder;

import android.support.annotation.ColorInt;
import java.util.ArrayList;
import java.util.List;

public class GifHeader
{
  public static final int NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST = -1;
  public static final int NETSCAPE_LOOP_COUNT_FOREVER = 0;
  @ColorInt
  int[] a = null;
  int b = 0;
  int c = 0;
  a d;
  final List<a> e = new ArrayList();
  int f;
  int g;
  boolean h;
  int i;
  int j;
  int k;
  @ColorInt
  int l;
  int m = -1;
  
  public GifHeader() {}
  
  public int getHeight()
  {
    return g;
  }
  
  public int getNumFrames()
  {
    return c;
  }
  
  public int getStatus()
  {
    return b;
  }
  
  public int getWidth()
  {
    return f;
  }
}
