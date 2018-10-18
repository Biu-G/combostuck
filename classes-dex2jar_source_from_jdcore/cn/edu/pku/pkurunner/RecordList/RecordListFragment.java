package cn.edu.pku.pkurunner.RecordList;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.AppBarLayout.OnOffsetChangedListener;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import cn.edu.pku.pkurunner.MainActivity;
import cn.edu.pku.pkurunner.Photo.PhotoFile;
import com.getkeepsafe.taptargetview.TapTarget;
import com.getkeepsafe.taptargetview.TapTargetView;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.io.File;
import java.util.concurrent.TimeUnit;

public class RecordListFragment
  extends Fragment
  implements RecordListContract.View
{
  private View a;
  private SwipeRefreshLayout b;
  private RecordCardAdapter c;
  private TextView d;
  private TextView e;
  private ImageView f;
  private ProgressDialog g;
  private boolean h;
  private FloatingActionButton i;
  private RecordListContract.Presenter j;
  private ObservableEmitter<Boolean> k;
  private ObservableEmitter<Pair<String, String>> l;
  private SharedPreferences m;
  
  public RecordListFragment() {}
  
  private Rect a(View paramView)
  {
    int[] arrayOfInt = new int[2];
    paramView.getLocationInWindow(arrayOfInt);
    int n = arrayOfInt[0];
    int i1 = paramView.getWidth();
    int i2 = arrayOfInt[1];
    return new Rect(n, i2, i1 + n, paramView.getHeight() + i2);
  }
  
  private void a()
  {
    if (c.getItemCount() == 0) {
      return;
    }
    RecordCardAdapter.b localB = (RecordCardAdapter.b)((RecyclerView)a.findViewById(2131296401)).findViewHolderForLayoutPosition(0);
    if (localB == null) {
      return;
    }
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity == null) {
      return;
    }
    if (m.getBoolean("upload", true))
    {
      if (c(localFragmentActivity, localB)) {
        m.edit().putBoolean("upload", false).apply();
      }
    }
    else if (m.getBoolean("detail", true))
    {
      if (a(localFragmentActivity, localB)) {
        m.edit().putBoolean("detail", false).apply();
      }
    }
    else if ((m.getBoolean("remove", true)) && (b(localFragmentActivity, localB))) {
      m.edit().putBoolean("remove", false).apply();
    }
  }
  
  private boolean a(Activity paramActivity, RecordCardAdapter.b paramB)
  {
    paramB = paramB.w();
    if (paramB == null) {
      return false;
    }
    TapTargetView.showFor(paramActivity, TapTarget.forBounds(a(paramB), getString(2131689652), getString(2131689649)).outerCircleColor(2131099850).transparentTarget(true));
    return true;
  }
  
  private boolean b(Activity paramActivity, RecordCardAdapter.b paramB)
  {
    View localView = paramB.x();
    if (localView == null) {
      return false;
    }
    if (!(paramB instanceof RecordCardAdapter.d)) {
      return false;
    }
    TapTargetView.showFor(paramActivity, TapTarget.forBounds(a(localView), getString(2131689651), getString(2131689648)).outerCircleColor(2131099680).transparentTarget(true));
    return true;
  }
  
  private boolean c(Activity paramActivity, RecordCardAdapter.b paramB)
  {
    View localView = paramB.y();
    if (localView == null) {
      return false;
    }
    if (!(paramB instanceof RecordCardAdapter.d)) {
      return false;
    }
    TapTargetView.showFor(paramActivity, TapTarget.forBounds(a(localView), getString(2131689653), getString(2131689650)).outerCircleColor(2131099990).transparentTarget(true));
    return true;
  }
  
  public Observable<Boolean> callSystemCamera(File paramFile)
  {
    return Observable.create(new -..Lambda.RecordListFragment.oLtmdi0vOYLEdIK325A1aPkiUUc(this, paramFile)).subscribeOn(AndroidSchedulers.mainThread());
  }
  
  public void cancelRefresh()
  {
    b.setRefreshing(false);
  }
  
  public void dismissWaitDialog()
  {
    if (g != null)
    {
      g.dismiss();
      g = null;
    }
  }
  
  public File getExternalPhotoDir()
  {
    return getMainActivity().getExternalFilesDir(PhotoFile.PicutreType);
  }
  
  public MainActivity getMainActivity()
  {
    return (MainActivity)getActivity();
  }
  
  public RecordCardAdapter getRecordCardAdapter()
  {
    return c;
  }
  
  public Observable<Pair<String, String>> launchIaaaLogin()
  {
    return Observable.create(new -..Lambda.RecordListFragment.FTQqkE6f5LX14i_1kDHo_6z-vB0(this)).subscribeOn(AndroidSchedulers.mainThread());
  }
  
  public void makeSnackBar(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    Snackbar.make(a, getString(paramInt1, paramVarArgs), paramInt2).show();
  }
  
  public void makeToast(@StringRes int paramInt1, int paramInt2, Object... paramVarArgs)
  {
    Toast.makeText(getContext(), getString(paramInt1, paramVarArgs), paramInt2).show();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != 602)
    {
      if (paramInt1 != 1651) {
        return;
      }
      if (paramInt2 == -1)
      {
        Object localObject = paramIntent.getExtras();
        if ("cancel".equals(((Bundle)localObject).getString("iAAA_RESULT")))
        {
          l.onError(new Throwable(getString(2131689633)));
        }
        else
        {
          paramIntent = ((Bundle)localObject).getString("iAAA_UID");
          localObject = ((Bundle)localObject).getString("iAAA_TOKEN");
          l.onNext(new Pair(paramIntent, localObject));
        }
      }
      else
      {
        l.onError(new Throwable(getString(2131689634)));
      }
      l = null;
      return;
    }
    paramIntent = k;
    boolean bool;
    if (paramInt2 == -1) {
      bool = true;
    } else {
      bool = false;
    }
    paramIntent.onNext(Boolean.valueOf(bool));
    k = null;
  }
  
  public void onCreate(@Nullable Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131558403, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a = paramLayoutInflater.inflate(2131492920, paramViewGroup, false);
    b = ((SwipeRefreshLayout)a.findViewById(2131296402));
    b.setColorSchemeResources(new int[] { 2131099951, 2131099822, 2131099702 });
    b.setOnRefreshListener(new -..Lambda.RecordListFragment.q071HHex3zSQefczNWW_1f9Nyk8(this));
    b.setOnChildScrollUpCallback(new -..Lambda.RecordListFragment.7JHgrCtvvhvanJirlaNIakVOG7U(this));
    paramLayoutInflater = (RecyclerView)a.findViewById(2131296401);
    paramLayoutInflater.setLayoutManager(new LinearLayoutManager(getContext()));
    paramLayoutInflater.setItemAnimator(new DefaultItemAnimator());
    paramLayoutInflater.setHasFixedSize(true);
    paramLayoutInflater.addOnScrollListener(new RecyclerView.OnScrollListener()
    {
      public void onScrollStateChanged(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt)
      {
        super.onScrollStateChanged(paramAnonymousRecyclerView, paramAnonymousInt);
        if (paramAnonymousInt == 0) {
          RecordListFragment.a(RecordListFragment.this, false);
        }
      }
      
      public void onScrolled(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        super.onScrolled(paramAnonymousRecyclerView, paramAnonymousInt1, paramAnonymousInt2);
        RecordListFragment.a(RecordListFragment.this, true);
      }
    });
    paramViewGroup = new DividerItemDecoration(getContext(), 1);
    paramViewGroup.setDrawable(getResources().getDrawable(2131230852));
    paramLayoutInflater.addItemDecoration(paramViewGroup);
    c = new RecordCardAdapter();
    c.setPresenter(j, new -..Lambda.t4ycrjoQCXH1mYMIvLDXTexLCgs(this));
    paramLayoutInflater.setAdapter(c);
    new ItemTouchHelper(new ItemTouchHelperCallback(c, new -..Lambda.RecordListFragment.2_jadwxMxQkupQsYWZ8ugWCvtBU(this), new -..Lambda.t4ycrjoQCXH1mYMIvLDXTexLCgs(this))).attachToRecyclerView(paramLayoutInflater);
    d = ((TextView)a.findViewById(2131296404));
    f = ((ImageView)a.findViewById(2131296400));
    e = ((TextView)a.findViewById(2131296403));
    i = ((FloatingActionButton)getActivity().findViewById(2131296578));
    i.setOnClickListener(new -..Lambda.RecordListFragment.akelyonT8UB7hdjqP5ps42WmuyU(this));
    ((AppBarLayout)getActivity().findViewById(2131296576)).addOnOffsetChangedListener(new AppBarStateChangeWrapper(new -..Lambda.RecordListFragment.FQ1LcRhvqG-aL6fjaFjsWIFENAg(this)));
    m = getContext().getSharedPreferences("GuideActivity", 0);
    return a;
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (paramBoolean) {
      return;
    }
    paramBoolean = false;
    Bundle localBundle = getArguments();
    if (localBundle != null)
    {
      paramBoolean = localBundle.getBoolean("newRecord", false);
      localBundle.remove("newRecord");
    }
    j.start(paramBoolean);
    Observable.just(Boolean.valueOf(true)).delay(1L, TimeUnit.SECONDS).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.RecordListFragment.Fpz6u7OHey836VZ5BEQXMs9L9ec(this));
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() != 2131296352) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    m.edit().remove("upload").remove("detail").remove("remove").apply();
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    Bundle localBundle = getArguments();
    boolean bool = false;
    if (localBundle != null)
    {
      bool = localBundle.getBoolean("newRecord", false);
      localBundle.remove("newRecord");
    }
    j.start(bool);
  }
  
  public void scrollRecyclerViewToTop()
  {
    ((RecyclerView)a.findViewById(2131296401)).smoothScrollToPosition(0);
  }
  
  public void setPresenter(@NonNull RecordListContract.Presenter paramPresenter)
  {
    j = paramPresenter;
  }
  
  public void setWaitingDialogMessage(@StringRes int paramInt)
  {
    if (g != null) {
      g.setMessage(getString(paramInt));
    }
  }
  
  public Observable<Boolean> showConfirmDialog(@StringRes int paramInt1, @StringRes int paramInt2)
  {
    return Observable.create(new -..Lambda.RecordListFragment.PH3_rWlJTPOOXYd3Lg15zBEZCKI(this, paramInt1, paramInt2)).subscribeOn(AndroidSchedulers.mainThread());
  }
  
  public Observable<RecordListContract.View.PhotoStatus> showPhotoDialog(@StringRes int paramInt1, @StringRes int paramInt2)
  {
    return Observable.create(new -..Lambda.RecordListFragment.cJejWE1zxlgfwArr_gIUEWbEM34(this, paramInt1, paramInt2)).subscribeOn(AndroidSchedulers.mainThread());
  }
  
  public void showRecordDetailSheet(Bundle paramBundle)
  {
    RecordDetailViewFragment localRecordDetailViewFragment = new RecordDetailViewFragment();
    localRecordDetailViewFragment.setArguments(paramBundle);
    localRecordDetailViewFragment.show(getFragmentManager(), "Record Detail Fragment");
  }
  
  public void showWaitingDialog()
  {
    g = new ProgressDialog(getContext());
    g.setProgressStyle(0);
    g.setIndeterminate(false);
    g.setCancelable(false);
    g.show();
  }
  
  public void toggleLoadingNotice(boolean paramBoolean)
  {
    TextView localTextView = e;
    int n;
    if (paramBoolean) {
      n = 0;
    } else {
      n = 8;
    }
    localTextView.setVisibility(n);
  }
  
  public void toggleNoDataNotice(boolean paramBoolean)
  {
    Object localObject = d;
    int i1 = 8;
    if (paramBoolean) {
      n = 0;
    } else {
      n = 8;
    }
    ((TextView)localObject).setVisibility(n);
    localObject = f;
    int n = i1;
    if (paramBoolean) {
      n = 0;
    }
    ((ImageView)localObject).setVisibility(n);
  }
  
  static class AppBarStateChangeWrapper
    implements AppBarLayout.OnOffsetChangedListener
  {
    private State a = State.IDLE;
    private a b;
    
    public AppBarStateChangeWrapper(a paramA)
    {
      b = paramA;
    }
    
    public void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt)
    {
      if (paramInt == 0)
      {
        if (a != State.EXPANDED) {
          b.onStateChanged(paramAppBarLayout, State.EXPANDED);
        }
        a = State.EXPANDED;
        return;
      }
      if (Math.abs(paramInt) >= paramAppBarLayout.getTotalScrollRange() * 0.6D)
      {
        if (a != State.COLLAPSED) {
          b.onStateChanged(paramAppBarLayout, State.COLLAPSED);
        }
        a = State.COLLAPSED;
        return;
      }
      if (a != State.IDLE) {
        b.onStateChanged(paramAppBarLayout, State.IDLE);
      }
      a = State.IDLE;
    }
    
    public static enum State
    {
      private State() {}
    }
    
    static abstract interface a
    {
      public abstract void onStateChanged(AppBarLayout paramAppBarLayout, RecordListFragment.AppBarStateChangeWrapper.State paramState);
    }
  }
}
