package android.arch.lifecycle;

import android.arch.core.util.Function;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class Transformations
{
  private Transformations() {}
  
  @MainThread
  public static <X, Y> LiveData<Y> map(@NonNull LiveData<X> paramLiveData, @NonNull final Function<X, Y> paramFunction)
  {
    MediatorLiveData localMediatorLiveData = new MediatorLiveData();
    localMediatorLiveData.addSource(paramLiveData, new Observer()
    {
      public void onChanged(@Nullable X paramAnonymousX)
      {
        a.setValue(paramFunction.apply(paramAnonymousX));
      }
    });
    return localMediatorLiveData;
  }
  
  @MainThread
  public static <X, Y> LiveData<Y> switchMap(@NonNull LiveData<X> paramLiveData, @NonNull Function<X, LiveData<Y>> paramFunction)
  {
    final MediatorLiveData localMediatorLiveData = new MediatorLiveData();
    localMediatorLiveData.addSource(paramLiveData, new Observer()
    {
      LiveData<Y> a;
      
      public void onChanged(@Nullable X paramAnonymousX)
      {
        paramAnonymousX = (LiveData)b.apply(paramAnonymousX);
        if (a == paramAnonymousX) {
          return;
        }
        if (a != null) {
          localMediatorLiveData.removeSource(a);
        }
        a = paramAnonymousX;
        if (a != null) {
          localMediatorLiveData.addSource(a, new Observer()
          {
            public void onChanged(@Nullable Y paramAnonymous2Y)
            {
              c.setValue(paramAnonymous2Y);
            }
          });
        }
      }
    });
    return localMediatorLiveData;
  }
}
