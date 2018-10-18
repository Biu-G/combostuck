package cn.edu.pku.pkurunner;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.AnimRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.NavigationView;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import cn.edu.pku.pkurunner.Broadcasts.WeatherUpdateReceiver;
import cn.edu.pku.pkurunner.Exception.ServerException;
import cn.edu.pku.pkurunner.Map.MapContract.Presenter;
import cn.edu.pku.pkurunner.Map.MapFragment;
import cn.edu.pku.pkurunner.Model.Record;
import cn.edu.pku.pkurunner.Model.User;
import cn.edu.pku.pkurunner.Model.Weather;
import cn.edu.pku.pkurunner.Model.Weather.NowBean;
import cn.edu.pku.pkurunner.Model.Weather.NowBean.CondBean;
import cn.edu.pku.pkurunner.Network.Model.UserStatus;
import cn.edu.pku.pkurunner.Network.Network;
import cn.edu.pku.pkurunner.Permission.PermissionDialog;
import cn.edu.pku.pkurunner.RecordList.RecordListFragment;
import cn.edu.pku.pkurunner.RecordList.RecordListPresenter;
import cn.edu.pku.pkurunner.Settings.SettingsActivity;
import cn.edu.pku.pkurunner.TaskList.TaskListFragment;
import cn.edu.pku.pkurunner.TaskList.TaskListPresenter;
import cn.edu.pku.pkurunner.Utils.ClientUpdateNotice;
import cn.edu.pku.pkurunner.Utils.SerializeHelper;
import cn.edu.pku.pkurunner.View.ProgressableView;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.getkeepsafe.taptargetview.TapTarget;
import com.getkeepsafe.taptargetview.TapTargetView;
import com.getkeepsafe.taptargetview.TapTargetView.Listener;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xutils.common.util.LogUtil;

