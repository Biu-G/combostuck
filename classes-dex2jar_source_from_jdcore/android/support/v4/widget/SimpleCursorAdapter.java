package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.RestrictTo;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class SimpleCursorAdapter
  extends ResourceCursorAdapter
{
  String[] a;
  private int b = -1;
  private CursorToStringConverter c;
  private ViewBinder d;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected int[] mFrom;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected int[] mTo;
  
  @Deprecated
  public SimpleCursorAdapter(Context paramContext, int paramInt, Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super(paramContext, paramInt, paramCursor);
    mTo = paramArrayOfInt;
    a = paramArrayOfString;
    a(paramCursor, paramArrayOfString);
  }
  
  public SimpleCursorAdapter(Context paramContext, int paramInt1, Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfInt, int paramInt2)
  {
    super(paramContext, paramInt1, paramCursor, paramInt2);
    mTo = paramArrayOfInt;
    a = paramArrayOfString;
    a(paramCursor, paramArrayOfString);
  }
  
  private void a(Cursor paramCursor, String[] paramArrayOfString)
  {
    if (paramCursor != null)
    {
      int j = paramArrayOfString.length;
      if ((mFrom == null) || (mFrom.length != j)) {
        mFrom = new int[j];
      }
      int i = 0;
      while (i < j)
      {
        mFrom[i] = paramCursor.getColumnIndexOrThrow(paramArrayOfString[i]);
        i += 1;
      }
    }
    mFrom = null;
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ViewBinder localViewBinder = d;
    int j = mTo.length;
    int[] arrayOfInt1 = mFrom;
    int[] arrayOfInt2 = mTo;
    int i = 0;
    while (i < j)
    {
      View localView = paramView.findViewById(arrayOfInt2[i]);
      if (localView != null)
      {
        boolean bool;
        if (localViewBinder != null) {
          bool = localViewBinder.setViewValue(localView, paramCursor, arrayOfInt1[i]);
        } else {
          bool = false;
        }
        if (!bool)
        {
          String str = paramCursor.getString(arrayOfInt1[i]);
          paramContext = str;
          if (str == null) {
            paramContext = "";
          }
          if ((localView instanceof TextView))
          {
            setViewText((TextView)localView, paramContext);
          }
          else if ((localView instanceof ImageView))
          {
            setViewImage((ImageView)localView, paramContext);
          }
          else
          {
            paramView = new StringBuilder();
            paramView.append(localView.getClass().getName());
            paramView.append(" is not a ");
            paramView.append(" view that can be bounds by this SimpleCursorAdapter");
            throw new IllegalStateException(paramView.toString());
          }
        }
      }
      i += 1;
    }
  }
  
  public void changeCursorAndColumns(Cursor paramCursor, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    a = paramArrayOfString;
    mTo = paramArrayOfInt;
    a(paramCursor, a);
    super.changeCursor(paramCursor);
  }
  
  public CharSequence convertToString(Cursor paramCursor)
  {
    if (c != null) {
      return c.convertToString(paramCursor);
    }
    if (b > -1) {
      return paramCursor.getString(b);
    }
    return super.convertToString(paramCursor);
  }
  
  public CursorToStringConverter getCursorToStringConverter()
  {
    return c;
  }
  
  public int getStringConversionColumn()
  {
    return b;
  }
  
  public ViewBinder getViewBinder()
  {
    return d;
  }
  
  public void setCursorToStringConverter(CursorToStringConverter paramCursorToStringConverter)
  {
    c = paramCursorToStringConverter;
  }
  
  public void setStringConversionColumn(int paramInt)
  {
    b = paramInt;
  }
  
  public void setViewBinder(ViewBinder paramViewBinder)
  {
    d = paramViewBinder;
  }
  
  public void setViewImage(ImageView paramImageView, String paramString)
  {
    try
    {
      paramImageView.setImageResource(Integer.parseInt(paramString));
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;) {}
    }
    paramImageView.setImageURI(Uri.parse(paramString));
  }
  
  public void setViewText(TextView paramTextView, String paramString)
  {
    paramTextView.setText(paramString);
  }
  
  public Cursor swapCursor(Cursor paramCursor)
  {
    a(paramCursor, a);
    return super.swapCursor(paramCursor);
  }
  
  public static abstract interface CursorToStringConverter
  {
    public abstract CharSequence convertToString(Cursor paramCursor);
  }
  
  public static abstract interface ViewBinder
  {
    public abstract boolean setViewValue(View paramView, Cursor paramCursor, int paramInt);
  }
}
