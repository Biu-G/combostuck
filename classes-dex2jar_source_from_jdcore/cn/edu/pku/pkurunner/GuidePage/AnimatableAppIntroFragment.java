package cn.edu.pku.pkurunner.GuidePage;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.github.paolorotolo.appintro.AppIntroBaseFragment;

public class AnimatableAppIntroFragment
  extends AppIntroBaseFragment
{
  private ImageView a;
  
  public AnimatableAppIntroFragment() {}
  
  public static AnimatableAppIntroFragment newInstance(CharSequence paramCharSequence1, CharSequence paramCharSequence2, @DrawableRes int paramInt1, @ColorInt int paramInt2)
  {
    return newInstance(paramCharSequence1, paramCharSequence2, paramInt1, paramInt2, 0, 0);
  }
  
  public static AnimatableAppIntroFragment newInstance(CharSequence paramCharSequence1, CharSequence paramCharSequence2, @DrawableRes int paramInt1, @ColorInt int paramInt2, @ColorInt int paramInt3, @ColorInt int paramInt4)
  {
    AnimatableAppIntroFragment localAnimatableAppIntroFragment = new AnimatableAppIntroFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramCharSequence1.toString());
    localBundle.putString("title_typeface", null);
    localBundle.putString("desc", paramCharSequence2.toString());
    localBundle.putString("desc_typeface", null);
    localBundle.putInt("drawable", paramInt1);
    localBundle.putInt("bg_color", paramInt2);
    localBundle.putInt("title_color", paramInt3);
    localBundle.putInt("desc_color", paramInt4);
    localAnimatableAppIntroFragment.setArguments(localBundle);
    return localAnimatableAppIntroFragment;
  }
  
  public static AnimatableAppIntroFragment newInstance(CharSequence paramCharSequence1, String paramString1, CharSequence paramCharSequence2, String paramString2, @DrawableRes int paramInt1, @ColorInt int paramInt2)
  {
    return newInstance(paramCharSequence1, paramString1, paramCharSequence2, paramString2, paramInt1, paramInt2, 0, 0);
  }
  
  public static AnimatableAppIntroFragment newInstance(CharSequence paramCharSequence1, String paramString1, CharSequence paramCharSequence2, String paramString2, @DrawableRes int paramInt1, @ColorInt int paramInt2, @ColorInt int paramInt3, @ColorInt int paramInt4)
  {
    AnimatableAppIntroFragment localAnimatableAppIntroFragment = new AnimatableAppIntroFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramCharSequence1.toString());
    localBundle.putString("title_typeface", paramString1);
    localBundle.putString("desc", paramCharSequence2.toString());
    localBundle.putString("desc_typeface", paramString2);
    localBundle.putInt("drawable", paramInt1);
    localBundle.putInt("bg_color", paramInt2);
    localBundle.putInt("title_color", paramInt3);
    localBundle.putInt("desc_color", paramInt4);
    localAnimatableAppIntroFragment.setArguments(localBundle);
    return localAnimatableAppIntroFragment;
  }
  
  protected int getLayoutId()
  {
    return 2131492913;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    a = ((ImageView)paramLayoutInflater.findViewById(2131296426));
    return paramLayoutInflater;
  }
  
  public void onStart()
  {
    super.onStart();
    Drawable localDrawable = a.getDrawable();
    if ((localDrawable instanceof Animatable)) {
      ((Animatable)localDrawable).start();
    }
  }
}
