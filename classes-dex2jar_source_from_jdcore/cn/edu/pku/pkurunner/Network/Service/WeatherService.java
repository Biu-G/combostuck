package cn.edu.pku.pkurunner.Network.Service;

import cn.edu.pku.pkurunner.Model.Weather;
import io.reactivex.Observable;
import retrofit2.http.GET;

public abstract interface WeatherService
{
  @GET("weather/all")
  public abstract Observable<Weather> getWeather();
}
