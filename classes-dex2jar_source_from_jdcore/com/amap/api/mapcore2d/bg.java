package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class bg
{
  private static bg a;
  private static SharedPreferences b;
  
  private bg() {}
  
  public static bg a()
  {
    if (a == null) {
      a = new bg();
    }
    return a;
  }
  
  public static String a(String paramString)
  {
    return b.getString(paramString, null);
  }
  
  public static String a(String paramString1, String paramString2)
  {
    return b.getString(paramString1, paramString2);
  }
  
  public static void a(Context paramContext)
  {
    a = new bg();
    b = paramContext.getSharedPreferences("amap_preferences", 0);
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    return b.getBoolean(paramString, paramBoolean);
  }
  
  public static void b(String paramString, boolean paramBoolean)
  {
    if (b != null) {
      b.edit().putBoolean(paramString, paramBoolean).commit();
    }
  }
  
  public int a(String paramString, int paramInt)
  {
    return b.getInt(paramString, paramInt);
  }
  
  public void b(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = b.edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }
  
  public void b(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = b.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
}
