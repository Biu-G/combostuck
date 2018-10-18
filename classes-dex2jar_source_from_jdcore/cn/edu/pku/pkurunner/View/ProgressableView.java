package cn.edu.pku.pkurunner.View;

import android.widget.ImageView;
import cn.edu.pku.pkurunner.GlideRequest;
import com.bumptech.glide.request.target.ViewTarget;
import java.util.Date;

public abstract interface ProgressableView
{
  public abstract void reset();
  
  public abstract void setActiveMode(boolean paramBoolean);
  
  public abstract void setCollapseMode(boolean paramBoolean);
  
  public abstract void setDayMode(boolean paramBoolean);
  
  public abstract void setMainBonusProgress(float paramFloat);
  
  public abstract void setMainProgress(float paramFloat);
  
  public abstract void setMainText(String paramString);
  
  public abstract void setReferenceTime(Date paramDate);
  
  public abstract void setSecondaryProgress(float paramFloat);
  
  public abstract void setSecondaryText(String paramString);
  
  public abstract void setSleepingIndicatorText(String paramString);
  
  public abstract <T> ViewTarget<ImageView, T> setWeatherDrawable(GlideRequest<T> paramGlideRequest);
}
