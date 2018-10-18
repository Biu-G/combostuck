package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.util.DiffUtil;
import android.support.v7.util.DiffUtil.Callback;
import android.support.v7.util.DiffUtil.DiffResult;
import android.support.v7.widget.RecyclerView.Adapter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class PreferenceGroupAdapter
  extends RecyclerView.Adapter<PreferenceViewHolder>
  implements Preference.a, PreferenceGroup.PreferencePositionCallback
{
  private PreferenceGroup a;
  private List<Preference> b;
  private List<Preference> c;
  private List<a> d;
  private a e = new a();
  private Handler f;
  private a g;
  private Runnable h = new Runnable()
  {
    public void run()
    {
      a();
    }
  };
  
  public PreferenceGroupAdapter(PreferenceGroup paramPreferenceGroup)
  {
    this(paramPreferenceGroup, new Handler());
  }
  
  private PreferenceGroupAdapter(PreferenceGroup paramPreferenceGroup, Handler paramHandler)
  {
    a = paramPreferenceGroup;
    f = paramHandler;
    g = new a(paramPreferenceGroup, this);
    a.a(this);
    b = new ArrayList();
    c = new ArrayList();
    d = new ArrayList();
    if ((a instanceof PreferenceScreen)) {
      setHasStableIds(((PreferenceScreen)a).shouldUseGeneratedIds());
    } else {
      setHasStableIds(true);
    }
    a();
  }
  
  private a a(Preference paramPreference, a paramA)
  {
    if (paramA == null) {
      paramA = new a();
    }
    c = paramPreference.getClass().getName();
    a = paramPreference.getLayoutResource();
    b = paramPreference.getWidgetLayoutResource();
    return paramA;
  }
  
  private void a(Preference paramPreference)
  {
    paramPreference = a(paramPreference, null);
    if (!d.contains(paramPreference)) {
      d.add(paramPreference);
    }
  }
  
  private void a(List<Preference> paramList, PreferenceGroup paramPreferenceGroup)
  {
    paramPreferenceGroup.d();
    int j = paramPreferenceGroup.getPreferenceCount();
    int i = 0;
    while (i < j)
    {
      Preference localPreference = paramPreferenceGroup.getPreference(i);
      paramList.add(localPreference);
      a(localPreference);
      if ((localPreference instanceof PreferenceGroup))
      {
        PreferenceGroup localPreferenceGroup = (PreferenceGroup)localPreference;
        if (localPreferenceGroup.isOnSameScreenAsChildren()) {
          a(paramList, localPreferenceGroup);
        }
      }
      localPreference.a(this);
      i += 1;
    }
  }
  
  void a()
  {
    Object localObject = c.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((Preference)((Iterator)localObject).next()).a(null);
    }
    localObject = new ArrayList(c.size());
    a((List)localObject, a);
    final List localList1 = g.a(a);
    final List localList2 = b;
    b = localList1;
    c = ((List)localObject);
    PreferenceManager localPreferenceManager = a.getPreferenceManager();
    if ((localPreferenceManager != null) && (localPreferenceManager.getPreferenceComparisonCallback() != null)) {
      DiffUtil.calculateDiff(new DiffUtil.Callback()
      {
        public boolean areContentsTheSame(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return c.arePreferenceContentsTheSame((Preference)localList2.get(paramAnonymousInt1), (Preference)localList1.get(paramAnonymousInt2));
        }
        
        public boolean areItemsTheSame(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return c.arePreferenceItemsTheSame((Preference)localList2.get(paramAnonymousInt1), (Preference)localList1.get(paramAnonymousInt2));
        }
        
        public int getNewListSize()
        {
          return localList1.size();
        }
        
        public int getOldListSize()
        {
          return localList2.size();
        }
      }).dispatchUpdatesTo(this);
    } else {
      notifyDataSetChanged();
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((Preference)((Iterator)localObject).next()).clearWasDetached();
    }
  }
  
  public Preference getItem(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < getItemCount())) {
      return (Preference)b.get(paramInt);
    }
    return null;
  }
  
  public int getItemCount()
  {
    return b.size();
  }
  
  public long getItemId(int paramInt)
  {
    if (!hasStableIds()) {
      return -1L;
    }
    return getItem(paramInt).a();
  }
  
  public int getItemViewType(int paramInt)
  {
    e = a(getItem(paramInt), e);
    paramInt = d.indexOf(e);
    if (paramInt != -1) {
      return paramInt;
    }
    paramInt = d.size();
    d.add(new a(e));
    return paramInt;
  }
  
  public int getPreferenceAdapterPosition(Preference paramPreference)
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      Preference localPreference = (Preference)b.get(i);
      if ((localPreference != null) && (localPreference.equals(paramPreference))) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public int getPreferenceAdapterPosition(String paramString)
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      if (TextUtils.equals(paramString, ((Preference)b.get(i)).getKey())) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder, int paramInt)
  {
    getItem(paramInt).onBindViewHolder(paramPreferenceViewHolder);
  }
  
  public PreferenceViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    a localA = (a)d.get(paramInt);
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramViewGroup.getContext());
    TypedArray localTypedArray = paramViewGroup.getContext().obtainStyledAttributes(null, R.styleable.BackgroundStyle);
    Drawable localDrawable = localTypedArray.getDrawable(R.styleable.BackgroundStyle_android_selectableItemBackground);
    Object localObject = localDrawable;
    if (localDrawable == null) {
      localObject = ContextCompat.getDrawable(paramViewGroup.getContext(), 17301602);
    }
    localTypedArray.recycle();
    paramViewGroup = localLayoutInflater.inflate(a, paramViewGroup, false);
    if (paramViewGroup.getBackground() == null) {
      ViewCompat.setBackground(paramViewGroup, (Drawable)localObject);
    }
    localObject = (ViewGroup)paramViewGroup.findViewById(16908312);
    if (localObject != null) {
      if (b != 0) {
        localLayoutInflater.inflate(b, (ViewGroup)localObject);
      } else {
        ((ViewGroup)localObject).setVisibility(8);
      }
    }
    return new PreferenceViewHolder(paramViewGroup);
  }
  
  public void onPreferenceChange(Preference paramPreference)
  {
    int i = b.indexOf(paramPreference);
    if (i != -1) {
      notifyItemChanged(i, paramPreference);
    }
  }
  
  public void onPreferenceHierarchyChange(Preference paramPreference)
  {
    f.removeCallbacks(h);
    f.post(h);
  }
  
  public void onPreferenceVisibilityChange(Preference paramPreference)
  {
    if (!c.contains(paramPreference)) {
      return;
    }
    if (g.a(paramPreference)) {
      return;
    }
    if (paramPreference.isVisible())
    {
      i = -1;
      Object localObject = c.iterator();
      while (((Iterator)localObject).hasNext())
      {
        Preference localPreference = (Preference)((Iterator)localObject).next();
        if (paramPreference.equals(localPreference)) {
          break;
        }
        if (localPreference.isVisible()) {
          i += 1;
        }
      }
      localObject = b;
      i += 1;
      ((List)localObject).add(i, paramPreference);
      notifyItemInserted(i);
      return;
    }
    int j = b.size();
    int i = 0;
    while ((i < j) && (!paramPreference.equals(b.get(i))))
    {
      if (i == j - 1) {
        return;
      }
      i += 1;
    }
    b.remove(i);
    notifyItemRemoved(i);
  }
  
  private static class a
  {
    int a;
    int b;
    String c;
    
    a() {}
    
    a(a paramA)
    {
      a = a;
      b = b;
      c = c;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof a;
      boolean bool2 = false;
      if (!bool1) {
        return false;
      }
      paramObject = (a)paramObject;
      bool1 = bool2;
      if (a == a)
      {
        bool1 = bool2;
        if (b == b)
        {
          bool1 = bool2;
          if (TextUtils.equals(c, c)) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public int hashCode()
    {
      return ((527 + a) * 31 + b) * 31 + c.hashCode();
    }
  }
}
