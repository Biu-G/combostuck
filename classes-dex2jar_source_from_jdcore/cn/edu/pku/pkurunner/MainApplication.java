package cn.edu.pku.pkurunner;

import android.app.Application;
import cn.edu.pku.pkurunner.Network.Network;
import com.squareup.leakcanary.LeakCanary;
import com.tencent.bugly.crashreport.CrashReport;
import org.xutils.x.Ext;

public class MainApplication
  extends Application
{
  public MainApplication() {}
  
  public void onCreate()
  {
    super.onCreate();
    if (LeakCanary.isInAnalyzerProcess(this)) {
      return;
    }
    LeakCanary.install(this);
    Network.init(this);
    x.Ext.init(this);
    x.Ext.setDebug(false);
    CrashReport.initCrashReport(getApplicationContext(), "900033802", false);
  }
}
