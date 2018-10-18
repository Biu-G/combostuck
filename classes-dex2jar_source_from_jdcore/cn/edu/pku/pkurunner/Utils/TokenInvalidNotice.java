package cn.edu.pku.pkurunner.Utils;

import android.content.Context;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public abstract class TokenInvalidNotice
{
  public TokenInvalidNotice() {}
  
  public static Observable<Boolean> showTokenInvalidDialog(Context paramContext)
  {
    return Observable.create(new -..Lambda.TokenInvalidNotice.LSg2IUuoGgWPetMHDxUCYlhkrBA(paramContext)).subscribeOn(AndroidSchedulers.mainThread());
  }
}
