package cn.edu.pku.pkurunner.Storage;

import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;

public abstract class StorageUtil
{
  public StorageUtil() {}
  
  public static <T> Observable<T> NetworkMethodWrapper(Producer<T> paramProducer)
  {
    return Observable.create(new -..Lambda.StorageUtil.Z4ykf8Vg-V-HFsS8IN0WgBXI7YU(paramProducer)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
  }
  
  public static String sizeToReadableString(long paramLong)
  {
    double d = paramLong;
    char[] arrayOfChar = new char[5];
    char[] tmp10_8 = arrayOfChar;
    tmp10_8[0] = 66;
    char[] tmp15_10 = tmp10_8;
    tmp15_10[1] = 75;
    char[] tmp20_15 = tmp15_10;
    tmp20_15[2] = 77;
    char[] tmp25_20 = tmp20_15;
    tmp25_20[3] = 71;
    char[] tmp30_25 = tmp25_20;
    tmp30_25[4] = 84;
    tmp30_25;
    int j = tmp15_10.length;
    int i = 0;
    while (i < j)
    {
      c = tmp15_10[i];
      if (d < 1024.0D) {
        break label86;
      }
      d /= 1024.0D;
      i += 1;
    }
    char c = 'T';
    label86:
    return String.format("%.1f %c", new Object[] { Double.valueOf(d), Character.valueOf(c) });
  }
  
  public static abstract interface Producer<T>
  {
    public abstract T produce()
      throws Throwable;
  }
}
