package cn.edu.pku.pkurunner.Offline;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.util.Pair;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public abstract class QuickOfflineSignin
{
  public QuickOfflineSignin() {}
  
  @NonNull
  public static Observable<Pair<String, Integer>> createDialog(Activity paramActivity)
  {
    return Observable.create(new -..Lambda.QuickOfflineSignin.sKOP1sRZnjWl6psFtzzZgQ4f-PU(paramActivity)).subscribeOn(AndroidSchedulers.mainThread());
  }
}
