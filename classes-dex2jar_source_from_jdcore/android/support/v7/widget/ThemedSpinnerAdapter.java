package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.widget.SpinnerAdapter;

public abstract interface ThemedSpinnerAdapter
  extends SpinnerAdapter
{
  @Nullable
  public abstract Resources.Theme getDropDownViewTheme();
  
  public abstract void setDropDownViewTheme(@Nullable Resources.Theme paramTheme);
  
  public static final class Helper
  {
    private final Context a;
    private final LayoutInflater b;
    private LayoutInflater c;
    
    public Helper(@NonNull Context paramContext)
    {
      a = paramContext;
      b = LayoutInflater.from(paramContext);
    }
    
    @NonNull
    public LayoutInflater getDropDownViewInflater()
    {
      if (c != null) {
        return c;
      }
      return b;
    }
    
    @Nullable
    public Resources.Theme getDropDownViewTheme()
    {
      if (c == null) {
        return null;
      }
      return c.getContext().getTheme();
    }
    
    public void setDropDownViewTheme(@Nullable Resources.Theme paramTheme)
    {
      if (paramTheme == null)
      {
        c = null;
        return;
      }
      if (paramTheme == a.getTheme())
      {
        c = b;
        return;
      }
      c = LayoutInflater.from(new ContextThemeWrapper(a, paramTheme));
    }
  }
}
