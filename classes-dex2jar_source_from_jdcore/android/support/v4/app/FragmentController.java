package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

public class FragmentController
{
  private final FragmentHostCallback<?> a;
  
  private FragmentController(FragmentHostCallback<?> paramFragmentHostCallback)
  {
    a = paramFragmentHostCallback;
  }
  
  public static FragmentController createController(FragmentHostCallback<?> paramFragmentHostCallback)
  {
    return new FragmentController(paramFragmentHostCallback);
  }
  
  public void attachHost(Fragment paramFragment)
  {
    a.b.a(a, a, paramFragment);
  }
  
  public void dispatchActivityCreated()
  {
    a.b.m();
  }
  
  public void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    a.b.a(paramConfiguration);
  }
  
  public boolean dispatchContextItemSelected(MenuItem paramMenuItem)
  {
    return a.b.b(paramMenuItem);
  }
  
  public void dispatchCreate()
  {
    a.b.l();
  }
  
  public boolean dispatchCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    return a.b.a(paramMenu, paramMenuInflater);
  }
  
  public void dispatchDestroy()
  {
    a.b.s();
  }
  
  public void dispatchDestroyView()
  {
    a.b.r();
  }
  
  public void dispatchLowMemory()
  {
    a.b.t();
  }
  
  public void dispatchMultiWindowModeChanged(boolean paramBoolean)
  {
    a.b.a(paramBoolean);
  }
  
  public boolean dispatchOptionsItemSelected(MenuItem paramMenuItem)
  {
    return a.b.a(paramMenuItem);
  }
  
  public void dispatchOptionsMenuClosed(Menu paramMenu)
  {
    a.b.b(paramMenu);
  }
  
  public void dispatchPause()
  {
    a.b.p();
  }
  
  public void dispatchPictureInPictureModeChanged(boolean paramBoolean)
  {
    a.b.b(paramBoolean);
  }
  
  public boolean dispatchPrepareOptionsMenu(Menu paramMenu)
  {
    return a.b.a(paramMenu);
  }
  
  @Deprecated
  public void dispatchReallyStop() {}
  
  public void dispatchResume()
  {
    a.b.o();
  }
  
  public void dispatchStart()
  {
    a.b.n();
  }
  
  public void dispatchStop()
  {
    a.b.q();
  }
  
  @Deprecated
  public void doLoaderDestroy() {}
  
  @Deprecated
  public void doLoaderRetain() {}
  
  @Deprecated
  public void doLoaderStart() {}
  
  @Deprecated
  public void doLoaderStop(boolean paramBoolean) {}
  
  @Deprecated
  public void dumpLoaders(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public boolean execPendingActions()
  {
    return a.b.e();
  }
  
  @Nullable
  public Fragment findFragmentByWho(String paramString)
  {
    return a.b.a(paramString);
  }
  
  public List<Fragment> getActiveFragments(List<Fragment> paramList)
  {
    return a.b.a();
  }
  
  public int getActiveFragmentsCount()
  {
    return a.b.b();
  }
  
  public FragmentManager getSupportFragmentManager()
  {
    return a.e();
  }
  
  @Deprecated
  public LoaderManager getSupportLoaderManager()
  {
    throw new UnsupportedOperationException("Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager.");
  }
  
  public void noteStateNotSaved()
  {
    a.b.k();
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.b.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  @Deprecated
  public void reportLoaderStart() {}
  
  public void restoreAllState(Parcelable paramParcelable, FragmentManagerNonConfig paramFragmentManagerNonConfig)
  {
    a.b.a(paramParcelable, paramFragmentManagerNonConfig);
  }
  
  @Deprecated
  public void restoreAllState(Parcelable paramParcelable, List<Fragment> paramList)
  {
    a.b.a(paramParcelable, new FragmentManagerNonConfig(paramList, null, null));
  }
  
  @Deprecated
  public void restoreLoaderNonConfig(SimpleArrayMap<String, LoaderManager> paramSimpleArrayMap) {}
  
  @Deprecated
  public SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig()
  {
    return null;
  }
  
  public FragmentManagerNonConfig retainNestedNonConfig()
  {
    return a.b.h();
  }
  
  @Deprecated
  public List<Fragment> retainNonConfig()
  {
    FragmentManagerNonConfig localFragmentManagerNonConfig = a.b.h();
    if (localFragmentManagerNonConfig != null) {
      return localFragmentManagerNonConfig.a();
    }
    return null;
  }
  
  public Parcelable saveAllState()
  {
    return a.b.j();
  }
}
