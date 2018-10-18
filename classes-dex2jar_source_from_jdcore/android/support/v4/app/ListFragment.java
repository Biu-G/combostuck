package android.support.v4.app;

import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class ListFragment
  extends Fragment
{
  ListAdapter a;
  ListView b;
  View c;
  TextView d;
  View e;
  View f;
  CharSequence g;
  boolean h;
  private final Handler i = new Handler();
  private final Runnable j = new Runnable()
  {
    public void run()
    {
      b.focusableViewAvailable(b);
    }
  };
  private final AdapterView.OnItemClickListener k = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      onListItemClick((ListView)paramAnonymousAdapterView, paramAnonymousView, paramAnonymousInt, paramAnonymousLong);
    }
  };
  
  public ListFragment() {}
  
  private void a()
  {
    if (b != null) {
      return;
    }
    Object localObject = getView();
    if (localObject != null)
    {
      if ((localObject instanceof ListView))
      {
        b = ((ListView)localObject);
      }
      else
      {
        d = ((TextView)((View)localObject).findViewById(16711681));
        if (d == null) {
          c = ((View)localObject).findViewById(16908292);
        } else {
          d.setVisibility(8);
        }
        e = ((View)localObject).findViewById(16711682);
        f = ((View)localObject).findViewById(16711683);
        localObject = ((View)localObject).findViewById(16908298);
        if (!(localObject instanceof ListView))
        {
          if (localObject == null) {
            throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
          }
          throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
        }
        b = ((ListView)localObject);
        if (c != null)
        {
          b.setEmptyView(c);
        }
        else if (g != null)
        {
          d.setText(g);
          b.setEmptyView(d);
        }
      }
      h = true;
      b.setOnItemClickListener(k);
      if (a != null)
      {
        localObject = a;
        a = null;
        setListAdapter((ListAdapter)localObject);
      }
      else if (e != null)
      {
        a(false, false);
      }
      i.post(j);
      return;
    }
    throw new IllegalStateException("Content view not yet created");
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    a();
    if (e != null)
    {
      if (h == paramBoolean1) {
        return;
      }
      h = paramBoolean1;
      if (paramBoolean1)
      {
        if (paramBoolean2)
        {
          e.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
          f.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
        }
        else
        {
          e.clearAnimation();
          f.clearAnimation();
        }
        e.setVisibility(8);
        f.setVisibility(0);
        return;
      }
      if (paramBoolean2)
      {
        e.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
        f.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
      }
      else
      {
        e.clearAnimation();
        f.clearAnimation();
      }
      e.setVisibility(0);
      f.setVisibility(8);
      return;
    }
    throw new IllegalStateException("Can't be used with a custom content view");
  }
  
  public ListAdapter getListAdapter()
  {
    return a;
  }
  
  public ListView getListView()
  {
    a();
    return b;
  }
  
  public long getSelectedItemId()
  {
    a();
    return b.getSelectedItemId();
  }
  
  public int getSelectedItemPosition()
  {
    a();
    return b.getSelectedItemPosition();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = getContext();
    paramLayoutInflater = new FrameLayout(paramViewGroup);
    paramBundle = new LinearLayout(paramViewGroup);
    paramBundle.setId(16711682);
    paramBundle.setOrientation(1);
    paramBundle.setVisibility(8);
    paramBundle.setGravity(17);
    paramBundle.addView(new ProgressBar(paramViewGroup, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
    paramLayoutInflater.addView(paramBundle, new FrameLayout.LayoutParams(-1, -1));
    paramBundle = new FrameLayout(paramViewGroup);
    paramBundle.setId(16711683);
    TextView localTextView = new TextView(paramViewGroup);
    localTextView.setId(16711681);
    localTextView.setGravity(17);
    paramBundle.addView(localTextView, new FrameLayout.LayoutParams(-1, -1));
    paramViewGroup = new ListView(paramViewGroup);
    paramViewGroup.setId(16908298);
    paramViewGroup.setDrawSelectorOnTop(false);
    paramBundle.addView(paramViewGroup, new FrameLayout.LayoutParams(-1, -1));
    paramLayoutInflater.addView(paramBundle, new FrameLayout.LayoutParams(-1, -1));
    paramLayoutInflater.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    i.removeCallbacks(j);
    b = null;
    h = false;
    f = null;
    e = null;
    c = null;
    d = null;
    super.onDestroyView();
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong) {}
  
  public void onViewCreated(@NonNull View paramView, @Nullable Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    a();
  }
  
  public void setEmptyText(CharSequence paramCharSequence)
  {
    a();
    if (d != null)
    {
      d.setText(paramCharSequence);
      if (g == null) {
        b.setEmptyView(d);
      }
      g = paramCharSequence;
      return;
    }
    throw new IllegalStateException("Can't be used with a custom content view");
  }
  
  public void setListAdapter(ListAdapter paramListAdapter)
  {
    ListAdapter localListAdapter = a;
    boolean bool = false;
    int m;
    if (localListAdapter != null) {
      m = 1;
    } else {
      m = 0;
    }
    a = paramListAdapter;
    if (b != null)
    {
      b.setAdapter(paramListAdapter);
      if ((!h) && (m == 0))
      {
        if (getView().getWindowToken() != null) {
          bool = true;
        }
        a(true, bool);
      }
    }
  }
  
  public void setListShown(boolean paramBoolean)
  {
    a(paramBoolean, true);
  }
  
  public void setListShownNoAnimation(boolean paramBoolean)
  {
    a(paramBoolean, false);
  }
  
  public void setSelection(int paramInt)
  {
    a();
    b.setSelection(paramInt);
  }
}
