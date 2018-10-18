package android.support.v4.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class ContentLoadingProgressBar
  extends ProgressBar
{
  long a = -1L;
  boolean b = false;
  boolean c = false;
  boolean d = false;
  private final Runnable e = new Runnable()
  {
    public void run()
    {
      b = false;
      a = -1L;
      setVisibility(8);
    }
  };
  private final Runnable f = new Runnable()
  {
    public void run()
    {
      c = false;
      if (!d)
      {
        a = System.currentTimeMillis();
        setVisibility(0);
      }
    }
  };
  
  public ContentLoadingProgressBar(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ContentLoadingProgressBar(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
  }
  
  private void a()
  {
    removeCallbacks(e);
    removeCallbacks(f);
  }
  
  public void hide()
  {
    try
    {
      d = true;
      removeCallbacks(f);
      c = false;
      long l = System.currentTimeMillis() - a;
      if ((l < 500L) && (a != -1L))
      {
        if (!b)
        {
          postDelayed(e, 500L - l);
          b = true;
        }
      }
      else {
        setVisibility(8);
      }
      return;
    }
    finally {}
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a();
  }
  
  public void show()
  {
    try
    {
      a = -1L;
      d = false;
      removeCallbacks(e);
      b = false;
      if (!c)
      {
        postDelayed(f, 500L);
        c = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}
