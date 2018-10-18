package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.util.SimpleArrayMap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class PreferenceGroup
  extends Preference
{
  final SimpleArrayMap<String, Long> a = new SimpleArrayMap();
  private List<Preference> b = new ArrayList();
  private boolean c = true;
  private int d = 0;
  private boolean e = false;
  private int f = Integer.MAX_VALUE;
  private OnExpandButtonClickListener g = null;
  private final Handler h = new Handler();
  private final Runnable i = new Runnable()
  {
    public void run()
    {
      try
      {
        a.clear();
        return;
      }
      finally {}
    }
  };
  
  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public PreferenceGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PreferenceGroup, paramInt1, paramInt2);
    c = TypedArrayUtils.getBoolean(paramContext, R.styleable.PreferenceGroup_orderingFromXml, R.styleable.PreferenceGroup_orderingFromXml, true);
    if (paramContext.hasValue(R.styleable.PreferenceGroup_initialExpandedChildrenCount)) {
      setInitialExpandedChildrenCount(TypedArrayUtils.getInt(paramContext, R.styleable.PreferenceGroup_initialExpandedChildrenCount, R.styleable.PreferenceGroup_initialExpandedChildrenCount, Integer.MAX_VALUE));
    }
    paramContext.recycle();
  }
  
  private boolean a(Preference paramPreference)
  {
    try
    {
      paramPreference.onPrepareForRemoval();
      if (paramPreference.getParent() == this) {
        paramPreference.a(null);
      }
      boolean bool = b.remove(paramPreference);
      if (bool)
      {
        String str = paramPreference.getKey();
        if (str != null)
        {
          a.put(str, Long.valueOf(paramPreference.a()));
          h.removeCallbacks(i);
          h.post(i);
        }
        if (e) {
          paramPreference.onDetached();
        }
      }
      return bool;
    }
    finally {}
  }
  
  public void addItemFromInflater(Preference paramPreference)
  {
    addPreference(paramPreference);
  }
  
  public boolean addPreference(Preference paramPreference)
  {
    if (b.contains(paramPreference)) {
      return true;
    }
    Object localObject;
    String str;
    if (paramPreference.getKey() != null)
    {
      for (localObject = this; ((PreferenceGroup)localObject).getParent() != null; localObject = ((PreferenceGroup)localObject).getParent()) {}
      str = paramPreference.getKey();
      if (((PreferenceGroup)localObject).findPreference(str) != null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Found duplicated key: \"");
        ((StringBuilder)localObject).append(str);
        ((StringBuilder)localObject).append("\". This can cause unintended behaviour,");
        ((StringBuilder)localObject).append(" please use unique keys for every preference.");
        Log.e("PreferenceGroup", ((StringBuilder)localObject).toString());
      }
    }
    if (paramPreference.getOrder() == Integer.MAX_VALUE)
    {
      if (c)
      {
        j = d;
        d = (j + 1);
        paramPreference.setOrder(j);
      }
      if ((paramPreference instanceof PreferenceGroup)) {
        ((PreferenceGroup)paramPreference).setOrderingAsAdded(c);
      }
    }
    int k = Collections.binarySearch(b, paramPreference);
    int j = k;
    if (k < 0) {
      j = k * -1 - 1;
    }
    if (!onPrepareAddPreference(paramPreference)) {
      return false;
    }
    try
    {
      b.add(j, paramPreference);
      localObject = getPreferenceManager();
      str = paramPreference.getKey();
      long l;
      if ((str != null) && (a.containsKey(str)))
      {
        l = ((Long)a.get(str)).longValue();
        a.remove(str);
      }
      else
      {
        l = ((PreferenceManager)localObject).a();
      }
      paramPreference.onAttachedToHierarchy((PreferenceManager)localObject, l);
      paramPreference.a(this);
      if (e) {
        paramPreference.onAttached();
      }
      notifyHierarchyChanged();
      return true;
    }
    finally {}
  }
  
  void d()
  {
    try
    {
      Collections.sort(b);
      return;
    }
    finally {}
  }
  
  protected void dispatchRestoreInstanceState(Bundle paramBundle)
  {
    super.dispatchRestoreInstanceState(paramBundle);
    int k = getPreferenceCount();
    int j = 0;
    while (j < k)
    {
      getPreference(j).dispatchRestoreInstanceState(paramBundle);
      j += 1;
    }
  }
  
  protected void dispatchSaveInstanceState(Bundle paramBundle)
  {
    super.dispatchSaveInstanceState(paramBundle);
    int k = getPreferenceCount();
    int j = 0;
    while (j < k)
    {
      getPreference(j).dispatchSaveInstanceState(paramBundle);
      j += 1;
    }
  }
  
  public Preference findPreference(CharSequence paramCharSequence)
  {
    if (TextUtils.equals(getKey(), paramCharSequence)) {
      return this;
    }
    int k = getPreferenceCount();
    int j = 0;
    while (j < k)
    {
      Preference localPreference = getPreference(j);
      String str = localPreference.getKey();
      if ((str != null) && (str.equals(paramCharSequence))) {
        return localPreference;
      }
      if ((localPreference instanceof PreferenceGroup))
      {
        localPreference = ((PreferenceGroup)localPreference).findPreference(paramCharSequence);
        if (localPreference != null) {
          return localPreference;
        }
      }
      j += 1;
    }
    return null;
  }
  
  public int getInitialExpandedChildrenCount()
  {
    return f;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public OnExpandButtonClickListener getOnExpandButtonClickListener()
  {
    return g;
  }
  
  public Preference getPreference(int paramInt)
  {
    return (Preference)b.get(paramInt);
  }
  
  public int getPreferenceCount()
  {
    return b.size();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isAttached()
  {
    return e;
  }
  
  protected boolean isOnSameScreenAsChildren()
  {
    return true;
  }
  
  public boolean isOrderingAsAdded()
  {
    return c;
  }
  
  public void notifyDependencyChange(boolean paramBoolean)
  {
    super.notifyDependencyChange(paramBoolean);
    int k = getPreferenceCount();
    int j = 0;
    while (j < k)
    {
      getPreference(j).onParentChanged(this, paramBoolean);
      j += 1;
    }
  }
  
  public void onAttached()
  {
    super.onAttached();
    e = true;
    int k = getPreferenceCount();
    int j = 0;
    while (j < k)
    {
      getPreference(j).onAttached();
      j += 1;
    }
  }
  
  public void onDetached()
  {
    super.onDetached();
    int j = 0;
    e = false;
    int k = getPreferenceCount();
    while (j < k)
    {
      getPreference(j).onDetached();
      j += 1;
    }
  }
  
  protected boolean onPrepareAddPreference(Preference paramPreference)
  {
    paramPreference.onParentChanged(this, shouldDisableDependents());
    return true;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(a.class)))
    {
      paramParcelable = (a)paramParcelable;
      f = a;
      super.onRestoreInstanceState(paramParcelable.getSuperState());
      return;
    }
    super.onRestoreInstanceState(paramParcelable);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    return new a(super.onSaveInstanceState(), f);
  }
  
  public void removeAll()
  {
    try
    {
      List localList = b;
      int j = localList.size() - 1;
      while (j >= 0)
      {
        a((Preference)localList.get(0));
        j -= 1;
      }
      notifyHierarchyChanged();
      return;
    }
    finally {}
  }
  
  public boolean removePreference(Preference paramPreference)
  {
    boolean bool = a(paramPreference);
    notifyHierarchyChanged();
    return bool;
  }
  
  public void setInitialExpandedChildrenCount(int paramInt)
  {
    if ((paramInt != Integer.MAX_VALUE) && (!hasKey()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(getClass().getSimpleName());
      localStringBuilder.append(" should have a key defined if it contains an expandable preference");
      Log.e("PreferenceGroup", localStringBuilder.toString());
    }
    f = paramInt;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setOnExpandButtonClickListener(@Nullable OnExpandButtonClickListener paramOnExpandButtonClickListener)
  {
    g = paramOnExpandButtonClickListener;
  }
  
  public void setOrderingAsAdded(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static abstract interface OnExpandButtonClickListener
  {
    public abstract void onExpandButtonClick();
  }
  
  public static abstract interface PreferencePositionCallback
  {
    public abstract int getPreferenceAdapterPosition(Preference paramPreference);
    
    public abstract int getPreferenceAdapterPosition(String paramString);
  }
  
  static class a
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
    {
      public PreferenceGroup.a a(Parcel paramAnonymousParcel)
      {
        return new PreferenceGroup.a(paramAnonymousParcel);
      }
      
      public PreferenceGroup.a[] a(int paramAnonymousInt)
      {
        return new PreferenceGroup.a[paramAnonymousInt];
      }
    };
    int a;
    
    a(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
    }
    
    a(Parcelable paramParcelable, int paramInt)
    {
      super();
      a = paramInt;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
    }
  }
}
