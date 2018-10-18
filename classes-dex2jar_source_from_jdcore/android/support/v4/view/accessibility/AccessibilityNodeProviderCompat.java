package android.support.v4.view.accessibility;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

public class AccessibilityNodeProviderCompat
{
  public static final int HOST_VIEW_ID = -1;
  private final Object a;
  
  public AccessibilityNodeProviderCompat()
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new b(this);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new a(this);
      return;
    }
    a = null;
  }
  
  public AccessibilityNodeProviderCompat(Object paramObject)
  {
    a = paramObject;
  }
  
  @Nullable
  public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int paramInt)
  {
    return null;
  }
  
  @Nullable
  public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    return null;
  }
  
  @Nullable
  public AccessibilityNodeInfoCompat findFocus(int paramInt)
  {
    return null;
  }
  
  public Object getProvider()
  {
    return a;
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
  
  @RequiresApi(16)
  static class a
    extends AccessibilityNodeProvider
  {
    final AccessibilityNodeProviderCompat a;
    
    a(AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat)
    {
      a = paramAccessibilityNodeProviderCompat;
    }
    
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
    {
      AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = a.createAccessibilityNodeInfo(paramInt);
      if (localAccessibilityNodeInfoCompat == null) {
        return null;
      }
      return localAccessibilityNodeInfoCompat.unwrap();
    }
    
    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
    {
      paramString = a.findAccessibilityNodeInfosByText(paramString, paramInt);
      if (paramString == null) {
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      int i = paramString.size();
      paramInt = 0;
      while (paramInt < i)
      {
        localArrayList.add(((AccessibilityNodeInfoCompat)paramString.get(paramInt)).unwrap());
        paramInt += 1;
      }
      return localArrayList;
    }
    
    public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      return a.performAction(paramInt1, paramInt2, paramBundle);
    }
  }
  
  @RequiresApi(19)
  static class b
    extends AccessibilityNodeProviderCompat.a
  {
    b(AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat)
    {
      super();
    }
    
    public AccessibilityNodeInfo findFocus(int paramInt)
    {
      AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = a.findFocus(paramInt);
      if (localAccessibilityNodeInfoCompat == null) {
        return null;
      }
      return localAccessibilityNodeInfoCompat.unwrap();
    }
  }
}
