package cn.edu.pku.pkurunner.Map;

import android.content.Context;
import android.support.annotation.StringRes;
import android.view.Menu;
import cn.edu.pku.pkurunner.Contract.BasePresenter;
import cn.edu.pku.pkurunner.Contract.BaseView;
import cn.edu.pku.pkurunner.MainActivity;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.LocationSource.OnLocationChangedListener;
import io.reactivex.Observable;

public abstract interface MapContract
{
  public static abstract interface Presenter
    extends BasePresenter
  {
    public abstract boolean isRunning();
    
    public abstract boolean isRunningPaused();
    
    public abstract boolean onFabPauseClick(boolean paramBoolean);
    
    public abstract boolean onFabRunClick(boolean paramBoolean);
    
    public abstract void onStep();
    
    public abstract void pauseAutoLocating();
    
    public abstract void pauseGPSAssistant();
    
    public abstract void startAutoLocating();
    
    public abstract void startGPSAssistant();
    
    public abstract void stopAndSwitchToIdle();
    
    public abstract void syncData();
    
    public abstract void syncOptionsMenu(Menu paramMenu);
    
    public abstract void updateUnitPreference();
  }
  
  public static abstract interface View
    extends BaseView<MapContract.Presenter>
  {
    public abstract void dismissNotification();
    
    public abstract void dismissWaitingDialog();
    
    public abstract AMap getAMap();
    
    public abstract MainActivity getActivityFromContract();
    
    public abstract Context getFragmentContext();
    
    public abstract LocationSource.OnLocationChangedListener getLocationListener();
    
    public abstract void indicatorShowUpAnimation();
    
    public abstract void makeSnackBar(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs);
    
    public abstract void makeToast(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs);
    
    public abstract void makeWaitingDialog(@StringRes int paramInt, Object... paramVarArgs);
    
    public abstract void notifyGPSInfo();
    
    public abstract void openDevelopSettings();
    
    public abstract void openGPSSettings();
    
    public abstract Observable<Boolean> registerMapCenterHelper();
    
    public abstract void releaseWakeLock();
    
    public abstract void requireWakeLock();
    
    public abstract void setAssistantText(@StringRes int paramInt, double paramDouble, Object... paramVarArgs);
    
    public abstract void setLocatingPointEnabled(boolean paramBoolean);
    
    public abstract void showNotification();
    
    public abstract void switchToPaused();
    
    public abstract void switchToReset();
    
    public abstract void switchToRunning();
    
    public abstract void toggleGPSAssistantIndication(boolean paramBoolean);
    
    public abstract void toggleRunningIndication(boolean paramBoolean);
    
    public abstract void unregisterMapCenterHelper();
    
    public abstract void updateTextSci(SpeedHelper.SPEED_UNIT paramSPEED_UNIT);
    
    public abstract void updateTextView(double paramDouble1, double paramDouble2, double paramDouble3, boolean paramBoolean);
    
    public abstract void updateWaitingDialog(@StringRes int paramInt, Object... paramVarArgs);
  }
}
