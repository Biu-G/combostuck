package cn.edu.pku.pkurunner.Map;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.constraint.Group;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.support.v4.widget.NestedScrollView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import cn.edu.pku.pkurunner.MainActivity;
import cn.edu.pku.pkurunner.Service.NotificationDisplayService;
import cn.edu.pku.pkurunner.View.GPSInfoView;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.LocationSource;
import com.amap.api.maps2d.LocationSource.OnLocationChangedListener;
import com.amap.api.maps2d.MapView;
import com.amap.api.maps2d.UiSettings;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.MyLocationStyle;
import io.reactivex.Observable;
import org.xutils.common.util.LogUtil;

public class MapFragment
  extends Fragment
  implements MapContract.View
{
  private MapView a;
  private AMap b;
  private MyLocationStyle c;
  private Button d;
  private Button e;
  private TextView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private Group l;
  private GPSInfoView m;
  private ProgressDialog n;
  private View o;
  private View p;
  public MapContract.Presenter presenter = new MapPresenter(this);
  private BottomSheetBehavior<NestedScrollView> q;
  private int r;
  private PowerManager s;
  public boolean shouldRevealAnimation = false;
  private PowerManager.WakeLock t;
  private LocationSource.OnLocationChangedListener u;
  
  public MapFragment() {}
  
  private void a()
  {
    int i3 = (int)Math.sqrt(Math.pow(o.getWidth(), 2.0D) + Math.pow(o.getHeight(), 2.0D));
    Object localObject = getArguments();
    int i2 = o.getWidth();
    int i1 = i2;
    if (localObject != null) {
      i1 = ((Bundle)localObject).getInt("FabX", i2);
    }
    localObject = ViewAnimationUtils.createCircularReveal(o, i1, 0, 0.0F, i3);
    ((Animator)localObject).setInterpolator(new AccelerateInterpolator());
    ((Animator)localObject).setDuration(1000L);
    ((Animator)localObject).start();
    localObject = new ValueAnimator();
    ((ValueAnimator)localObject).setIntValues(new int[] { getResources().getColor(2131099975), getResources().getColor(2131100002) });
    ((ValueAnimator)localObject).setEvaluator(new ArgbEvaluator());
    ((ValueAnimator)localObject).addUpdateListener(new -..Lambda.MapFragment.ibiZKfHyAstoBrbJ-St7ShsAnNg(this));
    ((ValueAnimator)localObject).setDuration(500L);
    ((ValueAnimator)localObject).addListener(new Animator.AnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        MapFragment.a(MapFragment.this).setBackground(null);
        MapFragment.b(MapFragment.this).setAppear(false);
      }
      
      public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public void onAnimationStart(Animator paramAnonymousAnimator) {}
    });
    p.setBackgroundResource(2131099975);
    ((ValueAnimator)localObject).setStartDelay(500L);
    ((ValueAnimator)localObject).start();
  }
  
  private void a(final a paramA)
  {
    int i3 = (int)Math.sqrt(Math.pow(o.getWidth(), 2.0D) + Math.pow(o.getHeight(), 2.0D));
    Object localObject = getArguments();
    int i2 = o.getWidth();
    int i1 = i2;
    if (localObject != null) {
      i1 = ((Bundle)localObject).getInt("FabX", i2);
    }
    localObject = ViewAnimationUtils.createCircularReveal(o, i1, 0, i3, 0.0F);
    ((Animator)localObject).setInterpolator(new AccelerateInterpolator());
    ((Animator)localObject).setDuration(1000L);
    ((Animator)localObject).start();
    localObject = new ValueAnimator();
    ((ValueAnimator)localObject).setIntValues(new int[] { getResources().getColor(2131100002), getResources().getColor(2131099975) });
    ((ValueAnimator)localObject).setEvaluator(new ArgbEvaluator());
    ((ValueAnimator)localObject).addUpdateListener(new -..Lambda.MapFragment.43w8VpZFTs9sortc6PnaR1mk1bQ(this));
    ((ValueAnimator)localObject).setDuration(1000L);
    ((ValueAnimator)localObject).addListener(new Animator.AnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramA.onAnimationEnd();
        MapFragment.a(MapFragment.this).setBackground(null);
      }
      
      public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public void onAnimationStart(Animator paramAnonymousAnimator) {}
    });
    p.setBackgroundResource(2131099975);
    ((ValueAnimator)localObject).start();
  }
  
  public void dismissNotification()
  {
    getActivity().stopService(new Intent(getActivity(), NotificationDisplayService.class));
  }
  
  public void dismissWaitingDialog()
  {
    n.dismiss();
  }
  
  public AMap getAMap()
  {
    return b;
  }
  
  public MainActivity getActivityFromContract()
  {
    return (MainActivity)getActivity();
  }
  
  public Context getFragmentContext()
  {
    return getContext();
  }
  
  public LocationSource.OnLocationChangedListener getLocationListener()
  {
    return u;
  }
  
  public void indicatorShowUpAnimation()
  {
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofInt(q, "peekHeight", new int[] { r, r * 192 / 108 });
    localObjectAnimator1.setInterpolator(new LinearOutSlowInInterpolator());
    localObjectAnimator1.setDuration(750L);
    localObjectAnimator1.setStartDelay(2500L);
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofInt(q, "peekHeight", new int[] { r * 192 / 108, r });
    localObjectAnimator2.setInterpolator(new FastOutSlowInInterpolator());
    localObjectAnimator2.setDuration(750L);
    localObjectAnimator2.setStartDelay(2500L);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playSequentially(new Animator[] { localObjectAnimator1, localObjectAnimator2 });
    localAnimatorSet.start();
  }
  
  public void makeSnackBar(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    Snackbar.make(o, getString(paramInt1, paramVarArgs), paramInt2).show();
  }
  
  public void makeToast(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    Toast.makeText(getContext(), getString(paramInt1, paramVarArgs), paramInt2).show();
  }
  
  public void makeWaitingDialog(@StringRes int paramInt, Object... paramVarArgs)
  {
    n = new ProgressDialog(getContext());
    n.setProgressStyle(0);
    n.setMessage(getString(paramInt, paramVarArgs));
    n.setIndeterminate(false);
    n.setCancelable(false);
    n.show();
  }
  
  public void notifyGPSInfo()
  {
    m.notifyVisible();
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
  }
  
  public void onCreate(@Nullable Bundle paramBundle)
  {
    LogUtil.d("MAP:onCreate");
    super.onCreate(paramBundle);
    GPSManager.a(getContext());
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131558402, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    LogUtil.d("MAP:onCreateView");
    o = paramLayoutInflater.inflate(2131492916, paramViewGroup, false);
    d = ((Button)o.findViewById(2131296357));
    paramLayoutInflater = d;
    int i2 = 2131689599;
    int i1;
    if (paramLayoutInflater != null)
    {
      d.setVisibility(0);
      paramLayoutInflater = d;
      if ((presenter != null) && (presenter.isRunning())) {
        i1 = 2131689599;
      } else {
        i1 = 2131689601;
      }
      paramLayoutInflater.setText(getString(i1));
      d.setOnClickListener(new -..Lambda.MapFragment.s2MFuu67FRIZX-NqTY9n_9DJDJs(this));
      d.setOnLongClickListener(new -..Lambda.MapFragment.kyy5VjyZHw71DgIMAueniIBhjxI(this));
    }
    e = ((Button)o.findViewById(2131296356));
    if (e != null)
    {
      paramLayoutInflater = e;
      if ((presenter != null) && (presenter.isRunning())) {
        i1 = 0;
      } else {
        i1 = 8;
      }
      paramLayoutInflater.setVisibility(i1);
      paramLayoutInflater = e;
      i1 = i2;
      if (presenter != null)
      {
        i1 = i2;
        if (presenter.isRunningPaused()) {
          i1 = 2131689600;
        }
      }
      paramLayoutInflater.setText(getString(i1));
      e.setOnClickListener(new -..Lambda.MapFragment.TClPMgU5SdgjxjG-fmzcV7bpGcg(this));
      e.setOnLongClickListener(new -..Lambda.MapFragment.l3hm-xKVUcnupUmRIOdgUU_rn5Q(this));
    }
    f = ((TextView)o.findViewById(2131296362));
    g = ((TextView)o.findViewById(2131296364));
    h = ((TextView)o.findViewById(2131296366));
    i = ((TextView)o.findViewById(2131296363));
    j = ((TextView)o.findViewById(2131296365));
    k = ((TextView)o.findViewById(2131296367));
    m = ((GPSInfoView)o.findViewById(2131296358));
    l = ((Group)o.findViewById(2131296359));
    a = ((MapView)o.findViewById(2131296361));
    a.onCreate(paramBundle);
    if (b == null) {
      b = a.getMap();
    }
    b.setLocationSource(new LocationSource()
    {
      public void activate(LocationSource.OnLocationChangedListener paramAnonymousOnLocationChangedListener)
      {
        MapFragment.a(MapFragment.this, paramAnonymousOnLocationChangedListener);
      }
      
      public void deactivate()
      {
        MapFragment.a(MapFragment.this, null);
      }
    });
    c = new MyLocationStyle();
    c.myLocationType(2);
    c.myLocationIcon(BitmapDescriptorFactory.fromResource(2131230882));
    c.anchor(0.5F, 0.5F);
    c.strokeColor(getResources().getColor(2131099697));
    c.radiusFillColor(getResources().getColor(2131099698));
    b.setMyLocationStyle(c);
    b.getUiSettings().setMyLocationButtonEnabled(false);
    b.getUiSettings().setScaleControlsEnabled(false);
    b.getUiSettings().setZoomControlsEnabled(false);
    b.getUiSettings().setCompassEnabled(false);
    b.getUiSettings().setScrollGesturesEnabled(true);
    b.getUiSettings().setZoomGesturesEnabled(true);
    b.moveCamera(CameraUpdateFactory.newLatLng(new LatLng(39.99281D, 116.31088D)));
    b.moveCamera(CameraUpdateFactory.zoomTo(18.0F));
    p = getActivity().findViewById(2131296271);
    q = BottomSheetBehavior.from((NestedScrollView)o.findViewById(2131296355));
    r = q.getPeekHeight();
    setHasOptionsMenu(true);
    return o;
  }
  
  public void onDestroy()
  {
    LogUtil.d("MAP:onDestroy");
    GPSManager.a();
    releaseWakeLock();
    dismissNotification();
    super.onDestroy();
    a.onDestroy();
    a = null;
    b = null;
    presenter = null;
    o = null;
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (paramBoolean)
    {
      d.setVisibility(8);
      return;
    }
    d.setVisibility(0);
    ((AppBarLayout)getActivity().findViewById(2131296576)).setExpanded(false);
    if (shouldRevealAnimation)
    {
      a();
      shouldRevealAnimation = false;
    }
    presenter.updateUnitPreference();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131296351: 
      a(new -..Lambda.MapFragment.8mCDeBwKMxS0FHPefMXv3tIPgBg(this));
      return true;
    case 2131296350: 
      if (paramMenuItem.isChecked())
      {
        LogUtil.d("Unchecking!");
        paramMenuItem.setChecked(false);
        presenter.pauseAutoLocating();
        return true;
      }
      LogUtil.d("Checking!");
      paramMenuItem.setChecked(true);
      presenter.startAutoLocating();
      return true;
    }
    if (paramMenuItem.isChecked())
    {
      LogUtil.d("Unchecking!");
      paramMenuItem.setChecked(false);
      presenter.pauseGPSAssistant();
      return true;
    }
    LogUtil.d("Checking!");
    paramMenuItem.setChecked(true);
    presenter.startGPSAssistant();
    return true;
  }
  
  public void onPause()
  {
    LogUtil.d("MAP:onPause");
    super.onPause();
    a.onPause();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    presenter.syncOptionsMenu(paramMenu);
  }
  
  public void onResume()
  {
    LogUtil.d("MAP:onResume");
    super.onResume();
    if (isVisible()) {
      ((AppBarLayout)getActivity().findViewById(2131296576)).setExpanded(false);
    }
    a.onResume();
    presenter.start();
    if (shouldRevealAnimation)
    {
      a();
      shouldRevealAnimation = false;
    }
    presenter.updateUnitPreference();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    LogUtil.d("MAP:onSaveInstanceState");
    super.onSaveInstanceState(paramBundle);
    a.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
  }
  
  public void openDevelopSettings()
  {
    Intent localIntent = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
    localIntent.setFlags(268435456);
    startActivity(localIntent);
  }
  
  public void openGPSSettings()
  {
    Intent localIntent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
    localIntent.setFlags(268435456);
    startActivity(localIntent);
  }
  
  public Observable<Boolean> registerMapCenterHelper()
  {
    return Observable.create(new -..Lambda.MapFragment.6bhv4bBGhugflFyIVMve5UTsKe4(this));
  }
  
  public void releaseWakeLock()
  {
    if (t != null) {
      t.release();
    }
    t = null;
    LogUtil.d("Wake lock released");
  }
  
  public void requireWakeLock()
  {
    if (s == null) {
      s = ((PowerManager)getActivity().getSystemService("power"));
    }
    t = s.newWakeLock(1, "pku runner");
    t.acquire();
    LogUtil.d("Wake lock acquired");
  }
  
  public void setAssistantText(@StringRes int paramInt, double paramDouble, Object... paramVarArgs)
  {
    m.setInfoText(getString(paramInt, paramVarArgs));
    m.setSignalStrength(paramDouble);
  }
  
  public void setLocatingPointEnabled(boolean paramBoolean)
  {
    c.myLocationIcon(BitmapDescriptorFactory.fromResource(2131230882));
    b.setMyLocationStyle(c);
    b.setMyLocationEnabled(paramBoolean);
  }
  
  public void setPresenter(@NonNull MapContract.Presenter paramPresenter)
  {
    presenter = paramPresenter;
  }
  
  public void showNotification()
  {
    getActivity().startService(new Intent(getActivity(), NotificationDisplayService.class));
  }
  
  public void switchToPaused()
  {
    e.setText(getString(2131689600));
  }
  
  public void switchToReset()
  {
    b.clear();
    d.setText(getString(2131689601));
    e.setVisibility(8);
    q.setPeekHeight(r);
    updateTextView(0.0D, 0.0D, 0.0D, false);
    a(new -..Lambda.MapFragment.PnsWTxihQZaJttqd6llZfsAWYZQ(this));
  }
  
  public void switchToRunning()
  {
    d.setText(getString(2131689602));
    e.setVisibility(0);
    e.setText(getString(2131689599));
    q.setPeekHeight(r);
  }
  
  public void toggleGPSAssistantIndication(boolean paramBoolean)
  {
    m.setPersistent(paramBoolean);
  }
  
  public void toggleRunningIndication(boolean paramBoolean)
  {
    Group localGroup = l;
    int i1;
    if (paramBoolean) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    localGroup.setVisibility(i1);
  }
  
  public void unregisterMapCenterHelper() {}
  
  public void updateTextSci(SpeedHelper.SPEED_UNIT paramSPEED_UNIT)
  {
    String[] arrayOfString = getResources().getStringArray(2130903042);
    k.setText(getString(2131689596, new Object[] { arrayOfString[paramSPEED_UNIT.ordinal()] }));
    if (paramSPEED_UNIT == SpeedHelper.SPEED_UNIT.C)
    {
      i.setText(2131689594);
      j.setText(2131689598);
      f.setTextSize(2, 25.0F);
      g.setTextSize(2, 25.0F);
      h.setTextSize(2, 25.0F);
      return;
    }
    i.setText(2131689593);
    j.setText(2131689597);
    f.setTextSize(2, 33.0F);
    g.setTextSize(2, 33.0F);
    h.setTextSize(2, 33.0F);
  }
  
  public void updateTextView(double paramDouble1, double paramDouble2, double paramDouble3, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      h.setText(getString(2131689589, new Object[] { Double.valueOf(paramDouble3) }));
      f.setText(getString(2131689587, new Object[] { Double.valueOf(SpeedHelper.meterToPlanckLength(paramDouble1 * 1000.0D)) }));
      g.setText(getString(2131689591, new Object[] { Double.valueOf(SpeedHelper.secondToPlanckTime(paramDouble2)) }));
      return;
    }
    h.setText(getString(2131689588, new Object[] { Double.valueOf(paramDouble3) }));
    f.setText(getString(2131689586, new Object[] { Float.valueOf((int)(paramDouble1 * 10.0D) / 10.0F) }));
    int i1 = (int)(paramDouble2 / 3600.0D);
    paramDouble1 = paramDouble2 - i1 * 3600;
    int i2 = (int)(paramDouble1 / 60.0D);
    int i3 = (int)(paramDouble1 - i2 * 60);
    String str;
    if (i1 == 0) {
      str = getString(2131689592, new Object[] { Integer.valueOf(i2), Integer.valueOf(i3) });
    } else {
      str = getString(2131689590, new Object[] { Integer.valueOf(i1), Integer.valueOf(i2), Integer.valueOf(i3) });
    }
    g.setText(str);
  }
  
  public void updateWaitingDialog(@StringRes int paramInt, Object... paramVarArgs)
  {
    n.setMessage(getString(paramInt, paramVarArgs));
  }
  
  static abstract interface a
  {
    public abstract void onAnimationEnd();
  }
}
