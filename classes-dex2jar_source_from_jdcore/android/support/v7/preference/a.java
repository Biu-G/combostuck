package android.support.v7.preference;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class a
{
  final PreferenceGroupAdapter a;
  private final Context b;
  private boolean c = false;
  
  a(PreferenceGroup paramPreferenceGroup, PreferenceGroupAdapter paramPreferenceGroupAdapter)
  {
    a = paramPreferenceGroupAdapter;
    b = paramPreferenceGroup.getContext();
  }
  
  private a a(final PreferenceGroup paramPreferenceGroup, List<Preference> paramList)
  {
    paramList = new a(b, paramList, paramPreferenceGroup.a());
    paramList.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener()
    {
      public boolean onPreferenceClick(Preference paramAnonymousPreference)
      {
        paramPreferenceGroup.setInitialExpandedChildrenCount(Integer.MAX_VALUE);
        a.onPreferenceHierarchyChange(paramAnonymousPreference);
        paramAnonymousPreference = paramPreferenceGroup.getOnExpandButtonClickListener();
        if (paramAnonymousPreference != null) {
          paramAnonymousPreference.onExpandButtonClick();
        }
        return true;
      }
    });
    return paramList;
  }
  
  private List<Preference> b(PreferenceGroup paramPreferenceGroup)
  {
    int m = 0;
    c = false;
    int k;
    if (paramPreferenceGroup.getInitialExpandedChildrenCount() != Integer.MAX_VALUE) {
      k = 1;
    } else {
      k = 0;
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int n = paramPreferenceGroup.getPreferenceCount();
    int i = 0;
    while (m < n)
    {
      Object localObject = paramPreferenceGroup.getPreference(m);
      if (((Preference)localObject).isVisible())
      {
        if ((k != 0) && (i >= paramPreferenceGroup.getInitialExpandedChildrenCount())) {
          localArrayList2.add(localObject);
        } else {
          localArrayList1.add(localObject);
        }
        if (!(localObject instanceof PreferenceGroup))
        {
          i += 1;
        }
        else
        {
          localObject = (PreferenceGroup)localObject;
          if (((PreferenceGroup)localObject).isOnSameScreenAsChildren())
          {
            localObject = b((PreferenceGroup)localObject);
            if ((k != 0) && (c)) {
              throw new IllegalArgumentException("Nested expand buttons are not supported!");
            }
            localObject = ((List)localObject).iterator();
            int j = i;
            for (;;)
            {
              i = j;
              if (!((Iterator)localObject).hasNext()) {
                break;
              }
              Preference localPreference = (Preference)((Iterator)localObject).next();
              if ((k != 0) && (j >= paramPreferenceGroup.getInitialExpandedChildrenCount())) {
                localArrayList2.add(localPreference);
              } else {
                localArrayList1.add(localPreference);
              }
              j += 1;
            }
          }
        }
      }
      m += 1;
    }
    if ((k != 0) && (i > paramPreferenceGroup.getInitialExpandedChildrenCount())) {
      localArrayList1.add(a(paramPreferenceGroup, localArrayList2));
    }
    c |= k;
    return localArrayList1;
  }
  
  public List<Preference> a(PreferenceGroup paramPreferenceGroup)
  {
    return b(paramPreferenceGroup);
  }
  
  public boolean a(Preference paramPreference)
  {
    if ((!(paramPreference instanceof PreferenceGroup)) && (!c)) {
      return false;
    }
    a.onPreferenceHierarchyChange(paramPreference);
    return true;
  }
  
  static class a
    extends Preference
  {
    private long a;
    
    a(Context paramContext, List<Preference> paramList, long paramLong)
    {
      super();
      d();
      a(paramList);
      a = (paramLong + 1000000L);
    }
    
    private void a(List<Preference> paramList)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      paramList = null;
      while (localIterator.hasNext())
      {
        Preference localPreference = (Preference)localIterator.next();
        CharSequence localCharSequence = localPreference.getTitle();
        boolean bool = localPreference instanceof PreferenceGroup;
        if ((bool) && (!TextUtils.isEmpty(localCharSequence))) {
          localArrayList.add((PreferenceGroup)localPreference);
        }
        if (localArrayList.contains(localPreference.getParent()))
        {
          if (bool) {
            localArrayList.add((PreferenceGroup)localPreference);
          }
        }
        else if (!TextUtils.isEmpty(localCharSequence)) {
          if (paramList == null) {
            paramList = localCharSequence;
          } else {
            paramList = getContext().getString(R.string.summary_collapsed_preference_list, new Object[] { paramList, localCharSequence });
          }
        }
      }
      setSummary(paramList);
    }
    
    private void d()
    {
      setLayoutResource(R.layout.expand_button);
      setIcon(R.drawable.ic_arrow_down_24dp);
      setTitle(R.string.expand_button_title);
      setOrder(999);
    }
    
    public long a()
    {
      return a;
    }
    
    public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder)
    {
      super.onBindViewHolder(paramPreferenceViewHolder);
      paramPreferenceViewHolder.setDividerAllowedAbove(false);
    }
  }
}
