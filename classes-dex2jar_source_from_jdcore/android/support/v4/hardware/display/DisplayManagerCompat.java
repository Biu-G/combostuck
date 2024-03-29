package android.support.v4.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.Display;
import android.view.WindowManager;
import java.util.WeakHashMap;

public final class DisplayManagerCompat
{
  public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
  private static final WeakHashMap<Context, DisplayManagerCompat> a = new WeakHashMap();
  private final Context b;
  
  private DisplayManagerCompat(Context paramContext)
  {
    b = paramContext;
  }
  
  @NonNull
  public static DisplayManagerCompat getInstance(@NonNull Context paramContext)
  {
    synchronized (a)
    {
      DisplayManagerCompat localDisplayManagerCompat2 = (DisplayManagerCompat)a.get(paramContext);
      DisplayManagerCompat localDisplayManagerCompat1 = localDisplayManagerCompat2;
      if (localDisplayManagerCompat2 == null)
      {
        localDisplayManagerCompat1 = new DisplayManagerCompat(paramContext);
        a.put(paramContext, localDisplayManagerCompat1);
      }
      return localDisplayManagerCompat1;
    }
  }
  
  @Nullable
  public Display getDisplay(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return ((DisplayManager)b.getSystemService("display")).getDisplay(paramInt);
    }
    Display localDisplay = ((WindowManager)b.getSystemService("window")).getDefaultDisplay();
    if (localDisplay.getDisplayId() == paramInt) {
      return localDisplay;
    }
    return null;
  }
  
  @NonNull
  public Display[] getDisplays()
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return ((DisplayManager)b.getSystemService("display")).getDisplays();
    }
    return new Display[] { ((WindowManager)b.getSystemService("window")).getDefaultDisplay() };
  }
  
  @NonNull
  public Display[] getDisplays(@Nullable String paramString)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return ((DisplayManager)b.getSystemService("display")).getDisplays(paramString);
    }
    if (paramString == null) {
      return new Display[0];
    }
    return new Display[] { ((WindowManager)b.getSystemService("window")).getDefaultDisplay() };
  }
}
