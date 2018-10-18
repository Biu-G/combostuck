package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class ResourceCursorAdapter
  extends CursorAdapter
{
  private int a;
  private int b;
  private LayoutInflater c;
  
  @Deprecated
  public ResourceCursorAdapter(Context paramContext, int paramInt, Cursor paramCursor)
  {
    super(paramContext, paramCursor);
    b = paramInt;
    a = paramInt;
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public ResourceCursorAdapter(Context paramContext, int paramInt1, Cursor paramCursor, int paramInt2)
  {
    super(paramContext, paramCursor, paramInt2);
    b = paramInt1;
    a = paramInt1;
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  @Deprecated
  public ResourceCursorAdapter(Context paramContext, int paramInt, Cursor paramCursor, boolean paramBoolean)
  {
    super(paramContext, paramCursor, paramBoolean);
    b = paramInt;
    a = paramInt;
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return c.inflate(b, paramViewGroup, false);
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return c.inflate(a, paramViewGroup, false);
  }
  
  public void setDropDownViewResource(int paramInt)
  {
    b = paramInt;
  }
  
  public void setViewResource(int paramInt)
  {
    a = paramInt;
  }
}
