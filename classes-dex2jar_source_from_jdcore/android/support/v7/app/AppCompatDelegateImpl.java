package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.NavUtils;
import android.support.v4.view.KeyEventDispatcher;
import android.support.v4.view.KeyEventDispatcher.Component;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.color;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.style;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.StandaloneActionMode;
import android.support.v7.view.SupportActionModeWrapper.CallbackWrapper;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.WindowCallbackWrapper;
import android.support.v7.view.menu.ListMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.ContentFrameLayout.OnAttachListener;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.FitWindowsViewGroup;
import android.support.v7.widget.FitWindowsViewGroup.OnFitSystemWindowsListener;
import android.support.v7.widget.TintTypedArray;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ViewUtils;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.reflect.Constructor;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

class AppCompatDelegateImpl
  extends AppCompatDelegate
  implements MenuBuilder.Callback, LayoutInflater.Factory2
{
  private static final boolean u;
  private static final int[] v;
  private static boolean w;
  private g A;
  private boolean B = true;
  private boolean C;
  private ViewGroup D;
  private TextView E;
  private View F;
  private boolean G;
  private boolean H;
  private boolean I;
  private PanelFeatureState[] J;
  private PanelFeatureState K;
  private boolean L;
  private int M = -100;
  private boolean N;
  private e O;
  private final Runnable P = new Runnable()
  {
    public void run()
    {
      if ((t & 0x1) != 0) {
        d(0);
      }
      if ((t & 0x1000) != 0) {
        d(108);
      }
      s = false;
      t = 0;
    }
  };
  private boolean Q;
  private Rect R;
  private Rect S;
  private AppCompatViewInflater T;
  final Context a;
  final Window b;
  final Window.Callback c;
  final Window.Callback d;
  final AppCompatCallback e;
  ActionBar f;
  MenuInflater g;
  android.support.v7.view.ActionMode h;
  ActionBarContextView i;
  PopupWindow j;
  Runnable k;
  ViewPropertyAnimatorCompat l = null;
  boolean m;
  boolean n;
  boolean o;
  boolean p;
  boolean q;
  boolean r;
  boolean s;
  int t;
  private CharSequence x;
  private DecorContentParent y;
  private b z;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT < 21) {
      bool = true;
    } else {
      bool = false;
    }
    u = bool;
    v = new int[] { 16842836 };
    if ((u) && (!w))
    {
      Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
      {
        private boolean a(Throwable paramAnonymousThrowable)
        {
          boolean bool1 = paramAnonymousThrowable instanceof Resources.NotFoundException;
          boolean bool2 = false;
          if (bool1)
          {
            paramAnonymousThrowable = paramAnonymousThrowable.getMessage();
            bool1 = bool2;
            if (paramAnonymousThrowable != null) {
              if (!paramAnonymousThrowable.contains("drawable"))
              {
                bool1 = bool2;
                if (!paramAnonymousThrowable.contains("Drawable")) {}
              }
              else
              {
                bool1 = true;
              }
            }
            return bool1;
          }
          return false;
        }
        
        public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
        {
          if (a(paramAnonymousThrowable))
          {
            Object localObject = new StringBuilder();
            ((StringBuilder)localObject).append(paramAnonymousThrowable.getMessage());
            ((StringBuilder)localObject).append(". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            localObject = new Resources.NotFoundException(((StringBuilder)localObject).toString());
            ((Throwable)localObject).initCause(paramAnonymousThrowable.getCause());
            ((Throwable)localObject).setStackTrace(paramAnonymousThrowable.getStackTrace());
            a.uncaughtException(paramAnonymousThread, (Throwable)localObject);
            return;
          }
          a.uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
        }
      });
      w = true;
    }
  }
  
  AppCompatDelegateImpl(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback)
  {
    a = paramContext;
    b = paramWindow;
    e = paramAppCompatCallback;
    c = b.getCallback();
    if (!(c instanceof d))
    {
      d = new d(c);
      b.setCallback(d);
      paramContext = TintTypedArray.obtainStyledAttributes(paramContext, null, v);
      paramWindow = paramContext.getDrawableIfKnown(0);
      if (paramWindow != null) {
        b.setBackgroundDrawable(paramWindow);
      }
      paramContext.recycle();
      return;
    }
    throw new IllegalStateException("AppCompat has already installed itself into the Window");
  }
  
  private void a(PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    if (!o)
    {
      if (r) {
        return;
      }
      if (a == 0)
      {
        if ((a.getResources().getConfiguration().screenLayout & 0xF) == 4) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        if (i1 != 0) {
          return;
        }
      }
      Object localObject = b();
      if ((localObject != null) && (!((Window.Callback)localObject).onMenuOpened(a, j)))
      {
        a(paramPanelFeatureState, true);
        return;
      }
      WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
      if (localWindowManager == null) {
        return;
      }
      if (!b(paramPanelFeatureState, paramKeyEvent)) {
        return;
      }
      if ((g != null) && (!p))
      {
        if (i != null)
        {
          paramKeyEvent = i.getLayoutParams();
          if ((paramKeyEvent != null) && (width == -1))
          {
            i1 = -1;
            break label341;
          }
        }
      }
      else
      {
        if (g == null)
        {
          if ((a(paramPanelFeatureState)) && (g != null)) {}
        }
        else if ((p) && (g.getChildCount() > 0)) {
          g.removeAllViews();
        }
        if (!c(paramPanelFeatureState)) {
          break label407;
        }
        if (!paramPanelFeatureState.hasPanelItems()) {
          return;
        }
        localObject = h.getLayoutParams();
        paramKeyEvent = (KeyEvent)localObject;
        if (localObject == null) {
          paramKeyEvent = new ViewGroup.LayoutParams(-2, -2);
        }
        i1 = b;
        g.setBackgroundResource(i1);
        localObject = h.getParent();
        if ((localObject != null) && ((localObject instanceof ViewGroup))) {
          ((ViewGroup)localObject).removeView(h);
        }
        g.addView(h, paramKeyEvent);
        if (!h.hasFocus()) {
          h.requestFocus();
        }
      }
      int i1 = -2;
      label341:
      n = false;
      paramKeyEvent = new WindowManager.LayoutParams(i1, -2, d, e, 1002, 8519680, -3);
      gravity = c;
      windowAnimations = f;
      localWindowManager.addView(g, paramKeyEvent);
      o = true;
      return;
      label407:
      return;
    }
  }
  
  private void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if ((y != null) && (y.canShowOverflowMenu()) && ((!ViewConfiguration.get(a).hasPermanentMenuKey()) || (y.isOverflowMenuShowPending())))
    {
      paramMenuBuilder = b();
      if ((y.isOverflowMenuShowing()) && (paramBoolean))
      {
        y.hideOverflowMenu();
        if (!r) {
          paramMenuBuilder.onPanelClosed(108, a0j);
        }
      }
      else if ((paramMenuBuilder != null) && (!r))
      {
        if ((s) && ((t & 0x1) != 0))
        {
          b.getDecorView().removeCallbacks(P);
          P.run();
        }
        PanelFeatureState localPanelFeatureState = a(0, true);
        if ((j != null) && (!q) && (paramMenuBuilder.onPreparePanel(0, i, j)))
        {
          paramMenuBuilder.onMenuOpened(108, j);
          y.showOverflowMenu();
        }
      }
      return;
    }
    paramMenuBuilder = a(0, true);
    p = true;
    a(paramMenuBuilder, false);
    a(paramMenuBuilder, null);
  }
  
  private boolean a(PanelFeatureState paramPanelFeatureState)
  {
    paramPanelFeatureState.a(c());
    g = new f(l);
    c = 81;
    return true;
  }
  
  private boolean a(PanelFeatureState paramPanelFeatureState, int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    boolean bool1 = paramKeyEvent.isSystem();
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    if (!m)
    {
      bool1 = bool2;
      if (!b(paramPanelFeatureState, paramKeyEvent)) {}
    }
    else
    {
      bool1 = bool2;
      if (j != null) {
        bool1 = j.performShortcut(paramInt1, paramKeyEvent, paramInt2);
      }
    }
    if ((bool1) && ((paramInt2 & 0x1) == 0) && (y == null)) {
      a(paramPanelFeatureState, true);
    }
    return bool1;
  }
  
  private boolean a(ViewParent paramViewParent)
  {
    if (paramViewParent == null) {
      return false;
    }
    View localView = b.getDecorView();
    for (;;)
    {
      if (paramViewParent == null) {
        return true;
      }
      if ((paramViewParent == localView) || (!(paramViewParent instanceof View))) {
        break;
      }
      if (ViewCompat.isAttachedToWindow((View)paramViewParent)) {
        return false;
      }
      paramViewParent = paramViewParent.getParent();
    }
    return false;
  }
  
  private boolean b(PanelFeatureState paramPanelFeatureState)
  {
    Context localContext = a;
    if (a != 0)
    {
      localObject1 = localContext;
      if (a != 108) {}
    }
    else
    {
      localObject1 = localContext;
      if (y != null)
      {
        TypedValue localTypedValue = new TypedValue();
        Resources.Theme localTheme = localContext.getTheme();
        localTheme.resolveAttribute(R.attr.actionBarTheme, localTypedValue, true);
        localObject1 = null;
        if (resourceId != 0)
        {
          localObject1 = localContext.getResources().newTheme();
          ((Resources.Theme)localObject1).setTo(localTheme);
          ((Resources.Theme)localObject1).applyStyle(resourceId, true);
          ((Resources.Theme)localObject1).resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
        }
        else
        {
          localTheme.resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
        }
        Object localObject2 = localObject1;
        if (resourceId != 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localContext.getResources().newTheme();
            ((Resources.Theme)localObject2).setTo(localTheme);
          }
          ((Resources.Theme)localObject2).applyStyle(resourceId, true);
        }
        localObject1 = localContext;
        if (localObject2 != null)
        {
          localObject1 = new ContextThemeWrapper(localContext, 0);
          ((Context)localObject1).getTheme().setTo((Resources.Theme)localObject2);
        }
      }
    }
    Object localObject1 = new MenuBuilder((Context)localObject1);
    ((MenuBuilder)localObject1).setCallback(this);
    paramPanelFeatureState.a((MenuBuilder)localObject1);
    return true;
  }
  
  private boolean b(PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    if (r) {
      return false;
    }
    if (m) {
      return true;
    }
    if ((K != null) && (K != paramPanelFeatureState)) {
      a(K, false);
    }
    Window.Callback localCallback = b();
    if (localCallback != null) {
      i = localCallback.onCreatePanelView(a);
    }
    int i1;
    if ((a != 0) && (a != 108)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if ((i1 != 0) && (y != null)) {
      y.setMenuPrepared();
    }
    if ((i == null) && ((i1 == 0) || (!(a() instanceof d))))
    {
      if ((j == null) || (q))
      {
        if ((j == null) && ((!b(paramPanelFeatureState)) || (j == null))) {
          return false;
        }
        if ((i1 != 0) && (y != null))
        {
          if (z == null) {
            z = new b();
          }
          y.setMenu(j, z);
        }
        j.stopDispatchingItemsChanged();
        if (!localCallback.onCreatePanelMenu(a, j))
        {
          paramPanelFeatureState.a(null);
          if ((i1 != 0) && (y != null)) {
            y.setMenu(null, z);
          }
          return false;
        }
        q = false;
      }
      j.stopDispatchingItemsChanged();
      if (r != null)
      {
        j.restoreActionViewStates(r);
        r = null;
      }
      if (!localCallback.onPreparePanel(0, i, j))
      {
        if ((i1 != 0) && (y != null)) {
          y.setMenu(null, z);
        }
        j.startDispatchingItemsChanged();
        return false;
      }
      if (paramKeyEvent != null) {
        i1 = paramKeyEvent.getDeviceId();
      } else {
        i1 = -1;
      }
      boolean bool;
      if (KeyCharacterMap.load(i1).getKeyboardType() != 1) {
        bool = true;
      } else {
        bool = false;
      }
      qwertyMode = bool;
      j.setQwertyMode(qwertyMode);
      j.startDispatchingItemsChanged();
    }
    m = true;
    n = false;
    K = paramPanelFeatureState;
    return true;
  }
  
  private boolean c(PanelFeatureState paramPanelFeatureState)
  {
    if (i != null)
    {
      h = i;
      return true;
    }
    if (j == null) {
      return false;
    }
    if (A == null) {
      A = new g();
    }
    h = ((View)paramPanelFeatureState.a(A));
    return h != null;
  }
  
  private boolean d(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getRepeatCount() == 0)
    {
      PanelFeatureState localPanelFeatureState = a(paramInt, true);
      if (!o) {
        return b(localPanelFeatureState, paramKeyEvent);
      }
    }
    return false;
  }
  
  private boolean e(int paramInt, KeyEvent paramKeyEvent)
  {
    if (h != null) {
      return false;
    }
    PanelFeatureState localPanelFeatureState = a(paramInt, true);
    if ((paramInt == 0) && (y != null) && (y.canShowOverflowMenu()) && (!ViewConfiguration.get(a).hasPermanentMenuKey()))
    {
      if (!y.isOverflowMenuShowing())
      {
        if ((!r) && (b(localPanelFeatureState, paramKeyEvent)))
        {
          bool = y.showOverflowMenu();
          break label196;
        }
      }
      else
      {
        bool = y.hideOverflowMenu();
        break label196;
      }
    }
    else
    {
      if ((o) || (n)) {
        break label183;
      }
      if (m)
      {
        if (q)
        {
          m = false;
          bool = b(localPanelFeatureState, paramKeyEvent);
        }
        else
        {
          bool = true;
        }
        if (bool)
        {
          a(localPanelFeatureState, paramKeyEvent);
          bool = true;
          break label196;
        }
      }
    }
    boolean bool = false;
    break label196;
    label183:
    bool = o;
    a(localPanelFeatureState, true);
    label196:
    if (bool)
    {
      paramKeyEvent = (AudioManager)a.getSystemService("audio");
      if (paramKeyEvent != null)
      {
        paramKeyEvent.playSoundEffect(0);
        return bool;
      }
      Log.w("AppCompatDelegate", "Couldn't get audio manager");
    }
    return bool;
  }
  
  private void g(int paramInt)
  {
    t = (1 << paramInt | t);
    if (!s)
    {
      ViewCompat.postOnAnimation(b.getDecorView(), P);
      s = true;
    }
  }
  
  private int h(int paramInt)
  {
    if (paramInt == 8)
    {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
      return 108;
    }
    if (paramInt == 9)
    {
      Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
      return 109;
    }
    return paramInt;
  }
  
  private void i()
  {
    j();
    if (m)
    {
      if (f != null) {
        return;
      }
      if ((c instanceof Activity)) {
        f = new WindowDecorActionBar((Activity)c, n);
      } else if ((c instanceof Dialog)) {
        f = new WindowDecorActionBar((Dialog)c);
      }
      if (f != null) {
        f.setDefaultDisplayHomeAsUpEnabled(Q);
      }
      return;
    }
  }
  
  private boolean i(int paramInt)
  {
    Resources localResources = a.getResources();
    Configuration localConfiguration = localResources.getConfiguration();
    int i1 = uiMode;
    if (paramInt == 2) {
      paramInt = 32;
    } else {
      paramInt = 16;
    }
    if ((i1 & 0x30) != paramInt)
    {
      if (p())
      {
        ((Activity)a).recreate();
      }
      else
      {
        localConfiguration = new Configuration(localConfiguration);
        DisplayMetrics localDisplayMetrics = localResources.getDisplayMetrics();
        uiMode = (paramInt | uiMode & 0xFFFFFFCF);
        localResources.updateConfiguration(localConfiguration, localDisplayMetrics);
        if (Build.VERSION.SDK_INT < 26) {
          c.a(localResources);
        }
      }
      return true;
    }
    return false;
  }
  
  private void j()
  {
    if (!C)
    {
      D = k();
      Object localObject = d();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        if (y != null) {
          y.setWindowTitle((CharSequence)localObject);
        } else if (a() != null) {
          a().setWindowTitle((CharSequence)localObject);
        } else if (E != null) {
          E.setText((CharSequence)localObject);
        }
      }
      l();
      a(D);
      C = true;
      localObject = a(0, false);
      if ((!r) && ((localObject == null) || (j == null))) {
        g(108);
      }
    }
  }
  
  private ViewGroup k()
  {
    Object localObject1 = a.obtainStyledAttributes(R.styleable.AppCompatTheme);
    if (((TypedArray)localObject1).hasValue(R.styleable.AppCompatTheme_windowActionBar))
    {
      if (((TypedArray)localObject1).getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
        requestWindowFeature(1);
      } else if (((TypedArray)localObject1).getBoolean(R.styleable.AppCompatTheme_windowActionBar, false)) {
        requestWindowFeature(108);
      }
      if (((TypedArray)localObject1).getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
        requestWindowFeature(109);
      }
      if (((TypedArray)localObject1).getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
        requestWindowFeature(10);
      }
      p = ((TypedArray)localObject1).getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
      ((TypedArray)localObject1).recycle();
      b.getDecorView();
      localObject1 = LayoutInflater.from(a);
      Object localObject2;
      if (!q)
      {
        if (p)
        {
          localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(R.layout.abc_dialog_title_material, null);
          n = false;
          m = false;
        }
        else if (m)
        {
          localObject1 = new TypedValue();
          a.getTheme().resolveAttribute(R.attr.actionBarTheme, (TypedValue)localObject1, true);
          if (resourceId != 0) {
            localObject1 = new ContextThemeWrapper(a, resourceId);
          } else {
            localObject1 = a;
          }
          localObject2 = (ViewGroup)LayoutInflater.from((Context)localObject1).inflate(R.layout.abc_screen_toolbar, null);
          y = ((DecorContentParent)((ViewGroup)localObject2).findViewById(R.id.decor_content_parent));
          y.setWindowCallback(b());
          if (n) {
            y.initFeature(109);
          }
          if (G) {
            y.initFeature(2);
          }
          localObject1 = localObject2;
          if (H)
          {
            y.initFeature(5);
            localObject1 = localObject2;
          }
        }
        else
        {
          localObject1 = null;
        }
      }
      else
      {
        if (o) {
          localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(R.layout.abc_screen_simple_overlay_action_mode, null);
        } else {
          localObject1 = (ViewGroup)((LayoutInflater)localObject1).inflate(R.layout.abc_screen_simple, null);
        }
        if (Build.VERSION.SDK_INT >= 21) {
          ViewCompat.setOnApplyWindowInsetsListener((View)localObject1, new OnApplyWindowInsetsListener()
          {
            public WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
            {
              int i = paramAnonymousWindowInsetsCompat.getSystemWindowInsetTop();
              int j = e(i);
              WindowInsetsCompat localWindowInsetsCompat = paramAnonymousWindowInsetsCompat;
              if (i != j) {
                localWindowInsetsCompat = paramAnonymousWindowInsetsCompat.replaceSystemWindowInsets(paramAnonymousWindowInsetsCompat.getSystemWindowInsetLeft(), j, paramAnonymousWindowInsetsCompat.getSystemWindowInsetRight(), paramAnonymousWindowInsetsCompat.getSystemWindowInsetBottom());
              }
              return ViewCompat.onApplyWindowInsets(paramAnonymousView, localWindowInsetsCompat);
            }
          });
        } else {
          ((FitWindowsViewGroup)localObject1).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener()
          {
            public void onFitSystemWindows(Rect paramAnonymousRect)
            {
              top = e(top);
            }
          });
        }
      }
      if (localObject1 != null)
      {
        if (y == null) {
          E = ((TextView)((ViewGroup)localObject1).findViewById(R.id.title));
        }
        ViewUtils.makeOptionalFitsSystemWindows((View)localObject1);
        localObject2 = (ContentFrameLayout)((ViewGroup)localObject1).findViewById(R.id.action_bar_activity_content);
        ViewGroup localViewGroup = (ViewGroup)b.findViewById(16908290);
        if (localViewGroup != null)
        {
          while (localViewGroup.getChildCount() > 0)
          {
            View localView = localViewGroup.getChildAt(0);
            localViewGroup.removeViewAt(0);
            ((ContentFrameLayout)localObject2).addView(localView);
          }
          localViewGroup.setId(-1);
          ((ContentFrameLayout)localObject2).setId(16908290);
          if ((localViewGroup instanceof FrameLayout)) {
            ((FrameLayout)localViewGroup).setForeground(null);
          }
        }
        b.setContentView((View)localObject1);
        ((ContentFrameLayout)localObject2).setAttachListener(new ContentFrameLayout.OnAttachListener()
        {
          public void onAttachedFromWindow() {}
          
          public void onDetachedFromWindow()
          {
            h();
          }
        });
        return localObject1;
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("AppCompat does not support the current theme features: { windowActionBar: ");
      ((StringBuilder)localObject1).append(m);
      ((StringBuilder)localObject1).append(", windowActionBarOverlay: ");
      ((StringBuilder)localObject1).append(n);
      ((StringBuilder)localObject1).append(", android:windowIsFloating: ");
      ((StringBuilder)localObject1).append(p);
      ((StringBuilder)localObject1).append(", windowActionModeOverlay: ");
      ((StringBuilder)localObject1).append(o);
      ((StringBuilder)localObject1).append(", windowNoTitle: ");
      ((StringBuilder)localObject1).append(q);
      ((StringBuilder)localObject1).append(" }");
      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
    }
    ((TypedArray)localObject1).recycle();
    throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
  }
  
  private void l()
  {
    ContentFrameLayout localContentFrameLayout = (ContentFrameLayout)D.findViewById(16908290);
    Object localObject = b.getDecorView();
    localContentFrameLayout.setDecorPadding(((View)localObject).getPaddingLeft(), ((View)localObject).getPaddingTop(), ((View)localObject).getPaddingRight(), ((View)localObject).getPaddingBottom());
    localObject = a.obtainStyledAttributes(R.styleable.AppCompatTheme);
    ((TypedArray)localObject).getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, localContentFrameLayout.getMinWidthMajor());
    ((TypedArray)localObject).getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, localContentFrameLayout.getMinWidthMinor());
    if (((TypedArray)localObject).hasValue(R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
      ((TypedArray)localObject).getValue(R.styleable.AppCompatTheme_windowFixedWidthMajor, localContentFrameLayout.getFixedWidthMajor());
    }
    if (((TypedArray)localObject).hasValue(R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
      ((TypedArray)localObject).getValue(R.styleable.AppCompatTheme_windowFixedWidthMinor, localContentFrameLayout.getFixedWidthMinor());
    }
    if (((TypedArray)localObject).hasValue(R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
      ((TypedArray)localObject).getValue(R.styleable.AppCompatTheme_windowFixedHeightMajor, localContentFrameLayout.getFixedHeightMajor());
    }
    if (((TypedArray)localObject).hasValue(R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
      ((TypedArray)localObject).getValue(R.styleable.AppCompatTheme_windowFixedHeightMinor, localContentFrameLayout.getFixedHeightMinor());
    }
    ((TypedArray)localObject).recycle();
    localContentFrameLayout.requestLayout();
  }
  
  private void m()
  {
    if (!C) {
      return;
    }
    throw new AndroidRuntimeException("Window feature must be requested before adding content");
  }
  
  private int n()
  {
    if (M != -100) {
      return M;
    }
    return getDefaultNightMode();
  }
  
  private void o()
  {
    if (O == null) {
      O = new e(f.a(a));
    }
  }
  
  private boolean p()
  {
    boolean bool2 = N;
    boolean bool1 = false;
    if ((bool2) && ((a instanceof Activity)))
    {
      PackageManager localPackageManager = a.getPackageManager();
      try
      {
        int i1 = getActivityInfoComponentNamea, a.getClass()), 0).configChanges;
        if ((i1 & 0x200) == 0) {
          bool1 = true;
        }
        return bool1;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", localNameNotFoundException);
        return true;
      }
    }
    return false;
  }
  
  final ActionBar a()
  {
    return f;
  }
  
  protected PanelFeatureState a(int paramInt, boolean paramBoolean)
  {
    Object localObject2 = J;
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (localObject2.length > paramInt) {}
    }
    else
    {
      localObject1 = new PanelFeatureState[paramInt + 1];
      if (localObject2 != null) {
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
      }
      J = ((PanelFeatureState[])localObject1);
    }
    Object localObject3 = localObject1[paramInt];
    localObject2 = localObject3;
    if (localObject3 == null)
    {
      localObject2 = new PanelFeatureState(paramInt);
      localObject1[paramInt] = localObject2;
    }
    return localObject2;
  }
  
  PanelFeatureState a(Menu paramMenu)
  {
    PanelFeatureState[] arrayOfPanelFeatureState = J;
    int i2 = 0;
    int i1;
    if (arrayOfPanelFeatureState != null) {
      i1 = arrayOfPanelFeatureState.length;
    } else {
      i1 = 0;
    }
    while (i2 < i1)
    {
      PanelFeatureState localPanelFeatureState = arrayOfPanelFeatureState[i2];
      if ((localPanelFeatureState != null) && (j == paramMenu)) {
        return localPanelFeatureState;
      }
      i2 += 1;
    }
    return null;
  }
  
  android.support.v7.view.ActionMode a(@NonNull android.support.v7.view.ActionMode.Callback paramCallback)
  {
    f();
    if (h != null) {
      h.finish();
    }
    Object localObject1 = paramCallback;
    if (!(paramCallback instanceof c)) {
      localObject1 = new c(paramCallback);
    }
    if ((e != null) && (!r)) {}
    try
    {
      paramCallback = e.onWindowStartingSupportActionMode((android.support.v7.view.ActionMode.Callback)localObject1);
    }
    catch (AbstractMethodError paramCallback)
    {
      boolean bool;
      Object localObject2;
      Resources.Theme localTheme;
      int i1;
      for (;;) {}
    }
    paramCallback = null;
    if (paramCallback != null)
    {
      h = paramCallback;
    }
    else
    {
      paramCallback = i;
      bool = true;
      if (paramCallback == null) {
        if (p)
        {
          localObject2 = new TypedValue();
          paramCallback = a.getTheme();
          paramCallback.resolveAttribute(R.attr.actionBarTheme, (TypedValue)localObject2, true);
          if (resourceId != 0)
          {
            localTheme = a.getResources().newTheme();
            localTheme.setTo(paramCallback);
            localTheme.applyStyle(resourceId, true);
            paramCallback = new ContextThemeWrapper(a, 0);
            paramCallback.getTheme().setTo(localTheme);
          }
          else
          {
            paramCallback = a;
          }
          i = new ActionBarContextView(paramCallback);
          j = new PopupWindow(paramCallback, null, R.attr.actionModePopupWindowStyle);
          PopupWindowCompat.setWindowLayoutType(j, 2);
          j.setContentView(i);
          j.setWidth(-1);
          paramCallback.getTheme().resolveAttribute(R.attr.actionBarSize, (TypedValue)localObject2, true);
          i1 = TypedValue.complexToDimensionPixelSize(data, paramCallback.getResources().getDisplayMetrics());
          i.setContentHeight(i1);
          j.setHeight(-2);
          k = new Runnable()
          {
            public void run()
            {
              j.showAtLocation(i, 55, 0, 0);
              f();
              if (e())
              {
                i.setAlpha(0.0F);
                l = ViewCompat.animate(i).alpha(1.0F);
                l.setListener(new ViewPropertyAnimatorListenerAdapter()
                {
                  public void onAnimationEnd(View paramAnonymous2View)
                  {
                    i.setAlpha(1.0F);
                    l.setListener(null);
                    l = null;
                  }
                  
                  public void onAnimationStart(View paramAnonymous2View)
                  {
                    i.setVisibility(0);
                  }
                });
                return;
              }
              i.setAlpha(1.0F);
              i.setVisibility(0);
            }
          };
        }
        else
        {
          paramCallback = (ViewStubCompat)D.findViewById(R.id.action_mode_bar_stub);
          if (paramCallback != null)
          {
            paramCallback.setLayoutInflater(LayoutInflater.from(c()));
            i = ((ActionBarContextView)paramCallback.inflate());
          }
        }
      }
      if (i != null)
      {
        f();
        i.killMode();
        paramCallback = i.getContext();
        localObject2 = i;
        if (j != null) {
          bool = false;
        }
        paramCallback = new StandaloneActionMode(paramCallback, (ActionBarContextView)localObject2, (android.support.v7.view.ActionMode.Callback)localObject1, bool);
        if (((android.support.v7.view.ActionMode.Callback)localObject1).onCreateActionMode(paramCallback, paramCallback.getMenu()))
        {
          paramCallback.invalidate();
          i.initForMode(paramCallback);
          h = paramCallback;
          if (e())
          {
            i.setAlpha(0.0F);
            l = ViewCompat.animate(i).alpha(1.0F);
            l.setListener(new ViewPropertyAnimatorListenerAdapter()
            {
              public void onAnimationEnd(View paramAnonymousView)
              {
                i.setAlpha(1.0F);
                l.setListener(null);
                l = null;
              }
              
              public void onAnimationStart(View paramAnonymousView)
              {
                i.setVisibility(0);
                i.sendAccessibilityEvent(32);
                if ((i.getParent() instanceof View)) {
                  ViewCompat.requestApplyInsets((View)i.getParent());
                }
              }
            });
          }
          else
          {
            i.setAlpha(1.0F);
            i.setVisibility(0);
            i.sendAccessibilityEvent(32);
            if ((i.getParent() instanceof View)) {
              ViewCompat.requestApplyInsets((View)i.getParent());
            }
          }
          if (j != null) {
            b.getDecorView().post(k);
          }
        }
        else
        {
          h = null;
        }
      }
    }
    if ((h != null) && (e != null)) {
      e.onSupportActionModeStarted(h);
    }
    return h;
  }
  
  void a(int paramInt)
  {
    Object localObject;
    if (paramInt == 108)
    {
      localObject = getSupportActionBar();
      if (localObject != null) {
        ((ActionBar)localObject).dispatchMenuVisibilityChanged(false);
      }
    }
    else if (paramInt == 0)
    {
      localObject = a(paramInt, true);
      if (o) {
        a((PanelFeatureState)localObject, false);
      }
    }
  }
  
  void a(int paramInt, PanelFeatureState paramPanelFeatureState, Menu paramMenu)
  {
    Object localObject1 = paramPanelFeatureState;
    Object localObject2 = paramMenu;
    if (paramMenu == null)
    {
      PanelFeatureState localPanelFeatureState = paramPanelFeatureState;
      if (paramPanelFeatureState == null)
      {
        localPanelFeatureState = paramPanelFeatureState;
        if (paramInt >= 0)
        {
          localPanelFeatureState = paramPanelFeatureState;
          if (paramInt < J.length) {
            localPanelFeatureState = J[paramInt];
          }
        }
      }
      localObject1 = localPanelFeatureState;
      localObject2 = paramMenu;
      if (localPanelFeatureState != null)
      {
        localObject2 = j;
        localObject1 = localPanelFeatureState;
      }
    }
    if ((localObject1 != null) && (!o)) {
      return;
    }
    if (!r) {
      c.onPanelClosed(paramInt, (Menu)localObject2);
    }
  }
  
  void a(PanelFeatureState paramPanelFeatureState, boolean paramBoolean)
  {
    if ((paramBoolean) && (a == 0) && (y != null) && (y.isOverflowMenuShowing()))
    {
      a(j);
      return;
    }
    WindowManager localWindowManager = (WindowManager)a.getSystemService("window");
    if ((localWindowManager != null) && (o) && (g != null))
    {
      localWindowManager.removeView(g);
      if (paramBoolean) {
        a(a, paramPanelFeatureState, null);
      }
    }
    m = false;
    n = false;
    o = false;
    h = null;
    p = true;
    if (K == paramPanelFeatureState) {
      K = null;
    }
  }
  
  void a(MenuBuilder paramMenuBuilder)
  {
    if (I) {
      return;
    }
    I = true;
    y.dismissPopups();
    Window.Callback localCallback = b();
    if ((localCallback != null) && (!r)) {
      localCallback.onPanelClosed(108, paramMenuBuilder);
    }
    I = false;
  }
  
  void a(ViewGroup paramViewGroup) {}
  
  boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject = getSupportActionBar();
    if ((localObject != null) && (((ActionBar)localObject).onKeyShortcut(paramInt, paramKeyEvent))) {
      return true;
    }
    if ((K != null) && (a(K, paramKeyEvent.getKeyCode(), paramKeyEvent, 1)))
    {
      if (K != null) {
        K.n = true;
      }
      return true;
    }
    if (K == null)
    {
      localObject = a(0, true);
      b((PanelFeatureState)localObject, paramKeyEvent);
      boolean bool = a((PanelFeatureState)localObject, paramKeyEvent.getKeyCode(), paramKeyEvent, 1);
      m = false;
      if (bool) {
        return true;
      }
    }
    return false;
  }
  
  boolean a(KeyEvent paramKeyEvent)
  {
    boolean bool = c instanceof KeyEventDispatcher.Component;
    int i1 = 1;
    if ((bool) || ((c instanceof AppCompatDialog)))
    {
      View localView = b.getDecorView();
      if ((localView != null) && (KeyEventDispatcher.dispatchBeforeHierarchy(localView, paramKeyEvent))) {
        return true;
      }
    }
    if ((paramKeyEvent.getKeyCode() == 82) && (c.dispatchKeyEvent(paramKeyEvent))) {
      return true;
    }
    int i2 = paramKeyEvent.getKeyCode();
    if (paramKeyEvent.getAction() != 0) {
      i1 = 0;
    }
    if (i1 != 0) {
      return c(i2, paramKeyEvent);
    }
    return b(i2, paramKeyEvent);
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    j();
    ((ViewGroup)D.findViewById(16908290)).addView(paramView, paramLayoutParams);
    c.onContentChanged();
  }
  
  public boolean applyDayNight()
  {
    int i1 = n();
    int i2 = f(i1);
    boolean bool;
    if (i2 != -1) {
      bool = i(i2);
    } else {
      bool = false;
    }
    if (i1 == 0)
    {
      o();
      O.c();
    }
    N = true;
    return bool;
  }
  
  final Window.Callback b()
  {
    return b.getCallback();
  }
  
  void b(int paramInt)
  {
    if (paramInt == 108)
    {
      ActionBar localActionBar = getSupportActionBar();
      if (localActionBar != null) {
        localActionBar.dispatchMenuVisibilityChanged(true);
      }
    }
  }
  
  boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt != 4)
    {
      if (paramInt != 82) {
        return false;
      }
      e(0, paramKeyEvent);
      return true;
    }
    boolean bool = L;
    L = false;
    paramKeyEvent = a(0, false);
    if ((paramKeyEvent != null) && (o))
    {
      if (!bool) {
        a(paramKeyEvent, true);
      }
      return true;
    }
    return g();
  }
  
  final Context c()
  {
    Object localObject1 = getSupportActionBar();
    if (localObject1 != null) {
      localObject1 = ((ActionBar)localObject1).getThemedContext();
    } else {
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = a;
    }
    return localObject2;
  }
  
  void c(int paramInt)
  {
    a(a(paramInt, true), true);
  }
  
  boolean c(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (paramInt != 4)
    {
      if (paramInt != 82) {
        return false;
      }
      d(0, paramKeyEvent);
      return true;
    }
    if ((paramKeyEvent.getFlags() & 0x80) == 0) {
      bool = false;
    }
    L = bool;
    return false;
  }
  
  public View createView(View paramView, String paramString, @NonNull Context paramContext, @NonNull AttributeSet paramAttributeSet)
  {
    Object localObject = T;
    boolean bool = false;
    if (localObject == null)
    {
      localObject = a.obtainStyledAttributes(R.styleable.AppCompatTheme).getString(R.styleable.AppCompatTheme_viewInflaterClass);
      if ((localObject != null) && (!AppCompatViewInflater.class.getName().equals(localObject))) {
        try
        {
          T = ((AppCompatViewInflater)Class.forName((String)localObject).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        catch (Throwable localThrowable)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Failed to instantiate custom view inflater ");
          localStringBuilder.append((String)localObject);
          localStringBuilder.append(". Falling back to default.");
          Log.i("AppCompatDelegate", localStringBuilder.toString(), localThrowable);
          T = new AppCompatViewInflater();
        }
      } else {
        T = new AppCompatViewInflater();
      }
    }
    if (u)
    {
      if ((paramAttributeSet instanceof XmlPullParser))
      {
        if (((XmlPullParser)paramAttributeSet).getDepth() > 1) {
          bool = true;
        }
      }
      else {
        bool = a((ViewParent)paramView);
      }
    }
    else {
      bool = false;
    }
    return T.createView(paramView, paramString, paramContext, paramAttributeSet, bool, u, true, VectorEnabledTintResources.shouldBeUsed());
  }
  
  final CharSequence d()
  {
    if ((c instanceof Activity)) {
      return ((Activity)c).getTitle();
    }
    return x;
  }
  
  void d(int paramInt)
  {
    PanelFeatureState localPanelFeatureState = a(paramInt, true);
    if (j != null)
    {
      Bundle localBundle = new Bundle();
      j.saveActionViewStates(localBundle);
      if (localBundle.size() > 0) {
        r = localBundle;
      }
      j.stopDispatchingItemsChanged();
      j.clear();
    }
    q = true;
    p = true;
    if (((paramInt == 108) || (paramInt == 0)) && (y != null))
    {
      localPanelFeatureState = a(0, false);
      if (localPanelFeatureState != null)
      {
        m = false;
        b(localPanelFeatureState, null);
      }
    }
  }
  
  int e(int paramInt)
  {
    Object localObject1 = i;
    int i6 = 0;
    int i1;
    int i3;
    if ((localObject1 != null) && ((i.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localObject1 = (ViewGroup.MarginLayoutParams)i.getLayoutParams();
      boolean bool = i.isShown();
      int i4 = 1;
      int i5;
      int i2;
      if (bool)
      {
        if (R == null)
        {
          R = new Rect();
          S = new Rect();
        }
        Object localObject2 = R;
        Rect localRect = S;
        ((Rect)localObject2).set(0, paramInt, 0, 0);
        ViewUtils.computeFitSystemWindows(D, (Rect)localObject2, localRect);
        if (top == 0) {
          i1 = paramInt;
        } else {
          i1 = 0;
        }
        if (topMargin != i1)
        {
          topMargin = paramInt;
          if (F == null)
          {
            F = new View(a);
            F.setBackgroundColor(a.getResources().getColor(R.color.abc_input_method_navigation_guard));
            D.addView(F, -1, new ViewGroup.LayoutParams(-1, paramInt));
          }
          else
          {
            localObject2 = F.getLayoutParams();
            if (height != paramInt)
            {
              height = paramInt;
              F.setLayoutParams((ViewGroup.LayoutParams)localObject2);
            }
          }
          i3 = 1;
        }
        else
        {
          i3 = 0;
        }
        if (F == null) {
          i4 = 0;
        }
        i5 = i3;
        i1 = i4;
        i2 = paramInt;
        if (!o)
        {
          i5 = i3;
          i1 = i4;
          i2 = paramInt;
          if (i4 != 0)
          {
            i2 = 0;
            i5 = i3;
            i1 = i4;
          }
        }
      }
      else
      {
        if (topMargin != 0)
        {
          topMargin = 0;
          i3 = 1;
        }
        else
        {
          i3 = 0;
        }
        i1 = 0;
        i2 = paramInt;
        i5 = i3;
      }
      i3 = i1;
      paramInt = i2;
      if (i5 != 0)
      {
        i.setLayoutParams((ViewGroup.LayoutParams)localObject1);
        i3 = i1;
        paramInt = i2;
      }
    }
    else
    {
      i3 = 0;
    }
    if (F != null)
    {
      localObject1 = F;
      if (i3 != 0) {
        i1 = i6;
      } else {
        i1 = 8;
      }
      ((View)localObject1).setVisibility(i1);
    }
    return paramInt;
  }
  
  final boolean e()
  {
    return (C) && (D != null) && (ViewCompat.isLaidOut(D));
  }
  
  int f(int paramInt)
  {
    if (paramInt != -100)
    {
      if (paramInt != 0) {
        return paramInt;
      }
      if ((Build.VERSION.SDK_INT >= 23) && (((UiModeManager)a.getSystemService(UiModeManager.class)).getNightMode() == 0)) {
        return -1;
      }
      o();
      return O.a();
    }
    return -1;
  }
  
  void f()
  {
    if (l != null) {
      l.cancel();
    }
  }
  
  @Nullable
  public <T extends View> T findViewById(@IdRes int paramInt)
  {
    j();
    return b.findViewById(paramInt);
  }
  
  boolean g()
  {
    if (h != null)
    {
      h.finish();
      return true;
    }
    ActionBar localActionBar = getSupportActionBar();
    return (localActionBar != null) && (localActionBar.collapseActionView());
  }
  
  public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate()
  {
    return new a();
  }
  
  public MenuInflater getMenuInflater()
  {
    if (g == null)
    {
      i();
      Context localContext;
      if (f != null) {
        localContext = f.getThemedContext();
      } else {
        localContext = a;
      }
      g = new SupportMenuInflater(localContext);
    }
    return g;
  }
  
  public ActionBar getSupportActionBar()
  {
    i();
    return f;
  }
  
  void h()
  {
    if (y != null) {
      y.dismissPopups();
    }
    if (j != null)
    {
      b.getDecorView().removeCallbacks(k);
      if (!j.isShowing()) {}
    }
    try
    {
      j.dismiss();
      j = null;
      f();
      PanelFeatureState localPanelFeatureState = a(0, false);
      if ((localPanelFeatureState != null) && (j != null)) {
        j.close();
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
  }
  
  public boolean hasWindowFeature(int paramInt)
  {
    int i1 = h(paramInt);
    boolean bool2 = false;
    boolean bool1;
    switch (i1)
    {
    default: 
      bool1 = false;
      break;
    case 109: 
      bool1 = n;
      break;
    case 108: 
      bool1 = m;
      break;
    case 10: 
      bool1 = o;
      break;
    case 5: 
      bool1 = H;
      break;
    case 2: 
      bool1 = G;
      break;
    case 1: 
      bool1 = q;
    }
    if (!bool1)
    {
      bool1 = bool2;
      if (!b.hasFeature(paramInt)) {}
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  public void installViewFactory()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(a);
    if (localLayoutInflater.getFactory() == null)
    {
      LayoutInflaterCompat.setFactory2(localLayoutInflater, this);
      return;
    }
    if (!(localLayoutInflater.getFactory2() instanceof AppCompatDelegateImpl)) {
      Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
    }
  }
  
  public void invalidateOptionsMenu()
  {
    ActionBar localActionBar = getSupportActionBar();
    if ((localActionBar != null) && (localActionBar.invalidateOptionsMenu())) {
      return;
    }
    g(0);
  }
  
  public boolean isHandleNativeActionModesEnabled()
  {
    return B;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if ((m) && (C))
    {
      ActionBar localActionBar = getSupportActionBar();
      if (localActionBar != null) {
        localActionBar.onConfigurationChanged(paramConfiguration);
      }
    }
    AppCompatDrawableManager.get().onConfigurationChanged(a);
    applyDayNight();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject;
    if ((c instanceof Activity)) {
      localObject = null;
    }
    try
    {
      String str = NavUtils.getParentActivityName((Activity)c);
      localObject = str;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
    if (localObject != null)
    {
      localObject = a();
      if (localObject == null) {
        Q = true;
      } else {
        ((ActionBar)localObject).setDefaultDisplayHomeAsUpEnabled(true);
      }
    }
    if ((paramBundle != null) && (M == -100)) {
      M = paramBundle.getInt("appcompat:local_night_mode", -100);
    }
  }
  
  public final View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return createView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public void onDestroy()
  {
    if (s) {
      b.getDecorView().removeCallbacks(P);
    }
    r = true;
    if (f != null) {
      f.a();
    }
    if (O != null) {
      O.d();
    }
  }
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    Window.Callback localCallback = b();
    if ((localCallback != null) && (!r))
    {
      paramMenuBuilder = a(paramMenuBuilder.getRootMenu());
      if (paramMenuBuilder != null) {
        return localCallback.onMenuItemSelected(a, paramMenuItem);
      }
    }
    return false;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder)
  {
    a(paramMenuBuilder, true);
  }
  
  public void onPostCreate(Bundle paramBundle)
  {
    j();
  }
  
  public void onPostResume()
  {
    ActionBar localActionBar = getSupportActionBar();
    if (localActionBar != null) {
      localActionBar.setShowHideAnimationEnabled(true);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (M != -100) {
      paramBundle.putInt("appcompat:local_night_mode", M);
    }
  }
  
  public void onStart()
  {
    applyDayNight();
  }
  
  public void onStop()
  {
    ActionBar localActionBar = getSupportActionBar();
    if (localActionBar != null) {
      localActionBar.setShowHideAnimationEnabled(false);
    }
    if (O != null) {
      O.d();
    }
  }
  
  public boolean requestWindowFeature(int paramInt)
  {
    paramInt = h(paramInt);
    if ((q) && (paramInt == 108)) {
      return false;
    }
    if ((m) && (paramInt == 1)) {
      m = false;
    }
    switch (paramInt)
    {
    default: 
      return b.requestFeature(paramInt);
    case 109: 
      m();
      n = true;
      return true;
    case 108: 
      m();
      m = true;
      return true;
    case 10: 
      m();
      o = true;
      return true;
    case 5: 
      m();
      H = true;
      return true;
    case 2: 
      m();
      G = true;
      return true;
    }
    m();
    q = true;
    return true;
  }
  
  public void setContentView(int paramInt)
  {
    j();
    ViewGroup localViewGroup = (ViewGroup)D.findViewById(16908290);
    localViewGroup.removeAllViews();
    LayoutInflater.from(a).inflate(paramInt, localViewGroup);
    c.onContentChanged();
  }
  
  public void setContentView(View paramView)
  {
    j();
    ViewGroup localViewGroup = (ViewGroup)D.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    c.onContentChanged();
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    j();
    ViewGroup localViewGroup = (ViewGroup)D.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    c.onContentChanged();
  }
  
  public void setHandleNativeActionModesEnabled(boolean paramBoolean)
  {
    B = paramBoolean;
  }
  
  public void setLocalNightMode(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      Log.i("AppCompatDelegate", "setLocalNightMode() called with an unknown mode");
      return;
    }
    if (M != paramInt)
    {
      M = paramInt;
      if (N) {
        applyDayNight();
      }
    }
  }
  
  public void setSupportActionBar(Toolbar paramToolbar)
  {
    if (!(c instanceof Activity)) {
      return;
    }
    ActionBar localActionBar = getSupportActionBar();
    if (!(localActionBar instanceof WindowDecorActionBar))
    {
      g = null;
      if (localActionBar != null) {
        localActionBar.a();
      }
      if (paramToolbar != null)
      {
        paramToolbar = new d(paramToolbar, ((Activity)c).getTitle(), d);
        f = paramToolbar;
        b.setCallback(paramToolbar.b());
      }
      else
      {
        f = null;
        b.setCallback(d);
      }
      invalidateOptionsMenu();
      return;
    }
    throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    x = paramCharSequence;
    if (y != null)
    {
      y.setWindowTitle(paramCharSequence);
      return;
    }
    if (a() != null)
    {
      a().setWindowTitle(paramCharSequence);
      return;
    }
    if (E != null) {
      E.setText(paramCharSequence);
    }
  }
  
  public android.support.v7.view.ActionMode startSupportActionMode(@NonNull android.support.v7.view.ActionMode.Callback paramCallback)
  {
    if (paramCallback != null)
    {
      if (h != null) {
        h.finish();
      }
      paramCallback = new c(paramCallback);
      ActionBar localActionBar = getSupportActionBar();
      if (localActionBar != null)
      {
        h = localActionBar.startActionMode(paramCallback);
        if ((h != null) && (e != null)) {
          e.onSupportActionModeStarted(h);
        }
      }
      if (h == null) {
        h = a(paramCallback);
      }
      return h;
    }
    throw new IllegalArgumentException("ActionMode callback can not be null.");
  }
  
  protected static final class PanelFeatureState
  {
    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    ViewGroup g;
    View h;
    View i;
    MenuBuilder j;
    ListMenuPresenter k;
    Context l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    public boolean qwertyMode;
    Bundle r;
    
    PanelFeatureState(int paramInt)
    {
      a = paramInt;
      p = false;
    }
    
    MenuView a(MenuPresenter.Callback paramCallback)
    {
      if (j == null) {
        return null;
      }
      if (k == null)
      {
        k = new ListMenuPresenter(l, R.layout.abc_list_menu_item_layout);
        k.setCallback(paramCallback);
        j.addMenuPresenter(k);
      }
      return k.getMenuView(g);
    }
    
    void a(Context paramContext)
    {
      TypedValue localTypedValue = new TypedValue();
      Resources.Theme localTheme = paramContext.getResources().newTheme();
      localTheme.setTo(paramContext.getTheme());
      localTheme.resolveAttribute(R.attr.actionBarPopupTheme, localTypedValue, true);
      if (resourceId != 0) {
        localTheme.applyStyle(resourceId, true);
      }
      localTheme.resolveAttribute(R.attr.panelMenuListTheme, localTypedValue, true);
      if (resourceId != 0) {
        localTheme.applyStyle(resourceId, true);
      } else {
        localTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
      }
      paramContext = new ContextThemeWrapper(paramContext, 0);
      paramContext.getTheme().setTo(localTheme);
      l = paramContext;
      paramContext = paramContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
      b = paramContext.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
      f = paramContext.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
      paramContext.recycle();
    }
    
    void a(MenuBuilder paramMenuBuilder)
    {
      if (paramMenuBuilder == j) {
        return;
      }
      if (j != null) {
        j.removeMenuPresenter(k);
      }
      j = paramMenuBuilder;
      if ((paramMenuBuilder != null) && (k != null)) {
        paramMenuBuilder.addMenuPresenter(k);
      }
    }
    
    public void clearMenuPresenters()
    {
      if (j != null) {
        j.removeMenuPresenter(k);
      }
      k = null;
    }
    
    public boolean hasPanelItems()
    {
      View localView = h;
      boolean bool = false;
      if (localView == null) {
        return false;
      }
      if (i != null) {
        return true;
      }
      if (k.getAdapter().getCount() > 0) {
        bool = true;
      }
      return bool;
    }
  }
  
  private class a
    implements ActionBarDrawerToggle.Delegate
  {
    a() {}
    
    public Context getActionBarThemedContext()
    {
      return c();
    }
    
    public Drawable getThemeUpIndicator()
    {
      TintTypedArray localTintTypedArray = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), null, new int[] { R.attr.homeAsUpIndicator });
      Drawable localDrawable = localTintTypedArray.getDrawable(0);
      localTintTypedArray.recycle();
      return localDrawable;
    }
    
    public boolean isNavigationVisible()
    {
      ActionBar localActionBar = getSupportActionBar();
      return (localActionBar != null) && ((localActionBar.getDisplayOptions() & 0x4) != 0);
    }
    
    public void setActionBarDescription(int paramInt)
    {
      ActionBar localActionBar = getSupportActionBar();
      if (localActionBar != null) {
        localActionBar.setHomeActionContentDescription(paramInt);
      }
    }
    
    public void setActionBarUpIndicator(Drawable paramDrawable, int paramInt)
    {
      ActionBar localActionBar = getSupportActionBar();
      if (localActionBar != null)
      {
        localActionBar.setHomeAsUpIndicator(paramDrawable);
        localActionBar.setHomeActionContentDescription(paramInt);
      }
    }
  }
  
  private final class b
    implements MenuPresenter.Callback
  {
    b() {}
    
    public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
    {
      a(paramMenuBuilder);
    }
    
    public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
    {
      Window.Callback localCallback = b();
      if (localCallback != null) {
        localCallback.onMenuOpened(108, paramMenuBuilder);
      }
      return true;
    }
  }
  
  class c
    implements android.support.v7.view.ActionMode.Callback
  {
    private android.support.v7.view.ActionMode.Callback b;
    
    public c(android.support.v7.view.ActionMode.Callback paramCallback)
    {
      b = paramCallback;
    }
    
    public boolean onActionItemClicked(android.support.v7.view.ActionMode paramActionMode, MenuItem paramMenuItem)
    {
      return b.onActionItemClicked(paramActionMode, paramMenuItem);
    }
    
    public boolean onCreateActionMode(android.support.v7.view.ActionMode paramActionMode, Menu paramMenu)
    {
      return b.onCreateActionMode(paramActionMode, paramMenu);
    }
    
    public void onDestroyActionMode(android.support.v7.view.ActionMode paramActionMode)
    {
      b.onDestroyActionMode(paramActionMode);
      if (j != null) {
        b.getDecorView().removeCallbacks(k);
      }
      if (i != null)
      {
        f();
        l = ViewCompat.animate(i).alpha(0.0F);
        l.setListener(new ViewPropertyAnimatorListenerAdapter()
        {
          public void onAnimationEnd(View paramAnonymousView)
          {
            i.setVisibility(8);
            if (j != null) {
              j.dismiss();
            } else if ((i.getParent() instanceof View)) {
              ViewCompat.requestApplyInsets((View)i.getParent());
            }
            i.removeAllViews();
            l.setListener(null);
            l = null;
          }
        });
      }
      if (e != null) {
        e.onSupportActionModeFinished(h);
      }
      h = null;
    }
    
    public boolean onPrepareActionMode(android.support.v7.view.ActionMode paramActionMode, Menu paramMenu)
    {
      return b.onPrepareActionMode(paramActionMode, paramMenu);
    }
  }
  
  class d
    extends WindowCallbackWrapper
  {
    d(Window.Callback paramCallback)
    {
      super();
    }
    
    final android.view.ActionMode a(android.view.ActionMode.Callback paramCallback)
    {
      paramCallback = new SupportActionModeWrapper.CallbackWrapper(a, paramCallback);
      android.support.v7.view.ActionMode localActionMode = startSupportActionMode(paramCallback);
      if (localActionMode != null) {
        return paramCallback.getActionModeWrapper(localActionMode);
      }
      return null;
    }
    
    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      return (a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
    }
    
    public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
    {
      return (super.dispatchKeyShortcutEvent(paramKeyEvent)) || (a(paramKeyEvent.getKeyCode(), paramKeyEvent));
    }
    
    public void onContentChanged() {}
    
    public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
    {
      if ((paramInt == 0) && (!(paramMenu instanceof MenuBuilder))) {
        return false;
      }
      return super.onCreatePanelMenu(paramInt, paramMenu);
    }
    
    public boolean onMenuOpened(int paramInt, Menu paramMenu)
    {
      super.onMenuOpened(paramInt, paramMenu);
      b(paramInt);
      return true;
    }
    
    public void onPanelClosed(int paramInt, Menu paramMenu)
    {
      super.onPanelClosed(paramInt, paramMenu);
      a(paramInt);
    }
    
    public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
    {
      MenuBuilder localMenuBuilder;
      if ((paramMenu instanceof MenuBuilder)) {
        localMenuBuilder = (MenuBuilder)paramMenu;
      } else {
        localMenuBuilder = null;
      }
      if ((paramInt == 0) && (localMenuBuilder == null)) {
        return false;
      }
      if (localMenuBuilder != null) {
        localMenuBuilder.setOverrideVisibleItems(true);
      }
      boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
      if (localMenuBuilder != null) {
        localMenuBuilder.setOverrideVisibleItems(false);
      }
      return bool;
    }
    
    @RequiresApi(24)
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> paramList, Menu paramMenu, int paramInt)
    {
      AppCompatDelegateImpl.PanelFeatureState localPanelFeatureState = a(0, true);
      if ((localPanelFeatureState != null) && (j != null))
      {
        super.onProvideKeyboardShortcuts(paramList, j, paramInt);
        return;
      }
      super.onProvideKeyboardShortcuts(paramList, paramMenu, paramInt);
    }
    
    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback paramCallback)
    {
      if (Build.VERSION.SDK_INT >= 23) {
        return null;
      }
      if (isHandleNativeActionModesEnabled()) {
        return a(paramCallback);
      }
      return super.onWindowStartingActionMode(paramCallback);
    }
    
    @RequiresApi(23)
    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback paramCallback, int paramInt)
    {
      if ((isHandleNativeActionModesEnabled()) && (paramInt == 0)) {
        return a(paramCallback);
      }
      return super.onWindowStartingActionMode(paramCallback, paramInt);
    }
  }
  
  @VisibleForTesting
  final class e
  {
    private f b;
    private boolean c;
    private BroadcastReceiver d;
    private IntentFilter e;
    
    e(@NonNull f paramF)
    {
      b = paramF;
      c = paramF.a();
    }
    
    int a()
    {
      c = b.a();
      if (c) {
        return 2;
      }
      return 1;
    }
    
    void b()
    {
      boolean bool = b.a();
      if (bool != c)
      {
        c = bool;
        applyDayNight();
      }
    }
    
    void c()
    {
      d();
      if (d == null) {
        d = new BroadcastReceiver()
        {
          public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
          {
            b();
          }
        };
      }
      if (e == null)
      {
        e = new IntentFilter();
        e.addAction("android.intent.action.TIME_SET");
        e.addAction("android.intent.action.TIMEZONE_CHANGED");
        e.addAction("android.intent.action.TIME_TICK");
      }
      a.registerReceiver(d, e);
    }
    
    void d()
    {
      if (d != null)
      {
        a.unregisterReceiver(d);
        d = null;
      }
    }
  }
  
  private class f
    extends ContentFrameLayout
  {
    public f(Context paramContext)
    {
      super();
    }
    
    private boolean a(int paramInt1, int paramInt2)
    {
      return (paramInt1 < -5) || (paramInt2 < -5) || (paramInt1 > getWidth() + 5) || (paramInt2 > getHeight() + 5);
    }
    
    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      return (a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
    }
    
    public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      if ((paramMotionEvent.getAction() == 0) && (a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())))
      {
        c(0);
        return true;
      }
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    
    public void setBackgroundResource(int paramInt)
    {
      setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), paramInt));
    }
  }
  
  private final class g
    implements MenuPresenter.Callback
  {
    g() {}
    
    public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
    {
      MenuBuilder localMenuBuilder = paramMenuBuilder.getRootMenu();
      int i;
      if (localMenuBuilder != paramMenuBuilder) {
        i = 1;
      } else {
        i = 0;
      }
      AppCompatDelegateImpl localAppCompatDelegateImpl = AppCompatDelegateImpl.this;
      if (i != 0) {
        paramMenuBuilder = localMenuBuilder;
      }
      paramMenuBuilder = localAppCompatDelegateImpl.a(paramMenuBuilder);
      if (paramMenuBuilder != null)
      {
        if (i != 0)
        {
          a(a, paramMenuBuilder, localMenuBuilder);
          a(paramMenuBuilder, true);
          return;
        }
        a(paramMenuBuilder, paramBoolean);
      }
    }
    
    public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
    {
      if ((paramMenuBuilder == null) && (m))
      {
        Window.Callback localCallback = b();
        if ((localCallback != null) && (!r)) {
          localCallback.onMenuOpened(108, paramMenuBuilder);
        }
      }
      return true;
    }
  }
}
