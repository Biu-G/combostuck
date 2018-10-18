package cn.edu.pku.pkurunner.Settings;

import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.support.annotation.Nullable;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewParent;
import android.widget.LinearLayout;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Map.SpeedHelper.SPEED_UNIT;
import cn.edu.pku.pkurunner.Model.User;
import cn.edu.pku.pkurunner.Storage.Dropbox.APIWrapper;
import cn.edu.pku.pkurunner.Storage.Dropbox.ClientFactory;
import cn.edu.pku.pkurunner.Storage.StorageUtil;
import com.dropbox.core.v2.DbxClientV2;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public class SettingsActivity
  extends PreferenceActivity
{
  private ProgressDialog a;
  private int b = 0;
  
  public SettingsActivity() {}
  
  private String a(int paramInt)
  {
    String[] arrayOfString = getResources().getStringArray(2130903044);
    int i = 1;
    if (paramInt == 1) {
      i = 0;
    }
    return arrayOfString[i];
  }
  
  private String a(SpeedHelper.SPEED_UNIT paramSPEED_UNIT)
  {
    return getResources().getStringArray(2130903046)[paramSPEED_UNIT.ordinal()];
  }
  
  private void a()
  {
    EditTextPreference localEditTextPreference = (EditTextPreference)findPreference("pref_name");
    localEditTextPreference.setSummary(Data.getUser().getName());
    localEditTextPreference.setDefaultValue(Data.getUser().getName());
    localEditTextPreference.setEnabled(Data.getUser().isOffline().booleanValue());
    localEditTextPreference.setOnPreferenceChangeListener(new -..Lambda.SettingsActivity.9javiZlNHtTG3maD0ThJSShXHoc(this));
  }
  
  private String b(int paramInt)
  {
    String[] arrayOfString = getResources().getStringArray(2130903045);
    int i = 1;
    if (paramInt == 1) {
      i = 0;
    }
    return arrayOfString[i];
  }
  
  private String b(SpeedHelper.SPEED_UNIT paramSPEED_UNIT)
  {
    return getResources().getStringArray(2130903047)[paramSPEED_UNIT.ordinal()];
  }
  
  private void b()
  {
    ListPreference localListPreference = (ListPreference)findPreference("pref_gender");
    localListPreference.setSummary(a(Data.getUser().getGender()));
    localListPreference.setDefaultValue(b(Data.getUser().getGender()));
    localListPreference.setEnabled(Data.getUser().isOffline().booleanValue());
    localListPreference.setOnPreferenceChangeListener(new -..Lambda.SettingsActivity.bu_LuEefUEoNT6SFEvCUVAIhJyc(this));
  }
  
  private void c()
  {
    findPreference("pref_clean_photo").setOnPreferenceClickListener(new -..Lambda.SettingsActivity.Q6aS-AxC5px0VYoPHD3q6RXy4XE(this));
  }
  
  private void d()
  {
    e();
  }
  
  private void e()
  {
    Preference localPreference = findPreference("pref_dropbox");
    if (Data.getUser().isOffline().booleanValue())
    {
      localPreference.setEnabled(true);
      Dropbox.APIWrapper.getToken(this).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.SettingsActivity.Es86gLxc-oue3Kmr7-u-uKK7mpM(this), new -..Lambda.SettingsActivity.K0UvSKl6K9dwfDpOrxGC4sClk_U(this));
      return;
    }
    localPreference.setEnabled(false);
  }
  
  private void f()
  {
    Object localObject = findPreference("pref_dropbox_connection");
    ((Preference)localObject).setSummary("Connected");
    ((Preference)localObject).setEnabled(false);
    localObject = Dropbox.ClientFactory.getClient();
    Preference localPreference = findPreference("pref_dropbox_user");
    StorageUtil.NetworkMethodWrapper(new -..Lambda.SettingsActivity.ccGh1TLuLffJHBU5rcxYXGiabiI((DbxClientV2)localObject)).flatMap(new -..Lambda.SettingsActivity.JmHOKLOgQgUMOJNNyTVTQyxnogk((DbxClientV2)localObject)).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.SettingsActivity.0aGNA0gZjzJTspuR-0hwmrc1Mdw(this, localPreference), new -..Lambda.SettingsActivity.dWpJLJNN9KqQQKpX9_WAIfsLs3s(this, localPreference));
    findPreference("pref_dropbox_upload").setOnPreferenceClickListener(new -..Lambda.SettingsActivity.zLPnZZm5wQsxNeF6YV679ZvdG9Y(this, (DbxClientV2)localObject));
  }
  
  private void g()
  {
    Preference localPreference = findPreference("pref_dropbox");
    localPreference.setSummary("Not connected");
    localPreference.setEnabled(true);
    localPreference.setOnPreferenceClickListener(new -..Lambda.SettingsActivity.PBqDQVriKFDu0kj-VeFtXa0xL3Q(this));
    findPreference("pref_dropbox_user").setEnabled(false);
    findPreference("pref_dropbox_upload").setEnabled(false);
  }
  
  private void h()
  {
    findPreference("pref_version").setSummary("v1.2.3");
    findPreference("pref_guide").setOnPreferenceClickListener(new -..Lambda.SettingsActivity.EIKi_NUx3euZfifR_gdCa2DwZMA(this));
    findPreference("pref_version").setOnPreferenceClickListener(new -..Lambda.SettingsActivity.47mzTJdaTa2DMVzThpV7RsqKidM(this, getResources().getStringArray(2130903043)));
  }
  
  private void i()
  {
    ListPreference localListPreference = (ListPreference)findPreference("pref_unit");
    localListPreference.setSummary(a(Data.getSpeedUnitPreference()));
    localListPreference.setDefaultValue(b(Data.getSpeedUnitPreference()));
    localListPreference.setOnPreferenceChangeListener(new -..Lambda.SettingsActivity.UMnilHUujAzJSG7WQ9wW8mNzRHc(this, localListPreference));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131886080);
    a();
    b();
    c();
    h();
    i();
  }
  
  protected void onPostCreate(@Nullable Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    paramBundle = (LinearLayout)findViewById(16908298).getParent().getParent().getParent();
    Toolbar localToolbar = (Toolbar)LayoutInflater.from(this).inflate(2131492976, paramBundle, false);
    paramBundle.addView(localToolbar, 0);
    localToolbar.setNavigationOnClickListener(new -..Lambda.SettingsActivity.w2BCzJEpp3j0GHtYX8XKaNkJL3w(this));
  }
  
  protected void onResume()
  {
    super.onResume();
    d();
  }
}
