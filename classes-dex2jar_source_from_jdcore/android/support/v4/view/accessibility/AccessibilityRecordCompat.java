package android.support.v4.view.accessibility;

import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
import java.util.List;

public class AccessibilityRecordCompat
{
  private final AccessibilityRecord a;
  
  @Deprecated
  public AccessibilityRecordCompat(Object paramObject)
  {
    a = ((AccessibilityRecord)paramObject);
  }
  
  public static int getMaxScrollX(AccessibilityRecord paramAccessibilityRecord)
  {
    if (Build.VERSION.SDK_INT >= 15) {
      return paramAccessibilityRecord.getMaxScrollX();
    }
    return 0;
  }
  
  public static int getMaxScrollY(AccessibilityRecord paramAccessibilityRecord)
  {
    if (Build.VERSION.SDK_INT >= 15) {
      return paramAccessibilityRecord.getMaxScrollY();
    }
    return 0;
  }
  
  @Deprecated
  public static AccessibilityRecordCompat obtain()
  {
    return new AccessibilityRecordCompat(AccessibilityRecord.obtain());
  }
  
  @Deprecated
  public static AccessibilityRecordCompat obtain(AccessibilityRecordCompat paramAccessibilityRecordCompat)
  {
    return new AccessibilityRecordCompat(AccessibilityRecord.obtain(a));
  }
  
  public static void setMaxScrollX(AccessibilityRecord paramAccessibilityRecord, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 15) {
      paramAccessibilityRecord.setMaxScrollX(paramInt);
    }
  }
  
  public static void setMaxScrollY(AccessibilityRecord paramAccessibilityRecord, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 15) {
      paramAccessibilityRecord.setMaxScrollY(paramInt);
    }
  }
  
  public static void setSource(@NonNull AccessibilityRecord paramAccessibilityRecord, View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      paramAccessibilityRecord.setSource(paramView, paramInt);
    }
  }
  
  @Deprecated
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (AccessibilityRecordCompat)paramObject;
    if (a == null)
    {
      if (a != null) {
        return false;
      }
    }
    else if (!a.equals(a)) {
      return false;
    }
    return true;
  }
  
  @Deprecated
  public int getAddedCount()
  {
    return a.getAddedCount();
  }
  
  @Deprecated
  public CharSequence getBeforeText()
  {
    return a.getBeforeText();
  }
  
  @Deprecated
  public CharSequence getClassName()
  {
    return a.getClassName();
  }
  
  @Deprecated
  public CharSequence getContentDescription()
  {
    return a.getContentDescription();
  }
  
  @Deprecated
  public int getCurrentItemIndex()
  {
    return a.getCurrentItemIndex();
  }
  
  @Deprecated
  public int getFromIndex()
  {
    return a.getFromIndex();
  }
  
  @Deprecated
  public Object getImpl()
  {
    return a;
  }
  
  @Deprecated
  public int getItemCount()
  {
    return a.getItemCount();
  }
  
  @Deprecated
  public int getMaxScrollX()
  {
    return getMaxScrollX(a);
  }
  
  @Deprecated
  public int getMaxScrollY()
  {
    return getMaxScrollY(a);
  }
  
  @Deprecated
  public Parcelable getParcelableData()
  {
    return a.getParcelableData();
  }
  
  @Deprecated
  public int getRemovedCount()
  {
    return a.getRemovedCount();
  }
  
  @Deprecated
  public int getScrollX()
  {
    return a.getScrollX();
  }
  
  @Deprecated
  public int getScrollY()
  {
    return a.getScrollY();
  }
  
  @Deprecated
  public AccessibilityNodeInfoCompat getSource()
  {
    return AccessibilityNodeInfoCompat.a(a.getSource());
  }
  
  @Deprecated
  public List<CharSequence> getText()
  {
    return a.getText();
  }
  
  @Deprecated
  public int getToIndex()
  {
    return a.getToIndex();
  }
  
  @Deprecated
  public int getWindowId()
  {
    return a.getWindowId();
  }
  
  @Deprecated
  public int hashCode()
  {
    if (a == null) {
      return 0;
    }
    return a.hashCode();
  }
  
  @Deprecated
  public boolean isChecked()
  {
    return a.isChecked();
  }
  
  @Deprecated
  public boolean isEnabled()
  {
    return a.isEnabled();
  }
  
  @Deprecated
  public boolean isFullScreen()
  {
    return a.isFullScreen();
  }
  
  @Deprecated
  public boolean isPassword()
  {
    return a.isPassword();
  }
  
  @Deprecated
  public boolean isScrollable()
  {
    return a.isScrollable();
  }
  
  @Deprecated
  public void recycle()
  {
    a.recycle();
  }
  
  @Deprecated
  public void setAddedCount(int paramInt)
  {
    a.setAddedCount(paramInt);
  }
  
  @Deprecated
  public void setBeforeText(CharSequence paramCharSequence)
  {
    a.setBeforeText(paramCharSequence);
  }
  
  @Deprecated
  public void setChecked(boolean paramBoolean)
  {
    a.setChecked(paramBoolean);
  }
  
  @Deprecated
  public void setClassName(CharSequence paramCharSequence)
  {
    a.setClassName(paramCharSequence);
  }
  
  @Deprecated
  public void setContentDescription(CharSequence paramCharSequence)
  {
    a.setContentDescription(paramCharSequence);
  }
  
  @Deprecated
  public void setCurrentItemIndex(int paramInt)
  {
    a.setCurrentItemIndex(paramInt);
  }
  
  @Deprecated
  public void setEnabled(boolean paramBoolean)
  {
    a.setEnabled(paramBoolean);
  }
  
  @Deprecated
  public void setFromIndex(int paramInt)
  {
    a.setFromIndex(paramInt);
  }
  
  @Deprecated
  public void setFullScreen(boolean paramBoolean)
  {
    a.setFullScreen(paramBoolean);
  }
  
  @Deprecated
  public void setItemCount(int paramInt)
  {
    a.setItemCount(paramInt);
  }
  
  @Deprecated
  public void setMaxScrollX(int paramInt)
  {
    setMaxScrollX(a, paramInt);
  }
  
  @Deprecated
  public void setMaxScrollY(int paramInt)
  {
    setMaxScrollY(a, paramInt);
  }
  
  @Deprecated
  public void setParcelableData(Parcelable paramParcelable)
  {
    a.setParcelableData(paramParcelable);
  }
  
  @Deprecated
  public void setPassword(boolean paramBoolean)
  {
    a.setPassword(paramBoolean);
  }
  
  @Deprecated
  public void setRemovedCount(int paramInt)
  {
    a.setRemovedCount(paramInt);
  }
  
  @Deprecated
  public void setScrollX(int paramInt)
  {
    a.setScrollX(paramInt);
  }
  
  @Deprecated
  public void setScrollY(int paramInt)
  {
    a.setScrollY(paramInt);
  }
  
  @Deprecated
  public void setScrollable(boolean paramBoolean)
  {
    a.setScrollable(paramBoolean);
  }
  
  @Deprecated
  public void setSource(View paramView)
  {
    a.setSource(paramView);
  }
  
  @Deprecated
  public void setSource(View paramView, int paramInt)
  {
    setSource(a, paramView, paramInt);
  }
  
  @Deprecated
  public void setToIndex(int paramInt)
  {
    a.setToIndex(paramInt);
  }
}