public class MainActivity
  extends AppCompatActivity
{
  private MapFragment a;
  private RecordListFragment b;
  private TaskListFragment c;
  private Fragment d;
  private int[] e = new int[3];
  private int f = -1;
  private NavigationView g;
  private DrawerLayout h;
  private CoordinatorLayout i;
  private SharedPreferences j;
  private SharedPreferences k;
  private long l = 0L;
  private WeatherUpdateReceiver m;
  private TextView n;
  private TextView o;
  private ProgressableView p;
  
  public MainActivity() {}
  
  private void a()
  {
    ServerException.setResources(getResources());
    k = getSharedPreferences("GuideActivity", 0);
    Data.init(this).subscribe(new -..Lambda.MainActivity.I8DZ_e9lpZmEs3Q8H6qt9wVQvJI(this), new -..Lambda.MainActivity.PVEDqOv-hV0Ccoo4LZWFJjjpGjw(this));
  }
  
  private void a(Bundle paramBundle)
  {
    int i1 = 0;
    if (paramBundle == null)
    {
      i1 = 0;
      while (i1 < 3)
      {
        e[i1] = 0;
        i1 += 1;
      }
      a = new MapFragment();
      b = new RecordListFragment();
      new RecordListPresenter(b);
      c = new TaskListFragment();
      new TaskListPresenter(c);
      d = null;
      f = -1;
      return;
    }
    LogUtil.d("onCreate have instance");
    e = paramBundle.getIntArray("FRAGMENT_ARRAY_KEY");
    f = paramBundle.getInt("FRAGMENT_LAST_KEY");
    paramBundle = new StringBuilder();
    paramBundle.append("lastTag: ");
    paramBundle.append(String.valueOf(f));
    LogUtil.d(paramBundle.toString());
    paramBundle = getSupportFragmentManager();
    FragmentTransaction localFragmentTransaction = paramBundle.beginTransaction();
    while (i1 < 3)
    {
      if (e[i1] == 1)
      {
        Fragment localFragment = paramBundle.findFragmentByTag(String.valueOf(i1));
        if (f != i1) {
          localFragmentTransaction.hide(localFragment);
        } else {
          d = localFragment;
        }
        setFragmentById(i1, localFragment);
      }
      else
      {
        setFragmentById(i1, null);
      }
      i1 += 1;
    }
    localFragmentTransaction.commit();
  }
  
  private void a(Fragment paramFragment)
  {
    Fragment localFragment = d;
    if (d != paramFragment)
    {
      d = paramFragment;
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      if (localFragment != null) {
        localFragmentTransaction.hide(localFragment);
      }
      int i1 = findIdByFragment(paramFragment);
      if (!paramFragment.isAdded())
      {
        e[i1] = 1;
        localFragmentTransaction.add(2131296579, paramFragment, String.valueOf(i1));
      }
      else
      {
        localFragmentTransaction.show(paramFragment);
      }
      localFragmentTransaction.commit();
      f = i1;
    }
  }
  
  private void a(Fragment paramFragment, @AnimRes int paramInt1, @AnimRes int paramInt2)
  {
    Fragment localFragment = d;
    if (d != paramFragment)
    {
      d = paramFragment;
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction().setCustomAnimations(paramInt2, paramInt1);
      if (localFragment != null) {
        localFragmentTransaction.hide(localFragment);
      }
      paramInt1 = findIdByFragment(paramFragment);
      if (!paramFragment.isAdded())
      {
        e[paramInt1] = 1;
        localFragmentTransaction.add(2131296579, paramFragment, String.valueOf(paramInt1)).commit();
      }
      else
      {
        localFragmentTransaction.show(paramFragment).commit();
      }
      f = paramInt1;
    }
  }
  
  private void a(Weather paramWeather)
  {
    j.edit().putString("weather", SerializeHelper.objectToString(paramWeather)).apply();
    Toast.makeText(this, paramWeather.getDescription(this), 1).show();
    b(paramWeather);
  }
  
  private boolean a(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    case 2131296458: 
    case 2131296459: 
    default: 
      break;
    case 2131296461: 
      if ((Network.weather != null) && (Network.weather.getAqi() != null)) {
        Toast.makeText(this, Network.weather.getDescription(this), 1).show();
      } else {
        sendBroadcast(new Intent("cn.edu.pku.pkurunner.MainActivity.weatherUpdate"));
      }
      break;
    case 2131296460: 
      ClientUpdateNotice.downloadLatestVersion(this, Data.getUser().isOffline().booleanValue());
      break;
    case 2131296457: 
      a(c);
      break;
    case 2131296456: 
      startActivity(new Intent(this, SettingsActivity.class));
      break;
    case 2131296455: 
      a(b);
      break;
    case 2131296454: 
      a(a);
      break;
    case 2131296453: 
      h();
      break;
    case 2131296452: 
      g();
    }
    h.closeDrawer(8388611);
    return true;
  }
  
  private void b()
  {
    c();
    d();
  }
  
  private void b(Weather paramWeather)
  {
    if (paramWeather.getNow() == null) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("https://www.heweather.com/files/images/cond_icon/");
    localStringBuilder.append(paramWeather.getNow().getCond().getCode());
    localStringBuilder.append(".png");
    paramWeather = localStringBuilder.toString();
    p.setWeatherDrawable(GlideApp.with(this).load(paramWeather).placeholder(2131230864).error(2131230866).centerCrop().diskCacheStrategy(DiskCacheStrategy.AUTOMATIC));
    GlideApp.with(this).asBitmap().load(paramWeather).into(new SimpleTarget(100, 100)
    {
      public void a(@NonNull Bitmap paramAnonymousBitmap, @Nullable Transition<? super Bitmap> paramAnonymousTransition)
      {
        MainActivity.a(MainActivity.this).getMenu().findItem(2131296461).setIcon(new BitmapDrawable(getResources(), paramAnonymousBitmap));
      }
    });
  }
  
  private void c()
  {
    j = getSharedPreferences("WeatherService", 0);
    if (j.contains("weather"))
    {
      String str = j.getString("weather", null);
      if (str == null)
      {
        Network.weather = null;
        return;
      }
      SerializeHelper.stringToObject(str).subscribe(new -..Lambda.MainActivity.Bt7U2Qwo1zQxuApPNG6edMhNISA(this), new -..Lambda.MainActivity.UhA6B3dKrhzevlHDkzCHu5XoPNM(this));
    }
  }
  
  private void d()
  {
    m = new WeatherUpdateReceiver(new Observer()
    {
      public void a(Weather paramAnonymousWeather)
      {
        MainActivity.a(MainActivity.this, paramAnonymousWeather);
      }
      
      public void onComplete() {}
      
      public void onError(Throwable paramAnonymousThrowable)
      {
        Toast.makeText(MainActivity.this, getString(2131689490, new Object[] { paramAnonymousThrowable.getMessage() }), 0).show();
      }
      
      public void onSubscribe(Disposable paramAnonymousDisposable) {}
    });
    IntentFilter localIntentFilter = new IntentFilter("cn.edu.pku.pkurunner.MainActivity.weatherUpdate");
    registerReceiver(m, localIntentFilter);
  }
  
  private void e()
  {
    Object localObject = (Toolbar)findViewById(2131296580);
    setSupportActionBar((Toolbar)localObject);
    h = ((DrawerLayout)findViewById(2131296272));
    g = ((NavigationView)findViewById(2131296273));
    g.setNavigationItemSelectedListener(new -..Lambda.MainActivity.lZBC25iUcO0XAu8SzbDnGVUJc1w(this));
    i = ((CoordinatorLayout)findViewById(2131296271));
    View localView = g.getHeaderView(0);
    n = ((TextView)localView.findViewById(2131296459));
    o = ((TextView)localView.findViewById(2131296458));
    p = ((ProgressableView)findViewById(2131296599));
    p.setReferenceTime(new Date());
    localObject = new ActionBarDrawerToggle(this, h, (Toolbar)localObject, 2131689689, 2131689688)
    {
      public void onDrawerOpened(View paramAnonymousView)
      {
        super.onDrawerOpened(paramAnonymousView);
        refreshUserStatusNotice();
      }
    };
    h.addDrawerListener((DrawerLayout.DrawerListener)localObject);
    ((ActionBarDrawerToggle)localObject).syncState();
  }
  
  private void f()
  {
    Network.getMinVersion().observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.MainActivity.V8t7sc850iVUqkQsowLp4Y0CF4g(this)).subscribe(new -..Lambda.MainActivity.JBsPdj4ERSyMPEGDxKGdjAkaNIc(this), -..Lambda.Jxp4LOjD5wh7hYvpBAWXzgH0LNY.INSTANCE);
    boolean bool;
    if (Data.getUser() != null) {
      bool = Data.getUser().isOffline().booleanValue();
    } else {
      bool = false;
    }
    Network.getLatestVersion(bool).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.MainActivity.7eZpWfDy8sBU4LJPSe39rG6Lax8(this), -..Lambda.Jxp4LOjD5wh7hYvpBAWXzgH0LNY.INSTANCE);
  }
  
  private void g()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("https://pku-runner.github.io"));
    startActivity(localIntent);
  }
  
  private void h()
  {
    new AlertDialog.Builder(this).setTitle(2131689499).setMessage(2131689496).setPositiveButton(2131689498, new -..Lambda.MainActivity.tR6zxh2RfuRk4oOUiNOj9D1bZ9w(this)).setNegativeButton(2131689497, -..Lambda.MainActivity.mXi11_DFa-5VhjwxOm0nx4qCAVc.INSTANCE).setCancelable(true).create().show();
  }
  
  private boolean i()
  {
    FloatingActionButton localFloatingActionButton = (FloatingActionButton)findViewById(2131296578);
    if (localFloatingActionButton != null)
    {
      if (localFloatingActionButton.getVisibility() != 0) {
        return false;
      }
      if (h.isDrawerOpen(8388611)) {
        return false;
      }
      TapTargetView.showFor(this, TapTarget.forView(localFloatingActionButton, getString(2131689647), getString(2131689644)).outerCircleColor(2131099755).transparentTarget(true), new TapTargetView.Listener()
      {
        public void onTargetClick(TapTargetView paramAnonymousTapTargetView)
        {
          super.onTargetClick(paramAnonymousTapTargetView);
          switchFromRecordListToRunning();
        }
      });
      return true;
    }
    return false;
  }
  
  private boolean j()
  {
    View localView = findViewById(2131296400);
    if ((localView != null) && (localView.getVisibility() == 0))
    {
      TapTargetView.showFor(this, TapTarget.forView(localView, getString(2131689646), getString(2131689643)).outerCircleColor(2131099951).transparentTarget(true).targetRadius(96));
      return true;
    }
    return false;
  }
  
  private static boolean k()
  {
    File[] arrayOfFile = new File("/dev").listFiles();
    Pattern localPattern = Pattern.compile("vbox.*");
    if (arrayOfFile != null)
    {
      if (arrayOfFile.length == 0) {
        return false;
      }
      int i2 = arrayOfFile.length;
      int i1 = 0;
      while (i1 < i2)
      {
        if (localPattern.matcher(arrayOfFile[i1].getName()).matches()) {
          return true;
        }
        i1 += 1;
      }
      return false;
    }
    return false;
  }
  
  public int findIdByFragment(Fragment paramFragment)
  {
    if (paramFragment.equals(a)) {
      return 0;
    }
    if (paramFragment.equals(b)) {
      return 1;
    }
    if (paramFragment.equals(c)) {
      return 2;
    }
    return -1;
  }
  
  public void onBackPressed()
  {
    Object localObject = (DrawerLayout)findViewById(2131296272);
    if (((DrawerLayout)localObject).isDrawerOpen(8388611))
    {
      ((DrawerLayout)localObject).closeDrawer(8388611);
      return;
    }
    if (System.currentTimeMillis() - l > 1500L)
    {
      Toast.makeText(getApplicationContext(), 2131689495, 0).show();
      l = System.currentTimeMillis();
      return;
    }
    l = 0L;
    if (a.presenter.isRunning())
    {
      localObject = new AlertDialog.Builder(this);
      ((AlertDialog.Builder)localObject).setTitle(2131689494);
      ((AlertDialog.Builder)localObject).setMessage(2131689491);
      ((AlertDialog.Builder)localObject).setPositiveButton(2131689493, new -..Lambda.MainActivity.aC_oG1PFkUdDyZvwo4tnm4J9gjM(this));
      ((AlertDialog.Builder)localObject).setNegativeButton(2131689492, -..Lambda.MainActivity.EQl8QHlYtgmiablRkDCOcDsDRLM.INSTANCE);
      ((AlertDialog.Builder)localObject).create().show();
      return;
    }
    moveTaskToBack(true);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    setTheme(2131755212);
    super.onCreate(paramBundle);
    setContentView(2131492894);
    a(paramBundle);
    a();
    e();
    b();
    f();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131558400, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    a = null;
    b = null;
    c = null;
    d = null;
    unregisterReceiver(m);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getItemId();
    if (i1 == 2131296274)
    {
      new PermissionDialog().show(getSupportFragmentManager(), "Permission dialog");
      return true;
    }
    if (i1 == 2131296270)
    {
      k.edit().remove("drawer").remove("fab").remove("pullDown").apply();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPostCreate(@Nullable Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    ((NavigationView)findViewById(2131296273)).getMenu().findItem(2131296455).setChecked(true);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (k()) {
      new AlertDialog.Builder(this).setTitle("非常事态！！！").setMessage("请不要在非手机的Android端使用本软件哦！\n小心用着用着设备飞出去哦！（大雾").setCancelable(false).setPositiveButton("原地爆炸", new -..Lambda.MainActivity.rceM-72z9JgWosn2Aj2iiRolwNU(this)).show();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putIntArray("FRAGMENT_ARRAY_KEY", e);
    paramBundle.putInt("FRAGMENT_LAST_KEY", f);
  }
  
  protected void onStart()
  {
    super.onStart();
    if (Data.getUser() == null) {
      return;
    }
    if (!Data.isValid()) {
      Data.loadByUser().subscribe(-..Lambda.MainActivity.NLFo39h-IGCSq6xPx7C9JfZNfc0.INSTANCE, new -..Lambda.MainActivity.cCD7z7zeM1-Hs6pMudGYAfoSQ64(this));
    }
    refreshUserStatusNotice();
    if (!Data.getUser().isOffline().booleanValue())
    {
      Data.refreshUserStatus().observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.MainActivity.RlhSlQFcDDIgRCQ4cpGVB7JaUU4(this), new -..Lambda.MainActivity.RTvcBQWKUJgP8YiRfqaPYMxGSHc(this));
    }
    else
    {
      p.setActiveMode(true);
      p.setCollapseMode(true);
      double d1 = 0.0D;
      Iterator localIterator = Data.getUser().getRecords().iterator();
      while (localIterator.hasNext()) {
        d1 += ((Record)localIterator.next()).getDistance();
      }
      p.setMainText(getString(2131689792, new Object[] { Integer.valueOf((int)(d1 / 1000.0D)) }));
    }
    if (d == null) {
      a(b);
    }
    if ((d == b) && (k.getBoolean("drawer", true)))
    {
      k.edit().putBoolean("drawer", false).apply();
      h.openDrawer(8388611, true);
      Observable.just(Boolean.valueOf(true)).delay(1L, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.MainActivity.d_7I7PqrUKoy8BTQ8E0A6X2rpiE(this));
      return;
    }
    if ((d == b) && (k.getBoolean("fab", true)))
    {
      if (i()) {
        k.edit().putBoolean("fab", false).apply();
      }
    }
    else if ((d == b) && (k.getBoolean("pullDown", true)) && (j())) {
      k.edit().putBoolean("pullDown", false).apply();
    }
  }
  
  public void refreshUserStatusNotice()
  {
    Object localObject = Data.getUser();
    if (localObject == null)
    {
      n.setText("");
      o.setText("");
    }
    else
    {
      n.setText(((User)localObject).getName());
      o.setText(((User)localObject).getDepartment());
    }
    if (localObject != null)
    {
      if (((User)localObject).isOffline().booleanValue()) {
        return;
      }
      UserStatus localUserStatus = Data.getUserStatus();
      if (localUserStatus == null)
      {
        p.reset();
        return;
      }
      double d1 = localUserStatus.getCurrent();
      double d2 = localUserStatus.getBonus() + d1;
      double d3 = localUserStatus.getTarget();
      int i2 = (int)((localUserStatus.getEndDate().getTime() - localUserStatus.getBeginDate().getTime()) / 1000L / 3600L / 24L);
      int i3 = (int)((localUserStatus.getEndDate().getTime() - System.currentTimeMillis()) / 1000L / 3600L / 24L);
      int i4 = i2 - i3;
      String str = getString(2131689790, new Object[] { Integer.valueOf(i4), Integer.valueOf(i2) });
      int i1;
      if (d2 > d3) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      double d4 = d1 / 1000.0D;
      double d5 = d3 / 1000.0D;
      if (i1 != 0) {}
      for (localObject = getString(2131689787);; localObject = getString(2131689795, new Object[] { Integer.valueOf(localUserStatus.getValidCount()) })) {
        break;
      }
      localObject = getString(2131689791, new Object[] { Double.valueOf(d4), Double.valueOf(d5), localObject });
      p.setCollapseMode(false);
      if (i3 > i2)
      {
        p.setActiveMode(false);
        i1 = (int)Math.ceil((localUserStatus.getBeginDate().getTime() - System.currentTimeMillis()) / 1000L / 3600L / 24L);
        localObject = new SimpleDateFormat().format(Long.valueOf(localUserStatus.getBeginDate().getTime()));
        p.setSleepingIndicatorText(getString(2131689794, new Object[] { getString(2131689788), Integer.valueOf(i1), localObject }));
      }
      else if (i3 >= 0)
      {
        p.setActiveMode(true);
        p.setSecondaryText(str);
        p.setSecondaryProgress(i4 / (i2 + 0.0F));
        p.setMainText((String)localObject);
        p.setMainProgress((float)(d1 / d3));
        p.setMainBonusProgress((float)(d2 / d3));
      }
      else
      {
        p.setActiveMode(false);
        i1 = (int)Math.ceil((System.currentTimeMillis() - localUserStatus.getEndDate().getTime()) / 1000L / 3600L / 24L);
        localObject = new SimpleDateFormat().format(Long.valueOf(localUserStatus.getEndDate().getTime()));
        p.setSleepingIndicatorText(getString(2131689793, new Object[] { getString(2131689788), Integer.valueOf(i1), localObject }));
      }
      p.setReferenceTime(new Date());
      return;
    }
  }
  
  public void setFragmentById(int paramInt, Fragment paramFragment)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      if (paramFragment != null) {
        c = ((TaskListFragment)paramFragment);
      } else {
        c = new TaskListFragment();
      }
      new TaskListPresenter(c);
      return;
    case 1: 
      if (paramFragment != null) {
        b = ((RecordListFragment)paramFragment);
      } else {
        b = new RecordListFragment();
      }
      new RecordListPresenter(b);
      return;
    }
    if (paramFragment != null)
    {
      a = ((MapFragment)paramFragment);
      return;
    }
    a = new MapFragment();
  }
  
  public void switchFromRecordListToRunning()
  {
    FloatingActionButton localFloatingActionButton = (FloatingActionButton)findViewById(2131296578);
    if (a.isStateSaved())
    {
      a.getArguments().putInt("FabX", (int)(localFloatingActionButton.getX() + localFloatingActionButton.getWidth() / 2));
      a.getArguments().putInt("FabY", (int)(localFloatingActionButton.getY() + localFloatingActionButton.getHeight() / 2));
    }
    else
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("FabX", (int)(localFloatingActionButton.getX() + localFloatingActionButton.getWidth() / 2));
      localBundle.putInt("FabY", (int)(localFloatingActionButton.getY() + localFloatingActionButton.getHeight() / 2));
      a.setArguments(localBundle);
    }
    a(a, 2130771985, 0);
    a.shouldRevealAnimation = true;
    ((NavigationView)findViewById(2131296273)).getMenu().findItem(2131296454).setChecked(true);
  }
  
  public void switchFromRunningToRecordList()
  {
    if (d != a) {
      LogUtil.e("Not in Map state.");
    }
    ((AppBarLayout)findViewById(2131296576)).setExpanded(true);
    if (b.isStateSaved())
    {
      b.getArguments().putBoolean("newRecord", true);
    }
    else
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("newRecord", true);
      b.setArguments(localBundle);
    }
    a(b, 0, 2130771984);
    ((NavigationView)findViewById(2131296273)).getMenu().findItem(2131296455).setChecked(true);
  }
}
