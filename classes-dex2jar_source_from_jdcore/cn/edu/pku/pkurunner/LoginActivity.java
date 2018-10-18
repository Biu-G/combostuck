package cn.edu.pku.pkurunner;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;
import cn.edu.pku.pkurunner.Exception.ServerException;
import cn.edu.pku.pkurunner.Utils.ClientUpdateNotice;
import cn.edu.pku.pkurunner.Utils.IaaaWrapper;
import cn.edu.pku.pkurunner.Utils.IaaaWrapper.IAAAException;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public class LoginActivity
  extends Activity
{
  private ProgressDialog a;
  
  public LoginActivity() {}
  
  private void a()
  {
    a = new ProgressDialog(this);
    a.setProgressStyle(0);
    a.setMessage(getString(2131689477));
    a.setIndeterminate(false);
    a.setCancelable(false);
    a.show();
  }
  
  private void a(Throwable paramThrowable)
  {
    if (((paramThrowable instanceof ServerException)) && (15 == ((ServerException)paramThrowable).getErrorCode()))
    {
      b();
      return;
    }
    if ((paramThrowable instanceof IaaaWrapper.IAAAException)) {
      paramThrowable = paramThrowable.getLocalizedMessage();
    } else {
      paramThrowable = getString(2131689476, new Object[] { paramThrowable.getLocalizedMessage() });
    }
    Toast.makeText(this, paramThrowable, 1).show();
  }
  
  private boolean a(String paramString, int paramInt)
  {
    if (!"".equals(paramString))
    {
      if (paramString == null) {
        return false;
      }
      return (paramInt == 0) || (paramInt == 1);
    }
    return false;
  }
  
  private void b()
  {
    ClientUpdateNotice.showVersionLowDialog(this).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.LoginActivity.lBhO2QwPQkHAH16lPD0bHxOANt4(this));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    IaaaWrapper.HandleIaaaResult(this, paramInt1, paramInt2, paramIntent).observeOn(AndroidSchedulers.mainThread()).flatMap(new -..Lambda.LoginActivity.9t2_m1YP78AA2Jb8uOVKb_D0efI(this)).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.LoginActivity.y_nJKiFuZyUyEvPTYCimsVLwZdI(this), new -..Lambda.LoginActivity.Jc0edaaKmkHb-2fNiXlHXcXWZoQ(this));
  }
  
  public void onBackPressed()
  {
    moveTaskToBack(true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2131492893);
    paramBundle = getIntent();
    if ((paramBundle != null) && (paramBundle.getBooleanExtra("logout", false)))
    {
      Data.setUser(null);
      Data.setUserStatus(null);
      Data.setValid(false);
      Data.saveCurrentUserIdToFile();
    }
    ((Button)findViewById(2131296263)).setOnClickListener(new -..Lambda.LoginActivity.d6VHadpb7dR5G5pGVifj8hdiUrY(this));
    ((Button)findViewById(2131296264)).setOnClickListener(new -..Lambda.LoginActivity.jETAjfkzl4DzWBCb_7nh-Gg6IZQ(this));
    ((Button)findViewById(2131296265)).setOnClickListener(new -..Lambda.LoginActivity.1_xgIslBHjpruAXjQPTB3aHr5ao(this));
  }
}
