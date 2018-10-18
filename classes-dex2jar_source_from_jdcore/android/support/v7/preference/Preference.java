package android.support.v7.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Preference
  implements Comparable<Preference>
{
  public static final int DEFAULT_ORDER = Integer.MAX_VALUE;
  private boolean A = true;
  private boolean B = true;
  private boolean C;
  private boolean D = true;
  private boolean E;
  private boolean F = true;
  private int G = R.layout.preference;
  private int H;
  private a I;
  private List<Preference> J;
  private PreferenceGroup K;
  private boolean L;
  private boolean M;
  private final View.OnClickListener N = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      performClick(paramAnonymousView);
    }
  };
  private Context a;
  @Nullable
  private PreferenceManager b;
  @Nullable
  private PreferenceDataStore c;
  private long d;
  private boolean e;
  private OnPreferenceChangeListener f;
  private OnPreferenceClickListener g;
  private int h = Integer.MAX_VALUE;
  private int i = 0;
  private CharSequence j;
  private CharSequence k;
  private int l;
  private Drawable m;
  private String n;
  private Intent o;
  private String p;
  private Bundle q;
  private boolean r = true;
  private boolean s = true;
  private boolean t;
  private boolean u = true;
  private String v;
  private Object w;
  private boolean x = true;
  private boolean y = true;
  private boolean z = true;
  
  public Preference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Preference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.preferenceStyle, 16842894));
  }
  
  public Preference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public Preference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    a = paramContext;
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.Preference, paramInt1, paramInt2);
    l = TypedArrayUtils.getResourceId(paramContext, R.styleable.Preference_icon, R.styleable.Preference_android_icon, 0);
    n = TypedArrayUtils.getString(paramContext, R.styleable.Preference_key, R.styleable.Preference_android_key);
    j = TypedArrayUtils.getText(paramContext, R.styleable.Preference_title, R.styleable.Preference_android_title);
    k = TypedArrayUtils.getText(paramContext, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
    h = TypedArrayUtils.getInt(paramContext, R.styleable.Preference_order, R.styleable.Preference_android_order, Integer.MAX_VALUE);
    p = TypedArrayUtils.getString(paramContext, R.styleable.Preference_fragment, R.styleable.Preference_android_fragment);
    G = TypedArrayUtils.getResourceId(paramContext, R.styleable.Preference_layout, R.styleable.Preference_android_layout, R.layout.preference);
    H = TypedArrayUtils.getResourceId(paramContext, R.styleable.Preference_widgetLayout, R.styleable.Preference_android_widgetLayout, 0);
    r = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_enabled, R.styleable.Preference_android_enabled, true);
    s = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_selectable, R.styleable.Preference_android_selectable, true);
    u = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_persistent, R.styleable.Preference_android_persistent, true);
    v = TypedArrayUtils.getString(paramContext, R.styleable.Preference_dependency, R.styleable.Preference_android_dependency);
    A = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_allowDividerAbove, R.styleable.Preference_allowDividerAbove, s);
    B = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_allowDividerBelow, R.styleable.Preference_allowDividerBelow, s);
    if (paramContext.hasValue(R.styleable.Preference_defaultValue)) {
      w = onGetDefaultValue(paramContext, R.styleable.Preference_defaultValue);
    } else if (paramContext.hasValue(R.styleable.Preference_android_defaultValue)) {
      w = onGetDefaultValue(paramContext, R.styleable.Preference_android_defaultValue);
    }
    F = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_shouldDisableView, R.styleable.Preference_android_shouldDisableView, true);
    C = paramContext.hasValue(R.styleable.Preference_singleLineTitle);
    if (C) {
      D = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_singleLineTitle, R.styleable.Preference_android_singleLineTitle, true);
    }
    E = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_iconSpaceReserved, R.styleable.Preference_android_iconSpaceReserved, false);
    z = TypedArrayUtils.getBoolean(paramContext, R.styleable.Preference_isPreferenceVisible, R.styleable.Preference_isPreferenceVisible, true);
    paramContext.recycle();
  }
  
  private void a(@NonNull SharedPreferences.Editor paramEditor)
  {
    if (b.c()) {
      paramEditor.apply();
    }
  }
  
  private void a(Preference paramPreference)
  {
    if (J == null) {
      J = new ArrayList();
    }
    J.add(paramPreference);
    paramPreference.onDependencyChanged(this, shouldDisableDependents());
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    paramView.setEnabled(paramBoolean);
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i1 = paramView.getChildCount() - 1;
      while (i1 >= 0)
      {
        a(paramView.getChildAt(i1), paramBoolean);
        i1 -= 1;
      }
    }
  }
  
  private void b(Preference paramPreference)
  {
    if (J != null) {
      J.remove(paramPreference);
    }
  }
  
  private void d()
  {
    if (TextUtils.isEmpty(v)) {
      return;
    }
    Object localObject = findPreferenceInHierarchy(v);
    if (localObject != null)
    {
      ((Preference)localObject).a(this);
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Dependency \"");
    ((StringBuilder)localObject).append(v);
    ((StringBuilder)localObject).append("\" not found for preference \"");
    ((StringBuilder)localObject).append(n);
    ((StringBuilder)localObject).append("\" (title: \"");
    ((StringBuilder)localObject).append(j);
    ((StringBuilder)localObject).append("\"");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  private void e()
  {
    if (v != null)
    {
      Preference localPreference = findPreferenceInHierarchy(v);
      if (localPreference != null) {
        localPreference.b(this);
      }
    }
  }
  
  private void f()
  {
    if (getPreferenceDataStore() != null)
    {
      onSetInitialValue(true, w);
      return;
    }
    if ((shouldPersist()) && (getSharedPreferences().contains(n)))
    {
      onSetInitialValue(true, null);
      return;
    }
    if (w != null) {
      onSetInitialValue(false, w);
    }
  }
  
  long a()
  {
    return d;
  }
  
  final void a(a paramA)
  {
    I = paramA;
  }
  
  void a(@Nullable PreferenceGroup paramPreferenceGroup)
  {
    K = paramPreferenceGroup;
  }
  
  void b()
  {
    if (!TextUtils.isEmpty(n))
    {
      t = true;
      return;
    }
    throw new IllegalStateException("Preference does not have a key assigned.");
  }
  
  StringBuilder c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharSequence localCharSequence = getTitle();
    if (!TextUtils.isEmpty(localCharSequence))
    {
      localStringBuilder.append(localCharSequence);
      localStringBuilder.append(' ');
    }
    localCharSequence = getSummary();
    if (!TextUtils.isEmpty(localCharSequence))
    {
      localStringBuilder.append(localCharSequence);
      localStringBuilder.append(' ');
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.setLength(localStringBuilder.length() - 1);
    }
    return localStringBuilder;
  }
  
  public boolean callChangeListener(Object paramObject)
  {
    return (f == null) || (f.onPreferenceChange(this, paramObject));
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public final void clearWasDetached()
  {
    L = false;
  }
  
  public int compareTo(@NonNull Preference paramPreference)
  {
    if (h != h) {
      return h - h;
    }
    if (j == j) {
      return 0;
    }
    if (j == null) {
      return 1;
    }
    if (j == null) {
      return -1;
    }
    return j.toString().compareToIgnoreCase(j.toString());
  }
  
  void dispatchRestoreInstanceState(Bundle paramBundle)
  {
    if (hasKey())
    {
      paramBundle = paramBundle.getParcelable(n);
      if (paramBundle != null)
      {
        M = false;
        onRestoreInstanceState(paramBundle);
        if (M) {
          return;
        }
        throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
      }
    }
  }
  
  void dispatchSaveInstanceState(Bundle paramBundle)
  {
    if (hasKey())
    {
      M = false;
      Parcelable localParcelable = onSaveInstanceState();
      if (M)
      {
        if (localParcelable != null) {
          paramBundle.putParcelable(n, localParcelable);
        }
      }
      else {
        throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
      }
    }
  }
  
  protected Preference findPreferenceInHierarchy(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (b != null)) {
      return b.findPreference(paramString);
    }
    return null;
  }
  
  public Context getContext()
  {
    return a;
  }
  
  public String getDependency()
  {
    return v;
  }
  
  public Bundle getExtras()
  {
    if (q == null) {
      q = new Bundle();
    }
    return q;
  }
  
  public String getFragment()
  {
    return p;
  }
  
  public Drawable getIcon()
  {
    if ((m == null) && (l != 0)) {
      m = ContextCompat.getDrawable(a, l);
    }
    return m;
  }
  
  public Intent getIntent()
  {
    return o;
  }
  
  public String getKey()
  {
    return n;
  }
  
  public final int getLayoutResource()
  {
    return G;
  }
  
  public OnPreferenceChangeListener getOnPreferenceChangeListener()
  {
    return f;
  }
  
  public OnPreferenceClickListener getOnPreferenceClickListener()
  {
    return g;
  }
  
  public int getOrder()
  {
    return h;
  }
  
  @Nullable
  public PreferenceGroup getParent()
  {
    return K;
  }
  
  protected boolean getPersistedBoolean(boolean paramBoolean)
  {
    if (!shouldPersist()) {
      return paramBoolean;
    }
    PreferenceDataStore localPreferenceDataStore = getPreferenceDataStore();
    if (localPreferenceDataStore != null) {
      return localPreferenceDataStore.getBoolean(n, paramBoolean);
    }
    return b.getSharedPreferences().getBoolean(n, paramBoolean);
  }
  
  protected float getPersistedFloat(float paramFloat)
  {
    if (!shouldPersist()) {
      return paramFloat;
    }
    PreferenceDataStore localPreferenceDataStore = getPreferenceDataStore();
    if (localPreferenceDataStore != null) {
      return localPreferenceDataStore.getFloat(n, paramFloat);
    }
    return b.getSharedPreferences().getFloat(n, paramFloat);
  }
  
  protected int getPersistedInt(int paramInt)
  {
    if (!shouldPersist()) {
      return paramInt;
    }
    PreferenceDataStore localPreferenceDataStore = getPreferenceDataStore();
    if (localPreferenceDataStore != null) {
      return localPreferenceDataStore.getInt(n, paramInt);
    }
    return b.getSharedPreferences().getInt(n, paramInt);
  }
  
  protected long getPersistedLong(long paramLong)
  {
    if (!shouldPersist()) {
      return paramLong;
    }
    PreferenceDataStore localPreferenceDataStore = getPreferenceDataStore();
    if (localPreferenceDataStore != null) {
      return localPreferenceDataStore.getLong(n, paramLong);
    }
    return b.getSharedPreferences().getLong(n, paramLong);
  }
  
  protected String getPersistedString(String paramString)
  {
    if (!shouldPersist()) {
      return paramString;
    }
    PreferenceDataStore localPreferenceDataStore = getPreferenceDataStore();
    if (localPreferenceDataStore != null) {
      return localPreferenceDataStore.getString(n, paramString);
    }
    return b.getSharedPreferences().getString(n, paramString);
  }
  
  public Set<String> getPersistedStringSet(Set<String> paramSet)
  {
    if (!shouldPersist()) {
      return paramSet;
    }
    PreferenceDataStore localPreferenceDataStore = getPreferenceDataStore();
    if (localPreferenceDataStore != null) {
      return localPreferenceDataStore.getStringSet(n, paramSet);
    }
    return b.getSharedPreferences().getStringSet(n, paramSet);
  }
  
  @Nullable
  public PreferenceDataStore getPreferenceDataStore()
  {
    if (c != null) {
      return c;
    }
    if (b != null) {
      return b.getPreferenceDataStore();
    }
    return null;
  }
  
  public PreferenceManager getPreferenceManager()
  {
    return b;
  }
  
  public SharedPreferences getSharedPreferences()
  {
    if ((b != null) && (getPreferenceDataStore() == null)) {
      return b.getSharedPreferences();
    }
    return null;
  }
  
  public boolean getShouldDisableView()
  {
    return F;
  }
  
  public CharSequence getSummary()
  {
    return k;
  }
  
  public CharSequence getTitle()
  {
    return j;
  }
  
  public final int getWidgetLayoutResource()
  {
    return H;
  }
  
  public boolean hasKey()
  {
    return TextUtils.isEmpty(n) ^ true;
  }
  
  public boolean isEnabled()
  {
    return (r) && (x) && (y);
  }
  
  public boolean isIconSpaceReserved()
  {
    return E;
  }
  
  public boolean isPersistent()
  {
    return u;
  }
  
  public boolean isSelectable()
  {
    return s;
  }
  
  public final boolean isShown()
  {
    if (!isVisible()) {
      return false;
    }
    if (getPreferenceManager() == null) {
      return false;
    }
    if (this == getPreferenceManager().getPreferenceScreen()) {
      return true;
    }
    PreferenceGroup localPreferenceGroup = getParent();
    if (localPreferenceGroup == null) {
      return false;
    }
    return localPreferenceGroup.isShown();
  }
  
  public boolean isSingleLineTitle()
  {
    return D;
  }
  
  public final boolean isVisible()
  {
    return z;
  }
  
  protected void notifyChanged()
  {
    if (I != null) {
      I.onPreferenceChange(this);
    }
  }
  
  public void notifyDependencyChange(boolean paramBoolean)
  {
    List localList = J;
    if (localList == null) {
      return;
    }
    int i2 = localList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((Preference)localList.get(i1)).onDependencyChanged(this, paramBoolean);
      i1 += 1;
    }
  }
  
  protected void notifyHierarchyChanged()
  {
    if (I != null) {
      I.onPreferenceHierarchyChange(this);
    }
  }
  
  public void onAttached()
  {
    d();
  }
  
  protected void onAttachedToHierarchy(PreferenceManager paramPreferenceManager)
  {
    b = paramPreferenceManager;
    if (!e) {
      d = paramPreferenceManager.a();
    }
    f();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void onAttachedToHierarchy(PreferenceManager paramPreferenceManager, long paramLong)
  {
    d = paramLong;
    e = true;
    try
    {
      onAttachedToHierarchy(paramPreferenceManager);
      return;
    }
    finally
    {
      e = false;
    }
  }
  
  public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder)
  {
    itemView.setOnClickListener(N);
    itemView.setId(i);
    Object localObject1 = (TextView)paramPreferenceViewHolder.findViewById(16908310);
    int i2 = 8;
    if (localObject1 != null)
    {
      localObject2 = getTitle();
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        ((TextView)localObject1).setText((CharSequence)localObject2);
        ((TextView)localObject1).setVisibility(0);
        if (C) {
          ((TextView)localObject1).setSingleLine(D);
        }
      }
      else
      {
        ((TextView)localObject1).setVisibility(8);
      }
    }
    localObject1 = (TextView)paramPreferenceViewHolder.findViewById(16908304);
    if (localObject1 != null)
    {
      localObject2 = getSummary();
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        ((TextView)localObject1).setText((CharSequence)localObject2);
        ((TextView)localObject1).setVisibility(0);
      }
      else
      {
        ((TextView)localObject1).setVisibility(8);
      }
    }
    localObject1 = (ImageView)paramPreferenceViewHolder.findViewById(16908294);
    int i1;
    if (localObject1 != null)
    {
      if ((l != 0) || (m != null))
      {
        if (m == null) {
          m = ContextCompat.getDrawable(getContext(), l);
        }
        if (m != null) {
          ((ImageView)localObject1).setImageDrawable(m);
        }
      }
      if (m != null)
      {
        ((ImageView)localObject1).setVisibility(0);
      }
      else
      {
        if (E) {
          i1 = 4;
        } else {
          i1 = 8;
        }
        ((ImageView)localObject1).setVisibility(i1);
      }
    }
    Object localObject2 = paramPreferenceViewHolder.findViewById(R.id.icon_frame);
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = paramPreferenceViewHolder.findViewById(16908350);
    }
    if (localObject1 != null) {
      if (m != null)
      {
        ((View)localObject1).setVisibility(0);
      }
      else
      {
        i1 = i2;
        if (E) {
          i1 = 4;
        }
        ((View)localObject1).setVisibility(i1);
      }
    }
    if (F) {
      a(itemView, isEnabled());
    } else {
      a(itemView, true);
    }
    boolean bool = isSelectable();
    itemView.setFocusable(bool);
    itemView.setClickable(bool);
    paramPreferenceViewHolder.setDividerAllowedAbove(A);
    paramPreferenceViewHolder.setDividerAllowedBelow(B);
  }
  
  protected void onClick() {}
  
  public void onDependencyChanged(Preference paramPreference, boolean paramBoolean)
  {
    if (x == paramBoolean)
    {
      x = (paramBoolean ^ true);
      notifyDependencyChange(shouldDisableDependents());
      notifyChanged();
    }
  }
  
  public void onDetached()
  {
    e();
    L = true;
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return null;
  }
  
  @CallSuper
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {}
  
  public void onParentChanged(Preference paramPreference, boolean paramBoolean)
  {
    if (y == paramBoolean)
    {
      y = (paramBoolean ^ true);
      notifyDependencyChange(shouldDisableDependents());
      notifyChanged();
    }
  }
  
  protected void onPrepareForRemoval()
  {
    e();
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    M = true;
    if (paramParcelable != BaseSavedState.EMPTY_STATE)
    {
      if (paramParcelable == null) {
        return;
      }
      throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    M = true;
    return BaseSavedState.EMPTY_STATE;
  }
  
  protected void onSetInitialValue(@Nullable Object paramObject) {}
  
  @Deprecated
  protected void onSetInitialValue(boolean paramBoolean, Object paramObject)
  {
    onSetInitialValue(paramObject);
  }
  
  public Bundle peekExtras()
  {
    return q;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void performClick()
  {
    if (!isEnabled()) {
      return;
    }
    onClick();
    if ((g != null) && (g.onPreferenceClick(this))) {
      return;
    }
    Object localObject = getPreferenceManager();
    if (localObject != null)
    {
      localObject = ((PreferenceManager)localObject).getOnPreferenceTreeClickListener();
      if ((localObject != null) && (((PreferenceManager.OnPreferenceTreeClickListener)localObject).onPreferenceTreeClick(this))) {
        return;
      }
    }
    if (o != null) {
      getContext().startActivity(o);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void performClick(View paramView)
  {
    performClick();
  }
  
  protected boolean persistBoolean(boolean paramBoolean)
  {
    if (!shouldPersist()) {
      return false;
    }
    if (paramBoolean == getPersistedBoolean(paramBoolean ^ true)) {
      return true;
    }
    Object localObject = getPreferenceDataStore();
    if (localObject != null)
    {
      ((PreferenceDataStore)localObject).putBoolean(n, paramBoolean);
      return true;
    }
    localObject = b.b();
    ((SharedPreferences.Editor)localObject).putBoolean(n, paramBoolean);
    a((SharedPreferences.Editor)localObject);
    return true;
  }
  
  protected boolean persistFloat(float paramFloat)
  {
    if (!shouldPersist()) {
      return false;
    }
    if (paramFloat == getPersistedFloat(NaN.0F)) {
      return true;
    }
    Object localObject = getPreferenceDataStore();
    if (localObject != null)
    {
      ((PreferenceDataStore)localObject).putFloat(n, paramFloat);
      return true;
    }
    localObject = b.b();
    ((SharedPreferences.Editor)localObject).putFloat(n, paramFloat);
    a((SharedPreferences.Editor)localObject);
    return true;
  }
  
  protected boolean persistInt(int paramInt)
  {
    if (!shouldPersist()) {
      return false;
    }
    if (paramInt == getPersistedInt(paramInt)) {
      return true;
    }
    Object localObject = getPreferenceDataStore();
    if (localObject != null)
    {
      ((PreferenceDataStore)localObject).putInt(n, paramInt);
      return true;
    }
    localObject = b.b();
    ((SharedPreferences.Editor)localObject).putInt(n, paramInt);
    a((SharedPreferences.Editor)localObject);
    return true;
  }
  
  protected boolean persistLong(long paramLong)
  {
    if (!shouldPersist()) {
      return false;
    }
    if (paramLong == getPersistedLong(paramLong)) {
      return true;
    }
    Object localObject = getPreferenceDataStore();
    if (localObject != null)
    {
      ((PreferenceDataStore)localObject).putLong(n, paramLong);
      return true;
    }
    localObject = b.b();
    ((SharedPreferences.Editor)localObject).putLong(n, paramLong);
    a((SharedPreferences.Editor)localObject);
    return true;
  }
  
  protected boolean persistString(String paramString)
  {
    if (!shouldPersist()) {
      return false;
    }
    if (TextUtils.equals(paramString, getPersistedString(null))) {
      return true;
    }
    Object localObject = getPreferenceDataStore();
    if (localObject != null)
    {
      ((PreferenceDataStore)localObject).putString(n, paramString);
      return true;
    }
    localObject = b.b();
    ((SharedPreferences.Editor)localObject).putString(n, paramString);
    a((SharedPreferences.Editor)localObject);
    return true;
  }
  
  public boolean persistStringSet(Set<String> paramSet)
  {
    if (!shouldPersist()) {
      return false;
    }
    if (paramSet.equals(getPersistedStringSet(null))) {
      return true;
    }
    Object localObject = getPreferenceDataStore();
    if (localObject != null)
    {
      ((PreferenceDataStore)localObject).putStringSet(n, paramSet);
      return true;
    }
    localObject = b.b();
    ((SharedPreferences.Editor)localObject).putStringSet(n, paramSet);
    a((SharedPreferences.Editor)localObject);
    return true;
  }
  
  public void restoreHierarchyState(Bundle paramBundle)
  {
    dispatchRestoreInstanceState(paramBundle);
  }
  
  public void saveHierarchyState(Bundle paramBundle)
  {
    dispatchSaveInstanceState(paramBundle);
  }
  
  public void setDefaultValue(Object paramObject)
  {
    w = paramObject;
  }
  
  public void setDependency(String paramString)
  {
    e();
    v = paramString;
    d();
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    if (r != paramBoolean)
    {
      r = paramBoolean;
      notifyDependencyChange(shouldDisableDependents());
      notifyChanged();
    }
  }
  
  public void setFragment(String paramString)
  {
    p = paramString;
  }
  
  public void setIcon(int paramInt)
  {
    setIcon(ContextCompat.getDrawable(a, paramInt));
    l = paramInt;
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    if (((paramDrawable == null) && (m != null)) || ((paramDrawable != null) && (m != paramDrawable)))
    {
      m = paramDrawable;
      l = 0;
      notifyChanged();
    }
  }
  
  public void setIconSpaceReserved(boolean paramBoolean)
  {
    E = paramBoolean;
    notifyChanged();
  }
  
  public void setIntent(Intent paramIntent)
  {
    o = paramIntent;
  }
  
  public void setKey(String paramString)
  {
    n = paramString;
    if ((t) && (!hasKey())) {
      b();
    }
  }
  
  public void setLayoutResource(int paramInt)
  {
    G = paramInt;
  }
  
  public void setOnPreferenceChangeListener(OnPreferenceChangeListener paramOnPreferenceChangeListener)
  {
    f = paramOnPreferenceChangeListener;
  }
  
  public void setOnPreferenceClickListener(OnPreferenceClickListener paramOnPreferenceClickListener)
  {
    g = paramOnPreferenceClickListener;
  }
  
  public void setOrder(int paramInt)
  {
    if (paramInt != h)
    {
      h = paramInt;
      notifyHierarchyChanged();
    }
  }
  
  public void setPersistent(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public void setPreferenceDataStore(PreferenceDataStore paramPreferenceDataStore)
  {
    c = paramPreferenceDataStore;
  }
  
  public void setSelectable(boolean paramBoolean)
  {
    if (s != paramBoolean)
    {
      s = paramBoolean;
      notifyChanged();
    }
  }
  
  public void setShouldDisableView(boolean paramBoolean)
  {
    F = paramBoolean;
    notifyChanged();
  }
  
  public void setSingleLineTitle(boolean paramBoolean)
  {
    C = true;
    D = paramBoolean;
  }
  
  public void setSummary(int paramInt)
  {
    setSummary(a.getString(paramInt));
  }
  
  public void setSummary(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (k != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(k))))
    {
      k = paramCharSequence;
      notifyChanged();
    }
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(a.getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (j != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(j))))
    {
      j = paramCharSequence;
      notifyChanged();
    }
  }
  
  public void setViewId(int paramInt)
  {
    i = paramInt;
  }
  
  public final void setVisible(boolean paramBoolean)
  {
    if (z != paramBoolean)
    {
      z = paramBoolean;
      if (I != null) {
        I.onPreferenceVisibilityChange(this);
      }
    }
  }
  
  public void setWidgetLayoutResource(int paramInt)
  {
    H = paramInt;
  }
  
  public boolean shouldDisableDependents()
  {
    return isEnabled() ^ true;
  }
  
  protected boolean shouldPersist()
  {
    return (b != null) && (isPersistent()) && (hasKey());
  }
  
  public String toString()
  {
    return c().toString();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public final boolean wasDetached()
  {
    return L;
  }
  
  public static class BaseSavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<BaseSavedState> CREATOR = new Parcelable.Creator()
    {
      public Preference.BaseSavedState a(Parcel paramAnonymousParcel)
      {
        return new Preference.BaseSavedState(paramAnonymousParcel);
      }
      
      public Preference.BaseSavedState[] a(int paramAnonymousInt)
      {
        return new Preference.BaseSavedState[paramAnonymousInt];
      }
    };
    
    public BaseSavedState(Parcel paramParcel)
    {
      super();
    }
    
    public BaseSavedState(Parcelable paramParcelable)
    {
      super();
    }
  }
  
  public static abstract interface OnPreferenceChangeListener
  {
    public abstract boolean onPreferenceChange(Preference paramPreference, Object paramObject);
  }
  
  public static abstract interface OnPreferenceClickListener
  {
    public abstract boolean onPreferenceClick(Preference paramPreference);
  }
  
  static abstract interface a
  {
    public abstract void onPreferenceChange(Preference paramPreference);
    
    public abstract void onPreferenceHierarchyChange(Preference paramPreference);
    
    public abstract void onPreferenceVisibilityChange(Preference paramPreference);
  }
}
