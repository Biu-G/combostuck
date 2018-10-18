package android.support.v4.app;

import android.arch.lifecycle.LifecycleOwner;
import android.arch.lifecycle.MutableLiveData;
import android.arch.lifecycle.Observer;
import android.arch.lifecycle.ViewModel;
import android.arch.lifecycle.ViewModelProvider;
import android.arch.lifecycle.ViewModelProvider.Factory;
import android.arch.lifecycle.ViewModelStore;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.Loader;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

class LoaderManagerImpl
  extends LoaderManager
{
  static boolean a = false;
  @NonNull
  private final LifecycleOwner b;
  @NonNull
  private final LoaderViewModel c;
  
  LoaderManagerImpl(@NonNull LifecycleOwner paramLifecycleOwner, @NonNull ViewModelStore paramViewModelStore)
  {
    b = paramLifecycleOwner;
    c = LoaderViewModel.a(paramViewModelStore);
  }
  
  @MainThread
  @NonNull
  private <D> Loader<D> a(int paramInt, @Nullable Bundle paramBundle, @NonNull LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks, @Nullable Loader<D> paramLoader)
  {
    try
    {
      c.a();
      Loader localLoader = paramLoaderCallbacks.onCreateLoader(paramInt, paramBundle);
      if (localLoader != null)
      {
        if ((localLoader.getClass().isMemberClass()) && (!Modifier.isStatic(localLoader.getClass().getModifiers())))
        {
          paramBundle = new StringBuilder();
          paramBundle.append("Object returned from onCreateLoader must not be a non-static inner member class: ");
          paramBundle.append(localLoader);
          throw new IllegalArgumentException(paramBundle.toString());
        }
        paramBundle = new LoaderInfo(paramInt, paramBundle, localLoader, paramLoader);
        if (a)
        {
          paramLoader = new StringBuilder();
          paramLoader.append("  Created new loader ");
          paramLoader.append(paramBundle);
          Log.v("LoaderManager", paramLoader.toString());
        }
        c.a(paramInt, paramBundle);
        return paramBundle.a(b, paramLoaderCallbacks);
      }
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
    }
    finally
    {
      c.c();
    }
  }
  
  @MainThread
  public void destroyLoader(int paramInt)
  {
    if (!c.b())
    {
      if (Looper.getMainLooper() == Looper.myLooper())
      {
        if (a)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("destroyLoader in ");
          ((StringBuilder)localObject).append(this);
          ((StringBuilder)localObject).append(" of ");
          ((StringBuilder)localObject).append(paramInt);
          Log.v("LoaderManager", ((StringBuilder)localObject).toString());
        }
        Object localObject = c.a(paramInt);
        if (localObject != null)
        {
          ((LoaderInfo)localObject).a(true);
          c.b(paramInt);
        }
        return;
      }
      throw new IllegalStateException("destroyLoader must be called on the main thread");
    }
    throw new IllegalStateException("Called while creating a loader");
  }
  
  @Deprecated
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    c.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  @Nullable
  public <D> Loader<D> getLoader(int paramInt)
  {
    if (!c.b())
    {
      LoaderInfo localLoaderInfo = c.a(paramInt);
      if (localLoaderInfo != null) {
        return localLoaderInfo.c();
      }
      return null;
    }
    throw new IllegalStateException("Called while creating a loader");
  }
  
  public boolean hasRunningLoaders()
  {
    return c.d();
  }
  
  @MainThread
  @NonNull
  public <D> Loader<D> initLoader(int paramInt, @Nullable Bundle paramBundle, @NonNull LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks)
  {
    if (!c.b())
    {
      if (Looper.getMainLooper() == Looper.myLooper())
      {
        LoaderInfo localLoaderInfo = c.a(paramInt);
        if (a)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("initLoader in ");
          localStringBuilder.append(this);
          localStringBuilder.append(": args=");
          localStringBuilder.append(paramBundle);
          Log.v("LoaderManager", localStringBuilder.toString());
        }
        if (localLoaderInfo == null) {
          return a(paramInt, paramBundle, paramLoaderCallbacks, null);
        }
        if (a)
        {
          paramBundle = new StringBuilder();
          paramBundle.append("  Re-using existing loader ");
          paramBundle.append(localLoaderInfo);
          Log.v("LoaderManager", paramBundle.toString());
        }
        return localLoaderInfo.a(b, paramLoaderCallbacks);
      }
      throw new IllegalStateException("initLoader must be called on the main thread");
    }
    throw new IllegalStateException("Called while creating a loader");
  }
  
  public void markForRedelivery()
  {
    c.e();
  }
  
  @MainThread
  @NonNull
  public <D> Loader<D> restartLoader(int paramInt, @Nullable Bundle paramBundle, @NonNull LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks)
  {
    if (!c.b())
    {
      if (Looper.getMainLooper() == Looper.myLooper())
      {
        if (a)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("restartLoader in ");
          ((StringBuilder)localObject).append(this);
          ((StringBuilder)localObject).append(": args=");
          ((StringBuilder)localObject).append(paramBundle);
          Log.v("LoaderManager", ((StringBuilder)localObject).toString());
        }
        LoaderInfo localLoaderInfo = c.a(paramInt);
        Object localObject = null;
        if (localLoaderInfo != null) {
          localObject = localLoaderInfo.a(false);
        }
        return a(paramInt, paramBundle, paramLoaderCallbacks, (Loader)localObject);
      }
      throw new IllegalStateException("restartLoader must be called on the main thread");
    }
    throw new IllegalStateException("Called while creating a loader");
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    DebugUtils.buildShortClassTag(b, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  public static class LoaderInfo<D>
    extends MutableLiveData<D>
    implements Loader.OnLoadCompleteListener<D>
  {
    private final int a;
    @Nullable
    private final Bundle b;
    @NonNull
    private final Loader<D> c;
    private LifecycleOwner d;
    private LoaderManagerImpl.a<D> e;
    private Loader<D> f;
    
    LoaderInfo(int paramInt, @Nullable Bundle paramBundle, @NonNull Loader<D> paramLoader1, @Nullable Loader<D> paramLoader2)
    {
      a = paramInt;
      b = paramBundle;
      c = paramLoader1;
      f = paramLoader2;
      c.registerListener(paramInt, this);
    }
    
    @MainThread
    @NonNull
    Loader<D> a(@NonNull LifecycleOwner paramLifecycleOwner, @NonNull LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks)
    {
      paramLoaderCallbacks = new LoaderManagerImpl.a(c, paramLoaderCallbacks);
      observe(paramLifecycleOwner, paramLoaderCallbacks);
      if (e != null) {
        removeObserver(e);
      }
      d = paramLifecycleOwner;
      e = paramLoaderCallbacks;
      return c;
    }
    
    @MainThread
    Loader<D> a(boolean paramBoolean)
    {
      if (LoaderManagerImpl.a)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("  Destroying: ");
        ((StringBuilder)localObject).append(this);
        Log.v("LoaderManager", ((StringBuilder)localObject).toString());
      }
      c.cancelLoad();
      c.abandon();
      Object localObject = e;
      if (localObject != null)
      {
        removeObserver((Observer)localObject);
        if (paramBoolean) {
          ((LoaderManagerImpl.a)localObject).b();
        }
      }
      c.unregisterListener(this);
      if (((localObject != null) && (!((LoaderManagerImpl.a)localObject).a())) || (paramBoolean))
      {
        c.reset();
        return f;
      }
      return c;
    }
    
    @NonNull
    Loader<D> c()
    {
      return c;
    }
    
    void d()
    {
      LifecycleOwner localLifecycleOwner = d;
      LoaderManagerImpl.a localA = e;
      if ((localLifecycleOwner != null) && (localA != null))
      {
        super.removeObserver(localA);
        observe(localLifecycleOwner, localA);
      }
    }
    
    public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(a);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(b);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(c);
      Loader localLoader = c;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append("  ");
      localLoader.dump(localStringBuilder.toString(), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      if (e != null)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mCallbacks=");
        paramPrintWriter.println(e);
        paramFileDescriptor = e;
        paramArrayOfString = new StringBuilder();
        paramArrayOfString.append(paramString);
        paramArrayOfString.append("  ");
        paramFileDescriptor.a(paramArrayOfString.toString(), paramPrintWriter);
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(c().dataToString(getValue()));
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.println(hasActiveObservers());
    }
    
    boolean e()
    {
      boolean bool1 = hasActiveObservers();
      boolean bool2 = false;
      if (!bool1) {
        return false;
      }
      bool1 = bool2;
      if (e != null)
      {
        bool1 = bool2;
        if (!e.a()) {
          bool1 = true;
        }
      }
      return bool1;
    }
    
    protected void onActive()
    {
      if (LoaderManagerImpl.a)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("  Starting: ");
        localStringBuilder.append(this);
        Log.v("LoaderManager", localStringBuilder.toString());
      }
      c.startLoading();
    }
    
    protected void onInactive()
    {
      if (LoaderManagerImpl.a)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("  Stopping: ");
        localStringBuilder.append(this);
        Log.v("LoaderManager", localStringBuilder.toString());
      }
      c.stopLoading();
    }
    
    public void onLoadComplete(@NonNull Loader<D> paramLoader, @Nullable D paramD)
    {
      if (LoaderManagerImpl.a)
      {
        paramLoader = new StringBuilder();
        paramLoader.append("onLoadComplete: ");
        paramLoader.append(this);
        Log.v("LoaderManager", paramLoader.toString());
      }
      if (Looper.myLooper() == Looper.getMainLooper())
      {
        setValue(paramD);
        return;
      }
      if (LoaderManagerImpl.a) {
        Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
      }
      postValue(paramD);
    }
    
    public void removeObserver(@NonNull Observer<? super D> paramObserver)
    {
      super.removeObserver(paramObserver);
      d = null;
      e = null;
    }
    
    public void setValue(D paramD)
    {
      super.setValue(paramD);
      if (f != null)
      {
        f.reset();
        f = null;
      }
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(64);
      localStringBuilder.append("LoaderInfo{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" #");
      localStringBuilder.append(a);
      localStringBuilder.append(" : ");
      DebugUtils.buildShortClassTag(c, localStringBuilder);
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
    }
  }
  
  static class LoaderViewModel
    extends ViewModel
  {
    private static final ViewModelProvider.Factory a = new ViewModelProvider.Factory()
    {
      @NonNull
      public <T extends ViewModel> T create(@NonNull Class<T> paramAnonymousClass)
      {
        return new LoaderManagerImpl.LoaderViewModel();
      }
    };
    private SparseArrayCompat<LoaderManagerImpl.LoaderInfo> b = new SparseArrayCompat();
    private boolean c = false;
    
    LoaderViewModel() {}
    
    @NonNull
    static LoaderViewModel a(ViewModelStore paramViewModelStore)
    {
      return (LoaderViewModel)new ViewModelProvider(paramViewModelStore, a).get(LoaderViewModel.class);
    }
    
    <D> LoaderManagerImpl.LoaderInfo<D> a(int paramInt)
    {
      return (LoaderManagerImpl.LoaderInfo)b.get(paramInt);
    }
    
    void a()
    {
      c = true;
    }
    
    void a(int paramInt, @NonNull LoaderManagerImpl.LoaderInfo paramLoaderInfo)
    {
      b.put(paramInt, paramLoaderInfo);
    }
    
    public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
    {
      if (b.size() > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Loaders:");
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append("    ");
        localObject = ((StringBuilder)localObject).toString();
        int i = 0;
        while (i < b.size())
        {
          LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)b.valueAt(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(b.keyAt(i));
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localLoaderInfo.toString());
          localLoaderInfo.dump((String)localObject, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          i += 1;
        }
      }
    }
    
    void b(int paramInt)
    {
      b.remove(paramInt);
    }
    
    boolean b()
    {
      return c;
    }
    
    void c()
    {
      c = false;
    }
    
    boolean d()
    {
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        if (((LoaderManagerImpl.LoaderInfo)b.valueAt(i)).e()) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    void e()
    {
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        ((LoaderManagerImpl.LoaderInfo)b.valueAt(i)).d();
        i += 1;
      }
    }
    
    protected void onCleared()
    {
      super.onCleared();
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        ((LoaderManagerImpl.LoaderInfo)b.valueAt(i)).a(true);
        i += 1;
      }
      b.clear();
    }
  }
  
  static class a<D>
    implements Observer<D>
  {
    @NonNull
    private final Loader<D> a;
    @NonNull
    private final LoaderManager.LoaderCallbacks<D> b;
    private boolean c = false;
    
    a(@NonNull Loader<D> paramLoader, @NonNull LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks)
    {
      a = paramLoader;
      b = paramLoaderCallbacks;
    }
    
    public void a(String paramString, PrintWriter paramPrintWriter)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mDeliveredData=");
      paramPrintWriter.println(c);
    }
    
    boolean a()
    {
      return c;
    }
    
    @MainThread
    void b()
    {
      if (c)
      {
        if (LoaderManagerImpl.a)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("  Resetting: ");
          localStringBuilder.append(a);
          Log.v("LoaderManager", localStringBuilder.toString());
        }
        b.onLoaderReset(a);
      }
    }
    
    public void onChanged(@Nullable D paramD)
    {
      if (LoaderManagerImpl.a)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("  onLoadFinished in ");
        localStringBuilder.append(a);
        localStringBuilder.append(": ");
        localStringBuilder.append(a.dataToString(paramD));
        Log.v("LoaderManager", localStringBuilder.toString());
      }
      b.onLoadFinished(a, paramD);
      c = true;
    }
    
    public String toString()
    {
      return b.toString();
    }
  }
}
