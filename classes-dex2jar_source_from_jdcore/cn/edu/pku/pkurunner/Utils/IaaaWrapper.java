package cn.edu.pku.pkurunner.Utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Pair;
import cn.edu.pku.pkuiaaa_android.IAAA_Authen;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public abstract class IaaaWrapper
{
  public static final int ACTIVITY_iAAA = 1651;
  public static final String EXTRA_iAAA_APPID = "iAAA_APPID";
  public static final String EXTRA_iAAA_RESULT = "iAAA_RESULT";
  public static final String EXTRA_iAAA_TOKEN = "iAAA_TOKEN";
  public static final String EXTRA_iAAA_UID = "iAAA_UID";
  public static final String RESULT_CANCEL = "cancel";
  public static final String RESULT_SUCCESS = "success";
  
  public IaaaWrapper() {}
  
  public static Observable<Pair<String, String>> HandleIaaaResult(Context paramContext, int paramInt1, int paramInt2, Intent paramIntent)
  {
    return Observable.create(new -..Lambda.IaaaWrapper.KcwTb2E_pHxJqRDpLwr1_it_RoE(paramInt1, paramInt2, paramIntent, paramContext)).subscribeOn(AndroidSchedulers.mainThread());
  }
  
  public static void LaunchIaaaLogin(Activity paramActivity)
  {
    Intent localIntent = new Intent(paramActivity, IAAA_Authen.class);
    localIntent.putExtra("iAAA_APPID", "PKU_Runner");
    paramActivity.startActivityForResult(localIntent, 1651);
  }
  
  public static void LaunchIaaaLogin(Fragment paramFragment)
  {
    Intent localIntent = new Intent(paramFragment.getActivity(), IAAA_Authen.class);
    localIntent.putExtra("iAAA_APPID", "PKU_Runner");
    paramFragment.startActivityForResult(localIntent, 1651);
  }
  
  public static class IAAAException
    extends Exception
  {
    public IAAAException(String paramString)
    {
      super();
    }
  }
}
