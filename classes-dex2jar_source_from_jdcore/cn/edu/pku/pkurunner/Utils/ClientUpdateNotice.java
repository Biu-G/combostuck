package cn.edu.pku.pkurunner.Utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public abstract class ClientUpdateNotice
{
  public ClientUpdateNotice() {}
  
  public static void downloadLatestVersion(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    String str;
    if (paramBoolean) {
      str = "https://github.com/pku-runner/pku-runner.github.io/releases/latest";
    } else {
      str = "https://pkunewyouth.pku.edu.cn/public/apks/pkurunner-latest.apk";
    }
    localIntent.setData(Uri.parse(str));
    paramContext.startActivity(localIntent);
  }
  
  public static Observable<Boolean> showVersionLowDialog(Context paramContext)
  {
    return Observable.create(new -..Lambda.ClientUpdateNotice.aD-3QTIMVj1fxMbqdaFWMe6lLFY(paramContext)).subscribeOn(AndroidSchedulers.mainThread());
  }
}
