package com.amap.api.mapcore2d;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class dr
  extends SQLiteOpenHelper
{
  private static boolean b = true;
  private static boolean c = false;
  private dl a;
  
  public dr(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, dl paramDl)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    a = paramDl;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    a.a(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a.a(paramSQLiteDatabase, paramInt1, paramInt2);
  }
}
