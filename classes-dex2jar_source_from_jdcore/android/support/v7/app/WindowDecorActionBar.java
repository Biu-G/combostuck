package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode.Callback;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.ViewPropertyAnimatorCompatSet;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.ScrollingTabContainerView;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class WindowDecorActionBar
  extends ActionBar
  implements ActionBarOverlayLayout.ActionBarVisibilityCallback
{
  private static final Interpolator t = new AccelerateInterpolator();
  private static final Interpolator u = new DecelerateInterpolator();
  private int A = -1;
  private boolean B;
  private boolean C;
  private ArrayList<ActionBar.OnMenuVisibilityListener> D = new ArrayList();
  private boolean E;
  private int F = 0;
  private boolean G;
  private boolean H = true;
  private boolean I;
  Context a;
  ActionBarOverlayLayout b;
  ActionBarContainer c;
  DecorToolbar d;
  ActionBarContextView e;
  View f;
  ScrollingTabContainerView g;
  ActionModeImpl h;
  ActionMode i;
  ActionMode.Callback j;
  boolean k = true;
  boolean l;
  boolean m;
  ViewPropertyAnimatorCompatSet n;
  boolean o;
  final ViewPropertyAnimatorListener p = new ViewPropertyAnimatorListenerAdapter()
  {
    public void onAnimationEnd(View paramAnonymousView)
    {
      if ((k) && (f != null))
      {
        f.setTranslationY(0.0F);
        c.setTranslationY(0.0F);
      }
      c.setVisibility(8);
      c.setTransitioning(false);
      n = null;
      b();
      if (b != null) {
        ViewCompat.requestApplyInsets(b);
      }
    }
  };
  final ViewPropertyAnimatorListener q = new ViewPropertyAnimatorListenerAdapter()
  {
    public void onAnimationEnd(View paramAnonymousView)
    {
      n = null;
      c.requestLayout();
    }
  };
  final ViewPropertyAnimatorUpdateListener r = new ViewPropertyAnimatorUpdateListener()
  {
    public void onAnimationUpdate(View paramAnonymousView)
    {
      ((View)c.getParent()).invalidate();
    }
  };
  private Context v;
  private Activity w;
  private Dialog x;
  private ArrayList<TabImpl> y = new ArrayList();
  private TabImpl z;
  
  public WindowDecorActionBar(Activity paramActivity, boolean paramBoolean)
  {
    w = paramActivity;
    paramActivity = paramActivity.getWindow().getDecorView();
    a(paramActivity);
    if (!paramBoolean) {
      f = paramActivity.findViewById(16908290);
    }
  }
  
  public WindowDecorActionBar(Dialog paramDialog)
  {
    x = paramDialog;
    a(paramDialog.getWindow().getDecorView());
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public WindowDecorActionBar(View paramView)
  {
    if ((!s) && (!paramView.isInEditMode())) {
      throw new AssertionError();
    }
    a(paramView);
  }
  
  private void a(ActionBar.Tab paramTab, int paramInt)
  {
    paramTab = (TabImpl)paramTab;
    if (paramTab.getCallback() != null)
    {
      paramTab.setPosition(paramInt);
      y.add(paramInt, paramTab);
      int i1 = y.size();
      for (;;)
      {
        paramInt += 1;
        if (paramInt >= i1) {
          break;
        }
        ((TabImpl)y.get(paramInt)).setPosition(paramInt);
      }
      return;
    }
    throw new IllegalStateException("Action Bar Tab must have a Callback");
  }
  
  private void a(View paramView)
  {
    b = ((ActionBarOverlayLayout)paramView.findViewById(R.id.decor_content_parent));
    if (b != null) {
      b.setActionBarVisibilityCallback(this);
    }
    d = b(paramView.findViewById(R.id.action_bar));
    e = ((ActionBarContextView)paramView.findViewById(R.id.action_context_bar));
    c = ((ActionBarContainer)paramView.findViewById(R.id.action_bar_container));
    if ((d != null) && (e != null) && (c != null))
    {
      a = d.getContext();
      if ((d.getDisplayOptions() & 0x4) != 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0) {
        B = true;
      }
      paramView = ActionBarPolicy.get(a);
      boolean bool;
      if ((!paramView.enableHomeButtonByDefault()) && (i1 == 0)) {
        bool = false;
      } else {
        bool = true;
      }
      setHomeButtonEnabled(bool);
      a(paramView.hasEmbeddedTabs());
      paramView = a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
      if (paramView.getBoolean(R.styleable.ActionBar_hideOnContentScroll, false)) {
        setHideOnContentScrollEnabled(true);
      }
      int i1 = paramView.getDimensionPixelSize(R.styleable.ActionBar_elevation, 0);
      if (i1 != 0) {
        setElevation(i1);
      }
      paramView.recycle();
      return;
    }
    paramView = new StringBuilder();
    paramView.append(getClass().getSimpleName());
    paramView.append(" can only be used ");
    paramView.append("with a compatible window decor layout");
    throw new IllegalStateException(paramView.toString());
  }
  
  private void a(boolean paramBoolean)
  {
    E = paramBoolean;
    if (!E)
    {
      d.setEmbeddedTabView(null);
      c.setTabContainer(g);
    }
    else
    {
      c.setTabContainer(null);
      d.setEmbeddedTabView(g);
    }
    int i1 = getNavigationMode();
    boolean bool = true;
    if (i1 == 2) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (g != null) {
      if (i1 != 0)
      {
        g.setVisibility(0);
        if (b != null) {
          ViewCompat.requestApplyInsets(b);
        }
      }
      else
      {
        g.setVisibility(8);
      }
    }
    Object localObject = d;
    if ((!E) && (i1 != 0)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    ((DecorToolbar)localObject).setCollapsible(paramBoolean);
    localObject = b;
    if ((!E) && (i1 != 0)) {
      paramBoolean = bool;
    } else {
      paramBoolean = false;
    }
    ((ActionBarOverlayLayout)localObject).setHasNonEmbeddedTabs(paramBoolean);
  }
  
  static boolean a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3) {
      return true;
    }
    return (!paramBoolean1) && (!paramBoolean2);
  }
  
  private DecorToolbar b(View paramView)
  {
    if ((paramView instanceof DecorToolbar)) {
      return (DecorToolbar)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Can't make a decor toolbar out of ");
    if (paramView != null) {
      paramView = paramView.getClass().getSimpleName();
    } else {
      paramView = "null";
    }
    localStringBuilder.append(paramView);
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  private void b(boolean paramBoolean)
  {
    if (a(l, m, G))
    {
      if (!H)
      {
        H = true;
        doShow(paramBoolean);
      }
    }
    else if (H)
    {
      H = false;
      doHide(paramBoolean);
    }
  }
  
  private void c()
  {
    if (g != null) {
      return;
    }
    ScrollingTabContainerView localScrollingTabContainerView = new ScrollingTabContainerView(a);
    if (E)
    {
      localScrollingTabContainerView.setVisibility(0);
      d.setEmbeddedTabView(localScrollingTabContainerView);
    }
    else
    {
      if (getNavigationMode() == 2)
      {
        localScrollingTabContainerView.setVisibility(0);
        if (b != null) {
          ViewCompat.requestApplyInsets(b);
        }
      }
      else
      {
        localScrollingTabContainerView.setVisibility(8);
      }
      c.setTabContainer(localScrollingTabContainerView);
    }
    g = localScrollingTabContainerView;
  }
  
  private void d()
  {
    if (z != null) {
      selectTab(null);
    }
    y.clear();
    if (g != null) {
      g.removeAllTabs();
    }
    A = -1;
  }
  
  private void e()
  {
    if (!G)
    {
      G = true;
      if (b != null) {
        b.setShowingForActionMode(true);
      }
      b(false);
    }
  }
  
  private void f()
  {
    if (G)
    {
      G = false;
      if (b != null) {
        b.setShowingForActionMode(false);
      }
      b(false);
    }
  }
  
  private boolean g()
  {
    return ViewCompat.isLaidOut(c);
  }
  
  public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    D.add(paramOnMenuVisibilityListener);
  }
  
  public void addTab(ActionBar.Tab paramTab)
  {
    addTab(paramTab, y.isEmpty());
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt)
  {
    addTab(paramTab, paramInt, y.isEmpty());
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    c();
    g.addTab(paramTab, paramInt, paramBoolean);
    a(paramTab, paramInt);
    if (paramBoolean) {
      selectTab(paramTab);
    }
  }
  
  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    c();
    g.addTab(paramTab, paramBoolean);
    a(paramTab, y.size());
    if (paramBoolean) {
      selectTab(paramTab);
    }
  }
  
  public void animateToMode(boolean paramBoolean)
  {
    if (paramBoolean) {
      e();
    } else {
      f();
    }
    if (g())
    {
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat2;
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat1;
      if (paramBoolean)
      {
        localViewPropertyAnimatorCompat2 = d.setupAnimatorToVisibility(4, 100L);
        localViewPropertyAnimatorCompat1 = e.setupAnimatorToVisibility(0, 200L);
      }
      else
      {
        localViewPropertyAnimatorCompat1 = d.setupAnimatorToVisibility(0, 200L);
        localViewPropertyAnimatorCompat2 = e.setupAnimatorToVisibility(8, 100L);
      }
      ViewPropertyAnimatorCompatSet localViewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
      localViewPropertyAnimatorCompatSet.playSequentially(localViewPropertyAnimatorCompat2, localViewPropertyAnimatorCompat1);
      localViewPropertyAnimatorCompatSet.start();
      return;
    }
    if (paramBoolean)
    {
      d.setVisibility(4);
      e.setVisibility(0);
      return;
    }
    d.setVisibility(0);
    e.setVisibility(8);
  }
  
  void b()
  {
    if (j != null)
    {
      j.onDestroyActionMode(i);
      i = null;
      j = null;
    }
  }
  
  public boolean collapseActionView()
  {
    if ((d != null) && (d.hasExpandedActionView()))
    {
      d.collapseActionView();
      return true;
    }
    return false;
  }
  
  public void dispatchMenuVisibilityChanged(boolean paramBoolean)
  {
    if (paramBoolean == C) {
      return;
    }
    C = paramBoolean;
    int i2 = D.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((ActionBar.OnMenuVisibilityListener)D.get(i1)).onMenuVisibilityChanged(paramBoolean);
      i1 += 1;
    }
  }
  
  public void doHide(boolean paramBoolean)
  {
    if (n != null) {
      n.cancel();
    }
    if ((F == 0) && ((I) || (paramBoolean)))
    {
      c.setAlpha(1.0F);
      c.setTransitioning(true);
      ViewPropertyAnimatorCompatSet localViewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
      float f2 = -c.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp80_78 = localObject;
        tmp80_78[0] = 0;
        Object tmp84_80 = tmp80_78;
        tmp84_80[1] = 0;
        tmp84_80;
        c.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      Object localObject = ViewCompat.animate(c).translationY(f1);
      ((ViewPropertyAnimatorCompat)localObject).setUpdateListener(r);
      localViewPropertyAnimatorCompatSet.play((ViewPropertyAnimatorCompat)localObject);
      if ((k) && (f != null)) {
        localViewPropertyAnimatorCompatSet.play(ViewCompat.animate(f).translationY(f1));
      }
      localViewPropertyAnimatorCompatSet.setInterpolator(t);
      localViewPropertyAnimatorCompatSet.setDuration(250L);
      localViewPropertyAnimatorCompatSet.setListener(p);
      n = localViewPropertyAnimatorCompatSet;
      localViewPropertyAnimatorCompatSet.start();
      return;
    }
    p.onAnimationEnd(null);
  }
  
  public void doShow(boolean paramBoolean)
  {
    if (n != null) {
      n.cancel();
    }
    c.setVisibility(0);
    if ((F == 0) && ((I) || (paramBoolean)))
    {
      c.setTranslationY(0.0F);
      float f2 = -c.getHeight();
      float f1 = f2;
      if (paramBoolean)
      {
        localObject = new int[2];
        Object tmp71_69 = localObject;
        tmp71_69[0] = 0;
        Object tmp75_71 = tmp71_69;
        tmp75_71[1] = 0;
        tmp75_71;
        c.getLocationInWindow((int[])localObject);
        f1 = f2 - localObject[1];
      }
      c.setTranslationY(f1);
      Object localObject = new ViewPropertyAnimatorCompatSet();
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = ViewCompat.animate(c).translationY(0.0F);
      localViewPropertyAnimatorCompat.setUpdateListener(r);
      ((ViewPropertyAnimatorCompatSet)localObject).play(localViewPropertyAnimatorCompat);
      if ((k) && (f != null))
      {
        f.setTranslationY(f1);
        ((ViewPropertyAnimatorCompatSet)localObject).play(ViewCompat.animate(f).translationY(0.0F));
      }
      ((ViewPropertyAnimatorCompatSet)localObject).setInterpolator(u);
      ((ViewPropertyAnimatorCompatSet)localObject).setDuration(250L);
      ((ViewPropertyAnimatorCompatSet)localObject).setListener(q);
      n = ((ViewPropertyAnimatorCompatSet)localObject);
      ((ViewPropertyAnimatorCompatSet)localObject).start();
    }
    else
    {
      c.setAlpha(1.0F);
      c.setTranslationY(0.0F);
      if ((k) && (f != null)) {
        f.setTranslationY(0.0F);
      }
      q.onAnimationEnd(null);
    }
    if (b != null) {
      ViewCompat.requestApplyInsets(b);
    }
  }
  
  public void enableContentAnimations(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public View getCustomView()
  {
    return d.getCustomView();
  }
  
  public int getDisplayOptions()
  {
    return d.getDisplayOptions();
  }
  
  public float getElevation()
  {
    return ViewCompat.getElevation(c);
  }
  
  public int getHeight()
  {
    return c.getHeight();
  }
  
  public int getHideOffset()
  {
    return b.getActionBarHideOffset();
  }
  
  public int getNavigationItemCount()
  {
    switch (d.getNavigationMode())
    {
    default: 
      return 0;
    case 2: 
      return y.size();
    }
    return d.getDropdownItemCount();
  }
  
  public int getNavigationMode()
  {
    return d.getNavigationMode();
  }
  
  public int getSelectedNavigationIndex()
  {
    int i2 = d.getNavigationMode();
    int i1 = -1;
    switch (i2)
    {
    default: 
      return -1;
    case 2: 
      if (z != null) {
        i1 = z.getPosition();
      }
      return i1;
    }
    return d.getDropdownSelectedPosition();
  }
  
  public ActionBar.Tab getSelectedTab()
  {
    return z;
  }
  
  public CharSequence getSubtitle()
  {
    return d.getSubtitle();
  }
  
  public ActionBar.Tab getTabAt(int paramInt)
  {
    return (ActionBar.Tab)y.get(paramInt);
  }
  
  public int getTabCount()
  {
    return y.size();
  }
  
  public Context getThemedContext()
  {
    if (v == null)
    {
      TypedValue localTypedValue = new TypedValue();
      a.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
      int i1 = resourceId;
      if (i1 != 0) {
        v = new ContextThemeWrapper(a, i1);
      } else {
        v = a;
      }
    }
    return v;
  }
  
  public CharSequence getTitle()
  {
    return d.getTitle();
  }
  
  public boolean hasIcon()
  {
    return d.hasIcon();
  }
  
  public boolean hasLogo()
  {
    return d.hasLogo();
  }
  
  public void hide()
  {
    if (!l)
    {
      l = true;
      b(false);
    }
  }
  
  public void hideForSystem()
  {
    if (!m)
    {
      m = true;
      b(true);
    }
  }
  
  public boolean isHideOnContentScrollEnabled()
  {
    return b.isHideOnContentScrollEnabled();
  }
  
  public boolean isShowing()
  {
    int i1 = getHeight();
    return (H) && ((i1 == 0) || (getHideOffset() < i1));
  }
  
  public boolean isTitleTruncated()
  {
    return (d != null) && (d.isTitleTruncated());
  }
  
  public ActionBar.Tab newTab()
  {
    return new TabImpl();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    a(ActionBarPolicy.get(a).hasEmbeddedTabs());
  }
  
  public void onContentScrollStarted()
  {
    if (n != null)
    {
      n.cancel();
      n = null;
    }
  }
  
  public void onContentScrollStopped() {}
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    if (h == null) {
      return false;
    }
    Menu localMenu = h.getMenu();
    if (localMenu != null)
    {
      if (paramKeyEvent != null) {
        i1 = paramKeyEvent.getDeviceId();
      } else {
        i1 = -1;
      }
      int i1 = KeyCharacterMap.load(i1).getKeyboardType();
      boolean bool = true;
      if (i1 == 1) {
        bool = false;
      }
      localMenu.setQwertyMode(bool);
      return localMenu.performShortcut(paramInt, paramKeyEvent, 0);
    }
    return false;
  }
  
  public void onWindowVisibilityChanged(int paramInt)
  {
    F = paramInt;
  }
  
  public void removeAllTabs()
  {
    d();
  }
  
  public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    D.remove(paramOnMenuVisibilityListener);
  }
  
  public void removeTab(ActionBar.Tab paramTab)
  {
    removeTabAt(paramTab.getPosition());
  }
  
  public void removeTabAt(int paramInt)
  {
    if (g == null) {
      return;
    }
    int i1;
    if (z != null) {
      i1 = z.getPosition();
    } else {
      i1 = A;
    }
    g.removeTabAt(paramInt);
    TabImpl localTabImpl = (TabImpl)y.remove(paramInt);
    if (localTabImpl != null) {
      localTabImpl.setPosition(-1);
    }
    int i3 = y.size();
    int i2 = paramInt;
    while (i2 < i3)
    {
      ((TabImpl)y.get(i2)).setPosition(i2);
      i2 += 1;
    }
    if (i1 == paramInt)
    {
      if (y.isEmpty()) {
        localTabImpl = null;
      } else {
        localTabImpl = (TabImpl)y.get(Math.max(0, paramInt - 1));
      }
      selectTab(localTabImpl);
    }
  }
  
  public boolean requestFocus()
  {
    ViewGroup localViewGroup = d.getViewGroup();
    if ((localViewGroup != null) && (!localViewGroup.hasFocus()))
    {
      localViewGroup.requestFocus();
      return true;
    }
    return false;
  }
  
  public void selectTab(ActionBar.Tab paramTab)
  {
    int i2 = getNavigationMode();
    int i1 = -1;
    if (i2 != 2)
    {
      if (paramTab != null) {
        i1 = paramTab.getPosition();
      }
      A = i1;
      return;
    }
    FragmentTransaction localFragmentTransaction;
    if (((w instanceof FragmentActivity)) && (!d.getViewGroup().isInEditMode())) {
      localFragmentTransaction = ((FragmentActivity)w).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
    } else {
      localFragmentTransaction = null;
    }
    if (z == paramTab)
    {
      if (z != null)
      {
        z.getCallback().onTabReselected(z, localFragmentTransaction);
        g.animateToTab(paramTab.getPosition());
      }
    }
    else
    {
      ScrollingTabContainerView localScrollingTabContainerView = g;
      if (paramTab != null) {
        i1 = paramTab.getPosition();
      }
      localScrollingTabContainerView.setTabSelected(i1);
      if (z != null) {
        z.getCallback().onTabUnselected(z, localFragmentTransaction);
      }
      z = ((TabImpl)paramTab);
      if (z != null) {
        z.getCallback().onTabSelected(z, localFragmentTransaction);
      }
    }
    if ((localFragmentTransaction != null) && (!localFragmentTransaction.isEmpty())) {
      localFragmentTransaction.commit();
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    c.setPrimaryBackground(paramDrawable);
  }
  
  public void setCustomView(int paramInt)
  {
    setCustomView(LayoutInflater.from(getThemedContext()).inflate(paramInt, d.getViewGroup(), false));
  }
  
  public void setCustomView(View paramView)
  {
    d.setCustomView(paramView);
  }
  
  public void setCustomView(View paramView, ActionBar.LayoutParams paramLayoutParams)
  {
    paramView.setLayoutParams(paramLayoutParams);
    d.setCustomView(paramView);
  }
  
  public void setDefaultDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    if (!B) {
      setDisplayHomeAsUpEnabled(paramBoolean);
    }
  }
  
  public void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean) {
      i1 = 4;
    } else {
      i1 = 0;
    }
    setDisplayOptions(i1, 4);
  }
  
  public void setDisplayOptions(int paramInt)
  {
    if ((paramInt & 0x4) != 0) {
      B = true;
    }
    d.setDisplayOptions(paramInt);
  }
  
  public void setDisplayOptions(int paramInt1, int paramInt2)
  {
    int i1 = d.getDisplayOptions();
    if ((paramInt2 & 0x4) != 0) {
      B = true;
    }
    d.setDisplayOptions(paramInt1 & paramInt2 | paramInt2 & i1);
  }
  
  public void setDisplayShowCustomEnabled(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean) {
      i1 = 16;
    } else {
      i1 = 0;
    }
    setDisplayOptions(i1, 16);
  }
  
  public void setDisplayShowHomeEnabled(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean) {
      i1 = 2;
    } else {
      i1 = 0;
    }
    setDisplayOptions(i1, 2);
  }
  
  public void setDisplayShowTitleEnabled(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean) {
      i1 = 8;
    } else {
      i1 = 0;
    }
    setDisplayOptions(i1, 8);
  }
  
  public void setDisplayUseLogoEnabled(boolean paramBoolean)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public void setElevation(float paramFloat)
  {
    ViewCompat.setElevation(c, paramFloat);
  }
  
  public void setHideOffset(int paramInt)
  {
    if ((paramInt != 0) && (!b.isInOverlayMode())) {
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
    }
    b.setActionBarHideOffset(paramInt);
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if ((paramBoolean) && (!b.isInOverlayMode())) {
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }
    o = paramBoolean;
    b.setHideOnContentScrollEnabled(paramBoolean);
  }
  
  public void setHomeActionContentDescription(int paramInt)
  {
    d.setNavigationContentDescription(paramInt);
  }
  
  public void setHomeActionContentDescription(CharSequence paramCharSequence)
  {
    d.setNavigationContentDescription(paramCharSequence);
  }
  
  public void setHomeAsUpIndicator(int paramInt)
  {
    d.setNavigationIcon(paramInt);
  }
  
  public void setHomeAsUpIndicator(Drawable paramDrawable)
  {
    d.setNavigationIcon(paramDrawable);
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    d.setHomeButtonEnabled(paramBoolean);
  }
  
  public void setIcon(int paramInt)
  {
    d.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    d.setIcon(paramDrawable);
  }
  
  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    d.setDropdownParams(paramSpinnerAdapter, new b(paramOnNavigationListener));
  }
  
  public void setLogo(int paramInt)
  {
    d.setLogo(paramInt);
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    d.setLogo(paramDrawable);
  }
  
  public void setNavigationMode(int paramInt)
  {
    int i1 = d.getNavigationMode();
    if (i1 == 2)
    {
      A = getSelectedNavigationIndex();
      selectTab(null);
      g.setVisibility(8);
    }
    if ((i1 != paramInt) && (!E) && (b != null)) {
      ViewCompat.requestApplyInsets(b);
    }
    d.setNavigationMode(paramInt);
    boolean bool2 = false;
    if (paramInt == 2)
    {
      c();
      g.setVisibility(0);
      if (A != -1)
      {
        setSelectedNavigationItem(A);
        A = -1;
      }
    }
    Object localObject = d;
    if ((paramInt == 2) && (!E)) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    ((DecorToolbar)localObject).setCollapsible(bool1);
    localObject = b;
    boolean bool1 = bool2;
    if (paramInt == 2)
    {
      bool1 = bool2;
      if (!E) {
        bool1 = true;
      }
    }
    ((ActionBarOverlayLayout)localObject).setHasNonEmbeddedTabs(bool1);
  }
  
  public void setSelectedNavigationItem(int paramInt)
  {
    switch (d.getNavigationMode())
    {
    default: 
      throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
    case 2: 
      selectTab((ActionBar.Tab)y.get(paramInt));
      return;
    }
    d.setDropdownSelectedPosition(paramInt);
  }
  
  public void setShowHideAnimationEnabled(boolean paramBoolean)
  {
    I = paramBoolean;
    if ((!paramBoolean) && (n != null)) {
      n.cancel();
    }
  }
  
  public void setSplitBackgroundDrawable(Drawable paramDrawable) {}
  
  public void setStackedBackgroundDrawable(Drawable paramDrawable)
  {
    c.setStackedBackground(paramDrawable);
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(a.getString(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    d.setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(a.getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    d.setTitle(paramCharSequence);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    d.setWindowTitle(paramCharSequence);
  }
  
  public void show()
  {
    if (l)
    {
      l = false;
      b(false);
    }
  }
  
  public void showForSystem()
  {
    if (m)
    {
      m = false;
      b(true);
    }
  }
  
  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    if (h != null) {
      h.finish();
    }
    b.setHideOnContentScrollEnabled(false);
    e.killMode();
    paramCallback = new ActionModeImpl(e.getContext(), paramCallback);
    if (paramCallback.dispatchOnCreate())
    {
      h = paramCallback;
      paramCallback.invalidate();
      e.initForMode(paramCallback);
      animateToMode(true);
      e.sendAccessibilityEvent(32);
      return paramCallback;
    }
    return null;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public class ActionModeImpl
    extends ActionMode
    implements MenuBuilder.Callback
  {
    private final Context b;
    private final MenuBuilder c;
    private ActionMode.Callback d;
    private WeakReference<View> e;
    
    public ActionModeImpl(Context paramContext, ActionMode.Callback paramCallback)
    {
      b = paramContext;
      d = paramCallback;
      c = new MenuBuilder(paramContext).setDefaultShowAsAction(1);
      c.setCallback(this);
    }
    
    public boolean dispatchOnCreate()
    {
      c.stopDispatchingItemsChanged();
      try
      {
        boolean bool = d.onCreateActionMode(this, c);
        return bool;
      }
      finally
      {
        c.startDispatchingItemsChanged();
      }
    }
    
    public void finish()
    {
      if (h != this) {
        return;
      }
      if (!WindowDecorActionBar.a(l, m, false))
      {
        i = this;
        j = d;
      }
      else
      {
        d.onDestroyActionMode(this);
      }
      d = null;
      animateToMode(false);
      e.closeMode();
      d.getViewGroup().sendAccessibilityEvent(32);
      b.setHideOnContentScrollEnabled(o);
      h = null;
    }
    
    public View getCustomView()
    {
      if (e != null) {
        return (View)e.get();
      }
      return null;
    }
    
    public Menu getMenu()
    {
      return c;
    }
    
    public MenuInflater getMenuInflater()
    {
      return new SupportMenuInflater(b);
    }
    
    public CharSequence getSubtitle()
    {
      return e.getSubtitle();
    }
    
    public CharSequence getTitle()
    {
      return e.getTitle();
    }
    
    public void invalidate()
    {
      if (h != this) {
        return;
      }
      c.stopDispatchingItemsChanged();
      try
      {
        d.onPrepareActionMode(this, c);
        return;
      }
      finally
      {
        c.startDispatchingItemsChanged();
      }
    }
    
    public boolean isTitleOptional()
    {
      return e.isTitleOptional();
    }
    
    public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
    
    public void onCloseSubMenu(SubMenuBuilder paramSubMenuBuilder) {}
    
    public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
    {
      if (d != null) {
        return d.onActionItemClicked(this, paramMenuItem);
      }
      return false;
    }
    
    public void onMenuModeChange(MenuBuilder paramMenuBuilder)
    {
      if (d == null) {
        return;
      }
      invalidate();
      e.showOverflowMenu();
    }
    
    public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
    {
      if (d == null) {
        return false;
      }
      if (!paramSubMenuBuilder.hasVisibleItems()) {
        return true;
      }
      new MenuPopupHelper(getThemedContext(), paramSubMenuBuilder).show();
      return true;
    }
    
    public void setCustomView(View paramView)
    {
      e.setCustomView(paramView);
      e = new WeakReference(paramView);
    }
    
    public void setSubtitle(int paramInt)
    {
      setSubtitle(a.getResources().getString(paramInt));
    }
    
    public void setSubtitle(CharSequence paramCharSequence)
    {
      e.setSubtitle(paramCharSequence);
    }
    
    public void setTitle(int paramInt)
    {
      setTitle(a.getResources().getString(paramInt));
    }
    
    public void setTitle(CharSequence paramCharSequence)
    {
      e.setTitle(paramCharSequence);
    }
    
    public void setTitleOptionalHint(boolean paramBoolean)
    {
      super.setTitleOptionalHint(paramBoolean);
      e.setTitleOptional(paramBoolean);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public class TabImpl
    extends ActionBar.Tab
  {
    private ActionBar.TabListener b;
    private Object c;
    private Drawable d;
    private CharSequence e;
    private CharSequence f;
    private int g = -1;
    private View h;
    
    public TabImpl() {}
    
    public ActionBar.TabListener getCallback()
    {
      return b;
    }
    
    public CharSequence getContentDescription()
    {
      return f;
    }
    
    public View getCustomView()
    {
      return h;
    }
    
    public Drawable getIcon()
    {
      return d;
    }
    
    public int getPosition()
    {
      return g;
    }
    
    public Object getTag()
    {
      return c;
    }
    
    public CharSequence getText()
    {
      return e;
    }
    
    public void select()
    {
      selectTab(this);
    }
    
    public ActionBar.Tab setContentDescription(int paramInt)
    {
      return setContentDescription(a.getResources().getText(paramInt));
    }
    
    public ActionBar.Tab setContentDescription(CharSequence paramCharSequence)
    {
      f = paramCharSequence;
      if (g >= 0) {
        g.updateTab(g);
      }
      return this;
    }
    
    public ActionBar.Tab setCustomView(int paramInt)
    {
      return setCustomView(LayoutInflater.from(getThemedContext()).inflate(paramInt, null));
    }
    
    public ActionBar.Tab setCustomView(View paramView)
    {
      h = paramView;
      if (g >= 0) {
        g.updateTab(g);
      }
      return this;
    }
    
    public ActionBar.Tab setIcon(int paramInt)
    {
      return setIcon(AppCompatResources.getDrawable(a, paramInt));
    }
    
    public ActionBar.Tab setIcon(Drawable paramDrawable)
    {
      d = paramDrawable;
      if (g >= 0) {
        g.updateTab(g);
      }
      return this;
    }
    
    public void setPosition(int paramInt)
    {
      g = paramInt;
    }
    
    public ActionBar.Tab setTabListener(ActionBar.TabListener paramTabListener)
    {
      b = paramTabListener;
      return this;
    }
    
    public ActionBar.Tab setTag(Object paramObject)
    {
      c = paramObject;
      return this;
    }
    
    public ActionBar.Tab setText(int paramInt)
    {
      return setText(a.getResources().getText(paramInt));
    }
    
    public ActionBar.Tab setText(CharSequence paramCharSequence)
    {
      e = paramCharSequence;
      if (g >= 0) {
        g.updateTab(g);
      }
      return this;
    }
  }
}
