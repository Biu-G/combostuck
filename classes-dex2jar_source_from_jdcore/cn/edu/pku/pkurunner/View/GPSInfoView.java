package cn.edu.pku.pkurunner.View;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.CoordinatorLayout.LayoutParams;
import android.support.v4.view.animation.FastOutLinearInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import cn.edu.pku.pkurunner.R.styleable;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.util.concurrent.TimeUnit;

public class GPSInfoView
  extends CardView
{
  private static final int[] i = { 2131230891, 2131230892, 2131230893, 2131230894, 2131230895 };
  private static final int j = i.length;
  private ImageView e;
  private TextView f;
  private ObservableEmitter<Boolean> g;
  private boolean h = true;
  
  public GPSInfoView(@NonNull Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public GPSInfoView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private int a(int paramInt)
  {
    return Math.max(0, Math.min(j - 1, paramInt));
  }
  
  private void a()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "translationY", new float[] { -getOuterHeight(), 0.0F });
    localObjectAnimator.setInterpolator(new LinearOutSlowInInterpolator());
    localObjectAnimator.setDuration(250L);
    localObjectAnimator.start();
  }
  
  private void a(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    inflate(paramContext, 2131492969, this);
    e = ((ImageView)findViewById(2131296574));
    f = ((TextView)findViewById(2131296575));
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.GPSInfoView);
      int k = 0;
      while (k < paramContext.getIndexCount())
      {
        switch (paramContext.getIndex(k))
        {
        default: 
          break;
        case 2: 
          setInfoText(paramContext.getString(k));
          break;
        case 1: 
          setSignalStrength(paramContext.getInteger(k, 0));
          break;
        case 0: 
          setAppear(paramContext.getBoolean(k, true));
        }
        k += 1;
      }
      paramContext.recycle();
    }
    if (!isInEditMode()) {
      Observable.create(new -..Lambda.GPSInfoView.k1ptb8V_g8HgIQOJPqCTdZYY_XU(this)).throttleFirst(3L, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new -..Lambda.GPSInfoView.R-XKIR8xRo7jXtgCEAbcsv_lMj0(this)).debounce(5L, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.GPSInfoView.69SqfbaAiHYsoHipCdV_iUGlsbk(this));
    }
  }
  
  private void b()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "translationY", new float[] { 0.0F, -getOuterHeight() });
    localObjectAnimator.setInterpolator(new FastOutLinearInInterpolator());
    localObjectAnimator.setDuration(250L);
    localObjectAnimator.start();
  }
  
  private boolean c()
  {
    return Math.abs(getTranslationY() + getOuterHeight()) < 1.0E-6D;
  }
  
  private boolean d()
  {
    return Math.abs(getTranslationY()) < 1.0E-6D;
  }
  
  private float getOuterHeight()
  {
    CoordinatorLayout.LayoutParams localLayoutParams = (CoordinatorLayout.LayoutParams)getLayoutParams();
    if (localLayoutParams == null) {
      return getHeight();
    }
    return getHeight() + topMargin + bottomMargin;
  }
  
  public void notifyVisible()
  {
    g.onNext(Boolean.valueOf(true));
  }
  
  public void setAppear(boolean paramBoolean)
  {
    float f1;
    if (paramBoolean) {
      f1 = 0.0F;
    } else {
      f1 = -getOuterHeight();
    }
    setTranslationY(f1);
    invalidate();
  }
  
  public void setInfoText(String paramString)
  {
    f.setText(paramString);
    invalidate();
  }
  
  public void setPersistent(boolean paramBoolean)
  {
    h = paramBoolean;
    setAppear(paramBoolean);
  }
  
  public void setSignalStrength(double paramDouble)
  {
    setSignalStrength((int)(j * paramDouble));
  }
  
  public void setSignalStrength(int paramInt)
  {
    paramInt = a(paramInt);
    e.setImageResource(i[paramInt]);
    invalidate();
  }
}
