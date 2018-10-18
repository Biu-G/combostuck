package android.support.v4.app;

import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import android.view.Window.OnFrameMetricsAvailableListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class FrameMetricsAggregator
{
  public static final int ANIMATION_DURATION = 256;
  public static final int ANIMATION_INDEX = 8;
  public static final int COMMAND_DURATION = 32;
  public static final int COMMAND_INDEX = 5;
  public static final int DELAY_DURATION = 128;
  public static final int DELAY_INDEX = 7;
  public static final int DRAW_DURATION = 8;
  public static final int DRAW_INDEX = 3;
  public static final int EVERY_DURATION = 511;
  public static final int INPUT_DURATION = 2;
  public static final int INPUT_INDEX = 1;
  public static final int LAYOUT_MEASURE_DURATION = 4;
  public static final int LAYOUT_MEASURE_INDEX = 2;
  public static final int SWAP_DURATION = 64;
  public static final int SWAP_INDEX = 6;
  public static final int SYNC_DURATION = 16;
  public static final int SYNC_INDEX = 4;
  public static final int TOTAL_DURATION = 1;
  public static final int TOTAL_INDEX = 0;
  private b a;
  
  public FrameMetricsAggregator()
  {
    this(1);
  }
  
  public FrameMetricsAggregator(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      a = new a(paramInt);
      return;
    }
    a = new b();
  }
  
  public void add(@NonNull Activity paramActivity)
  {
    a.a(paramActivity);
  }
  
  @Nullable
  public SparseIntArray[] getMetrics()
  {
    return a.b();
  }
  
  @Nullable
  public SparseIntArray[] remove(@NonNull Activity paramActivity)
  {
    return a.b(paramActivity);
  }
  
  @Nullable
  public SparseIntArray[] reset()
  {
    return a.c();
  }
  
  @Nullable
  public SparseIntArray[] stop()
  {
    return a.a();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface MetricType {}
  
  @RequiresApi(24)
  private static class a
    extends FrameMetricsAggregator.b
  {
    private static HandlerThread e;
    private static Handler f;
    int a;
    SparseIntArray[] b = new SparseIntArray[9];
    Window.OnFrameMetricsAvailableListener c = new Window.OnFrameMetricsAvailableListener()
    {
      public void onFrameMetricsAvailable(Window paramAnonymousWindow, FrameMetrics paramAnonymousFrameMetrics, int paramAnonymousInt)
      {
        if ((a & 0x1) != 0) {
          a(b[0], paramAnonymousFrameMetrics.getMetric(8));
        }
        if ((a & 0x2) != 0) {
          a(b[1], paramAnonymousFrameMetrics.getMetric(1));
        }
        if ((a & 0x4) != 0) {
          a(b[2], paramAnonymousFrameMetrics.getMetric(3));
        }
        if ((a & 0x8) != 0) {
          a(b[3], paramAnonymousFrameMetrics.getMetric(4));
        }
        if ((a & 0x10) != 0) {
          a(b[4], paramAnonymousFrameMetrics.getMetric(5));
        }
        if ((a & 0x40) != 0) {
          a(b[6], paramAnonymousFrameMetrics.getMetric(7));
        }
        if ((a & 0x20) != 0) {
          a(b[5], paramAnonymousFrameMetrics.getMetric(6));
        }
        if ((a & 0x80) != 0) {
          a(b[7], paramAnonymousFrameMetrics.getMetric(0));
        }
        if ((a & 0x100) != 0) {
          a(b[8], paramAnonymousFrameMetrics.getMetric(2));
        }
      }
    };
    private ArrayList<WeakReference<Activity>> d = new ArrayList();
    
    a(int paramInt)
    {
      a = paramInt;
    }
    
    public void a(Activity paramActivity)
    {
      if (e == null)
      {
        e = new HandlerThread("FrameMetricsAggregator");
        e.start();
        f = new Handler(e.getLooper());
      }
      int i = 0;
      while (i <= 8)
      {
        if ((b[i] == null) && ((a & 1 << i) != 0)) {
          b[i] = new SparseIntArray();
        }
        i += 1;
      }
      paramActivity.getWindow().addOnFrameMetricsAvailableListener(c, f);
      d.add(new WeakReference(paramActivity));
    }
    
    void a(SparseIntArray paramSparseIntArray, long paramLong)
    {
      if (paramSparseIntArray != null)
      {
        int i = (int)((500000L + paramLong) / 1000000L);
        if (paramLong >= 0L) {
          paramSparseIntArray.put(i, paramSparseIntArray.get(i) + 1);
        }
      }
    }
    
    public SparseIntArray[] a()
    {
      int i = d.size() - 1;
      while (i >= 0)
      {
        WeakReference localWeakReference = (WeakReference)d.get(i);
        Activity localActivity = (Activity)localWeakReference.get();
        if (localWeakReference.get() != null)
        {
          localActivity.getWindow().removeOnFrameMetricsAvailableListener(c);
          d.remove(i);
        }
        i -= 1;
      }
      return b;
    }
    
    public SparseIntArray[] b()
    {
      return b;
    }
    
    public SparseIntArray[] b(Activity paramActivity)
    {
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        if (localWeakReference.get() == paramActivity) {
          d.remove(localWeakReference);
        }
      }
      paramActivity.getWindow().removeOnFrameMetricsAvailableListener(c);
      return b;
    }
    
    public SparseIntArray[] c()
    {
      SparseIntArray[] arrayOfSparseIntArray = b;
      b = new SparseIntArray[9];
      return arrayOfSparseIntArray;
    }
  }
  
  private static class b
  {
    b() {}
    
    public void a(Activity paramActivity) {}
    
    public SparseIntArray[] a()
    {
      return null;
    }
    
    public SparseIntArray[] b()
    {
      return null;
    }
    
    public SparseIntArray[] b(Activity paramActivity)
    {
      return null;
    }
    
    public SparseIntArray[] c()
    {
      return null;
    }
  }
}
