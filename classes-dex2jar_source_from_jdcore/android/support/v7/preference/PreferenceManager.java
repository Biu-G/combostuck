package android.support.v7.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;

public class PreferenceManager
{
  public static final String KEY_HAS_SET_DEFAULT_VALUES = "_has_set_default_values";
  private Context a;
  private long b = 0L;
  @Nullable
  private SharedPreferences c;
  @Nullable
  private PreferenceDataStore d;
  @Nullable
  private SharedPreferences.Editor e;
  private boolean f;
  private String g;
  private int h;
  private int i = 0;
  private PreferenceScreen j;
  private PreferenceComparisonCallback k;
  private OnPreferenceTreeClickListener l;
  private OnDisplayPreferenceDialogListener m;
  private OnNavigateToScreenListener n;
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PreferenceManager(Context paramContext)
  {
    a = paramContext;
    setSharedPreferencesName(a(paramContext));
  }
  
  private static String a(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getPackageName());
    localStringBuilder.append("_preferences");
    return localStringBuilder.toString();
  }
  
  private void a(boolean paramBoolean)
  {
    if ((!paramBoolean) && (e != null)) {
      e.apply();
    }
    f = paramBoolean;
  }
  
  private static int d()
  {
    return 0;
  }
  
  public static SharedPreferences getDefaultSharedPreferences(Context paramContext)
  {
    return paramContext.getSharedPreferences(a(paramContext), d());
  }
  
  public static void setDefaultValues(Context paramContext, int paramInt, boolean paramBoolean)
  {
    setDefaultValues(paramContext, a(paramContext), d(), paramInt, paramBoolean);
  }
  
  public static void setDefaultValues(Context paramContext, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("_has_set_default_values", 0);
    if ((paramBoolean) || (!localSharedPreferences.getBoolean("_has_set_default_values", false)))
    {
      PreferenceManager localPreferenceManager = new PreferenceManager(paramContext);
      localPreferenceManager.setSharedPreferencesName(paramString);
      localPreferenceManager.setSharedPreferencesMode(paramInt1);
      localPreferenceManager.inflateFromResource(paramContext, paramInt2, null);
      localSharedPreferences.edit().putBoolean("_has_set_default_values", true).apply();
    }
  }
  
  long a()
  {
    try
    {
      long l1 = b;
      b = (1L + l1);
      return l1;
    }
    finally {}
  }
  
  SharedPreferences.Editor b()
  {
    if (d != null) {
      return null;
    }
    if (f)
    {
      if (e == null) {
        e = getSharedPreferences().edit();
      }
      return e;
    }
    return getSharedPreferences().edit();
  }
  
  boolean c()
  {
    return f ^ true;
  }
  
  public PreferenceScreen createPreferenceScreen(Context paramContext)
  {
    paramContext = new PreferenceScreen(paramContext, null);
    paramContext.onAttachedToHierarchy(this);
    return paramContext;
  }
  
  public Preference findPreference(CharSequence paramCharSequence)
  {
    if (j == null) {
      return null;
    }
    return j.findPreference(paramCharSequence);
  }
  
  public Context getContext()
  {
    return a;
  }
  
  public OnDisplayPreferenceDialogListener getOnDisplayPreferenceDialogListener()
  {
    return m;
  }
  
  public OnNavigateToScreenListener getOnNavigateToScreenListener()
  {
    return n;
  }
  
  public OnPreferenceTreeClickListener getOnPreferenceTreeClickListener()
  {
    return l;
  }
  
  public PreferenceComparisonCallback getPreferenceComparisonCallback()
  {
    return k;
  }
  
  @Nullable
  public PreferenceDataStore getPreferenceDataStore()
  {
    return d;
  }
  
  public PreferenceScreen getPreferenceScreen()
  {
    return j;
  }
  
  public SharedPreferences getSharedPreferences()
  {
    if (getPreferenceDataStore() != null) {
      return null;
    }
    if (c == null)
    {
      Context localContext;
      if (i != 1) {
        localContext = a;
      } else {
        localContext = ContextCompat.createDeviceProtectedStorageContext(a);
      }
      c = localContext.getSharedPreferences(g, h);
    }
    return c;
  }
  
  public int getSharedPreferencesMode()
  {
    return h;
  }
  
  public String getSharedPreferencesName()
  {
    return g;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PreferenceScreen inflateFromResource(Context paramContext, int paramInt, PreferenceScreen paramPreferenceScreen)
  {
    a(true);
    paramContext = (PreferenceScreen)new b(paramContext, this).a(paramInt, paramPreferenceScreen);
    paramContext.onAttachedToHierarchy(this);
    a(false);
    return paramContext;
  }
  
  public boolean isStorageDefault()
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return i == 0;
    }
    return true;
  }
  
  public boolean isStorageDeviceProtected()
  {
    int i1 = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i1 >= 24)
    {
      if (i == 1) {
        bool = true;
      }
      return bool;
    }
    return false;
  }
  
  public void setOnDisplayPreferenceDialogListener(OnDisplayPreferenceDialogListener paramOnDisplayPreferenceDialogListener)
  {
    m = paramOnDisplayPreferenceDialogListener;
  }
  
  public void setOnNavigateToScreenListener(OnNavigateToScreenListener paramOnNavigateToScreenListener)
  {
    n = paramOnNavigateToScreenListener;
  }
  
  public void setOnPreferenceTreeClickListener(OnPreferenceTreeClickListener paramOnPreferenceTreeClickListener)
  {
    l = paramOnPreferenceTreeClickListener;
  }
  
  public void setPreferenceComparisonCallback(PreferenceComparisonCallback paramPreferenceComparisonCallback)
  {
    k = paramPreferenceComparisonCallback;
  }
  
  public void setPreferenceDataStore(PreferenceDataStore paramPreferenceDataStore)
  {
    d = paramPreferenceDataStore;
  }
  
  public boolean setPreferences(PreferenceScreen paramPreferenceScreen)
  {
    if (paramPreferenceScreen != j)
    {
      if (j != null) {
        j.onDetached();
      }
      j = paramPreferenceScreen;
      return true;
    }
    return false;
  }
  
  public void setSharedPreferencesMode(int paramInt)
  {
    h = paramInt;
    c = null;
  }
  
  public void setSharedPreferencesName(String paramString)
  {
    g = paramString;
    c = null;
  }
  
  public void setStorageDefault()
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      i = 0;
      c = null;
    }
  }
  
  public void setStorageDeviceProtected()
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      i = 1;
      c = null;
    }
  }
  
  public void showDialog(Preference paramPreference)
  {
    if (m != null) {
      m.onDisplayPreferenceDialog(paramPreference);
    }
  }
  
  public static abstract interface OnDisplayPreferenceDialogListener
  {
    public abstract void onDisplayPreferenceDialog(Preference paramPreference);
  }
  
  public static abstract interface OnNavigateToScreenListener
  {
    public abstract void onNavigateToScreen(PreferenceScreen paramPreferenceScreen);
  }
  
  public static abstract interface OnPreferenceTreeClickListener
  {
    public abstract boolean onPreferenceTreeClick(Preference paramPreference);
  }
  
  public static abstract class PreferenceComparisonCallback
  {
    public PreferenceComparisonCallback() {}
    
    public abstract boolean arePreferenceContentsTheSame(Preference paramPreference1, Preference paramPreference2);
    
    public abstract boolean arePreferenceItemsTheSame(Preference paramPreference1, Preference paramPreference2);
  }
  
  public static class SimplePreferenceComparisonCallback
    extends PreferenceManager.PreferenceComparisonCallback
  {
    public SimplePreferenceComparisonCallback() {}
    
    public boolean arePreferenceContentsTheSame(Preference paramPreference1, Preference paramPreference2)
    {
      if (paramPreference1.getClass() != paramPreference2.getClass()) {
        return false;
      }
      if ((paramPreference1 == paramPreference2) && (paramPreference1.wasDetached())) {
        return false;
      }
      if (!TextUtils.equals(paramPreference1.getTitle(), paramPreference2.getTitle())) {
        return false;
      }
      if (!TextUtils.equals(paramPreference1.getSummary(), paramPreference2.getSummary())) {
        return false;
      }
      Drawable localDrawable1 = paramPreference1.getIcon();
      Drawable localDrawable2 = paramPreference2.getIcon();
      if ((localDrawable1 != localDrawable2) && ((localDrawable1 == null) || (!localDrawable1.equals(localDrawable2)))) {
        return false;
      }
      if (paramPreference1.isEnabled() != paramPreference2.isEnabled()) {
        return false;
      }
      if (paramPreference1.isSelectable() != paramPreference2.isSelectable()) {
        return false;
      }
      if (((paramPreference1 instanceof TwoStatePreference)) && (((TwoStatePreference)paramPreference1).isChecked() != ((TwoStatePreference)paramPreference2).isChecked())) {
        return false;
      }
      return (!(paramPreference1 instanceof DropDownPreference)) || (paramPreference1 == paramPreference2);
    }
    
    public boolean arePreferenceItemsTheSame(Preference paramPreference1, Preference paramPreference2)
    {
      return paramPreference1.a() == paramPreference2.a();
    }
  }
}
