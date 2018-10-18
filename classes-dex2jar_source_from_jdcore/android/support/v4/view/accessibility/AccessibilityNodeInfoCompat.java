package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;
import android.view.accessibility.AccessibilityNodeInfo.RangeInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class AccessibilityNodeInfoCompat
{
  public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
  public static final String ACTION_ARGUMENT_COLUMN_INT = "android.view.accessibility.action.ARGUMENT_COLUMN_INT";
  public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
  public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
  public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
  public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = "ACTION_ARGUMENT_MOVE_WINDOW_X";
  public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = "ACTION_ARGUMENT_MOVE_WINDOW_Y";
  public static final String ACTION_ARGUMENT_PROGRESS_VALUE = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE";
  public static final String ACTION_ARGUMENT_ROW_INT = "android.view.accessibility.action.ARGUMENT_ROW_INT";
  public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
  public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
  public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
  public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
  public static final int ACTION_CLEAR_FOCUS = 2;
  public static final int ACTION_CLEAR_SELECTION = 8;
  public static final int ACTION_CLICK = 16;
  public static final int ACTION_COLLAPSE = 524288;
  public static final int ACTION_COPY = 16384;
  public static final int ACTION_CUT = 65536;
  public static final int ACTION_DISMISS = 1048576;
  public static final int ACTION_EXPAND = 262144;
  public static final int ACTION_FOCUS = 1;
  public static final int ACTION_LONG_CLICK = 32;
  public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
  public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
  public static final int ACTION_PASTE = 32768;
  public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
  public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
  public static final int ACTION_SCROLL_BACKWARD = 8192;
  public static final int ACTION_SCROLL_FORWARD = 4096;
  public static final int ACTION_SELECT = 4;
  public static final int ACTION_SET_SELECTION = 131072;
  public static final int ACTION_SET_TEXT = 2097152;
  public static final int FOCUS_ACCESSIBILITY = 2;
  public static final int FOCUS_INPUT = 1;
  public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
  public static final int MOVEMENT_GRANULARITY_LINE = 4;
  public static final int MOVEMENT_GRANULARITY_PAGE = 16;
  public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
  public static final int MOVEMENT_GRANULARITY_WORD = 2;
  private final AccessibilityNodeInfo a;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int mParentVirtualDescendantId = -1;
  
  private AccessibilityNodeInfoCompat(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    a = paramAccessibilityNodeInfo;
  }
  
  @Deprecated
  public AccessibilityNodeInfoCompat(Object paramObject)
  {
    a = ((AccessibilityNodeInfo)paramObject);
  }
  
  static AccessibilityNodeInfoCompat a(Object paramObject)
  {
    if (paramObject != null) {
      return new AccessibilityNodeInfoCompat(paramObject);
    }
    return null;
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    Bundle localBundle = getExtras();
    if (localBundle != null)
    {
      int j = localBundle.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0);
      int i;
      if (paramBoolean) {
        i = paramInt;
      } else {
        i = 0;
      }
      localBundle.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | j & paramInt);
    }
  }
  
  private boolean a(int paramInt)
  {
    Bundle localBundle = getExtras();
    boolean bool = false;
    if (localBundle == null) {
      return false;
    }
    if ((localBundle.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & paramInt) == paramInt) {
      bool = true;
    }
    return bool;
  }
  
  private static String b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "ACTION_UNKNOWN";
    case 131072: 
      return "ACTION_SET_SELECTION";
    case 65536: 
      return "ACTION_CUT";
    case 32768: 
      return "ACTION_PASTE";
    case 16384: 
      return "ACTION_COPY";
    case 8192: 
      return "ACTION_SCROLL_BACKWARD";
    case 4096: 
      return "ACTION_SCROLL_FORWARD";
    case 2048: 
      return "ACTION_PREVIOUS_HTML_ELEMENT";
    case 1024: 
      return "ACTION_NEXT_HTML_ELEMENT";
    case 512: 
      return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
    case 256: 
      return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
    case 128: 
      return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
    case 64: 
      return "ACTION_ACCESSIBILITY_FOCUS";
    case 32: 
      return "ACTION_LONG_CLICK";
    case 16: 
      return "ACTION_CLICK";
    case 8: 
      return "ACTION_CLEAR_SELECTION";
    case 4: 
      return "ACTION_SELECT";
    case 2: 
      return "ACTION_CLEAR_FOCUS";
    }
    return "ACTION_FOCUS";
  }
  
  public static AccessibilityNodeInfoCompat obtain()
  {
    return wrap(AccessibilityNodeInfo.obtain());
  }
  
  public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    return wrap(AccessibilityNodeInfo.obtain(a));
  }
  
  public static AccessibilityNodeInfoCompat obtain(View paramView)
  {
    return wrap(AccessibilityNodeInfo.obtain(paramView));
  }
  
  public static AccessibilityNodeInfoCompat obtain(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a(AccessibilityNodeInfo.obtain(paramView, paramInt));
    }
    return null;
  }
  
  public static AccessibilityNodeInfoCompat wrap(@NonNull AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    return new AccessibilityNodeInfoCompat(paramAccessibilityNodeInfo);
  }
  
  public void addAction(int paramInt)
  {
    a.addAction(paramInt);
  }
  
  public void addAction(AccessibilityActionCompat paramAccessibilityActionCompat)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      a.addAction((AccessibilityNodeInfo.AccessibilityAction)a);
    }
  }
  
  public void addChild(View paramView)
  {
    a.addChild(paramView);
  }
  
  public void addChild(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      a.addChild(paramView, paramInt);
    }
  }
  
  public boolean canOpenPopup()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.canOpenPopup();
    }
    return false;
  }
  
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
    paramObject = (AccessibilityNodeInfoCompat)paramObject;
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
  
  public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = a.findAccessibilityNodeInfosByText(paramString);
    int j = paramString.size();
    int i = 0;
    while (i < j)
    {
      localArrayList.add(wrap((AccessibilityNodeInfo)paramString.get(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 18)
    {
      Object localObject = a.findAccessibilityNodeInfosByViewId(paramString);
      paramString = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramString.add(wrap((AccessibilityNodeInfo)((Iterator)localObject).next()));
      }
      return paramString;
    }
    return Collections.emptyList();
  }
  
  public AccessibilityNodeInfoCompat findFocus(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a(a.findFocus(paramInt));
    }
    return null;
  }
  
  public AccessibilityNodeInfoCompat focusSearch(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a(a.focusSearch(paramInt));
    }
    return null;
  }
  
  public List<AccessibilityActionCompat> getActionList()
  {
    List localList;
    if (Build.VERSION.SDK_INT >= 21) {
      localList = a.getActionList();
    } else {
      localList = null;
    }
    if (localList != null)
    {
      ArrayList localArrayList = new ArrayList();
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        localArrayList.add(new AccessibilityActionCompat(localList.get(i)));
        i += 1;
      }
      return localArrayList;
    }
    return Collections.emptyList();
  }
  
  public int getActions()
  {
    return a.getActions();
  }
  
  public void getBoundsInParent(Rect paramRect)
  {
    a.getBoundsInParent(paramRect);
  }
  
  public void getBoundsInScreen(Rect paramRect)
  {
    a.getBoundsInScreen(paramRect);
  }
  
  public AccessibilityNodeInfoCompat getChild(int paramInt)
  {
    return a(a.getChild(paramInt));
  }
  
  public int getChildCount()
  {
    return a.getChildCount();
  }
  
  public CharSequence getClassName()
  {
    return a.getClassName();
  }
  
  public CollectionInfoCompat getCollectionInfo()
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      AccessibilityNodeInfo.CollectionInfo localCollectionInfo = a.getCollectionInfo();
      if (localCollectionInfo != null) {
        return new CollectionInfoCompat(localCollectionInfo);
      }
    }
    return null;
  }
  
  public CollectionItemInfoCompat getCollectionItemInfo()
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      AccessibilityNodeInfo.CollectionItemInfo localCollectionItemInfo = a.getCollectionItemInfo();
      if (localCollectionItemInfo != null) {
        return new CollectionItemInfoCompat(localCollectionItemInfo);
      }
    }
    return null;
  }
  
  public CharSequence getContentDescription()
  {
    return a.getContentDescription();
  }
  
  public int getDrawingOrder()
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return a.getDrawingOrder();
    }
    return 0;
  }
  
  public CharSequence getError()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return a.getError();
    }
    return null;
  }
  
  public Bundle getExtras()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.getExtras();
    }
    return new Bundle();
  }
  
  @Nullable
  public CharSequence getHintText()
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return a.getHintText();
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return a.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY");
    }
    return null;
  }
  
  @Deprecated
  public Object getInfo()
  {
    return a;
  }
  
  public int getInputType()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.getInputType();
    }
    return 0;
  }
  
  public AccessibilityNodeInfoCompat getLabelFor()
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return a(a.getLabelFor());
    }
    return null;
  }
  
  public AccessibilityNodeInfoCompat getLabeledBy()
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return a(a.getLabeledBy());
    }
    return null;
  }
  
  public int getLiveRegion()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.getLiveRegion();
    }
    return 0;
  }
  
  public int getMaxTextLength()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return a.getMaxTextLength();
    }
    return -1;
  }
  
  public int getMovementGranularities()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a.getMovementGranularities();
    }
    return 0;
  }
  
  public CharSequence getPackageName()
  {
    return a.getPackageName();
  }
  
  @Nullable
  public CharSequence getPaneTitle()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.getPaneTitle();
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return a.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY");
    }
    return null;
  }
  
  public AccessibilityNodeInfoCompat getParent()
  {
    return a(a.getParent());
  }
  
  public RangeInfoCompat getRangeInfo()
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      AccessibilityNodeInfo.RangeInfo localRangeInfo = a.getRangeInfo();
      if (localRangeInfo != null) {
        return new RangeInfoCompat(localRangeInfo);
      }
    }
    return null;
  }
  
  @Nullable
  public CharSequence getRoleDescription()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.getExtras().getCharSequence("AccessibilityNodeInfo.roleDescription");
    }
    return null;
  }
  
  public CharSequence getText()
  {
    return a.getText();
  }
  
  public int getTextSelectionEnd()
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return a.getTextSelectionEnd();
    }
    return -1;
  }
  
  public int getTextSelectionStart()
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return a.getTextSelectionStart();
    }
    return -1;
  }
  
  @Nullable
  public CharSequence getTooltipText()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.getTooltipText();
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return a.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY");
    }
    return null;
  }
  
  public AccessibilityNodeInfoCompat getTraversalAfter()
  {
    if (Build.VERSION.SDK_INT >= 22) {
      return a(a.getTraversalAfter());
    }
    return null;
  }
  
  public AccessibilityNodeInfoCompat getTraversalBefore()
  {
    if (Build.VERSION.SDK_INT >= 22) {
      return a(a.getTraversalBefore());
    }
    return null;
  }
  
  public String getViewIdResourceName()
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return a.getViewIdResourceName();
    }
    return null;
  }
  
  public AccessibilityWindowInfoCompat getWindow()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return AccessibilityWindowInfoCompat.a(a.getWindow());
    }
    return null;
  }
  
  public int getWindowId()
  {
    return a.getWindowId();
  }
  
  public int hashCode()
  {
    if (a == null) {
      return 0;
    }
    return a.hashCode();
  }
  
  public boolean isAccessibilityFocused()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a.isAccessibilityFocused();
    }
    return false;
  }
  
  public boolean isCheckable()
  {
    return a.isCheckable();
  }
  
  public boolean isChecked()
  {
    return a.isChecked();
  }
  
  public boolean isClickable()
  {
    return a.isClickable();
  }
  
  public boolean isContentInvalid()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.isContentInvalid();
    }
    return false;
  }
  
  public boolean isContextClickable()
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return a.isContextClickable();
    }
    return false;
  }
  
  public boolean isDismissable()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.isDismissable();
    }
    return false;
  }
  
  public boolean isEditable()
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return a.isEditable();
    }
    return false;
  }
  
  public boolean isEnabled()
  {
    return a.isEnabled();
  }
  
  public boolean isFocusable()
  {
    return a.isFocusable();
  }
  
  public boolean isFocused()
  {
    return a.isFocused();
  }
  
  public boolean isHeading()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.isHeading();
    }
    if (a(2)) {
      return true;
    }
    CollectionItemInfoCompat localCollectionItemInfoCompat = getCollectionItemInfo();
    return (localCollectionItemInfoCompat != null) && (localCollectionItemInfoCompat.isHeading());
  }
  
  public boolean isImportantForAccessibility()
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return a.isImportantForAccessibility();
    }
    return true;
  }
  
  public boolean isLongClickable()
  {
    return a.isLongClickable();
  }
  
  public boolean isMultiLine()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return a.isMultiLine();
    }
    return false;
  }
  
  public boolean isPassword()
  {
    return a.isPassword();
  }
  
  public boolean isScreenReaderFocusable()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return a.isScreenReaderFocusable();
    }
    return a(1);
  }
  
  public boolean isScrollable()
  {
    return a.isScrollable();
  }
  
  public boolean isSelected()
  {
    return a.isSelected();
  }
  
  public boolean isShowingHintText()
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return a.isShowingHintText();
    }
    return a(4);
  }
  
  public boolean isVisibleToUser()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a.isVisibleToUser();
    }
    return false;
  }
  
  public boolean performAction(int paramInt)
  {
    return a.performAction(paramInt);
  }
  
  public boolean performAction(int paramInt, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a.performAction(paramInt, paramBundle);
    }
    return false;
  }
  
  public void recycle()
  {
    a.recycle();
  }
  
  public boolean refresh()
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return a.refresh();
    }
    return false;
  }
  
  public boolean removeAction(AccessibilityActionCompat paramAccessibilityActionCompat)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return a.removeAction((AccessibilityNodeInfo.AccessibilityAction)a);
    }
    return false;
  }
  
  public boolean removeChild(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return a.removeChild(paramView);
    }
    return false;
  }
  
  public boolean removeChild(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return a.removeChild(paramView, paramInt);
    }
    return false;
  }
  
  public void setAccessibilityFocused(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      a.setAccessibilityFocused(paramBoolean);
    }
  }
  
  public void setBoundsInParent(Rect paramRect)
  {
    a.setBoundsInParent(paramRect);
  }
  
  public void setBoundsInScreen(Rect paramRect)
  {
    a.setBoundsInScreen(paramRect);
  }
  
  public void setCanOpenPopup(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.setCanOpenPopup(paramBoolean);
    }
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    a.setCheckable(paramBoolean);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    a.setChecked(paramBoolean);
  }
  
  public void setClassName(CharSequence paramCharSequence)
  {
    a.setClassName(paramCharSequence);
  }
  
  public void setClickable(boolean paramBoolean)
  {
    a.setClickable(paramBoolean);
  }
  
  public void setCollectionInfo(Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      AccessibilityNodeInfo localAccessibilityNodeInfo = a;
      if (paramObject == null) {
        paramObject = null;
      } else {
        paramObject = (AccessibilityNodeInfo.CollectionInfo)a;
      }
      localAccessibilityNodeInfo.setCollectionInfo(paramObject);
    }
  }
  
  public void setCollectionItemInfo(Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      AccessibilityNodeInfo localAccessibilityNodeInfo = a;
      if (paramObject == null) {
        paramObject = null;
      } else {
        paramObject = (AccessibilityNodeInfo.CollectionItemInfo)a;
      }
      localAccessibilityNodeInfo.setCollectionItemInfo(paramObject);
    }
  }
  
  public void setContentDescription(CharSequence paramCharSequence)
  {
    a.setContentDescription(paramCharSequence);
  }
  
  public void setContentInvalid(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.setContentInvalid(paramBoolean);
    }
  }
  
  public void setContextClickable(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      a.setContextClickable(paramBoolean);
    }
  }
  
  public void setDismissable(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.setDismissable(paramBoolean);
    }
  }
  
  public void setDrawingOrder(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      a.setDrawingOrder(paramInt);
    }
  }
  
  public void setEditable(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      a.setEditable(paramBoolean);
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    a.setEnabled(paramBoolean);
  }
  
  public void setError(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      a.setError(paramCharSequence);
    }
  }
  
  public void setFocusable(boolean paramBoolean)
  {
    a.setFocusable(paramBoolean);
  }
  
  public void setFocused(boolean paramBoolean)
  {
    a.setFocused(paramBoolean);
  }
  
  public void setHeading(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      a.setHeading(paramBoolean);
      return;
    }
    a(2, paramBoolean);
  }
  
  public void setHintText(@Nullable CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      a.setHintText(paramCharSequence);
      return;
    }
    if (Build.VERSION.SDK_INT >= 19) {
      a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", paramCharSequence);
    }
  }
  
  public void setImportantForAccessibility(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      a.setImportantForAccessibility(paramBoolean);
    }
  }
  
  public void setInputType(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.setInputType(paramInt);
    }
  }
  
  public void setLabelFor(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      a.setLabelFor(paramView);
    }
  }
  
  public void setLabelFor(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      a.setLabelFor(paramView, paramInt);
    }
  }
  
  public void setLabeledBy(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      a.setLabeledBy(paramView);
    }
  }
  
  public void setLabeledBy(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      a.setLabeledBy(paramView, paramInt);
    }
  }
  
  public void setLiveRegion(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.setLiveRegion(paramInt);
    }
  }
  
  public void setLongClickable(boolean paramBoolean)
  {
    a.setLongClickable(paramBoolean);
  }
  
  public void setMaxTextLength(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      a.setMaxTextLength(paramInt);
    }
  }
  
  public void setMovementGranularities(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      a.setMovementGranularities(paramInt);
    }
  }
  
  public void setMultiLine(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.setMultiLine(paramBoolean);
    }
  }
  
  public void setPackageName(CharSequence paramCharSequence)
  {
    a.setPackageName(paramCharSequence);
  }
  
  public void setPaneTitle(@Nullable CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      a.setPaneTitle(paramCharSequence);
      return;
    }
    if (Build.VERSION.SDK_INT >= 19) {
      a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", paramCharSequence);
    }
  }
  
  public void setParent(View paramView)
  {
    a.setParent(paramView);
  }
  
  public void setParent(View paramView, int paramInt)
  {
    mParentVirtualDescendantId = paramInt;
    if (Build.VERSION.SDK_INT >= 16) {
      a.setParent(paramView, paramInt);
    }
  }
  
  public void setPassword(boolean paramBoolean)
  {
    a.setPassword(paramBoolean);
  }
  
  public void setRangeInfo(RangeInfoCompat paramRangeInfoCompat)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.setRangeInfo((AccessibilityNodeInfo.RangeInfo)a);
    }
  }
  
  public void setRoleDescription(@Nullable CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", paramCharSequence);
    }
  }
  
  public void setScreenReaderFocusable(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      a.setScreenReaderFocusable(paramBoolean);
      return;
    }
    a(1, paramBoolean);
  }
  
  public void setScrollable(boolean paramBoolean)
  {
    a.setScrollable(paramBoolean);
  }
  
  public void setSelected(boolean paramBoolean)
  {
    a.setSelected(paramBoolean);
  }
  
  public void setShowingHintText(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      a.setShowingHintText(paramBoolean);
      return;
    }
    a(4, paramBoolean);
  }
  
  public void setSource(View paramView)
  {
    a.setSource(paramView);
  }
  
  public void setSource(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      a.setSource(paramView, paramInt);
    }
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    a.setText(paramCharSequence);
  }
  
  public void setTextSelection(int paramInt1, int paramInt2)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      a.setTextSelection(paramInt1, paramInt2);
    }
  }
  
  public void setTooltipText(@Nullable CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      a.setTooltipText(paramCharSequence);
      return;
    }
    if (Build.VERSION.SDK_INT >= 19) {
      a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY", paramCharSequence);
    }
  }
  
  public void setTraversalAfter(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 22) {
      a.setTraversalAfter(paramView);
    }
  }
  
  public void setTraversalAfter(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 22) {
      a.setTraversalAfter(paramView, paramInt);
    }
  }
  
  public void setTraversalBefore(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 22) {
      a.setTraversalBefore(paramView);
    }
  }
  
  public void setTraversalBefore(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 22) {
      a.setTraversalBefore(paramView, paramInt);
    }
  }
  
  public void setViewIdResourceName(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      a.setViewIdResourceName(paramString);
    }
  }
  
  public void setVisibleToUser(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      a.setVisibleToUser(paramBoolean);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append(super.toString());
    Object localObject = new Rect();
    getBoundsInParent((Rect)localObject);
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append("; boundsInParent: ");
    localStringBuilder2.append(localObject);
    localStringBuilder1.append(localStringBuilder2.toString());
    getBoundsInScreen((Rect)localObject);
    localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append("; boundsInScreen: ");
    localStringBuilder2.append(localObject);
    localStringBuilder1.append(localStringBuilder2.toString());
    localStringBuilder1.append("; packageName: ");
    localStringBuilder1.append(getPackageName());
    localStringBuilder1.append("; className: ");
    localStringBuilder1.append(getClassName());
    localStringBuilder1.append("; text: ");
    localStringBuilder1.append(getText());
    localStringBuilder1.append("; contentDescription: ");
    localStringBuilder1.append(getContentDescription());
    localStringBuilder1.append("; viewId: ");
    localStringBuilder1.append(getViewIdResourceName());
    localStringBuilder1.append("; checkable: ");
    localStringBuilder1.append(isCheckable());
    localStringBuilder1.append("; checked: ");
    localStringBuilder1.append(isChecked());
    localStringBuilder1.append("; focusable: ");
    localStringBuilder1.append(isFocusable());
    localStringBuilder1.append("; focused: ");
    localStringBuilder1.append(isFocused());
    localStringBuilder1.append("; selected: ");
    localStringBuilder1.append(isSelected());
    localStringBuilder1.append("; clickable: ");
    localStringBuilder1.append(isClickable());
    localStringBuilder1.append("; longClickable: ");
    localStringBuilder1.append(isLongClickable());
    localStringBuilder1.append("; enabled: ");
    localStringBuilder1.append(isEnabled());
    localStringBuilder1.append("; password: ");
    localStringBuilder1.append(isPassword());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("; scrollable: ");
    ((StringBuilder)localObject).append(isScrollable());
    localStringBuilder1.append(((StringBuilder)localObject).toString());
    localStringBuilder1.append("; [");
    int i = getActions();
    while (i != 0)
    {
      int k = 1 << Integer.numberOfTrailingZeros(i);
      int j = i & k;
      localStringBuilder1.append(b(k));
      i = j;
      if (j != 0)
      {
        localStringBuilder1.append(", ");
        i = j;
      }
    }
    localStringBuilder1.append("]");
    return localStringBuilder1.toString();
  }
  
  public AccessibilityNodeInfo unwrap()
  {
    return a;
  }
  
  public static class AccessibilityActionCompat
  {
    public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS;
    public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS;
    public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS;
    public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION;
    public static final AccessibilityActionCompat ACTION_CLICK;
    public static final AccessibilityActionCompat ACTION_COLLAPSE;
    public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK;
    public static final AccessibilityActionCompat ACTION_COPY;
    public static final AccessibilityActionCompat ACTION_CUT;
    public static final AccessibilityActionCompat ACTION_DISMISS;
    public static final AccessibilityActionCompat ACTION_EXPAND;
    public static final AccessibilityActionCompat ACTION_FOCUS;
    public static final AccessibilityActionCompat ACTION_HIDE_TOOLTIP;
    public static final AccessibilityActionCompat ACTION_LONG_CLICK;
    public static final AccessibilityActionCompat ACTION_MOVE_WINDOW;
    public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY;
    public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT;
    public static final AccessibilityActionCompat ACTION_PASTE;
    public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY;
    public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT;
    public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD;
    public static final AccessibilityActionCompat ACTION_SCROLL_DOWN;
    public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD;
    public static final AccessibilityActionCompat ACTION_SCROLL_LEFT;
    public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT;
    public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
    public static final AccessibilityActionCompat ACTION_SCROLL_UP;
    public static final AccessibilityActionCompat ACTION_SELECT;
    public static final AccessibilityActionCompat ACTION_SET_PROGRESS;
    public static final AccessibilityActionCompat ACTION_SET_SELECTION;
    public static final AccessibilityActionCompat ACTION_SET_TEXT;
    public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;
    public static final AccessibilityActionCompat ACTION_SHOW_TOOLTIP;
    final Object a;
    
    static
    {
      Object localObject2 = null;
      ACTION_FOCUS = new AccessibilityActionCompat(1, null);
      ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, null);
      ACTION_SELECT = new AccessibilityActionCompat(4, null);
      ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, null);
      ACTION_CLICK = new AccessibilityActionCompat(16, null);
      ACTION_LONG_CLICK = new AccessibilityActionCompat(32, null);
      ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, null);
      ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, null);
      ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, null);
      ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, null);
      ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, null);
      ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, null);
      ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, null);
      ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, null);
      ACTION_COPY = new AccessibilityActionCompat(16384, null);
      ACTION_PASTE = new AccessibilityActionCompat(32768, null);
      ACTION_CUT = new AccessibilityActionCompat(65536, null);
      ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, null);
      ACTION_EXPAND = new AccessibilityActionCompat(262144, null);
      ACTION_COLLAPSE = new AccessibilityActionCompat(524288, null);
      ACTION_DISMISS = new AccessibilityActionCompat(1048576, null);
      ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, null);
      if (Build.VERSION.SDK_INT >= 23) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN;
      } else {
        localObject1 = null;
      }
      ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 23) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION;
      } else {
        localObject1 = null;
      }
      ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 23) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP;
      } else {
        localObject1 = null;
      }
      ACTION_SCROLL_UP = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 23) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT;
      } else {
        localObject1 = null;
      }
      ACTION_SCROLL_LEFT = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 23) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN;
      } else {
        localObject1 = null;
      }
      ACTION_SCROLL_DOWN = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 23) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT;
      } else {
        localObject1 = null;
      }
      ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 23) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK;
      } else {
        localObject1 = null;
      }
      ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 24) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS;
      } else {
        localObject1 = null;
      }
      ACTION_SET_PROGRESS = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 26) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW;
      } else {
        localObject1 = null;
      }
      ACTION_MOVE_WINDOW = new AccessibilityActionCompat(localObject1);
      if (Build.VERSION.SDK_INT >= 28) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
      } else {
        localObject1 = null;
      }
      ACTION_SHOW_TOOLTIP = new AccessibilityActionCompat(localObject1);
      Object localObject1 = localObject2;
      if (Build.VERSION.SDK_INT >= 28) {
        localObject1 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
      }
      ACTION_HIDE_TOOLTIP = new AccessibilityActionCompat(localObject1);
    }
    
    public AccessibilityActionCompat(int paramInt, CharSequence paramCharSequence)
    {
      this(paramCharSequence);
    }
    
    AccessibilityActionCompat(Object paramObject)
    {
      a = paramObject;
    }
    
    public int getId()
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return ((AccessibilityNodeInfo.AccessibilityAction)a).getId();
      }
      return 0;
    }
    
    public CharSequence getLabel()
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return ((AccessibilityNodeInfo.AccessibilityAction)a).getLabel();
      }
      return null;
    }
  }
  
  public static class CollectionInfoCompat
  {
    public static final int SELECTION_MODE_MULTIPLE = 2;
    public static final int SELECTION_MODE_NONE = 0;
    public static final int SELECTION_MODE_SINGLE = 1;
    final Object a;
    
    CollectionInfoCompat(Object paramObject)
    {
      a = paramObject;
    }
    
    public static CollectionInfoCompat obtain(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, paramBoolean));
      }
      return new CollectionInfoCompat(null);
    }
    
    public static CollectionInfoCompat obtain(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, paramBoolean, paramInt3));
      }
      if (Build.VERSION.SDK_INT >= 19) {
        return new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, paramBoolean));
      }
      return new CollectionInfoCompat(null);
    }
    
    public int getColumnCount()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionInfo)a).getColumnCount();
      }
      return 0;
    }
    
    public int getRowCount()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionInfo)a).getRowCount();
      }
      return 0;
    }
    
    public int getSelectionMode()
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return ((AccessibilityNodeInfo.CollectionInfo)a).getSelectionMode();
      }
      return 0;
    }
    
    public boolean isHierarchical()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionInfo)a).isHierarchical();
      }
      return false;
    }
  }
  
  public static class CollectionItemInfoCompat
  {
    final Object a;
    
    CollectionItemInfoCompat(Object paramObject)
    {
      a = paramObject;
    }
    
    public static CollectionItemInfoCompat obtain(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean));
      }
      return new CollectionItemInfoCompat(null);
    }
    
    public static CollectionItemInfoCompat obtain(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2));
      }
      if (Build.VERSION.SDK_INT >= 19) {
        return new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1));
      }
      return new CollectionItemInfoCompat(null);
    }
    
    public int getColumnIndex()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionItemInfo)a).getColumnIndex();
      }
      return 0;
    }
    
    public int getColumnSpan()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionItemInfo)a).getColumnSpan();
      }
      return 0;
    }
    
    public int getRowIndex()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionItemInfo)a).getRowIndex();
      }
      return 0;
    }
    
    public int getRowSpan()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionItemInfo)a).getRowSpan();
      }
      return 0;
    }
    
    public boolean isHeading()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.CollectionItemInfo)a).isHeading();
      }
      return false;
    }
    
    public boolean isSelected()
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return ((AccessibilityNodeInfo.CollectionItemInfo)a).isSelected();
      }
      return false;
    }
  }
  
  public static class RangeInfoCompat
  {
    public static final int RANGE_TYPE_FLOAT = 1;
    public static final int RANGE_TYPE_INT = 0;
    public static final int RANGE_TYPE_PERCENT = 2;
    final Object a;
    
    RangeInfoCompat(Object paramObject)
    {
      a = paramObject;
    }
    
    public static RangeInfoCompat obtain(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(paramInt, paramFloat1, paramFloat2, paramFloat3));
      }
      return new RangeInfoCompat(null);
    }
    
    public float getCurrent()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.RangeInfo)a).getCurrent();
      }
      return 0.0F;
    }
    
    public float getMax()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.RangeInfo)a).getMax();
      }
      return 0.0F;
    }
    
    public float getMin()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.RangeInfo)a).getMin();
      }
      return 0.0F;
    }
    
    public int getType()
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return ((AccessibilityNodeInfo.RangeInfo)a).getType();
      }
      return 0;
    }
  }
}
