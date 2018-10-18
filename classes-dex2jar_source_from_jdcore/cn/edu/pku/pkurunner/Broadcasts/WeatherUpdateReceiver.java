package cn.edu.pku.pkurunner.Broadcasts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import cn.edu.pku.pkurunner.Model.Weather;
import cn.edu.pku.pkurunner.Network.Network;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;

public class WeatherUpdateReceiver
  extends BroadcastReceiver
{
  private Observer<Weather> a;
  
  public WeatherUpdateReceiver(Observer<Weather> paramObserver)
  {
    a = paramObserver;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Toast.makeText(paramContext, paramContext.getString(2131689659), 0).show();
    Network.getWeather().observeOn(AndroidSchedulers.mainThread()).subscribe(a);
  }
}
