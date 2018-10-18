package cn.edu.pku.pkurunner.TaskList;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

public class TaskListFragment
  extends Fragment
  implements TaskListContract.View
{
  private View a;
  private TaskCardAdapter b;
  private TextView c;
  private SwipeRefreshLayout d;
  private boolean e;
  private ProgressDialog f;
  private TaskListContract.Presenter g;
  
  public TaskListFragment() {}
  
  public void cancelRefresh()
  {
    d.setRefreshing(false);
  }
  
  public void dismissWaitingDialog()
  {
    if (f != null)
    {
      f.dismiss();
      f = null;
    }
  }
  
  public TaskCardAdapter getTaskCardAdapter()
  {
    return b;
  }
  
  public void makeSnackBar(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    Snackbar.make(a, getString(paramInt1, paramVarArgs), paramInt2).show();
  }
  
  public void makeToast(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    Toast.makeText(getContext(), getString(paramInt1, paramVarArgs), paramInt2).show();
  }
  
  public void onCreate(@Nullable Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131558404, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a = paramLayoutInflater.inflate(2131492922, paramViewGroup, false);
    d = ((SwipeRefreshLayout)a.findViewById(2131296408));
    d.setColorSchemeResources(new int[] { 2131099951, 2131099822, 2131099702 });
    d.setOnRefreshListener(new -..Lambda.TaskListFragment.Us84rICY875eCepnRlMz_wh5zTs(this));
    d.setOnChildScrollUpCallback(new -..Lambda.TaskListFragment.OQiX0TfVZ4qswcRF-cQbpeQQe0s(this));
    paramLayoutInflater = (RecyclerView)a.findViewById(2131296407);
    paramLayoutInflater.setLayoutManager(new LinearLayoutManager(getContext()));
    paramLayoutInflater.setItemAnimator(new DefaultItemAnimator());
    paramLayoutInflater.setHasFixedSize(true);
    paramLayoutInflater.addOnScrollListener(new RecyclerView.OnScrollListener()
    {
      public void onScrollStateChanged(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt)
      {
        super.onScrollStateChanged(paramAnonymousRecyclerView, paramAnonymousInt);
        if (paramAnonymousInt == 0) {
          TaskListFragment.a(TaskListFragment.this, false);
        }
      }
      
      public void onScrolled(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        super.onScrolled(paramAnonymousRecyclerView, paramAnonymousInt1, paramAnonymousInt2);
        TaskListFragment.a(TaskListFragment.this, true);
      }
    });
    paramViewGroup = new DividerItemDecoration(getContext(), 1);
    paramViewGroup.setDrawable(getResources().getDrawable(2131230852));
    paramLayoutInflater.addItemDecoration(paramViewGroup);
    b = new TaskCardAdapter();
    b.setPresenter(this, g, new -..Lambda.2EUvrk0dLpFsmOxDQF4SxzFGMeE(this));
    paramLayoutInflater.setAdapter(b);
    c = ((TextView)a.findViewById(2131296409));
    d.post(new -..Lambda.TaskListFragment.rdzGLzADhlGqVtMBVPrOIpRVlBg(this));
    return a;
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (paramBoolean) {
      return;
    }
    g.start();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    paramMenuItem.getItemId();
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onResume()
  {
    super.onResume();
    g.start();
  }
  
  public void setPresenter(@NonNull TaskListContract.Presenter paramPresenter)
  {
    g = paramPresenter;
  }
  
  public void showCongratulationsDialog(@StringRes int paramInt1, @StringRes int paramInt2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    View localView = getActivity().getLayoutInflater().inflate(2131492921, null);
    ((TextView)localView.findViewById(2131296406)).setText(paramInt1);
    ((TextView)localView.findViewById(2131296405)).setText(paramInt2);
    localBuilder.setView(localView).setPositiveButton(getString(2131689639), -..Lambda.TaskListFragment.OKW_7hNhXC7K02VL48huIc8ICKE.INSTANCE).create().show();
  }
  
  public void showTaskDetailDialog(String paramString1, String paramString2)
  {
    new AlertDialog.Builder(getContext()).setTitle(paramString1).setMessage(paramString2).setPositiveButton("OK", -..Lambda.TaskListFragment.DFu3GO3uBV8hYoU877jBWuC_mro.INSTANCE).create().show();
  }
  
  public void showWaitingDialog(int paramInt)
  {
    f = new ProgressDialog(getContext());
    f.setProgressStyle(1);
    f.setMessage("正在同步数据");
    f.setIndeterminate(false);
    f.setCancelable(false);
    f.setMax(paramInt);
    f.show();
  }
  
  public void toggleNotice(Boolean paramBoolean)
  {
    TextView localTextView = c;
    int i;
    if (paramBoolean.booleanValue()) {
      i = 0;
    } else {
      i = 8;
    }
    localTextView.setVisibility(i);
  }
  
  public void updateWaitingDialog(int paramInt)
  {
    f.setProgress(paramInt);
  }
}
