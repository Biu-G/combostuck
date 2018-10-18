package cn.edu.pku.pkurunner.View;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.edu.pku.pkurunner.GlideRequest;
import cn.edu.pku.pkurunner.R.styleable;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Date;

public class SimpleProgressView
  extends LinearLayout
  implements ProgressableView
{
  private View a;
  private LinearLayout b;
  private ImageView c;
  private ImageView d;
  private ProgressBar e;
  private ProgressBar f;
  private TextView g;
  private TextView h;
  private TextView i;
  private boolean j;
  private boolean k;
  
  public SimpleProgressView(@NonNull Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public SimpleProgressView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private static int a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return 0;
    }
    return 8;
  }
  
  private void a()
  {
    c.setVisibility(a(k));
    h.setVisibility(a(k));
    Object localObject = f;
    boolean bool1 = k;
    boolean bool2 = false;
    if ((bool1) && (!j)) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    ((ProgressBar)localObject).setVisibility(a(bool1));
    localObject = g;
    if ((k) && (!j)) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    ((TextView)localObject).setVisibility(a(bool1));
    localObject = e;
    bool1 = bool2;
    if (k)
    {
      bool1 = bool2;
      if (!j) {
        bool1 = true;
      }
    }
    ((ProgressBar)localObject).setVisibility(a(bool1));
    d.setVisibility(a(k ^ true));
    i.setVisibility(a(k ^ true));
  }
  
  private void a(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    a = inflate(paramContext, 2131492977, this);
    b = ((LinearLayout)a.findViewById(2131296587));
    e = ((ProgressBar)a.findViewById(2131296586));
    f = ((ProgressBar)a.findViewById(2131296585));
    g = ((TextView)a.findViewById(2131296589));
    h = ((TextView)a.findViewById(2131296588));
    i = ((TextView)a.findViewById(2131296592));
    c = ((ImageView)a.findViewById(2131296584));
    d = ((ImageView)a.findViewById(2131296583));
    e.setMax(100);
    f.setMax(100);
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SimpleProgressView);
      int n = paramContext.getIndexCount();
      int m = 0;
      while (m < n)
      {
        switch (paramContext.getIndex(m))
        {
        default: 
          break;
        case 8: 
          setSleepingIndicatorText(paramContext.getString(m));
          break;
        case 7: 
          setMainText(paramContext.getString(m));
          break;
        case 6: 
          setMainProgress(paramContext.getFloat(m, 0.0F));
          break;
        case 5: 
          setDayMode(paramContext.getBoolean(m, true));
          break;
        case 4: 
          setSecondaryText(paramContext.getString(m));
          break;
        case 3: 
          setSecondaryProgress(paramContext.getFloat(m, 0.0F));
          break;
        case 2: 
          setCollapseMode(paramContext.getBoolean(m, false));
          break;
        case 1: 
          setMainBonusProgress(paramContext.getFloat(m, 0.0F));
          break;
        case 0: 
          setActiveMode(paramContext.getBoolean(m, false));
        }
        m += 1;
      }
      paramContext.recycle();
    }
  }
  
  public void reset()
  {
    g.setText(2131689789);
    h.setText(null);
    e.setProgress(0);
    e.setSecondaryProgress(0);
    f.setProgress(0);
    invalidate();
  }
  
  public void setActiveMode(boolean paramBoolean)
  {
    k = paramBoolean;
    a();
    invalidate();
  }
  
  public void setCollapseMode(boolean paramBoolean)
  {
    j = paramBoolean;
    a();
    invalidate();
  }
  
  public void setDayMode(boolean paramBoolean)
  {
    Object localObject = b;
    Resources localResources = getResources();
    int m;
    if (paramBoolean) {
      m = 2131100004;
    } else {
      m = 2131099839;
    }
    ((LinearLayout)localObject).setBackgroundColor(localResources.getColor(m));
    localObject = c;
    if (paramBoolean) {
      m = 2131230845;
    } else {
      m = 2131230844;
    }
    ((ImageView)localObject).setImageResource(m);
    localObject = d;
    localResources = getResources();
    if (paramBoolean) {
      m = 2131099840;
    } else {
      m = 2131099832;
    }
    ((ImageView)localObject).setColorFilter(localResources.getColor(m));
    invalidate();
  }
  
  public void setMainBonusProgress(float paramFloat)
  {
    e.setSecondaryProgress((int)(paramFloat * 100.0F));
    invalidate();
  }
  
  public void setMainProgress(float paramFloat)
  {
    e.setProgress((int)(paramFloat * 100.0F));
    invalidate();
  }
  
  public void setMainText(String paramString)
  {
    g.setText(paramString);
    invalidate();
  }
  
  public void setReferenceTime(Date paramDate)
  {
    int m = paramDate.getHours();
    boolean bool;
    if ((6 <= m) && (m <= 18)) {
      bool = true;
    } else {
      bool = false;
    }
    setDayMode(bool);
  }
  
  public void setSecondaryProgress(float paramFloat)
  {
    f.setProgress((int)(paramFloat * 100.0F));
    invalidate();
  }
  
  public void setSecondaryText(String paramString)
  {
    h.setText(paramString);
    invalidate();
  }
  
  public void setSleepingIndicatorText(String paramString)
  {
    i.setText(paramString);
    invalidate();
  }
  
  public <T> ViewTarget<ImageView, T> setWeatherDrawable(GlideRequest<T> paramGlideRequest)
  {
    return paramGlideRequest.into(c);
  }
}
