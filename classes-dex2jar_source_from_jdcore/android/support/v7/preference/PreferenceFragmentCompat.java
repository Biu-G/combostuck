package android.support.v7.preference;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.XmlRes;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.preference.internal.AbstractMultiSelectListPreference;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class PreferenceFragmentCompat
  extends Fragment
  implements DialogPreference.TargetFragment, PreferenceManager.OnDisplayPreferenceDialogListener, PreferenceManager.OnNavigateToScreenListener, PreferenceManager.OnPreferenceTreeClickListener
{
  public static final String ARG_PREFERENCE_ROOT = "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";
  RecyclerView a;
  private PreferenceManager b;
  private boolean c;
  private boolean d;
  private Context e;
  private int f = R.layout.preference_list_fragment;
  private final a g = new a();
  private Handler h = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (what != 1) {
        return;
      }
      a();
    }
  };
  private final Runnable i = new Runnable()
  {
    public void run()
    {
      a.focusableViewAvailable(a);
    }
  };
  private Runnable j;
  
  public PreferenceFragmentCompat() {}
  
  private void a(final Preference paramPreference, final String paramString)
  {
    paramPreference = new Runnable()
    {
      public void run()
      {
        RecyclerView.Adapter localAdapter = a.getAdapter();
        if (!(localAdapter instanceof PreferenceGroup.PreferencePositionCallback))
        {
          if (localAdapter == null) {
            return;
          }
          throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
        }
        int i;
        if (paramPreference != null) {
          i = ((PreferenceGroup.PreferencePositionCallback)localAdapter).getPreferenceAdapterPosition(paramPreference);
        } else {
          i = ((PreferenceGroup.PreferencePositionCallback)localAdapter).getPreferenceAdapterPosition(paramString);
        }
        if (i != -1)
        {
          a.scrollToPosition(i);
          return;
        }
        localAdapter.registerAdapterDataObserver(new PreferenceFragmentCompat.b(localAdapter, a, paramPreference, paramString));
      }
    };
    if (a == null)
    {
      j = paramPreference;
      return;
    }
    paramPreference.run();
  }
  
  private void b()
  {
    if (b != null) {
      return;
    }
    throw new RuntimeException("This should be called after super.onCreate.");
  }
  
  private void c()
  {
    if (h.hasMessages(1)) {
      return;
    }
    h.obtainMessage(1).sendToTarget();
  }
  
  private void d()
  {
    PreferenceScreen localPreferenceScreen = getPreferenceScreen();
    if (localPreferenceScreen != null) {
      localPreferenceScreen.onDetached();
    }
    onUnbindPreferences();
  }
  
  void a()
  {
    PreferenceScreen localPreferenceScreen = getPreferenceScreen();
    if (localPreferenceScreen != null)
    {
      getListView().setAdapter(onCreateAdapter(localPreferenceScreen));
      localPreferenceScreen.onAttached();
    }
    onBindPreferences();
  }
  
  public void addPreferencesFromResource(@XmlRes int paramInt)
  {
    b();
    setPreferenceScreen(b.inflateFromResource(e, paramInt, getPreferenceScreen()));
  }
  
  public Preference findPreference(CharSequence paramCharSequence)
  {
    if (b == null) {
      return null;
    }
    return b.findPreference(paramCharSequence);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public Fragment getCallbackFragment()
  {
    return null;
  }
  
  public final RecyclerView getListView()
  {
    return a;
  }
  
  public PreferenceManager getPreferenceManager()
  {
    return b;
  }
  
  public PreferenceScreen getPreferenceScreen()
  {
    return b.getPreferenceScreen();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void onBindPreferences() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = new TypedValue();
    getActivity().getTheme().resolveAttribute(R.attr.preferenceTheme, (TypedValue)localObject, true);
    int m = resourceId;
    int k = m;
    if (m == 0) {
      k = R.style.PreferenceThemeOverlay;
    }
    e = new ContextThemeWrapper(getActivity(), k);
    b = new PreferenceManager(e);
    b.setOnNavigateToScreenListener(this);
    if (getArguments() != null) {
      localObject = getArguments().getString("android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
    } else {
      localObject = null;
    }
    onCreatePreferences(paramBundle, (String)localObject);
  }
  
  protected RecyclerView.Adapter onCreateAdapter(PreferenceScreen paramPreferenceScreen)
  {
    return new PreferenceGroupAdapter(paramPreferenceScreen);
  }
  
  public RecyclerView.LayoutManager onCreateLayoutManager()
  {
    return new LinearLayoutManager(getActivity());
  }
  
  public abstract void onCreatePreferences(Bundle paramBundle, String paramString);
  
  public RecyclerView onCreateRecyclerView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (e.getPackageManager().hasSystemFeature("android.hardware.type.automotive"))
    {
      paramBundle = (RecyclerView)paramViewGroup.findViewById(R.id.recycler_view);
      if (paramBundle != null) {
        return paramBundle;
      }
    }
    paramLayoutInflater = (RecyclerView)paramLayoutInflater.inflate(R.layout.preference_recyclerview, paramViewGroup, false);
    paramLayoutInflater.setLayoutManager(onCreateLayoutManager());
    paramLayoutInflater.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(paramLayoutInflater));
    return paramLayoutInflater;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Object localObject = e.obtainStyledAttributes(null, R.styleable.PreferenceFragmentCompat, R.attr.preferenceFragmentCompatStyle, 0);
    f = ((TypedArray)localObject).getResourceId(R.styleable.PreferenceFragmentCompat_android_layout, f);
    Drawable localDrawable = ((TypedArray)localObject).getDrawable(R.styleable.PreferenceFragmentCompat_android_divider);
    int k = ((TypedArray)localObject).getDimensionPixelSize(R.styleable.PreferenceFragmentCompat_android_dividerHeight, -1);
    boolean bool = ((TypedArray)localObject).getBoolean(R.styleable.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
    ((TypedArray)localObject).recycle();
    paramLayoutInflater = paramLayoutInflater.cloneInContext(e);
    paramViewGroup = paramLayoutInflater.inflate(f, paramViewGroup, false);
    localObject = paramViewGroup.findViewById(16908351);
    if ((localObject instanceof ViewGroup))
    {
      localObject = (ViewGroup)localObject;
      paramLayoutInflater = onCreateRecyclerView(paramLayoutInflater, (ViewGroup)localObject, paramBundle);
      if (paramLayoutInflater != null)
      {
        a = paramLayoutInflater;
        paramLayoutInflater.addItemDecoration(g);
        setDivider(localDrawable);
        if (k != -1) {
          setDividerHeight(k);
        }
        g.a(bool);
        if (a.getParent() == null) {
          ((ViewGroup)localObject).addView(a);
        }
        h.post(i);
        return paramViewGroup;
      }
      throw new RuntimeException("Could not create RecyclerView");
    }
    throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
  }
  
  public void onDestroyView()
  {
    h.removeCallbacks(i);
    h.removeMessages(1);
    if (c) {
      d();
    }
    a = null;
    super.onDestroyView();
  }
  
  public void onDisplayPreferenceDialog(Preference paramPreference)
  {
    boolean bool1;
    if ((getCallbackFragment() instanceof OnPreferenceDisplayDialogCallback)) {
      bool1 = ((OnPreferenceDisplayDialogCallback)getCallbackFragment()).onPreferenceDisplayDialog(this, paramPreference);
    } else {
      bool1 = false;
    }
    boolean bool2 = bool1;
    if (!bool1)
    {
      bool2 = bool1;
      if ((getActivity() instanceof OnPreferenceDisplayDialogCallback)) {
        bool2 = ((OnPreferenceDisplayDialogCallback)getActivity()).onPreferenceDisplayDialog(this, paramPreference);
      }
    }
    if (bool2) {
      return;
    }
    if (getFragmentManager().findFragmentByTag("android.support.v14.preference.PreferenceFragment.DIALOG") != null) {
      return;
    }
    if ((paramPreference instanceof EditTextPreference))
    {
      paramPreference = EditTextPreferenceDialogFragmentCompat.newInstance(paramPreference.getKey());
    }
    else if ((paramPreference instanceof ListPreference))
    {
      paramPreference = ListPreferenceDialogFragmentCompat.newInstance(paramPreference.getKey());
    }
    else
    {
      if (!(paramPreference instanceof AbstractMultiSelectListPreference)) {
        break label151;
      }
      paramPreference = MultiSelectListPreferenceDialogFragmentCompat.newInstance(paramPreference.getKey());
    }
    paramPreference.setTargetFragment(this, 0);
    paramPreference.show(getFragmentManager(), "android.support.v14.preference.PreferenceFragment.DIALOG");
    return;
    label151:
    throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
  }
  
  public void onNavigateToScreen(PreferenceScreen paramPreferenceScreen)
  {
    boolean bool;
    if ((getCallbackFragment() instanceof OnPreferenceStartScreenCallback)) {
      bool = ((OnPreferenceStartScreenCallback)getCallbackFragment()).onPreferenceStartScreen(this, paramPreferenceScreen);
    } else {
      bool = false;
    }
    if ((!bool) && ((getActivity() instanceof OnPreferenceStartScreenCallback))) {
      ((OnPreferenceStartScreenCallback)getActivity()).onPreferenceStartScreen(this, paramPreferenceScreen);
    }
  }
  
  public boolean onPreferenceTreeClick(Preference paramPreference)
  {
    String str = paramPreference.getFragment();
    boolean bool1 = false;
    if (str != null)
    {
      if ((getCallbackFragment() instanceof OnPreferenceStartFragmentCallback)) {
        bool1 = ((OnPreferenceStartFragmentCallback)getCallbackFragment()).onPreferenceStartFragment(this, paramPreference);
      }
      boolean bool2 = bool1;
      if (!bool1)
      {
        bool2 = bool1;
        if ((getActivity() instanceof OnPreferenceStartFragmentCallback)) {
          bool2 = ((OnPreferenceStartFragmentCallback)getActivity()).onPreferenceStartFragment(this, paramPreference);
        }
      }
      return bool2;
    }
    return false;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    PreferenceScreen localPreferenceScreen = getPreferenceScreen();
    if (localPreferenceScreen != null)
    {
      Bundle localBundle = new Bundle();
      localPreferenceScreen.saveHierarchyState(localBundle);
      paramBundle.putBundle("android:preferences", localBundle);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    b.setOnPreferenceTreeClickListener(this);
    b.setOnDisplayPreferenceDialogListener(this);
  }
  
  public void onStop()
  {
    super.onStop();
    b.setOnPreferenceTreeClickListener(null);
    b.setOnDisplayPreferenceDialogListener(null);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void onUnbindPreferences() {}
  
  public void onViewCreated(@NonNull View paramView, @Nullable Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (paramBundle != null)
    {
      paramView = paramBundle.getBundle("android:preferences");
      if (paramView != null)
      {
        paramBundle = getPreferenceScreen();
        if (paramBundle != null) {
          paramBundle.restoreHierarchyState(paramView);
        }
      }
    }
    if (c)
    {
      a();
      if (j != null)
      {
        j.run();
        j = null;
      }
    }
    d = true;
  }
  
  public void scrollToPreference(Preference paramPreference)
  {
    a(paramPreference, null);
  }
  
  public void scrollToPreference(String paramString)
  {
    a(null, paramString);
  }
  
  public void setDivider(Drawable paramDrawable)
  {
    g.a(paramDrawable);
  }
  
  public void setDividerHeight(int paramInt)
  {
    g.a(paramInt);
  }
  
  public void setPreferenceScreen(PreferenceScreen paramPreferenceScreen)
  {
    if ((b.setPreferences(paramPreferenceScreen)) && (paramPreferenceScreen != null))
    {
      onUnbindPreferences();
      c = true;
      if (d) {
        c();
      }
    }
  }
  
  public void setPreferencesFromResource(@XmlRes int paramInt, @Nullable String paramString)
  {
    b();
    PreferenceScreen localPreferenceScreen = b.inflateFromResource(e, paramInt, null);
    Object localObject = localPreferenceScreen;
    if (paramString != null)
    {
      localObject = localPreferenceScreen.findPreference(paramString);
      if (!(localObject instanceof PreferenceScreen))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Preference object with key ");
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append(" is not a PreferenceScreen");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
    }
    setPreferenceScreen((PreferenceScreen)localObject);
  }
  
  public static abstract interface OnPreferenceDisplayDialogCallback
  {
    public abstract boolean onPreferenceDisplayDialog(@NonNull PreferenceFragmentCompat paramPreferenceFragmentCompat, Preference paramPreference);
  }
  
  public static abstract interface OnPreferenceStartFragmentCallback
  {
    public abstract boolean onPreferenceStartFragment(PreferenceFragmentCompat paramPreferenceFragmentCompat, Preference paramPreference);
  }
  
  public static abstract interface OnPreferenceStartScreenCallback
  {
    public abstract boolean onPreferenceStartScreen(PreferenceFragmentCompat paramPreferenceFragmentCompat, PreferenceScreen paramPreferenceScreen);
  }
  
  private class a
    extends RecyclerView.ItemDecoration
  {
    private Drawable b;
    private int c;
    private boolean d = true;
    
    a() {}
    
    private boolean a(View paramView, RecyclerView paramRecyclerView)
    {
      RecyclerView.ViewHolder localViewHolder = paramRecyclerView.getChildViewHolder(paramView);
      if (((localViewHolder instanceof PreferenceViewHolder)) && (((PreferenceViewHolder)localViewHolder).isDividerAllowedBelow())) {
        i = 1;
      } else {
        i = 0;
      }
      if (i == 0) {
        return false;
      }
      boolean bool = d;
      int i = paramRecyclerView.indexOfChild(paramView);
      if (i < paramRecyclerView.getChildCount() - 1)
      {
        paramView = paramRecyclerView.getChildViewHolder(paramRecyclerView.getChildAt(i + 1));
        if (((paramView instanceof PreferenceViewHolder)) && (((PreferenceViewHolder)paramView).isDividerAllowedAbove())) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    
    public void a(int paramInt)
    {
      c = paramInt;
      a.invalidateItemDecorations();
    }
    
    public void a(Drawable paramDrawable)
    {
      if (paramDrawable != null) {
        c = paramDrawable.getIntrinsicHeight();
      } else {
        c = 0;
      }
      b = paramDrawable;
      a.invalidateItemDecorations();
    }
    
    public void a(boolean paramBoolean)
    {
      d = paramBoolean;
    }
    
    public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
    {
      if (a(paramView, paramRecyclerView)) {
        bottom = c;
      }
    }
    
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
    {
      if (b == null) {
        return;
      }
      int j = paramRecyclerView.getChildCount();
      int k = paramRecyclerView.getWidth();
      int i = 0;
      while (i < j)
      {
        paramState = paramRecyclerView.getChildAt(i);
        if (a(paramState, paramRecyclerView))
        {
          int m = (int)paramState.getY() + paramState.getHeight();
          b.setBounds(0, m, k, c + m);
          b.draw(paramCanvas);
        }
        i += 1;
      }
    }
  }
  
  private static class b
    extends RecyclerView.AdapterDataObserver
  {
    private final RecyclerView.Adapter a;
    private final RecyclerView b;
    private final Preference c;
    private final String d;
    
    public b(RecyclerView.Adapter paramAdapter, RecyclerView paramRecyclerView, Preference paramPreference, String paramString)
    {
      a = paramAdapter;
      b = paramRecyclerView;
      c = paramPreference;
      d = paramString;
    }
    
    private void a()
    {
      a.unregisterAdapterDataObserver(this);
      int i;
      if (c != null) {
        i = ((PreferenceGroup.PreferencePositionCallback)a).getPreferenceAdapterPosition(c);
      } else {
        i = ((PreferenceGroup.PreferencePositionCallback)a).getPreferenceAdapterPosition(d);
      }
      if (i != -1) {
        b.scrollToPosition(i);
      }
    }
    
    public void onChanged()
    {
      a();
    }
    
    public void onItemRangeChanged(int paramInt1, int paramInt2)
    {
      a();
    }
    
    public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      a();
    }
    
    public void onItemRangeInserted(int paramInt1, int paramInt2)
    {
      a();
    }
    
    public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
    {
      a();
    }
    
    public void onItemRangeRemoved(int paramInt1, int paramInt2)
    {
      a();
    }
  }
}
