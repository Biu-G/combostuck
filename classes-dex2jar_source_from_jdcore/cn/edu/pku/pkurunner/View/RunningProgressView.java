package cn.edu.pku.pkurunner.View;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import cn.edu.pku.pkurunner.GlideRequest;
import cn.edu.pku.pkurunner.R.styleable;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Date;
import org.xutils.common.util.LogUtil;

public class RunningProgressView
  extends FrameLayout
  implements ProgressableView
{
  private View a;
  private FrameLayout b;
  private ImageView c;
  private ImageView d;
  private ImageView e;
  private TextView f;
  private TextView g;
  private float h = 0.0F;
  private float i = 0.0F;
  private boolean j = true;
  
  public RunningProgressView(@NonNull Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public RunningProgressView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private float a(float paramFloat)
  {
    return Math.min(1.0F, Math.max(0.0F, paramFloat));
  }
  
  private float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat2 + Math.min(Math.max(paramFloat1, 0.0F), 1.0F) * (paramFloat3 - paramFloat2);
  }
  
  private void a(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    a = inflate(paramContext, 2131492975, this);
    b = ((FrameLayout)a.findViewById(2131296587));
    c = ((ImageView)a.findViewById(2131296581));
    f = ((TextView)a.findViewById(2131296590));
    d = ((ImageView)a.findViewById(2131296582));
    g = ((TextView)a.findViewById(2131296591));
    e = ((ImageView)a.findViewById(2131296584));
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RunningProgressView);
      int m = paramContext.getIndexCount();
      int k = 0;
      while (k < m)
      {
        switch (paramContext.getIndex(k))
        {
        default: 
          break;
        case 4: 
          setSecondaryText(paramContext.getString(k));
          break;
        case 3: 
          setSecondaryProgress(paramContext.getFloat(k, i));
          break;
        case 2: 
          setMainText(paramContext.getString(k));
          break;
        case 1: 
          setMainProgress(paramContext.getFloat(k, h));
          break;
        case 0: 
          setDayMode(paramContext.getBoolean(k, j));
        }
        k += 1;
      }
      paramContext.recycle();
    }
  }
  
  private void a(View paramView, float paramFloat, int paramInt1, int paramInt2)
  {
    paramView.setX(a(paramFloat, 0.0F, paramInt2 - paramInt1 - paramView.getWidth()));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a(d, a(h), paramInt1, paramInt3);
    a(c, a(i), paramInt1, paramInt3);
    if (h < 0.5F) {
      g.setX(d.getX() + d.getWidth());
    } else {
      g.setX(d.getX() - g.getWidth());
    }
    if (i < 0.5F)
    {
      f.setX(c.getX() + c.getWidth());
      a(e, 0.75F, paramInt1, paramInt3);
      return;
    }
    f.setX(c.getX() - f.getWidth());
    a(e, 0.25F, paramInt1, paramInt3);
  }
  
  public void reset()
  {
    g.setText(2131689789);
    f.setText(null);
    invalidate();
  }
  
  public void setActiveMode(boolean paramBoolean) {}
  
  public void setCollapseMode(boolean paramBoolean) {}
  
  public void setDayMode(boolean paramBoolean)
  {
    j = paramBoolean;
    Object localObject = b;
    Resources localResources = getResources();
    int m = 2131100042;
    if (paramBoolean) {
      k = 2131100042;
    } else {
      k = 2131099839;
    }
    ((FrameLayout)localObject).setBackgroundColor(localResources.getColor(k));
    localObject = g;
    localResources = getResources();
    if (paramBoolean) {
      k = 2131099693;
    } else {
      k = 2131100042;
    }
    ((TextView)localObject).setTextColor(localResources.getColor(k));
    localObject = g;
    float f2 = 1.0F;
    if (paramBoolean) {
      f1 = 0.87F;
    } else {
      f1 = 1.0F;
    }
    ((TextView)localObject).setAlpha(f1);
    localObject = f;
    localResources = getResources();
    int k = m;
    if (paramBoolean) {
      k = 2131099693;
    }
    ((TextView)localObject).setTextColor(localResources.getColor(k));
    localObject = f;
    float f1 = f2;
    if (paramBoolean) {
      f1 = 0.87F;
    }
    ((TextView)localObject).setAlpha(f1);
    localObject = e;
    if (paramBoolean) {
      k = 2131230845;
    } else {
      k = 2131230844;
    }
    ((ImageView)localObject).setImageResource(k);
    invalidate();
  }
  
  public void setMainBonusProgress(float paramFloat) {}
  
  public void setMainProgress(float paramFloat)
  {
    h = paramFloat;
    invalidate();
  }
  
  public void setMainText(String paramString)
  {
    g.setText(paramString);
    invalidate();
  }
  
  public void setReferenceTime(Date paramDate)
  {
    int k = paramDate.getHours();
    paramDate = new StringBuilder();
    paramDate.append("Hours is ");
    paramDate.append(k);
    LogUtil.d(paramDate.toString());
    boolean bool;
    if ((6 <= k) && (k <= 18)) {
      bool = true;
    } else {
      bool = false;
    }
    setDayMode(bool);
  }
  
  public void setSecondaryProgress(float paramFloat)
  {
    i = paramFloat;
    invalidate();
  }
  
  public void setSecondaryText(String paramString)
  {
    f.setText(paramString);
    invalidate();
  }
  
  public void setSleepingIndicatorText(String paramString) {}
  
  public <T> ViewTarget<ImageView, T> setWeatherDrawable(GlideRequest<T> paramGlideRequest)
  {
    return null;
  }
}
