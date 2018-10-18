package android.support.v7.preference;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.view.View;

public class PreferenceCategory
  extends PreferenceGroup
{
  public PreferenceCategory(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.preferenceCategoryStyle, 16842892));
  }
  
  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public boolean isEnabled()
  {
    return false;
  }
  
  public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder)
  {
    super.onBindViewHolder(paramPreferenceViewHolder);
    if (Build.VERSION.SDK_INT >= 28) {
      itemView.setAccessibilityHeading(true);
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfoCompat);
    if (Build.VERSION.SDK_INT < 28)
    {
      AccessibilityNodeInfoCompat.CollectionItemInfoCompat localCollectionItemInfoCompat = paramAccessibilityNodeInfoCompat.getCollectionItemInfo();
      if (localCollectionItemInfoCompat == null) {
        return;
      }
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(localCollectionItemInfoCompat.getRowIndex(), localCollectionItemInfoCompat.getRowSpan(), localCollectionItemInfoCompat.getColumnIndex(), localCollectionItemInfoCompat.getColumnSpan(), true, localCollectionItemInfoCompat.isSelected()));
    }
  }
  
  public boolean shouldDisableDependents()
  {
    return super.isEnabled() ^ true;
  }
}
