package android.arch.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.support.annotation.NonNull;

public class AndroidViewModel
  extends ViewModel
{
  @SuppressLint({"StaticFieldLeak"})
  private Application a;
  
  public AndroidViewModel(@NonNull Application paramApplication)
  {
    a = paramApplication;
  }
  
  @NonNull
  public <T extends Application> T getApplication()
  {
    return a;
  }
}
