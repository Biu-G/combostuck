package cn.edu.pku.pkurunner.GuidePage;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import cn.edu.pku.pkurunner.LoginActivity;
import com.github.paolorotolo.appintro.AppIntro;

public class IntroActivity
  extends AppIntro
{
  public static final String GuidePreferencesKey = "guided";
  public static final String GuidePreferencesName = "GuideActivity";
  
  public IntroActivity() {}
  
  public void enterApp()
  {
    getSharedPreferences("GuideActivity", 0).edit().putBoolean("guided", true).apply();
    Object localObject = getIntent().getExtras();
    if ((localObject != null) && (((Bundle)localObject).getBoolean("jumpToLogin")))
    {
      localObject = new Intent(this, LoginActivity.class);
      ((Intent)localObject).setFlags(67108864);
      startActivity((Intent)localObject);
    }
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int j = getResources().getColor(2131099838);
    paramBundle = getResources().getStringArray(2130903041);
    String[] arrayOfString = getResources().getStringArray(2130903040);
    int i = 0;
    while (i < 5)
    {
      addSlide(AnimatableAppIntroFragment.newInstance(paramBundle[i], arrayOfString[i], new int[] { 2131230856, 2131230854, 2131230853, 2131230855, 2131230824 }[i], j));
      i += 1;
    }
    showStatusBar(false);
    setNavBarColor(2131099838);
    setBarColor(getResources().getColor(2131099839));
    showSkipButton(false);
    setProgressButtonEnabled(true);
    askForPermissions(new String[] { "android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.ACCESS_FINE_LOCATION" }, 3);
  }
  
  public void onDonePressed(Fragment paramFragment)
  {
    super.onDonePressed(paramFragment);
    enterApp();
  }
}
