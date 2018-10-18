package android.support.v4.media;

import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public abstract class VolumeProviderCompat
{
  public static final int VOLUME_CONTROL_ABSOLUTE = 2;
  public static final int VOLUME_CONTROL_FIXED = 0;
  public static final int VOLUME_CONTROL_RELATIVE = 1;
  private final int a;
  private final int b;
  private int c;
  private Callback d;
  private Object e;
  
  public VolumeProviderCompat(int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
  }
  
  public final int getCurrentVolume()
  {
    return c;
  }
  
  public final int getMaxVolume()
  {
    return b;
  }
  
  public final int getVolumeControl()
  {
    return a;
  }
  
  public Object getVolumeProvider()
  {
    if ((e == null) && (Build.VERSION.SDK_INT >= 21)) {
      e = VolumeProviderCompatApi21.a(a, b, c, new VolumeProviderCompatApi21.Delegate()
      {
        public void onAdjustVolume(int paramAnonymousInt)
        {
          VolumeProviderCompat.this.onAdjustVolume(paramAnonymousInt);
        }
        
        public void onSetVolumeTo(int paramAnonymousInt)
        {
          VolumeProviderCompat.this.onSetVolumeTo(paramAnonymousInt);
        }
      });
    }
    return e;
  }
  
  public void onAdjustVolume(int paramInt) {}
  
  public void onSetVolumeTo(int paramInt) {}
  
  public void setCallback(Callback paramCallback)
  {
    d = paramCallback;
  }
  
  public final void setCurrentVolume(int paramInt)
  {
    c = paramInt;
    Object localObject = getVolumeProvider();
    if ((localObject != null) && (Build.VERSION.SDK_INT >= 21)) {
      VolumeProviderCompatApi21.a(localObject, paramInt);
    }
    if (d != null) {
      d.onVolumeChanged(this);
    }
  }
  
  public static abstract class Callback
  {
    public Callback() {}
    
    public abstract void onVolumeChanged(VolumeProviderCompat paramVolumeProviderCompat);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface ControlType {}
}
