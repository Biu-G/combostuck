package android.support.v4.app;

import android.animation.Animator;
import android.app.Activity;
import android.arch.lifecycle.Lifecycle;
import android.arch.lifecycle.Lifecycle.Event;
import android.arch.lifecycle.LifecycleOwner;
import android.arch.lifecycle.LifecycleRegistry;
import android.arch.lifecycle.LiveData;
import android.arch.lifecycle.MutableLiveData;
import android.arch.lifecycle.ViewModelStore;
import android.arch.lifecycle.ViewModelStoreOwner;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.CallSuper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.view.LayoutInflaterCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class Fragment
  implements LifecycleOwner, ViewModelStoreOwner, ComponentCallbacks, View.OnCreateContextMenuListener
{
  static final int ACTIVITY_CREATED = 2;
  static final int CREATED = 1;
  static final int INITIALIZING = 0;
  static final int RESUMED = 4;
  static final int STARTED = 3;
  static final Object USE_DEFAULT_TRANSITION = new Object();
  private static final SimpleArrayMap<String, Class<?>> sClassMap = new SimpleArrayMap();
  boolean mAdded;
  a mAnimationInfo;
  Bundle mArguments;
  int mBackStackNesting;
  boolean mCalled;
  c mChildFragmentManager;
  FragmentManagerNonConfig mChildNonConfig;
  ViewGroup mContainer;
  int mContainerId;
  boolean mDeferStart;
  boolean mDetached;
  int mFragmentId;
  c mFragmentManager;
  boolean mFromLayout;
  boolean mHasMenu;
  boolean mHidden;
  boolean mHiddenChanged;
  FragmentHostCallback mHost;
  boolean mInLayout;
  int mIndex = -1;
  View mInnerView;
  boolean mIsCreated;
  boolean mIsNewlyAdded;
  LayoutInflater mLayoutInflater;
  LifecycleRegistry mLifecycleRegistry = new LifecycleRegistry(this);
  boolean mMenuVisible = true;
  Fragment mParentFragment;
  boolean mPerformedCreateView;
  float mPostponedAlpha;
  boolean mRemoving;
  boolean mRestored;
  boolean mRetainInstance;
  boolean mRetaining;
  Bundle mSavedFragmentState;
  @Nullable
  Boolean mSavedUserVisibleHint;
  SparseArray<Parcelable> mSavedViewState;
  int mState = 0;
  String mTag;
  Fragment mTarget;
  int mTargetIndex = -1;
  int mTargetRequestCode;
  boolean mUserVisibleHint = true;
  View mView;
  LifecycleOwner mViewLifecycleOwner;
  MutableLiveData<LifecycleOwner> mViewLifecycleOwnerLiveData = new MutableLiveData();
  LifecycleRegistry mViewLifecycleRegistry;
  ViewModelStore mViewModelStore;
  String mWho;
  
  public Fragment() {}
  
  private a ensureAnimationInfo()
  {
    if (mAnimationInfo == null) {
      mAnimationInfo = new a();
    }
    return mAnimationInfo;
  }
  
  public static Fragment instantiate(Context paramContext, String paramString)
  {
    return instantiate(paramContext, paramString, null);
  }
  
  public static Fragment instantiate(Context paramContext, String paramString, @Nullable Bundle paramBundle)
  {
    try
    {
      Class localClass2 = (Class)sClassMap.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        sClassMap.put(paramString, localClass1);
      }
      paramContext = (Fragment)localClass1.getConstructor(new Class[0]).newInstance(new Object[0]);
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(paramContext.getClass().getClassLoader());
        paramContext.setArguments(paramBundle);
      }
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": calling Fragment constructor caused an exception");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
    catch (NoSuchMethodException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": could not find Fragment constructor");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": make sure class name exists, is public, and has an");
      paramBundle.append(" empty constructor that is public");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
    catch (InstantiationException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": make sure class name exists, is public, and has an");
      paramBundle.append(" empty constructor that is public");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
    catch (ClassNotFoundException paramContext)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("Unable to instantiate fragment ");
      paramBundle.append(paramString);
      paramBundle.append(": make sure class name exists, is public, and has an");
      paramBundle.append(" empty constructor that is public");
      throw new InstantiationException(paramBundle.toString(), paramContext);
    }
  }
  
  static boolean isSupportFragmentClass(Context paramContext, String paramString)
  {
    try
    {
      Class localClass2 = (Class)sClassMap.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        sClassMap.put(paramString, localClass1);
      }
      boolean bool = Fragment.class.isAssignableFrom(localClass1);
      return bool;
    }
    catch (ClassNotFoundException paramContext)
    {
      for (;;) {}
    }
    return false;
  }
  
  void callStartTransitionListener()
  {
    b localB;
    if (mAnimationInfo == null)
    {
      localB = null;
    }
    else
    {
      mAnimationInfo.q = false;
      localB = mAnimationInfo.r;
      mAnimationInfo.r = null;
    }
    if (localB != null) {
      localB.a();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(mFragmentId));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(mContainerId));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(mTag);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(mState);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(mIndex);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(mWho);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(mBackStackNesting);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(mAdded);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(mRemoving);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(mFromLayout);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(mInLayout);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(mHidden);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(mDetached);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(mMenuVisible);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(mHasMenu);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(mRetainInstance);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(mRetaining);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(mUserVisibleHint);
    if (mFragmentManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(mFragmentManager);
    }
    if (mHost != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHost=");
      paramPrintWriter.println(mHost);
    }
    if (mParentFragment != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(mParentFragment);
    }
    if (mArguments != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(mArguments);
    }
    if (mSavedFragmentState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(mSavedFragmentState);
    }
    if (mSavedViewState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(mSavedViewState);
    }
    if (mTarget != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(mTarget);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(mTargetRequestCode);
    }
    if (getNextAnim() != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(getNextAnim());
    }
    if (mContainer != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(mContainer);
    }
    if (mView != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(mView);
    }
    if (mInnerView != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(mView);
    }
    if (getAnimatingAway() != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(getAnimatingAway());
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(getStateAfterAnimating());
    }
    if (getContext() != null) {
      LoaderManager.getInstance(this).dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if (mChildFragmentManager != null)
    {
      paramPrintWriter.print(paramString);
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Child ");
      ((StringBuilder)localObject).append(mChildFragmentManager);
      ((StringBuilder)localObject).append(":");
      paramPrintWriter.println(((StringBuilder)localObject).toString());
      localObject = mChildFragmentManager;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append("  ");
      ((c)localObject).dump(localStringBuilder.toString(), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  Fragment findFragmentByWho(String paramString)
  {
    if (paramString.equals(mWho)) {
      return this;
    }
    if (mChildFragmentManager != null) {
      return mChildFragmentManager.a(paramString);
    }
    return null;
  }
  
  @Nullable
  public final FragmentActivity getActivity()
  {
    if (mHost == null) {
      return null;
    }
    return (FragmentActivity)mHost.b();
  }
  
  public boolean getAllowEnterTransitionOverlap()
  {
    if ((mAnimationInfo != null) && (mAnimationInfo.n != null)) {
      return mAnimationInfo.n.booleanValue();
    }
    return true;
  }
  
  public boolean getAllowReturnTransitionOverlap()
  {
    if ((mAnimationInfo != null) && (mAnimationInfo.m != null)) {
      return mAnimationInfo.m.booleanValue();
    }
    return true;
  }
  
  View getAnimatingAway()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    return mAnimationInfo.a;
  }
  
  Animator getAnimator()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    return mAnimationInfo.b;
  }
  
  @Nullable
  public final Bundle getArguments()
  {
    return mArguments;
  }
  
  @NonNull
  public final FragmentManager getChildFragmentManager()
  {
    if (mChildFragmentManager == null)
    {
      instantiateChildFragmentManager();
      if (mState >= 4) {
        mChildFragmentManager.o();
      } else if (mState >= 3) {
        mChildFragmentManager.n();
      } else if (mState >= 2) {
        mChildFragmentManager.m();
      } else if (mState >= 1) {
        mChildFragmentManager.l();
      }
    }
    return mChildFragmentManager;
  }
  
  @Nullable
  public Context getContext()
  {
    if (mHost == null) {
      return null;
    }
    return mHost.c();
  }
  
  @Nullable
  public Object getEnterTransition()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    return mAnimationInfo.g;
  }
  
  SharedElementCallback getEnterTransitionCallback()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    return mAnimationInfo.o;
  }
  
  @Nullable
  public Object getExitTransition()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    return mAnimationInfo.i;
  }
  
  SharedElementCallback getExitTransitionCallback()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    return mAnimationInfo.p;
  }
  
  @Nullable
  public final FragmentManager getFragmentManager()
  {
    return mFragmentManager;
  }
  
  @Nullable
  public final Object getHost()
  {
    if (mHost == null) {
      return null;
    }
    return mHost.onGetHost();
  }
  
  public final int getId()
  {
    return mFragmentId;
  }
  
  public final LayoutInflater getLayoutInflater()
  {
    if (mLayoutInflater == null) {
      return performGetLayoutInflater(null);
    }
    return mLayoutInflater;
  }
  
  @Deprecated
  @NonNull
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public LayoutInflater getLayoutInflater(@Nullable Bundle paramBundle)
  {
    if (mHost != null)
    {
      paramBundle = mHost.onGetLayoutInflater();
      getChildFragmentManager();
      LayoutInflaterCompat.setFactory2(paramBundle, mChildFragmentManager.u());
      return paramBundle;
    }
    throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
  }
  
  public Lifecycle getLifecycle()
  {
    return mLifecycleRegistry;
  }
  
  @Deprecated
  public LoaderManager getLoaderManager()
  {
    return LoaderManager.getInstance(this);
  }
  
  int getNextAnim()
  {
    if (mAnimationInfo == null) {
      return 0;
    }
    return mAnimationInfo.d;
  }
  
  int getNextTransition()
  {
    if (mAnimationInfo == null) {
      return 0;
    }
    return mAnimationInfo.e;
  }
  
  int getNextTransitionStyle()
  {
    if (mAnimationInfo == null) {
      return 0;
    }
    return mAnimationInfo.f;
  }
  
  @Nullable
  public final Fragment getParentFragment()
  {
    return mParentFragment;
  }
  
  public Object getReenterTransition()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    if (mAnimationInfo.j == USE_DEFAULT_TRANSITION) {
      return getExitTransition();
    }
    return mAnimationInfo.j;
  }
  
  @NonNull
  public final Resources getResources()
  {
    return requireContext().getResources();
  }
  
  public final boolean getRetainInstance()
  {
    return mRetainInstance;
  }
  
  @Nullable
  public Object getReturnTransition()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    if (mAnimationInfo.h == USE_DEFAULT_TRANSITION) {
      return getEnterTransition();
    }
    return mAnimationInfo.h;
  }
  
  @Nullable
  public Object getSharedElementEnterTransition()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    return mAnimationInfo.k;
  }
  
  @Nullable
  public Object getSharedElementReturnTransition()
  {
    if (mAnimationInfo == null) {
      return null;
    }
    if (mAnimationInfo.l == USE_DEFAULT_TRANSITION) {
      return getSharedElementEnterTransition();
    }
    return mAnimationInfo.l;
  }
  
  int getStateAfterAnimating()
  {
    if (mAnimationInfo == null) {
      return 0;
    }
    return mAnimationInfo.c;
  }
  
  @NonNull
  public final String getString(@StringRes int paramInt)
  {
    return getResources().getString(paramInt);
  }
  
  @NonNull
  public final String getString(@StringRes int paramInt, Object... paramVarArgs)
  {
    return getResources().getString(paramInt, paramVarArgs);
  }
  
  @Nullable
  public final String getTag()
  {
    return mTag;
  }
  
  @Nullable
  public final Fragment getTargetFragment()
  {
    return mTarget;
  }
  
  public final int getTargetRequestCode()
  {
    return mTargetRequestCode;
  }
  
  @NonNull
  public final CharSequence getText(@StringRes int paramInt)
  {
    return getResources().getText(paramInt);
  }
  
  public boolean getUserVisibleHint()
  {
    return mUserVisibleHint;
  }
  
  @Nullable
  public View getView()
  {
    return mView;
  }
  
  @MainThread
  @NonNull
  public LifecycleOwner getViewLifecycleOwner()
  {
    if (mViewLifecycleOwner != null) {
      return mViewLifecycleOwner;
    }
    throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
  }
  
  @NonNull
  public LiveData<LifecycleOwner> getViewLifecycleOwnerLiveData()
  {
    return mViewLifecycleOwnerLiveData;
  }
  
  @NonNull
  public ViewModelStore getViewModelStore()
  {
    if (getContext() != null)
    {
      if (mViewModelStore == null) {
        mViewModelStore = new ViewModelStore();
      }
      return mViewModelStore;
    }
    throw new IllegalStateException("Can't access ViewModels from detached fragment");
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public final boolean hasOptionsMenu()
  {
    return mHasMenu;
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
  
  void initState()
  {
    mIndex = -1;
    mWho = null;
    mAdded = false;
    mRemoving = false;
    mFromLayout = false;
    mInLayout = false;
    mRestored = false;
    mBackStackNesting = 0;
    mFragmentManager = null;
    mChildFragmentManager = null;
    mHost = null;
    mFragmentId = 0;
    mContainerId = 0;
    mTag = null;
    mHidden = false;
    mDetached = false;
    mRetaining = false;
  }
  
  void instantiateChildFragmentManager()
  {
    if (mHost != null)
    {
      mChildFragmentManager = new c();
      mChildFragmentManager.a(mHost, new FragmentContainer()
      {
        public Fragment instantiate(Context paramAnonymousContext, String paramAnonymousString, Bundle paramAnonymousBundle)
        {
          return mHost.instantiate(paramAnonymousContext, paramAnonymousString, paramAnonymousBundle);
        }
        
        @Nullable
        public View onFindViewById(int paramAnonymousInt)
        {
          if (mView != null) {
            return mView.findViewById(paramAnonymousInt);
          }
          throw new IllegalStateException("Fragment does not have a view");
        }
        
        public boolean onHasView()
        {
          return mView != null;
        }
      }, this);
      return;
    }
    throw new IllegalStateException("Fragment has not been attached yet.");
  }
  
  public final boolean isAdded()
  {
    return (mHost != null) && (mAdded);
  }
  
  public final boolean isDetached()
  {
    return mDetached;
  }
  
  public final boolean isHidden()
  {
    return mHidden;
  }
  
  boolean isHideReplaced()
  {
    if (mAnimationInfo == null) {
      return false;
    }
    return mAnimationInfo.s;
  }
  
  final boolean isInBackStack()
  {
    return mBackStackNesting > 0;
  }
  
  public final boolean isInLayout()
  {
    return mInLayout;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public final boolean isMenuVisible()
  {
    return mMenuVisible;
  }
  
  boolean isPostponed()
  {
    if (mAnimationInfo == null) {
      return false;
    }
    return mAnimationInfo.q;
  }
  
  public final boolean isRemoving()
  {
    return mRemoving;
  }
  
  public final boolean isResumed()
  {
    return mState >= 4;
  }
  
  public final boolean isStateSaved()
  {
    if (mFragmentManager == null) {
      return false;
    }
    return mFragmentManager.isStateSaved();
  }
  
  public final boolean isVisible()
  {
    return (isAdded()) && (!isHidden()) && (mView != null) && (mView.getWindowToken() != null) && (mView.getVisibility() == 0);
  }
  
  void noteStateNotSaved()
  {
    if (mChildFragmentManager != null) {
      mChildFragmentManager.k();
    }
  }
  
  @CallSuper
  public void onActivityCreated(@Nullable Bundle paramBundle)
  {
    mCalled = true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  @Deprecated
  @CallSuper
  public void onAttach(Activity paramActivity)
  {
    mCalled = true;
  }
  
  @CallSuper
  public void onAttach(Context paramContext)
  {
    mCalled = true;
    if (mHost == null) {
      paramContext = null;
    } else {
      paramContext = mHost.b();
    }
    if (paramContext != null)
    {
      mCalled = false;
      onAttach(paramContext);
    }
  }
  
  public void onAttachFragment(Fragment paramFragment) {}
  
  @CallSuper
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    mCalled = true;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  @CallSuper
  public void onCreate(@Nullable Bundle paramBundle)
  {
    mCalled = true;
    restoreChildFragmentState(paramBundle);
    if ((mChildFragmentManager != null) && (!mChildFragmentManager.a(1))) {
      mChildFragmentManager.l();
    }
  }
  
  public Animation onCreateAnimation(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public Animator onCreateAnimator(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater) {}
  
  @Nullable
  public View onCreateView(@NonNull LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle)
  {
    return null;
  }
  
  @CallSuper
  public void onDestroy()
  {
    int i = 1;
    mCalled = true;
    FragmentActivity localFragmentActivity = getActivity();
    if ((localFragmentActivity == null) || (!localFragmentActivity.isChangingConfigurations())) {
      i = 0;
    }
    if ((mViewModelStore != null) && (i == 0)) {
      mViewModelStore.clear();
    }
  }
  
  public void onDestroyOptionsMenu() {}
  
  @CallSuper
  public void onDestroyView()
  {
    mCalled = true;
  }
  
  @CallSuper
  public void onDetach()
  {
    mCalled = true;
  }
  
  @NonNull
  public LayoutInflater onGetLayoutInflater(@Nullable Bundle paramBundle)
  {
    return getLayoutInflater(paramBundle);
  }
  
  public void onHiddenChanged(boolean paramBoolean) {}
  
  @Deprecated
  @CallSuper
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    mCalled = true;
  }
  
  @CallSuper
  public void onInflate(Context paramContext, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    mCalled = true;
    if (mHost == null) {
      paramContext = null;
    } else {
      paramContext = mHost.b();
    }
    if (paramContext != null)
    {
      mCalled = false;
      onInflate(paramContext, paramAttributeSet, paramBundle);
    }
  }
  
  @CallSuper
  public void onLowMemory()
  {
    mCalled = true;
  }
  
  public void onMultiWindowModeChanged(boolean paramBoolean) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onOptionsMenuClosed(Menu paramMenu) {}
  
  @CallSuper
  public void onPause()
  {
    mCalled = true;
  }
  
  public void onPictureInPictureModeChanged(boolean paramBoolean) {}
  
  public void onPrepareOptionsMenu(Menu paramMenu) {}
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfInt) {}
  
  @CallSuper
  public void onResume()
  {
    mCalled = true;
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle) {}
  
  @CallSuper
  public void onStart()
  {
    mCalled = true;
  }
  
  @CallSuper
  public void onStop()
  {
    mCalled = true;
  }
  
  public void onViewCreated(@NonNull View paramView, @Nullable Bundle paramBundle) {}
  
  @CallSuper
  public void onViewStateRestored(@Nullable Bundle paramBundle)
  {
    mCalled = true;
  }
  
  @Nullable
  FragmentManager peekChildFragmentManager()
  {
    return mChildFragmentManager;
  }
  
  void performActivityCreated(Bundle paramBundle)
  {
    if (mChildFragmentManager != null) {
      mChildFragmentManager.k();
    }
    mState = 2;
    mCalled = false;
    onActivityCreated(paramBundle);
    if (mCalled)
    {
      if (mChildFragmentManager != null) {
        mChildFragmentManager.m();
      }
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("Fragment ");
    paramBundle.append(this);
    paramBundle.append(" did not call through to super.onActivityCreated()");
    throw new k(paramBundle.toString());
  }
  
  void performConfigurationChanged(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    if (mChildFragmentManager != null) {
      mChildFragmentManager.a(paramConfiguration);
    }
  }
  
  boolean performContextItemSelected(MenuItem paramMenuItem)
  {
    if (!mHidden)
    {
      if (onContextItemSelected(paramMenuItem)) {
        return true;
      }
      if ((mChildFragmentManager != null) && (mChildFragmentManager.b(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  void performCreate(Bundle paramBundle)
  {
    if (mChildFragmentManager != null) {
      mChildFragmentManager.k();
    }
    mState = 1;
    mCalled = false;
    onCreate(paramBundle);
    mIsCreated = true;
    if (mCalled)
    {
      mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("Fragment ");
    paramBundle.append(this);
    paramBundle.append(" did not call through to super.onCreate()");
    throw new k(paramBundle.toString());
  }
  
  boolean performCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = mHidden;
    boolean bool1 = false;
    boolean bool3 = false;
    if (!bool2)
    {
      bool2 = bool3;
      if (mHasMenu)
      {
        bool2 = bool3;
        if (mMenuVisible)
        {
          bool2 = true;
          onCreateOptionsMenu(paramMenu, paramMenuInflater);
        }
      }
      bool1 = bool2;
      if (mChildFragmentManager != null) {
        bool1 = bool2 | mChildFragmentManager.a(paramMenu, paramMenuInflater);
      }
    }
    return bool1;
  }
  
  void performCreateView(@NonNull LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle)
  {
    if (mChildFragmentManager != null) {
      mChildFragmentManager.k();
    }
    mPerformedCreateView = true;
    mViewLifecycleOwner = new LifecycleOwner()
    {
      public Lifecycle getLifecycle()
      {
        if (mViewLifecycleRegistry == null) {
          mViewLifecycleRegistry = new LifecycleRegistry(mViewLifecycleOwner);
        }
        return mViewLifecycleRegistry;
      }
    };
    mViewLifecycleRegistry = null;
    mView = onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (mView != null)
    {
      mViewLifecycleOwner.getLifecycle();
      mViewLifecycleOwnerLiveData.setValue(mViewLifecycleOwner);
      return;
    }
    if (mViewLifecycleRegistry == null)
    {
      mViewLifecycleOwner = null;
      return;
    }
    throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
  }
  
  void performDestroy()
  {
    mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
    if (mChildFragmentManager != null) {
      mChildFragmentManager.s();
    }
    mState = 0;
    mCalled = false;
    mIsCreated = false;
    onDestroy();
    if (mCalled)
    {
      mChildFragmentManager = null;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onDestroy()");
    throw new k(localStringBuilder.toString());
  }
  
  void performDestroyView()
  {
    if (mView != null) {
      mViewLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
    }
    if (mChildFragmentManager != null) {
      mChildFragmentManager.r();
    }
    mState = 1;
    mCalled = false;
    onDestroyView();
    if (mCalled)
    {
      LoaderManager.getInstance(this).markForRedelivery();
      mPerformedCreateView = false;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onDestroyView()");
    throw new k(localStringBuilder.toString());
  }
  
  void performDetach()
  {
    mCalled = false;
    onDetach();
    mLayoutInflater = null;
    if (mCalled)
    {
      if (mChildFragmentManager != null)
      {
        if (mRetaining)
        {
          mChildFragmentManager.s();
          mChildFragmentManager = null;
          return;
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Child FragmentManager of ");
        localStringBuilder.append(this);
        localStringBuilder.append(" was not ");
        localStringBuilder.append(" destroyed and this fragment is not retaining instance");
        throw new IllegalStateException(localStringBuilder.toString());
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onDetach()");
    throw new k(localStringBuilder.toString());
  }
  
  @NonNull
  LayoutInflater performGetLayoutInflater(@Nullable Bundle paramBundle)
  {
    mLayoutInflater = onGetLayoutInflater(paramBundle);
    return mLayoutInflater;
  }
  
  void performLowMemory()
  {
    onLowMemory();
    if (mChildFragmentManager != null) {
      mChildFragmentManager.t();
    }
  }
  
  void performMultiWindowModeChanged(boolean paramBoolean)
  {
    onMultiWindowModeChanged(paramBoolean);
    if (mChildFragmentManager != null) {
      mChildFragmentManager.a(paramBoolean);
    }
  }
  
  boolean performOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!mHidden)
    {
      if ((mHasMenu) && (mMenuVisible) && (onOptionsItemSelected(paramMenuItem))) {
        return true;
      }
      if ((mChildFragmentManager != null) && (mChildFragmentManager.a(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  void performOptionsMenuClosed(Menu paramMenu)
  {
    if (!mHidden)
    {
      if ((mHasMenu) && (mMenuVisible)) {
        onOptionsMenuClosed(paramMenu);
      }
      if (mChildFragmentManager != null) {
        mChildFragmentManager.b(paramMenu);
      }
    }
  }
  
  void performPause()
  {
    if (mView != null) {
      mViewLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
    }
    mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
    if (mChildFragmentManager != null) {
      mChildFragmentManager.p();
    }
    mState = 3;
    mCalled = false;
    onPause();
    if (mCalled) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onPause()");
    throw new k(localStringBuilder.toString());
  }
  
  void performPictureInPictureModeChanged(boolean paramBoolean)
  {
    onPictureInPictureModeChanged(paramBoolean);
    if (mChildFragmentManager != null) {
      mChildFragmentManager.b(paramBoolean);
    }
  }
  
  boolean performPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = mHidden;
    boolean bool1 = false;
    boolean bool3 = false;
    if (!bool2)
    {
      bool2 = bool3;
      if (mHasMenu)
      {
        bool2 = bool3;
        if (mMenuVisible)
        {
          bool2 = true;
          onPrepareOptionsMenu(paramMenu);
        }
      }
      bool1 = bool2;
      if (mChildFragmentManager != null) {
        bool1 = bool2 | mChildFragmentManager.a(paramMenu);
      }
    }
    return bool1;
  }
  
  void performResume()
  {
    if (mChildFragmentManager != null)
    {
      mChildFragmentManager.k();
      mChildFragmentManager.e();
    }
    mState = 4;
    mCalled = false;
    onResume();
    if (mCalled)
    {
      if (mChildFragmentManager != null)
      {
        mChildFragmentManager.o();
        mChildFragmentManager.e();
      }
      mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
      if (mView != null) {
        mViewLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onResume()");
    throw new k(localStringBuilder.toString());
  }
  
  void performSaveInstanceState(Bundle paramBundle)
  {
    onSaveInstanceState(paramBundle);
    if (mChildFragmentManager != null)
    {
      Parcelable localParcelable = mChildFragmentManager.j();
      if (localParcelable != null) {
        paramBundle.putParcelable("android:support:fragments", localParcelable);
      }
    }
  }
  
  void performStart()
  {
    if (mChildFragmentManager != null)
    {
      mChildFragmentManager.k();
      mChildFragmentManager.e();
    }
    mState = 3;
    mCalled = false;
    onStart();
    if (mCalled)
    {
      if (mChildFragmentManager != null) {
        mChildFragmentManager.n();
      }
      mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
      if (mView != null) {
        mViewLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onStart()");
    throw new k(localStringBuilder.toString());
  }
  
  void performStop()
  {
    if (mView != null) {
      mViewLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
    }
    mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
    if (mChildFragmentManager != null) {
      mChildFragmentManager.q();
    }
    mState = 2;
    mCalled = false;
    onStop();
    if (mCalled) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Fragment ");
    localStringBuilder.append(this);
    localStringBuilder.append(" did not call through to super.onStop()");
    throw new k(localStringBuilder.toString());
  }
  
  public void postponeEnterTransition()
  {
    ensureAnimationInfoq = true;
  }
  
  public void registerForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(this);
  }
  
  public final void requestPermissions(@NonNull String[] paramArrayOfString, int paramInt)
  {
    if (mHost != null)
    {
      mHost.onRequestPermissionsFromFragment(this, paramArrayOfString, paramInt);
      return;
    }
    paramArrayOfString = new StringBuilder();
    paramArrayOfString.append("Fragment ");
    paramArrayOfString.append(this);
    paramArrayOfString.append(" not attached to Activity");
    throw new IllegalStateException(paramArrayOfString.toString());
  }
  
  @NonNull
  public final FragmentActivity requireActivity()
  {
    Object localObject = getActivity();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not attached to an activity.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  @NonNull
  public final Context requireContext()
  {
    Object localObject = getContext();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not attached to a context.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  @NonNull
  public final FragmentManager requireFragmentManager()
  {
    Object localObject = getFragmentManager();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not associated with a fragment manager.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  @NonNull
  public final Object requireHost()
  {
    Object localObject = getHost();
    if (localObject != null) {
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Fragment ");
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" not attached to a host.");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  void restoreChildFragmentState(@Nullable Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelable("android:support:fragments");
      if (paramBundle != null)
      {
        if (mChildFragmentManager == null) {
          instantiateChildFragmentManager();
        }
        mChildFragmentManager.a(paramBundle, mChildNonConfig);
        mChildNonConfig = null;
        mChildFragmentManager.l();
      }
    }
  }
  
  final void restoreViewState(Bundle paramBundle)
  {
    if (mSavedViewState != null)
    {
      mInnerView.restoreHierarchyState(mSavedViewState);
      mSavedViewState = null;
    }
    mCalled = false;
    onViewStateRestored(paramBundle);
    if (mCalled)
    {
      if (mView != null) {
        mViewLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
      }
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("Fragment ");
    paramBundle.append(this);
    paramBundle.append(" did not call through to super.onViewStateRestored()");
    throw new k(paramBundle.toString());
  }
  
  public void setAllowEnterTransitionOverlap(boolean paramBoolean)
  {
    ensureAnimationInfon = Boolean.valueOf(paramBoolean);
  }
  
  public void setAllowReturnTransitionOverlap(boolean paramBoolean)
  {
    ensureAnimationInfom = Boolean.valueOf(paramBoolean);
  }
  
  void setAnimatingAway(View paramView)
  {
    ensureAnimationInfoa = paramView;
  }
  
  void setAnimator(Animator paramAnimator)
  {
    ensureAnimationInfob = paramAnimator;
  }
  
  public void setArguments(@Nullable Bundle paramBundle)
  {
    if ((mIndex >= 0) && (isStateSaved())) {
      throw new IllegalStateException("Fragment already active and state has been saved");
    }
    mArguments = paramBundle;
  }
  
  public void setEnterSharedElementCallback(SharedElementCallback paramSharedElementCallback)
  {
    ensureAnimationInfoo = paramSharedElementCallback;
  }
  
  public void setEnterTransition(@Nullable Object paramObject)
  {
    ensureAnimationInfog = paramObject;
  }
  
  public void setExitSharedElementCallback(SharedElementCallback paramSharedElementCallback)
  {
    ensureAnimationInfop = paramSharedElementCallback;
  }
  
  public void setExitTransition(@Nullable Object paramObject)
  {
    ensureAnimationInfoi = paramObject;
  }
  
  public void setHasOptionsMenu(boolean paramBoolean)
  {
    if (mHasMenu != paramBoolean)
    {
      mHasMenu = paramBoolean;
      if ((isAdded()) && (!isHidden())) {
        mHost.onSupportInvalidateOptionsMenu();
      }
    }
  }
  
  void setHideReplaced(boolean paramBoolean)
  {
    ensureAnimationInfos = paramBoolean;
  }
  
  final void setIndex(int paramInt, Fragment paramFragment)
  {
    mIndex = paramInt;
    if (paramFragment != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(mWho);
      localStringBuilder.append(":");
      localStringBuilder.append(mIndex);
      mWho = localStringBuilder.toString();
      return;
    }
    paramFragment = new StringBuilder();
    paramFragment.append("android:fragment:");
    paramFragment.append(mIndex);
    mWho = paramFragment.toString();
  }
  
  public void setInitialSavedState(@Nullable SavedState paramSavedState)
  {
    if (mIndex < 0)
    {
      if ((paramSavedState != null) && (a != null)) {
        paramSavedState = a;
      } else {
        paramSavedState = null;
      }
      mSavedFragmentState = paramSavedState;
      return;
    }
    throw new IllegalStateException("Fragment already active");
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    if (mMenuVisible != paramBoolean)
    {
      mMenuVisible = paramBoolean;
      if ((mHasMenu) && (isAdded()) && (!isHidden())) {
        mHost.onSupportInvalidateOptionsMenu();
      }
    }
  }
  
  void setNextAnim(int paramInt)
  {
    if ((mAnimationInfo == null) && (paramInt == 0)) {
      return;
    }
    ensureAnimationInfod = paramInt;
  }
  
  void setNextTransition(int paramInt1, int paramInt2)
  {
    if ((mAnimationInfo == null) && (paramInt1 == 0) && (paramInt2 == 0)) {
      return;
    }
    ensureAnimationInfo();
    mAnimationInfo.e = paramInt1;
    mAnimationInfo.f = paramInt2;
  }
  
  void setOnStartEnterTransitionListener(b paramB)
  {
    ensureAnimationInfo();
    if (paramB == mAnimationInfo.r) {
      return;
    }
    if ((paramB != null) && (mAnimationInfo.r != null))
    {
      paramB = new StringBuilder();
      paramB.append("Trying to set a replacement startPostponedEnterTransition on ");
      paramB.append(this);
      throw new IllegalStateException(paramB.toString());
    }
    if (mAnimationInfo.q) {
      mAnimationInfo.r = paramB;
    }
    if (paramB != null) {
      paramB.b();
    }
  }
  
  public void setReenterTransition(@Nullable Object paramObject)
  {
    ensureAnimationInfoj = paramObject;
  }
  
  public void setRetainInstance(boolean paramBoolean)
  {
    mRetainInstance = paramBoolean;
  }
  
  public void setReturnTransition(@Nullable Object paramObject)
  {
    ensureAnimationInfoh = paramObject;
  }
  
  public void setSharedElementEnterTransition(@Nullable Object paramObject)
  {
    ensureAnimationInfok = paramObject;
  }
  
  public void setSharedElementReturnTransition(@Nullable Object paramObject)
  {
    ensureAnimationInfol = paramObject;
  }
  
  void setStateAfterAnimating(int paramInt)
  {
    ensureAnimationInfoc = paramInt;
  }
  
  public void setTargetFragment(@Nullable Fragment paramFragment, int paramInt)
  {
    FragmentManager localFragmentManager = getFragmentManager();
    if (paramFragment != null) {
      localObject = paramFragment.getFragmentManager();
    } else {
      localObject = null;
    }
    if ((localFragmentManager != null) && (localObject != null) && (localFragmentManager != localObject))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Fragment ");
      ((StringBuilder)localObject).append(paramFragment);
      ((StringBuilder)localObject).append(" must share the same FragmentManager to be set as a target fragment");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    Object localObject = paramFragment;
    while (localObject != null) {
      if (localObject != this)
      {
        localObject = ((Fragment)localObject).getTargetFragment();
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Setting ");
        ((StringBuilder)localObject).append(paramFragment);
        ((StringBuilder)localObject).append(" as the target of ");
        ((StringBuilder)localObject).append(this);
        ((StringBuilder)localObject).append(" would create a target cycle");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
    }
    mTarget = paramFragment;
    mTargetRequestCode = paramInt;
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    if ((!mUserVisibleHint) && (paramBoolean) && (mState < 3) && (mFragmentManager != null) && (isAdded()) && (mIsCreated)) {
      mFragmentManager.a(this);
    }
    mUserVisibleHint = paramBoolean;
    boolean bool;
    if ((mState < 3) && (!paramBoolean)) {
      bool = true;
    } else {
      bool = false;
    }
    mDeferStart = bool;
    if (mSavedFragmentState != null) {
      mSavedUserVisibleHint = Boolean.valueOf(paramBoolean);
    }
  }
  
  public boolean shouldShowRequestPermissionRationale(@NonNull String paramString)
  {
    if (mHost != null) {
      return mHost.onShouldShowRequestPermissionRationale(paramString);
    }
    return false;
  }
  
  public void startActivity(Intent paramIntent)
  {
    startActivity(paramIntent, null);
  }
  
  public void startActivity(Intent paramIntent, @Nullable Bundle paramBundle)
  {
    if (mHost != null)
    {
      mHost.onStartActivityFromFragment(this, paramIntent, -1, paramBundle);
      return;
    }
    paramIntent = new StringBuilder();
    paramIntent.append("Fragment ");
    paramIntent.append(this);
    paramIntent.append(" not attached to Activity");
    throw new IllegalStateException(paramIntent.toString());
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    startActivityForResult(paramIntent, paramInt, null);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, @Nullable Bundle paramBundle)
  {
    if (mHost != null)
    {
      mHost.onStartActivityFromFragment(this, paramIntent, paramInt, paramBundle);
      return;
    }
    paramIntent = new StringBuilder();
    paramIntent.append("Fragment ");
    paramIntent.append(this);
    paramIntent.append(" not attached to Activity");
    throw new IllegalStateException(paramIntent.toString());
  }
  
  public void startIntentSenderForResult(IntentSender paramIntentSender, int paramInt1, @Nullable Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (mHost != null)
    {
      mHost.onStartIntentSenderFromFragment(this, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    }
    paramIntentSender = new StringBuilder();
    paramIntentSender.append("Fragment ");
    paramIntentSender.append(this);
    paramIntentSender.append(" not attached to Activity");
    throw new IllegalStateException(paramIntentSender.toString());
  }
  
  public void startPostponedEnterTransition()
  {
    if ((mFragmentManager != null) && (mFragmentManager.m != null))
    {
      if (Looper.myLooper() != mFragmentManager.m.d().getLooper())
      {
        mFragmentManager.m.d().postAtFrontOfQueue(new Runnable()
        {
          public void run()
          {
            callStartTransitionListener();
          }
        });
        return;
      }
      callStartTransitionListener();
      return;
    }
    ensureAnimationInfoq = false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    DebugUtils.buildShortClassTag(this, localStringBuilder);
    if (mIndex >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(mIndex);
    }
    if (mFragmentId != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(mFragmentId));
    }
    if (mTag != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(mTag);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void unregisterForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(null);
  }
  
  public static class InstantiationException
    extends RuntimeException
  {
    public InstantiationException(String paramString, Exception paramException)
    {
      super(paramException);
    }
  }
  
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public Fragment.SavedState a(Parcel paramAnonymousParcel)
      {
        return new Fragment.SavedState(paramAnonymousParcel, null);
      }
      
      public Fragment.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new Fragment.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public Fragment.SavedState[] a(int paramAnonymousInt)
      {
        return new Fragment.SavedState[paramAnonymousInt];
      }
    };
    final Bundle a;
    
    SavedState(Bundle paramBundle)
    {
      a = paramBundle;
    }
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      a = paramParcel.readBundle();
      if ((paramClassLoader != null) && (a != null)) {
        a.setClassLoader(paramClassLoader);
      }
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeBundle(a);
    }
  }
  
  static class a
  {
    View a;
    Animator b;
    int c;
    int d;
    int e;
    int f;
    Object g = null;
    Object h = Fragment.USE_DEFAULT_TRANSITION;
    Object i = null;
    Object j = Fragment.USE_DEFAULT_TRANSITION;
    Object k = null;
    Object l = Fragment.USE_DEFAULT_TRANSITION;
    Boolean m;
    Boolean n;
    SharedElementCallback o = null;
    SharedElementCallback p = null;
    boolean q;
    Fragment.b r;
    boolean s;
    
    a() {}
  }
  
  static abstract interface b
  {
    public abstract void a();
    
    public abstract void b();
  }
}
