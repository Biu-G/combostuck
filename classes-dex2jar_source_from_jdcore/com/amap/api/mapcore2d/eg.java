package com.amap.api.mapcore2d;

import android.database.sqlite.SQLiteDatabase;

public class eg
  implements dl
{
  private static eg a;
  
  private eg() {}
  
  public static eg c()
  {
    try
    {
      if (a == null) {
        a = new eg();
      }
      eg localEg = a;
      return localEg;
    }
    finally {}
  }
  
  public String a()
  {
    return "dafile.db";
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sname  varchar(20), fname varchar(100),md varchar(20),version varchar(20),dversion varchar(20),status varchar(20),reservedfield varchar(20));");
      return;
    }
    catch (Throwable paramSQLiteDatabase)
    {
      ek.a(paramSQLiteDatabase, "DynamicFileDBCreator", "onCreate");
    }
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  public int b()
  {
    return 1;
  }
}
