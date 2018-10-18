package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.Preconditions;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild2;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v7.recyclerview.R.dimen;
import android.support.v7.recyclerview.R.styleable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements NestedScrollingChild2, ScrollingView
{
  public static final int HORIZONTAL = 0;
  public static final int INVALID_TYPE = -1;
  static final Interpolator L = new Interpolator()
  {
    public float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat + 1.0F;
    }
  };
  private static final int[] M = { 16843830 };
  private static final int[] N = { 16842987 };
  public static final long NO_ID = -1L;
  public static final int NO_POSITION = -1;
  private static final boolean O;
  private static final boolean P;
  private static final Class<?>[] Q;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  public static final int TOUCH_SLOP_DEFAULT = 0;
  public static final int TOUCH_SLOP_PAGING = 1;
  public static final int VERTICAL = 1;
  static final boolean a;
  static final boolean b;
  static final boolean c;
  static final boolean d;
  final d A;
  t B;
  t.a C;
  final State D;
  boolean E;
  boolean F;
  boolean G;
  RecyclerViewAccessibilityDelegate H;
  final int[] I;
  final int[] J;
  @VisibleForTesting
  final List<ViewHolder> K;
  private final c R = new c();
  private SavedState S;
  private final Rect T = new Rect();
  private final ArrayList<OnItemTouchListener> U = new ArrayList();
  private OnItemTouchListener V;
  private int W = 0;
  private List<OnScrollListener> aA;
  private RecyclerView.ItemAnimator.a aB;
  private ChildDrawingOrderCallback aC;
  private final int[] aD;
  private NestedScrollingChildHelper aE;
  private final int[] aF;
  private final int[] aG;
  private Runnable aH;
  private final ah.b aI;
  private boolean aa;
  private int ab;
  private final AccessibilityManager ac;
  private List<OnChildAttachStateChangeListener> ad;
  private int ae = 0;
  private int af = 0;
  @NonNull
  private EdgeEffectFactory ag = new EdgeEffectFactory();
  private EdgeEffect ah;
  private EdgeEffect ai;
  private EdgeEffect aj;
  private EdgeEffect ak;
  private int al = 0;
  private int am = -1;
  private VelocityTracker an;
  private int ao;
  private int ap;
  private int aq;
  private int ar;
  private int as;
  private OnFlingListener at;
  private final int au;
  private final int av;
  private float aw = Float.MIN_VALUE;
  private float ax = Float.MIN_VALUE;
  private boolean ay;
  private OnScrollListener az;
  final Recycler e = new Recycler();
  c f;
  q g;
  final ah h = new ah();
  boolean i;
  final Runnable j = new Runnable()
  {
    public void run()
    {
      if (t)
      {
        if (isLayoutRequested()) {
          return;
        }
        if (!q)
        {
          requestLayout();
          return;
        }
        if (v)
        {
          u = true;
          return;
        }
        d();
        return;
      }
    }
  };
  final Rect k = new Rect();
  final RectF l = new RectF();
  Adapter m;
  @VisibleForTesting
  LayoutManager n;
  RecyclerListener o;
  final ArrayList<ItemDecoration> p = new ArrayList();
  boolean q;
  boolean r;
  boolean s;
  @VisibleForTesting
  boolean t;
  boolean u;
  boolean v;
  boolean w;
  boolean x = false;
  boolean y = false;
  ItemAnimator z = new DefaultItemAnimator();
  
  static
  {
    boolean bool;
    if ((Build.VERSION.SDK_INT != 18) && (Build.VERSION.SDK_INT != 19) && (Build.VERSION.SDK_INT != 20)) {
      bool = false;
    } else {
      bool = true;
    }
    a = bool;
    if (Build.VERSION.SDK_INT >= 23) {
      bool = true;
    } else {
      bool = false;
    }
    b = bool;
    if (Build.VERSION.SDK_INT >= 16) {
      bool = true;
    } else {
      bool = false;
    }
    c = bool;
    if (Build.VERSION.SDK_INT >= 21) {
      bool = true;
    } else {
      bool = false;
    }
    d = bool;
    if (Build.VERSION.SDK_INT <= 15) {
      bool = true;
    } else {
      bool = false;
    }
    O = bool;
    if (Build.VERSION.SDK_INT <= 15) {
      bool = true;
    } else {
      bool = false;
    }
    P = bool;
    Q = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
  }
  
  public RecyclerView(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    boolean bool2 = true;
    ay = true;
    A = new d();
    if (d) {
      localObject = new t.a();
    } else {
      localObject = null;
    }
    C = ((t.a)localObject);
    D = new State();
    E = false;
    F = false;
    aB = new b();
    G = false;
    aD = new int[2];
    aF = new int[2];
    I = new int[2];
    aG = new int[2];
    J = new int[2];
    K = new ArrayList();
    aH = new Runnable()
    {
      public void run()
      {
        if (z != null) {
          z.runPendingAnimations();
        }
        G = false;
      }
    };
    aI = new ah.b()
    {
      public void a(RecyclerView.ViewHolder paramAnonymousViewHolder)
      {
        n.removeAndRecycleView(itemView, e);
      }
      
      public void a(RecyclerView.ViewHolder paramAnonymousViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo1, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo2)
      {
        e.c(paramAnonymousViewHolder);
        RecyclerView.this.b(paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2);
      }
      
      public void b(RecyclerView.ViewHolder paramAnonymousViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo2)
      {
        RecyclerView.this.a(paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2);
      }
      
      public void c(RecyclerView.ViewHolder paramAnonymousViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramAnonymousItemHolderInfo2)
      {
        paramAnonymousViewHolder.setIsRecyclable(false);
        if (x)
        {
          if (z.animateChange(paramAnonymousViewHolder, paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2)) {
            n();
          }
        }
        else if (z.animatePersistence(paramAnonymousViewHolder, paramAnonymousItemHolderInfo1, paramAnonymousItemHolderInfo2)) {
          n();
        }
      }
    };
    if (paramAttributeSet != null)
    {
      localObject = paramContext.obtainStyledAttributes(paramAttributeSet, N, paramInt, 0);
      i = ((TypedArray)localObject).getBoolean(0, true);
      ((TypedArray)localObject).recycle();
    }
    else
    {
      i = true;
    }
    setScrollContainer(true);
    setFocusableInTouchMode(true);
    Object localObject = ViewConfiguration.get(paramContext);
    as = ((ViewConfiguration)localObject).getScaledTouchSlop();
    aw = ViewConfigurationCompat.getScaledHorizontalScrollFactor((ViewConfiguration)localObject, paramContext);
    ax = ViewConfigurationCompat.getScaledVerticalScrollFactor((ViewConfiguration)localObject, paramContext);
    au = ((ViewConfiguration)localObject).getScaledMinimumFlingVelocity();
    av = ((ViewConfiguration)localObject).getScaledMaximumFlingVelocity();
    boolean bool1;
    if (getOverScrollMode() == 2) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    setWillNotDraw(bool1);
    z.a(aB);
    b();
    w();
    v();
    if (ViewCompat.getImportantForAccessibility(this) == 0) {
      ViewCompat.setImportantForAccessibility(this, 1);
    }
    ac = ((AccessibilityManager)getContext().getSystemService("accessibility"));
    setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
    if (paramAttributeSet != null)
    {
      localObject = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt, 0);
      String str = ((TypedArray)localObject).getString(R.styleable.RecyclerView_layoutManager);
      if (((TypedArray)localObject).getInt(R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
        setDescendantFocusability(262144);
      }
      s = ((TypedArray)localObject).getBoolean(R.styleable.RecyclerView_fastScrollEnabled, false);
      if (s) {
        a((StateListDrawable)((TypedArray)localObject).getDrawable(R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), ((TypedArray)localObject).getDrawable(R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable)((TypedArray)localObject).getDrawable(R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), ((TypedArray)localObject).getDrawable(R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
      }
      ((TypedArray)localObject).recycle();
      a(paramContext, str, paramAttributeSet, paramInt, 0);
      bool1 = bool2;
      if (Build.VERSION.SDK_INT >= 21)
      {
        paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, M, paramInt, 0);
        bool1 = paramContext.getBoolean(0, true);
        paramContext.recycle();
      }
    }
    else
    {
      setDescendantFocusability(262144);
      bool1 = bool2;
    }
    setNestedScrollingEnabled(bool1);
  }
  
  private void A()
  {
    if (an != null) {
      an.clear();
    }
    stopNestedScroll(0);
    z();
  }
  
  private void B()
  {
    A();
    setScrollState(0);
  }
  
  private void C()
  {
    int i1 = ab;
    ab = 0;
    if ((i1 != 0) && (m()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(2048);
      AccessibilityEventCompat.setContentChangeTypes(localAccessibilityEvent, i1);
      sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  private boolean D()
  {
    return (z != null) && (n.supportsPredictiveItemAnimations());
  }
  
  private void E()
  {
    if (x)
    {
      f.a();
      if (y) {
        n.onItemsChanged(this);
      }
    }
    if (D()) {
      f.b();
    } else {
      f.e();
    }
    boolean bool1 = E;
    boolean bool2 = false;
    int i1;
    if ((!bool1) && (!F)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    State localState = D;
    if ((t) && (z != null) && ((x) || (i1 != 0) || (n.u)) && ((!x) || (m.hasStableIds()))) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    j = bool1;
    localState = D;
    bool1 = bool2;
    if (D.j)
    {
      bool1 = bool2;
      if (i1 != 0)
      {
        bool1 = bool2;
        if (!x)
        {
          bool1 = bool2;
          if (D()) {
            bool1 = true;
          }
        }
      }
    }
    k = bool1;
  }
  
  private void F()
  {
    boolean bool = ay;
    State localState = null;
    Object localObject;
    if ((bool) && (hasFocus()) && (m != null)) {
      localObject = getFocusedChild();
    } else {
      localObject = null;
    }
    if (localObject == null) {
      localObject = localState;
    } else {
      localObject = findContainingViewHolder((View)localObject);
    }
    if (localObject == null)
    {
      G();
      return;
    }
    localState = D;
    long l1;
    if (m.hasStableIds()) {
      l1 = ((ViewHolder)localObject).getItemId();
    } else {
      l1 = -1L;
    }
    m = l1;
    localState = D;
    int i1;
    if (x) {
      i1 = -1;
    } else if (((ViewHolder)localObject).m()) {
      i1 = c;
    } else {
      i1 = ((ViewHolder)localObject).getAdapterPosition();
    }
    l = i1;
    D.n = g(itemView);
  }
  
  private void G()
  {
    D.m = -1L;
    D.l = -1;
    D.n = -1;
  }
  
  @Nullable
  private View H()
  {
    if (D.l != -1) {
      i1 = D.l;
    } else {
      i1 = 0;
    }
    int i3 = D.getItemCount();
    int i2 = i1;
    ViewHolder localViewHolder;
    while (i2 < i3)
    {
      localViewHolder = findViewHolderForAdapterPosition(i2);
      if (localViewHolder == null) {
        break;
      }
      if (itemView.hasFocusable()) {
        return itemView;
      }
      i2 += 1;
    }
    int i1 = Math.min(i3, i1) - 1;
    while (i1 >= 0)
    {
      localViewHolder = findViewHolderForAdapterPosition(i1);
      if (localViewHolder == null) {
        return null;
      }
      if (itemView.hasFocusable()) {
        return itemView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  private void I()
  {
    if ((ay) && (m != null) && (hasFocus()) && (getDescendantFocusability() != 393216))
    {
      if ((getDescendantFocusability() == 131072) && (isFocused())) {
        return;
      }
      Object localObject;
      if (!isFocused())
      {
        localObject = getFocusedChild();
        if ((P) && ((((View)localObject).getParent() == null) || (!((View)localObject).hasFocus())))
        {
          if (g.b() == 0) {
            requestFocus();
          }
        }
        else if (!g.c((View)localObject)) {
          return;
        }
      }
      long l1 = D.m;
      View localView = null;
      if ((l1 != -1L) && (m.hasStableIds())) {
        localObject = findViewHolderForItemId(D.m);
      } else {
        localObject = null;
      }
      if ((localObject != null) && (!g.c(itemView)) && (itemView.hasFocusable()))
      {
        localObject = itemView;
      }
      else
      {
        localObject = localView;
        if (g.b() > 0) {
          localObject = H();
        }
      }
      if (localObject != null)
      {
        if (D.n != -1L)
        {
          localView = ((View)localObject).findViewById(D.n);
          if ((localView != null) && (localView.isFocusable())) {
            localObject = localView;
          }
        }
        ((View)localObject).requestFocus();
      }
      return;
    }
  }
  
  private void J()
  {
    Object localObject = D;
    boolean bool = true;
    ((State)localObject).a(1);
    a(D);
    D.i = false;
    e();
    h.a();
    k();
    E();
    F();
    localObject = D;
    if ((!D.j) || (!F)) {
      bool = false;
    }
    h = bool;
    F = false;
    E = false;
    D.g = D.k;
    D.e = m.getItemCount();
    a(aD);
    int i2;
    int i1;
    RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo;
    if (D.j)
    {
      i2 = g.b();
      i1 = 0;
      while (i1 < i2)
      {
        localObject = b(g.b(i1));
        if ((!((ViewHolder)localObject).c()) && ((!((ViewHolder)localObject).j()) || (m.hasStableIds())))
        {
          localItemHolderInfo = z.recordPreLayoutInformation(D, (ViewHolder)localObject, ItemAnimator.b((ViewHolder)localObject), ((ViewHolder)localObject).q());
          h.a((ViewHolder)localObject, localItemHolderInfo);
          if ((D.h) && (((ViewHolder)localObject).u()) && (!((ViewHolder)localObject).m()) && (!((ViewHolder)localObject).c()) && (!((ViewHolder)localObject).j()))
          {
            long l1 = a((ViewHolder)localObject);
            h.a(l1, (ViewHolder)localObject);
          }
        }
        i1 += 1;
      }
    }
    if (D.k)
    {
      q();
      bool = D.f;
      D.f = false;
      n.onLayoutChildren(e, D);
      D.f = bool;
      i1 = 0;
      while (i1 < g.b())
      {
        localObject = b(g.b(i1));
        if ((!((ViewHolder)localObject).c()) && (!h.d((ViewHolder)localObject)))
        {
          int i3 = ItemAnimator.b((ViewHolder)localObject);
          bool = ((ViewHolder)localObject).a(8192);
          i2 = i3;
          if (!bool) {
            i2 = i3 | 0x1000;
          }
          localItemHolderInfo = z.recordPreLayoutInformation(D, (ViewHolder)localObject, i2, ((ViewHolder)localObject).q());
          if (bool) {
            a((ViewHolder)localObject, localItemHolderInfo);
          } else {
            h.b((ViewHolder)localObject, localItemHolderInfo);
          }
        }
        i1 += 1;
      }
      r();
    }
    else
    {
      r();
    }
    l();
    a(false);
    D.d = 2;
  }
  
  private void K()
  {
    e();
    k();
    D.a(6);
    f.e();
    D.e = m.getItemCount();
    D.c = 0;
    D.g = false;
    n.onLayoutChildren(e, D);
    D.f = false;
    S = null;
    State localState = D;
    boolean bool;
    if ((D.j) && (z != null)) {
      bool = true;
    } else {
      bool = false;
    }
    j = bool;
    D.d = 4;
    l();
    a(false);
  }
  
  private void L()
  {
    D.a(4);
    e();
    k();
    D.d = 1;
    if (D.j)
    {
      int i1 = g.b() - 1;
      while (i1 >= 0)
      {
        ViewHolder localViewHolder1 = b(g.b(i1));
        if (!localViewHolder1.c())
        {
          long l1 = a(localViewHolder1);
          RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo2 = z.recordPostLayoutInformation(D, localViewHolder1);
          ViewHolder localViewHolder2 = h.a(l1);
          if ((localViewHolder2 != null) && (!localViewHolder2.c()))
          {
            boolean bool1 = h.a(localViewHolder2);
            boolean bool2 = h.a(localViewHolder1);
            if ((bool1) && (localViewHolder2 == localViewHolder1))
            {
              h.c(localViewHolder1, localItemHolderInfo2);
            }
            else
            {
              RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo1 = h.b(localViewHolder2);
              h.c(localViewHolder1, localItemHolderInfo2);
              localItemHolderInfo2 = h.c(localViewHolder1);
              if (localItemHolderInfo1 == null) {
                a(l1, localViewHolder1, localViewHolder2);
              } else {
                a(localViewHolder2, localViewHolder1, localItemHolderInfo1, localItemHolderInfo2, bool1, bool2);
              }
            }
          }
          else
          {
            h.c(localViewHolder1, localItemHolderInfo2);
          }
        }
        i1 -= 1;
      }
      h.a(aI);
    }
    n.a(e);
    D.b = D.e;
    x = false;
    y = false;
    D.j = false;
    D.k = false;
    n.u = false;
    if (e.b != null) {
      e.b.clear();
    }
    if (n.y)
    {
      n.x = 0;
      n.y = false;
      e.a();
    }
    n.onLayoutCompleted(D);
    l();
    a(false);
    h.a();
    if (g(aD[0], aD[1])) {
      f(0, 0);
    }
    I();
    G();
  }
  
  private String a(Context paramContext, String paramString)
  {
    if (paramString.charAt(0) == '.')
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramContext.getPackageName());
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
    }
    if (paramString.contains(".")) {
      return paramString;
    }
    paramContext = new StringBuilder();
    paramContext.append(RecyclerView.class.getPackage().getName());
    paramContext.append('.');
    paramContext.append(paramString);
    return paramContext.toString();
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i2 = 1;
    if (paramFloat2 < 0.0F)
    {
      f();
      EdgeEffectCompat.onPull(ah, -paramFloat2 / getWidth(), 1.0F - paramFloat3 / getHeight());
    }
    for (;;)
    {
      i1 = 1;
      break label80;
      if (paramFloat2 <= 0.0F) {
        break;
      }
      g();
      EdgeEffectCompat.onPull(aj, paramFloat2 / getWidth(), paramFloat3 / getHeight());
    }
    int i1 = 0;
    label80:
    if (paramFloat4 < 0.0F)
    {
      h();
      EdgeEffectCompat.onPull(ai, -paramFloat4 / getHeight(), paramFloat1 / getWidth());
      i1 = i2;
    }
    else if (paramFloat4 > 0.0F)
    {
      i();
      EdgeEffectCompat.onPull(ak, paramFloat4 / getHeight(), 1.0F - paramFloat1 / getWidth());
      i1 = i2;
    }
    if ((i1 != 0) || (paramFloat2 != 0.0F) || (paramFloat4 != 0.0F)) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private void a(long paramLong, ViewHolder paramViewHolder1, ViewHolder paramViewHolder2)
  {
    int i2 = g.b();
    int i1 = 0;
    while (i1 < i2)
    {
      localObject = b(g.b(i1));
      if ((localObject != paramViewHolder1) && (a((ViewHolder)localObject) == paramLong))
      {
        if ((m != null) && (m.hasStableIds()))
        {
          paramViewHolder2 = new StringBuilder();
          paramViewHolder2.append("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
          paramViewHolder2.append(localObject);
          paramViewHolder2.append(" \n View Holder 2:");
          paramViewHolder2.append(paramViewHolder1);
          paramViewHolder2.append(a());
          throw new IllegalStateException(paramViewHolder2.toString());
        }
        paramViewHolder2 = new StringBuilder();
        paramViewHolder2.append("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
        paramViewHolder2.append(localObject);
        paramViewHolder2.append(" \n View Holder 2:");
        paramViewHolder2.append(paramViewHolder1);
        paramViewHolder2.append(a());
        throw new IllegalStateException(paramViewHolder2.toString());
      }
      i1 += 1;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Problem while matching changed view holders with the newones. The pre-layout information for the change holder ");
    ((StringBuilder)localObject).append(paramViewHolder2);
    ((StringBuilder)localObject).append(" cannot be found but it is necessary for ");
    ((StringBuilder)localObject).append(paramViewHolder1);
    ((StringBuilder)localObject).append(a());
    Log.e("RecyclerView", ((StringBuilder)localObject).toString());
  }
  
  private void a(Context paramContext, String paramString, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    if (paramString != null)
    {
      paramString = paramString.trim();
      if (!paramString.isEmpty())
      {
        String str = a(paramContext, paramString);
        try
        {
          if (isInEditMode()) {
            paramString = getClass().getClassLoader();
          } else {
            paramString = paramContext.getClassLoader();
          }
          Class localClass = paramString.loadClass(str).asSubclass(LayoutManager.class);
          Object localObject = null;
          try
          {
            paramString = localClass.getConstructor(Q);
            paramContext = new Object[] { paramContext, paramAttributeSet, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) };
          }
          catch (NoSuchMethodException paramContext) {}
          try
          {
            paramString = localClass.getConstructor(new Class[0]);
            paramContext = localObject;
            paramString.setAccessible(true);
            setLayoutManager((LayoutManager)paramString.newInstance(paramContext));
            return;
          }
          catch (NoSuchMethodException paramString)
          {
            paramString.initCause(paramContext);
            paramContext = new StringBuilder();
            paramContext.append(paramAttributeSet.getPositionDescription());
            paramContext.append(": Error creating LayoutManager ");
            paramContext.append(str);
            throw new IllegalStateException(paramContext.toString(), paramString);
          }
          return;
        }
        catch (ClassCastException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Class is not a LayoutManager ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
        catch (IllegalAccessException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Cannot access non-public constructor ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
        catch (InstantiationException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Could not instantiate the LayoutManager: ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
        catch (InvocationTargetException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Could not instantiate the LayoutManager: ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
        catch (ClassNotFoundException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Unable to find LayoutManager ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
      }
    }
  }
  
  private void a(@Nullable Adapter paramAdapter, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (m != null)
    {
      m.unregisterAdapterDataObserver(R);
      m.onDetachedFromRecyclerView(this);
    }
    if ((!paramBoolean1) || (paramBoolean2)) {
      c();
    }
    f.a();
    Adapter localAdapter = m;
    m = paramAdapter;
    if (paramAdapter != null)
    {
      paramAdapter.registerAdapterDataObserver(R);
      paramAdapter.onAttachedToRecyclerView(this);
    }
    if (n != null) {
      n.onAdapterChanged(localAdapter, m);
    }
    e.a(localAdapter, m, paramBoolean1);
    D.f = true;
  }
  
  private void a(@NonNull ViewHolder paramViewHolder1, @NonNull ViewHolder paramViewHolder2, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramViewHolder1.setIsRecyclable(false);
    if (paramBoolean1) {
      e(paramViewHolder1);
    }
    if (paramViewHolder1 != paramViewHolder2)
    {
      if (paramBoolean2) {
        e(paramViewHolder2);
      }
      g = paramViewHolder2;
      e(paramViewHolder1);
      e.c(paramViewHolder1);
      paramViewHolder2.setIsRecyclable(false);
      h = paramViewHolder1;
    }
    if (z.animateChange(paramViewHolder1, paramViewHolder2, paramItemHolderInfo1, paramItemHolderInfo2)) {
      n();
    }
  }
  
  static void a(View paramView, Rect paramRect)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    Rect localRect = d;
    paramRect.set(paramView.getLeft() - left - leftMargin, paramView.getTop() - top - topMargin, paramView.getRight() + right + rightMargin, paramView.getBottom() + bottom + bottomMargin);
  }
  
  private void a(@NonNull View paramView1, @Nullable View paramView2)
  {
    if (paramView2 != null) {
      localObject = paramView2;
    } else {
      localObject = paramView1;
    }
    k.set(0, 0, ((View)localObject).getWidth(), ((View)localObject).getHeight());
    Object localObject = ((View)localObject).getLayoutParams();
    if ((localObject instanceof LayoutParams))
    {
      localObject = (LayoutParams)localObject;
      if (!e)
      {
        localObject = d;
        localRect = k;
        left -= left;
        localRect = k;
        right += right;
        localRect = k;
        top -= top;
        localRect = k;
        bottom += bottom;
      }
    }
    if (paramView2 != null)
    {
      offsetDescendantRectToMyCoords(paramView2, k);
      offsetRectIntoDescendantCoords(paramView1, k);
    }
    localObject = n;
    Rect localRect = k;
    boolean bool2 = t;
    boolean bool1;
    if (paramView2 == null) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    ((LayoutManager)localObject).requestChildRectangleOnScreen(this, paramView1, localRect, bool2 ^ true, bool1);
  }
  
  private void a(int[] paramArrayOfInt)
  {
    int i7 = g.b();
    if (i7 == 0)
    {
      paramArrayOfInt[0] = -1;
      paramArrayOfInt[1] = -1;
      return;
    }
    int i4 = 0;
    int i2 = Integer.MAX_VALUE;
    int i6;
    for (int i3 = Integer.MIN_VALUE; i4 < i7; i3 = i6)
    {
      ViewHolder localViewHolder = b(g.b(i4));
      if (localViewHolder.c())
      {
        i6 = i3;
      }
      else
      {
        int i5 = localViewHolder.getLayoutPosition();
        int i1 = i2;
        if (i5 < i2) {
          i1 = i5;
        }
        i2 = i1;
        i6 = i3;
        if (i5 > i3)
        {
          i6 = i5;
          i2 = i1;
        }
      }
      i4 += 1;
    }
    paramArrayOfInt[0] = i2;
    paramArrayOfInt[1] = i3;
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0)) {
      V = null;
    }
    int i3 = U.size();
    int i1 = 0;
    while (i1 < i3)
    {
      OnItemTouchListener localOnItemTouchListener = (OnItemTouchListener)U.get(i1);
      if ((localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent)) && (i2 != 3))
      {
        V = localOnItemTouchListener;
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private boolean a(View paramView1, View paramView2, int paramInt)
  {
    boolean bool3 = false;
    boolean bool1 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool2 = false;
    if (paramView2 != null)
    {
      if (paramView2 == this) {
        return false;
      }
      if (findContainingItemView(paramView2) == null) {
        return false;
      }
      if (paramView1 == null) {
        return true;
      }
      if (findContainingItemView(paramView1) == null) {
        return true;
      }
      k.set(0, 0, paramView1.getWidth(), paramView1.getHeight());
      T.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      offsetDescendantRectToMyCoords(paramView1, k);
      offsetDescendantRectToMyCoords(paramView2, T);
      int i1 = n.getLayoutDirection();
      int i2 = -1;
      int i3;
      if (i1 == 1) {
        i3 = -1;
      } else {
        i3 = 1;
      }
      if (((k.left < T.left) || (k.right <= T.left)) && (k.right < T.right)) {
        i1 = 1;
      } else if (((k.right > T.right) || (k.left >= T.right)) && (k.left > T.left)) {
        i1 = -1;
      } else {
        i1 = 0;
      }
      if (((k.top < T.top) || (k.bottom <= T.top)) && (k.bottom < T.bottom)) {
        i2 = 1;
      } else if (((k.bottom <= T.bottom) && (k.top < T.bottom)) || (k.top <= T.top)) {
        i2 = 0;
      }
      if (paramInt != 17)
      {
        if (paramInt != 33)
        {
          if (paramInt != 66)
          {
            if (paramInt != 130)
            {
              switch (paramInt)
              {
              default: 
                paramView1 = new StringBuilder();
                paramView1.append("Invalid direction: ");
                paramView1.append(paramInt);
                paramView1.append(a());
                throw new IllegalArgumentException(paramView1.toString());
              case 2: 
                if (i2 <= 0)
                {
                  bool1 = bool2;
                  if (i2 == 0)
                  {
                    bool1 = bool2;
                    if (i1 * i3 < 0) {}
                  }
                }
                else
                {
                  bool1 = true;
                }
                return bool1;
              }
              if (i2 >= 0)
              {
                bool1 = bool3;
                if (i2 == 0)
                {
                  bool1 = bool3;
                  if (i1 * i3 > 0) {}
                }
              }
              else
              {
                bool1 = true;
              }
              return bool1;
            }
            if (i2 > 0) {
              bool1 = true;
            }
            return bool1;
          }
          bool1 = bool4;
          if (i1 > 0) {
            bool1 = true;
          }
          return bool1;
        }
        bool1 = bool5;
        if (i2 < 0) {
          bool1 = true;
        }
        return bool1;
      }
      bool1 = bool6;
      if (i1 < 0) {
        bool1 = true;
      }
      return bool1;
    }
    return false;
  }
  
  static ViewHolder b(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsc;
  }
  
  private boolean b(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if (V != null) {
      if (i1 == 0)
      {
        V = null;
      }
      else
      {
        V.onTouchEvent(this, paramMotionEvent);
        if ((i1 == 3) || (i1 == 1)) {
          V = null;
        }
        return true;
      }
    }
    if (i1 != 0)
    {
      int i2 = U.size();
      i1 = 0;
      while (i1 < i2)
      {
        OnItemTouchListener localOnItemTouchListener = (OnItemTouchListener)U.get(i1);
        if (localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent))
        {
          V = localOnItemTouchListener;
          return true;
        }
        i1 += 1;
      }
    }
    return false;
  }
  
  static void c(@NonNull ViewHolder paramViewHolder)
  {
    if (a != null)
    {
      Object localObject = (View)a.get();
      while (localObject != null)
      {
        if (localObject == itemView) {
          return;
        }
        localObject = ((View)localObject).getParent();
        if ((localObject instanceof View)) {
          localObject = (View)localObject;
        } else {
          localObject = null;
        }
      }
      a = null;
    }
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == am)
    {
      if (i1 == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      am = paramMotionEvent.getPointerId(i1);
      int i2 = (int)(paramMotionEvent.getX(i1) + 0.5F);
      aq = i2;
      ao = i2;
      i1 = (int)(paramMotionEvent.getY(i1) + 0.5F);
      ar = i1;
      ap = i1;
    }
  }
  
  @Nullable
  static RecyclerView d(@NonNull View paramView)
  {
    if (!(paramView instanceof ViewGroup)) {
      return null;
    }
    if ((paramView instanceof RecyclerView)) {
      return (RecyclerView)paramView;
    }
    paramView = (ViewGroup)paramView;
    int i2 = paramView.getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      RecyclerView localRecyclerView = d(paramView.getChildAt(i1));
      if (localRecyclerView != null) {
        return localRecyclerView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private void e(ViewHolder paramViewHolder)
  {
    View localView = itemView;
    int i1;
    if (localView.getParent() == this) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    e.c(getChildViewHolder(localView));
    if (paramViewHolder.n())
    {
      g.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      g.a(localView, true);
      return;
    }
    g.d(localView);
  }
  
  private int g(View paramView)
  {
    int i1 = paramView.getId();
    while ((!paramView.isFocused()) && ((paramView instanceof ViewGroup)) && (paramView.hasFocus()))
    {
      View localView = ((ViewGroup)paramView).getFocusedChild();
      paramView = localView;
      if (localView.getId() != -1)
      {
        i1 = localView.getId();
        paramView = localView;
      }
    }
    return i1;
  }
  
  private boolean g(int paramInt1, int paramInt2)
  {
    a(aD);
    int[] arrayOfInt = aD;
    boolean bool = false;
    if ((arrayOfInt[0] != paramInt1) || (aD[1] != paramInt2)) {
      bool = true;
    }
    return bool;
  }
  
  private NestedScrollingChildHelper getScrollingChildHelper()
  {
    if (aE == null) {
      aE = new NestedScrollingChildHelper(this);
    }
    return aE;
  }
  
  @SuppressLint({"InlinedApi"})
  private void v()
  {
    if (ViewCompat.getImportantForAutofill(this) == 0) {
      ViewCompat.setImportantForAutofill(this, 8);
    }
  }
  
  private void w()
  {
    g = new q(new q.b()
    {
      public int a()
      {
        return getChildCount();
      }
      
      public int a(View paramAnonymousView)
      {
        return indexOfChild(paramAnonymousView);
      }
      
      public void a(int paramAnonymousInt)
      {
        View localView = getChildAt(paramAnonymousInt);
        if (localView != null)
        {
          e(localView);
          localView.clearAnimation();
        }
        removeViewAt(paramAnonymousInt);
      }
      
      public void a(View paramAnonymousView, int paramAnonymousInt)
      {
        addView(paramAnonymousView, paramAnonymousInt);
        f(paramAnonymousView);
      }
      
      public void a(View paramAnonymousView, int paramAnonymousInt, ViewGroup.LayoutParams paramAnonymousLayoutParams)
      {
        RecyclerView.ViewHolder localViewHolder = RecyclerView.b(paramAnonymousView);
        if (localViewHolder != null)
        {
          if ((!localViewHolder.n()) && (!localViewHolder.c()))
          {
            paramAnonymousView = new StringBuilder();
            paramAnonymousView.append("Called attach on a child which is not detached: ");
            paramAnonymousView.append(localViewHolder);
            paramAnonymousView.append(a());
            throw new IllegalArgumentException(paramAnonymousView.toString());
          }
          localViewHolder.h();
        }
        RecyclerView.a(RecyclerView.this, paramAnonymousView, paramAnonymousInt, paramAnonymousLayoutParams);
      }
      
      public RecyclerView.ViewHolder b(View paramAnonymousView)
      {
        return RecyclerView.b(paramAnonymousView);
      }
      
      public View b(int paramAnonymousInt)
      {
        return getChildAt(paramAnonymousInt);
      }
      
      public void b()
      {
        int j = a();
        int i = 0;
        while (i < j)
        {
          View localView = b(i);
          e(localView);
          localView.clearAnimation();
          i += 1;
        }
        removeAllViews();
      }
      
      public void c(int paramAnonymousInt)
      {
        Object localObject = b(paramAnonymousInt);
        if (localObject != null)
        {
          localObject = RecyclerView.b((View)localObject);
          if (localObject != null)
          {
            if ((((RecyclerView.ViewHolder)localObject).n()) && (!((RecyclerView.ViewHolder)localObject).c()))
            {
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("called detach on an already detached child ");
              localStringBuilder.append(localObject);
              localStringBuilder.append(a());
              throw new IllegalArgumentException(localStringBuilder.toString());
            }
            ((RecyclerView.ViewHolder)localObject).b(256);
          }
        }
        RecyclerView.a(RecyclerView.this, paramAnonymousInt);
      }
      
      public void c(View paramAnonymousView)
      {
        paramAnonymousView = RecyclerView.b(paramAnonymousView);
        if (paramAnonymousView != null) {
          paramAnonymousView.a(RecyclerView.this);
        }
      }
      
      public void d(View paramAnonymousView)
      {
        paramAnonymousView = RecyclerView.b(paramAnonymousView);
        if (paramAnonymousView != null) {
          paramAnonymousView.b(RecyclerView.this);
        }
      }
    });
  }
  
  private boolean x()
  {
    int i2 = g.b();
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.b(i1));
      if ((localViewHolder != null) && (!localViewHolder.c()) && (localViewHolder.u())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private void y()
  {
    A.b();
    if (n != null) {
      n.e();
    }
  }
  
  private void z()
  {
    if (ah != null)
    {
      ah.onRelease();
      bool2 = ah.isFinished();
    }
    else
    {
      bool2 = false;
    }
    boolean bool1 = bool2;
    if (ai != null)
    {
      ai.onRelease();
      bool1 = bool2 | ai.isFinished();
    }
    boolean bool2 = bool1;
    if (aj != null)
    {
      aj.onRelease();
      bool2 = bool1 | aj.isFinished();
    }
    bool1 = bool2;
    if (ak != null)
    {
      ak.onRelease();
      bool1 = bool2 | ak.isFinished();
    }
    if (bool1) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  long a(ViewHolder paramViewHolder)
  {
    if (m.hasStableIds()) {
      return paramViewHolder.getItemId();
    }
    return b;
  }
  
  @Nullable
  ViewHolder a(int paramInt, boolean paramBoolean)
  {
    int i2 = g.c();
    Object localObject1 = null;
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.d(i1));
      Object localObject2 = localObject1;
      if (localViewHolder != null)
      {
        localObject2 = localObject1;
        if (!localViewHolder.m())
        {
          if (paramBoolean)
          {
            if (b != paramInt)
            {
              localObject2 = localObject1;
              break label115;
            }
          }
          else if (localViewHolder.getLayoutPosition() != paramInt)
          {
            localObject2 = localObject1;
            break label115;
          }
          if (g.c(itemView)) {
            localObject2 = localViewHolder;
          } else {
            return localViewHolder;
          }
        }
      }
      label115:
      i1 += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" ");
    localStringBuilder.append(super.toString());
    localStringBuilder.append(", adapter:");
    localStringBuilder.append(m);
    localStringBuilder.append(", layout:");
    localStringBuilder.append(n);
    localStringBuilder.append(", context:");
    localStringBuilder.append(getContext());
    return localStringBuilder.toString();
  }
  
  void a(int paramInt)
  {
    if (n == null) {
      return;
    }
    n.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if ((ah != null) && (!ah.isFinished()) && (paramInt1 > 0))
    {
      ah.onRelease();
      bool2 = ah.isFinished();
    }
    else
    {
      bool2 = false;
    }
    boolean bool1 = bool2;
    if (aj != null)
    {
      bool1 = bool2;
      if (!aj.isFinished())
      {
        bool1 = bool2;
        if (paramInt1 < 0)
        {
          aj.onRelease();
          bool1 = bool2 | aj.isFinished();
        }
      }
    }
    boolean bool2 = bool1;
    if (ai != null)
    {
      bool2 = bool1;
      if (!ai.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 > 0)
        {
          ai.onRelease();
          bool2 = bool1 | ai.isFinished();
        }
      }
    }
    bool1 = bool2;
    if (ak != null)
    {
      bool1 = bool2;
      if (!ak.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 < 0)
        {
          ak.onRelease();
          bool1 = bool2 | ak.isFinished();
        }
      }
    }
    if (bool1) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  void a(int paramInt1, int paramInt2, Object paramObject)
  {
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = g.d(i1);
      ViewHolder localViewHolder = b(localView);
      if ((localViewHolder != null) && (!localViewHolder.c()) && (b >= paramInt1) && (b < paramInt1 + paramInt2))
      {
        localViewHolder.b(2);
        localViewHolder.a(paramObject);
        getLayoutParamse = true;
      }
      i1 += 1;
    }
    e.c(paramInt1, paramInt2);
  }
  
  void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.d(i1));
      if ((localViewHolder != null) && (!localViewHolder.c())) {
        if (b >= paramInt1 + paramInt2)
        {
          localViewHolder.a(-paramInt2, paramBoolean);
          D.f = true;
        }
        else if (b >= paramInt1)
        {
          localViewHolder.a(paramInt1 - 1, -paramInt2, paramBoolean);
          D.f = true;
        }
      }
      i1 += 1;
    }
    e.a(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  void a(int paramInt1, int paramInt2, @Nullable int[] paramArrayOfInt)
  {
    e();
    k();
    TraceCompat.beginSection("RV Scroll");
    a(D);
    if (paramInt1 != 0) {
      paramInt1 = n.scrollHorizontallyBy(paramInt1, e, D);
    } else {
      paramInt1 = 0;
    }
    if (paramInt2 != 0) {
      paramInt2 = n.scrollVerticallyBy(paramInt2, e, D);
    } else {
      paramInt2 = 0;
    }
    TraceCompat.endSection();
    t();
    l();
    a(false);
    if (paramArrayOfInt != null)
    {
      paramArrayOfInt[0] = paramInt1;
      paramArrayOfInt[1] = paramInt2;
    }
  }
  
  @VisibleForTesting
  void a(StateListDrawable paramStateListDrawable1, Drawable paramDrawable1, StateListDrawable paramStateListDrawable2, Drawable paramDrawable2)
  {
    if ((paramStateListDrawable1 != null) && (paramDrawable1 != null) && (paramStateListDrawable2 != null) && (paramDrawable2 != null))
    {
      Resources localResources = getContext().getResources();
      new s(this, paramStateListDrawable1, paramDrawable1, paramStateListDrawable2, paramDrawable2, localResources.getDimensionPixelSize(R.dimen.fastscroll_default_thickness), localResources.getDimensionPixelSize(R.dimen.fastscroll_minimum_range), localResources.getDimensionPixelOffset(R.dimen.fastscroll_margin));
      return;
    }
    paramStateListDrawable1 = new StringBuilder();
    paramStateListDrawable1.append("Trying to set fast scroller without both required drawables.");
    paramStateListDrawable1.append(a());
    throw new IllegalArgumentException(paramStateListDrawable1.toString());
  }
  
  final void a(State paramState)
  {
    if (getScrollState() == 2)
    {
      OverScroller localOverScroller = A.a;
      o = (localOverScroller.getFinalX() - localOverScroller.getCurrX());
      p = (localOverScroller.getFinalY() - localOverScroller.getCurrY());
      return;
    }
    o = 0;
    p = 0;
  }
  
  void a(ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    paramViewHolder.a(0, 8192);
    if ((D.h) && (paramViewHolder.u()) && (!paramViewHolder.m()) && (!paramViewHolder.c()))
    {
      long l1 = a(paramViewHolder);
      h.a(l1, paramViewHolder);
    }
    h.a(paramViewHolder, paramItemHolderInfo);
  }
  
  void a(@NonNull ViewHolder paramViewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    paramViewHolder.setIsRecyclable(false);
    if (z.animateAppearance(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      n();
    }
  }
  
  void a(String paramString)
  {
    if (!isComputingLayout())
    {
      if (paramString == null)
      {
        paramString = new StringBuilder();
        paramString.append("Cannot call this method unless RecyclerView is computing a layout or scrolling");
        paramString.append(a());
        throw new IllegalStateException(paramString.toString());
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append(a());
      throw new IllegalStateException(localStringBuilder.toString());
    }
  }
  
  void a(boolean paramBoolean)
  {
    if (W < 1) {
      W = 1;
    }
    if ((!paramBoolean) && (!v)) {
      u = false;
    }
    if (W == 1)
    {
      if ((paramBoolean) && (u) && (!v) && (n != null) && (m != null)) {
        o();
      }
      if (!v) {
        u = false;
      }
    }
    W -= 1;
  }
  
  boolean a(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    d();
    Adapter localAdapter = m;
    boolean bool = false;
    int i4;
    int i3;
    int i2;
    int i1;
    if (localAdapter != null)
    {
      a(paramInt1, paramInt2, J);
      i4 = J[0];
      i3 = J[1];
      i2 = i4;
      i1 = i3;
      i4 = paramInt1 - i4;
      i3 = paramInt2 - i3;
    }
    else
    {
      i3 = 0;
      i2 = 0;
      i1 = 0;
      i4 = 0;
    }
    if (!p.isEmpty()) {
      invalidate();
    }
    if (dispatchNestedScroll(i2, i1, i4, i3, aF, 0))
    {
      aq -= aF[0];
      ar -= aF[1];
      if (paramMotionEvent != null) {
        paramMotionEvent.offsetLocation(aF[0], aF[1]);
      }
      paramMotionEvent = aG;
      paramMotionEvent[0] += aF[0];
      paramMotionEvent = aG;
      paramMotionEvent[1] += aF[1];
    }
    else if (getOverScrollMode() != 2)
    {
      if ((paramMotionEvent != null) && (!MotionEventCompat.isFromSource(paramMotionEvent, 8194))) {
        a(paramMotionEvent.getX(), i4, paramMotionEvent.getY(), i3);
      }
      a(paramInt1, paramInt2);
    }
    if ((i2 != 0) || (i1 != 0)) {
      f(i2, i1);
    }
    if (!awakenScrollBars()) {
      invalidate();
    }
    if ((i2 != 0) || (i1 != 0)) {
      bool = true;
    }
    return bool;
  }
  
  @VisibleForTesting
  boolean a(ViewHolder paramViewHolder, int paramInt)
  {
    if (isComputingLayout())
    {
      n = paramInt;
      K.add(paramViewHolder);
      return false;
    }
    ViewCompat.setImportantForAccessibility(itemView, paramInt);
    return true;
  }
  
  boolean a(View paramView)
  {
    e();
    boolean bool = g.f(paramView);
    if (bool)
    {
      paramView = b(paramView);
      e.c(paramView);
      e.b(paramView);
    }
    a(bool ^ true);
    return bool;
  }
  
  boolean a(AccessibilityEvent paramAccessibilityEvent)
  {
    if (isComputingLayout())
    {
      int i1;
      if (paramAccessibilityEvent != null) {
        i1 = AccessibilityEventCompat.getContentChangeTypes(paramAccessibilityEvent);
      } else {
        i1 = 0;
      }
      int i2 = i1;
      if (i1 == 0) {
        i2 = 0;
      }
      ab = (i2 | ab);
      return true;
    }
    return false;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if ((n == null) || (!n.onAddFocusables(this, paramArrayList, paramInt1, paramInt2))) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  public void addItemDecoration(@NonNull ItemDecoration paramItemDecoration)
  {
    addItemDecoration(paramItemDecoration, -1);
  }
  
  public void addItemDecoration(@NonNull ItemDecoration paramItemDecoration, int paramInt)
  {
    if (n != null) {
      n.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
    }
    if (p.isEmpty()) {
      setWillNotDraw(false);
    }
    if (paramInt < 0) {
      p.add(paramItemDecoration);
    } else {
      p.add(paramInt, paramItemDecoration);
    }
    p();
    requestLayout();
  }
  
  public void addOnChildAttachStateChangeListener(@NonNull OnChildAttachStateChangeListener paramOnChildAttachStateChangeListener)
  {
    if (ad == null) {
      ad = new ArrayList();
    }
    ad.add(paramOnChildAttachStateChangeListener);
  }
  
  public void addOnItemTouchListener(@NonNull OnItemTouchListener paramOnItemTouchListener)
  {
    U.add(paramOnItemTouchListener);
  }
  
  public void addOnScrollListener(@NonNull OnScrollListener paramOnScrollListener)
  {
    if (aA == null) {
      aA = new ArrayList();
    }
    aA.add(paramOnScrollListener);
  }
  
  void b()
  {
    f = new c(new c.a()
    {
      public RecyclerView.ViewHolder a(int paramAnonymousInt)
      {
        RecyclerView.ViewHolder localViewHolder = a(paramAnonymousInt, true);
        if (localViewHolder == null) {
          return null;
        }
        if (g.c(itemView)) {
          return null;
        }
        return localViewHolder;
      }
      
      public void a(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a(paramAnonymousInt1, paramAnonymousInt2, true);
        E = true;
        RecyclerView.State localState = D;
        c += paramAnonymousInt2;
      }
      
      public void a(int paramAnonymousInt1, int paramAnonymousInt2, Object paramAnonymousObject)
      {
        RecyclerView.this.a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousObject);
        F = true;
      }
      
      public void a(c.b paramAnonymousB)
      {
        c(paramAnonymousB);
      }
      
      public void b(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a(paramAnonymousInt1, paramAnonymousInt2, false);
        E = true;
      }
      
      public void b(c.b paramAnonymousB)
      {
        c(paramAnonymousB);
      }
      
      public void c(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        e(paramAnonymousInt1, paramAnonymousInt2);
        E = true;
      }
      
      void c(c.b paramAnonymousB)
      {
        int i = a;
        if (i != 4)
        {
          if (i != 8)
          {
            switch (i)
            {
            default: 
              return;
            case 2: 
              n.onItemsRemoved(RecyclerView.this, b, d);
              return;
            }
            n.onItemsAdded(RecyclerView.this, b, d);
            return;
          }
          n.onItemsMoved(RecyclerView.this, b, d, 1);
          return;
        }
        n.onItemsUpdated(RecyclerView.this, b, d, c);
      }
      
      public void d(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        RecyclerView.this.d(paramAnonymousInt1, paramAnonymousInt2);
        E = true;
      }
    });
  }
  
  void b(int paramInt)
  {
    if (n != null) {
      n.onScrollStateChanged(paramInt);
    }
    onScrollStateChanged(paramInt);
    if (az != null) {
      az.onScrollStateChanged(this, paramInt);
    }
    if (aA != null)
    {
      int i1 = aA.size() - 1;
      while (i1 >= 0)
      {
        ((OnScrollListener)aA.get(i1)).onScrollStateChanged(this, paramInt);
        i1 -= 1;
      }
    }
  }
  
  void b(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      f();
      ah.onAbsorb(-paramInt1);
    }
    else if (paramInt1 > 0)
    {
      g();
      aj.onAbsorb(paramInt1);
    }
    if (paramInt2 < 0)
    {
      h();
      ai.onAbsorb(-paramInt2);
    }
    else if (paramInt2 > 0)
    {
      i();
      ak.onAbsorb(paramInt2);
    }
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  void b(@NonNull ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    e(paramViewHolder);
    paramViewHolder.setIsRecyclable(false);
    if (z.animateDisappearance(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      n();
    }
  }
  
  void b(String paramString)
  {
    if (isComputingLayout())
    {
      if (paramString == null)
      {
        paramString = new StringBuilder();
        paramString.append("Cannot call this method while RecyclerView is computing a layout or scrolling");
        paramString.append(a());
        throw new IllegalStateException(paramString.toString());
      }
      throw new IllegalStateException(paramString);
    }
    if (af > 0)
    {
      paramString = new StringBuilder();
      paramString.append("");
      paramString.append(a());
      Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(paramString.toString()));
    }
  }
  
  void b(boolean paramBoolean)
  {
    ae -= 1;
    if (ae < 1)
    {
      ae = 0;
      if (paramBoolean)
      {
        C();
        u();
      }
    }
  }
  
  boolean b(ViewHolder paramViewHolder)
  {
    return (z == null) || (z.canReuseUpdatedViewHolder(paramViewHolder, paramViewHolder.q()));
  }
  
  Rect c(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!e) {
      return d;
    }
    if ((D.isPreLayout()) && ((localLayoutParams.isItemChanged()) || (localLayoutParams.isViewInvalid()))) {
      return d;
    }
    Rect localRect = d;
    localRect.set(0, 0, 0, 0);
    int i2 = p.size();
    int i1 = 0;
    while (i1 < i2)
    {
      k.set(0, 0, 0, 0);
      ((ItemDecoration)p.get(i1)).getItemOffsets(k, paramView, this, D);
      left += k.left;
      top += k.top;
      right += k.right;
      bottom += k.bottom;
      i1 += 1;
    }
    e = false;
    return localRect;
  }
  
  void c()
  {
    if (z != null) {
      z.endAnimations();
    }
    if (n != null)
    {
      n.removeAndRecycleAllViews(e);
      n.a(e);
    }
    e.clear();
  }
  
  void c(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(LayoutManager.chooseSize(paramInt1, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth(this)), LayoutManager.chooseSize(paramInt2, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight(this)));
  }
  
  void c(boolean paramBoolean)
  {
    y = (paramBoolean | y);
    x = true;
    s();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (n.checkLayoutParams((LayoutParams)paramLayoutParams));
  }
  
  public void clearOnChildAttachStateChangeListeners()
  {
    if (ad != null) {
      ad.clear();
    }
  }
  
  public void clearOnScrollListeners()
  {
    if (aA != null) {
      aA.clear();
    }
  }
  
  public int computeHorizontalScrollExtent()
  {
    LayoutManager localLayoutManager = n;
    int i1 = 0;
    if (localLayoutManager == null) {
      return 0;
    }
    if (n.canScrollHorizontally()) {
      i1 = n.computeHorizontalScrollExtent(D);
    }
    return i1;
  }
  
  public int computeHorizontalScrollOffset()
  {
    LayoutManager localLayoutManager = n;
    int i1 = 0;
    if (localLayoutManager == null) {
      return 0;
    }
    if (n.canScrollHorizontally()) {
      i1 = n.computeHorizontalScrollOffset(D);
    }
    return i1;
  }
  
  public int computeHorizontalScrollRange()
  {
    LayoutManager localLayoutManager = n;
    int i1 = 0;
    if (localLayoutManager == null) {
      return 0;
    }
    if (n.canScrollHorizontally()) {
      i1 = n.computeHorizontalScrollRange(D);
    }
    return i1;
  }
  
  public int computeVerticalScrollExtent()
  {
    LayoutManager localLayoutManager = n;
    int i1 = 0;
    if (localLayoutManager == null) {
      return 0;
    }
    if (n.canScrollVertically()) {
      i1 = n.computeVerticalScrollExtent(D);
    }
    return i1;
  }
  
  public int computeVerticalScrollOffset()
  {
    LayoutManager localLayoutManager = n;
    int i1 = 0;
    if (localLayoutManager == null) {
      return 0;
    }
    if (n.canScrollVertically()) {
      i1 = n.computeVerticalScrollOffset(D);
    }
    return i1;
  }
  
  public int computeVerticalScrollRange()
  {
    LayoutManager localLayoutManager = n;
    int i1 = 0;
    if (localLayoutManager == null) {
      return 0;
    }
    if (n.canScrollVertically()) {
      i1 = n.computeVerticalScrollRange(D);
    }
    return i1;
  }
  
  int d(ViewHolder paramViewHolder)
  {
    if ((!paramViewHolder.a(524)) && (paramViewHolder.l())) {
      return f.c(b);
    }
    return -1;
  }
  
  void d()
  {
    if ((t) && (!x))
    {
      if (!f.d()) {
        return;
      }
      if ((f.a(4)) && (!f.a(11)))
      {
        TraceCompat.beginSection("RV PartialInvalidate");
        e();
        k();
        f.b();
        if (!u) {
          if (x()) {
            o();
          } else {
            f.c();
          }
        }
        a(true);
        l();
        TraceCompat.endSection();
        return;
      }
      if (f.d())
      {
        TraceCompat.beginSection("RV FullInvalidate");
        o();
        TraceCompat.endSection();
      }
      return;
    }
    TraceCompat.beginSection("RV FullInvalidate");
    o();
    TraceCompat.endSection();
  }
  
  void d(int paramInt1, int paramInt2)
  {
    int i5 = g.c();
    int i1;
    int i2;
    int i3;
    if (paramInt1 < paramInt2)
    {
      i1 = paramInt1;
      i2 = paramInt2;
      i3 = -1;
    }
    else
    {
      i2 = paramInt1;
      i1 = paramInt2;
      i3 = 1;
    }
    int i4 = 0;
    while (i4 < i5)
    {
      ViewHolder localViewHolder = b(g.d(i4));
      if ((localViewHolder != null) && (b >= i1) && (b <= i2))
      {
        if (b == paramInt1) {
          localViewHolder.a(paramInt2 - paramInt1, false);
        } else {
          localViewHolder.a(i3, false);
        }
        D.f = true;
      }
      i4 += 1;
    }
    e.a(paramInt1, paramInt2);
    requestLayout();
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return getScrollingChildHelper().dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return getScrollingChildHelper().dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return getScrollingChildHelper().dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
  {
    return getScrollingChildHelper().dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return getScrollingChildHelper().dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, int paramInt5)
  {
    return getScrollingChildHelper().dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramInt5);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i2 = p.size();
    int i3 = 0;
    int i1 = 0;
    while (i1 < i2)
    {
      ((ItemDecoration)p.get(i1)).onDrawOver(paramCanvas, this, D);
      i1 += 1;
    }
    int i4;
    if ((ah != null) && (!ah.isFinished()))
    {
      i4 = paramCanvas.save();
      if (i) {
        i1 = getPaddingBottom();
      } else {
        i1 = 0;
      }
      paramCanvas.rotate(270.0F);
      paramCanvas.translate(-getHeight() + i1, 0.0F);
      if ((ah != null) && (ah.draw(paramCanvas))) {
        i2 = 1;
      } else {
        i2 = 0;
      }
      paramCanvas.restoreToCount(i4);
    }
    else
    {
      i2 = 0;
    }
    i1 = i2;
    if (ai != null)
    {
      i1 = i2;
      if (!ai.isFinished())
      {
        i4 = paramCanvas.save();
        if (i) {
          paramCanvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if ((ai != null) && (ai.draw(paramCanvas))) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        i1 = i2 | i1;
        paramCanvas.restoreToCount(i4);
      }
    }
    i2 = i1;
    if (aj != null)
    {
      i2 = i1;
      if (!aj.isFinished())
      {
        i4 = paramCanvas.save();
        int i5 = getWidth();
        if (i) {
          i2 = getPaddingTop();
        } else {
          i2 = 0;
        }
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-i2, -i5);
        if ((aj != null) && (aj.draw(paramCanvas))) {
          i2 = 1;
        } else {
          i2 = 0;
        }
        i2 = i1 | i2;
        paramCanvas.restoreToCount(i4);
      }
    }
    if ((ak != null) && (!ak.isFinished()))
    {
      i4 = paramCanvas.save();
      paramCanvas.rotate(180.0F);
      if (i) {
        paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
      } else {
        paramCanvas.translate(-getWidth(), -getHeight());
      }
      i1 = i3;
      if (ak != null)
      {
        i1 = i3;
        if (ak.draw(paramCanvas)) {
          i1 = 1;
        }
      }
      i1 |= i2;
      paramCanvas.restoreToCount(i4);
    }
    else
    {
      i1 = i2;
    }
    i2 = i1;
    if (i1 == 0)
    {
      i2 = i1;
      if (z != null)
      {
        i2 = i1;
        if (p.size() > 0)
        {
          i2 = i1;
          if (z.isRunning()) {
            i2 = 1;
          }
        }
      }
    }
    if (i2 != 0) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  void e()
  {
    W += 1;
    if ((W == 1) && (!v)) {
      u = false;
    }
  }
  
  void e(int paramInt1, int paramInt2)
  {
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.d(i1));
      if ((localViewHolder != null) && (!localViewHolder.c()) && (b >= paramInt1))
      {
        localViewHolder.a(paramInt2, false);
        D.f = true;
      }
      i1 += 1;
    }
    e.b(paramInt1, paramInt2);
    requestLayout();
  }
  
  void e(View paramView)
  {
    ViewHolder localViewHolder = b(paramView);
    onChildDetachedFromWindow(paramView);
    if ((m != null) && (localViewHolder != null)) {
      m.onViewDetachedFromWindow(localViewHolder);
    }
    if (ad != null)
    {
      int i1 = ad.size() - 1;
      while (i1 >= 0)
      {
        ((OnChildAttachStateChangeListener)ad.get(i1)).onChildViewDetachedFromWindow(paramView);
        i1 -= 1;
      }
    }
  }
  
  void f()
  {
    if (ah != null) {
      return;
    }
    ah = ag.createEdgeEffect(this, 0);
    if (i)
    {
      ah.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    ah.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void f(int paramInt1, int paramInt2)
  {
    af += 1;
    int i1 = getScrollX();
    int i2 = getScrollY();
    onScrollChanged(i1, i2, i1, i2);
    onScrolled(paramInt1, paramInt2);
    if (az != null) {
      az.onScrolled(this, paramInt1, paramInt2);
    }
    if (aA != null)
    {
      i1 = aA.size() - 1;
      while (i1 >= 0)
      {
        ((OnScrollListener)aA.get(i1)).onScrolled(this, paramInt1, paramInt2);
        i1 -= 1;
      }
    }
    af -= 1;
  }
  
  void f(View paramView)
  {
    ViewHolder localViewHolder = b(paramView);
    onChildAttachedToWindow(paramView);
    if ((m != null) && (localViewHolder != null)) {
      m.onViewAttachedToWindow(localViewHolder);
    }
    if (ad != null)
    {
      int i1 = ad.size() - 1;
      while (i1 >= 0)
      {
        ((OnChildAttachStateChangeListener)ad.get(i1)).onChildViewAttachedToWindow(paramView);
        i1 -= 1;
      }
    }
  }
  
  @Nullable
  public View findChildViewUnder(float paramFloat1, float paramFloat2)
  {
    int i1 = g.b() - 1;
    while (i1 >= 0)
    {
      View localView = g.b(i1);
      float f1 = localView.getTranslationX();
      float f2 = localView.getTranslationY();
      if ((paramFloat1 >= localView.getLeft() + f1) && (paramFloat1 <= localView.getRight() + f1) && (paramFloat2 >= localView.getTop() + f2) && (paramFloat2 <= localView.getBottom() + f2)) {
        return localView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  @Nullable
  public View findContainingItemView(@NonNull View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    View localView = paramView;
    for (paramView = localViewParent; (paramView != null) && (paramView != this) && ((paramView instanceof View)); paramView = localView.getParent()) {
      localView = (View)paramView;
    }
    if (paramView == this) {
      return localView;
    }
    return null;
  }
  
  @Nullable
  public ViewHolder findContainingViewHolder(@NonNull View paramView)
  {
    paramView = findContainingItemView(paramView);
    if (paramView == null) {
      return null;
    }
    return getChildViewHolder(paramView);
  }
  
  @Nullable
  public ViewHolder findViewHolderForAdapterPosition(int paramInt)
  {
    boolean bool = x;
    Object localObject1 = null;
    if (bool) {
      return null;
    }
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.d(i1));
      Object localObject2 = localObject1;
      if (localViewHolder != null)
      {
        localObject2 = localObject1;
        if (!localViewHolder.m())
        {
          localObject2 = localObject1;
          if (d(localViewHolder) == paramInt) {
            if (g.c(itemView)) {
              localObject2 = localViewHolder;
            } else {
              return localViewHolder;
            }
          }
        }
      }
      i1 += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  public ViewHolder findViewHolderForItemId(long paramLong)
  {
    Object localObject2 = m;
    Object localObject1 = null;
    if (localObject2 != null)
    {
      if (!m.hasStableIds()) {
        return null;
      }
      int i2 = g.c();
      int i1 = 0;
      while (i1 < i2)
      {
        ViewHolder localViewHolder = b(g.d(i1));
        localObject2 = localObject1;
        if (localViewHolder != null)
        {
          localObject2 = localObject1;
          if (!localViewHolder.m())
          {
            localObject2 = localObject1;
            if (localViewHolder.getItemId() == paramLong) {
              if (g.c(itemView)) {
                localObject2 = localViewHolder;
              } else {
                return localViewHolder;
              }
            }
          }
        }
        i1 += 1;
        localObject1 = localObject2;
      }
      return localObject1;
    }
    return null;
  }
  
  @Nullable
  public ViewHolder findViewHolderForLayoutPosition(int paramInt)
  {
    return a(paramInt, false);
  }
  
  @Deprecated
  @Nullable
  public ViewHolder findViewHolderForPosition(int paramInt)
  {
    return a(paramInt, false);
  }
  
  public boolean fling(int paramInt1, int paramInt2)
  {
    LayoutManager localLayoutManager = n;
    int i3 = 0;
    if (localLayoutManager == null)
    {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return false;
    }
    if (v) {
      return false;
    }
    boolean bool2 = n.canScrollHorizontally();
    boolean bool3 = n.canScrollVertically();
    int i1;
    if (bool2)
    {
      i1 = paramInt1;
      if (Math.abs(paramInt1) >= au) {}
    }
    else
    {
      i1 = 0;
    }
    int i2;
    if (bool3)
    {
      i2 = paramInt2;
      if (Math.abs(paramInt2) >= au) {}
    }
    else
    {
      i2 = 0;
    }
    if ((i1 == 0) && (i2 == 0)) {
      return false;
    }
    float f1 = i1;
    float f2 = i2;
    if (!dispatchNestedPreFling(f1, f2))
    {
      boolean bool1;
      if ((!bool2) && (!bool3)) {
        bool1 = false;
      } else {
        bool1 = true;
      }
      dispatchNestedFling(f1, f2, bool1);
      if ((at != null) && (at.onFling(i1, i2))) {
        return true;
      }
      if (bool1)
      {
        paramInt1 = i3;
        if (bool2) {
          paramInt1 = 1;
        }
        paramInt2 = paramInt1;
        if (bool3) {
          paramInt2 = paramInt1 | 0x2;
        }
        startNestedScroll(paramInt2, 1);
        paramInt1 = Math.max(-av, Math.min(i1, av));
        paramInt2 = Math.max(-av, Math.min(i2, av));
        A.a(paramInt1, paramInt2);
        return true;
      }
    }
    return false;
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject = n.onInterceptFocusSearch(paramView, paramInt);
    if (localObject != null) {
      return localObject;
    }
    int i1;
    if ((m != null) && (n != null) && (!isComputingLayout()) && (!v)) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    localObject = FocusFinder.getInstance();
    if ((i1 != 0) && ((paramInt == 2) || (paramInt == 1)))
    {
      int i2;
      if (n.canScrollVertically())
      {
        if (paramInt == 2) {
          i2 = 130;
        } else {
          i2 = 33;
        }
        if (((FocusFinder)localObject).findNextFocus(this, paramView, i2) == null) {
          i3 = 1;
        } else {
          i3 = 0;
        }
        i1 = i3;
        if (O)
        {
          paramInt = i2;
          i1 = i3;
        }
      }
      else
      {
        i1 = 0;
      }
      int i4 = i1;
      int i3 = paramInt;
      if (i1 == 0)
      {
        i4 = i1;
        i3 = paramInt;
        if (n.canScrollHorizontally())
        {
          if (n.getLayoutDirection() == 1) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          if (paramInt == 2) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          if ((i1 ^ i2) != 0) {
            i1 = 66;
          } else {
            i1 = 17;
          }
          if (((FocusFinder)localObject).findNextFocus(this, paramView, i1) == null) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          i4 = i2;
          i3 = paramInt;
          if (O)
          {
            i3 = i1;
            i4 = i2;
          }
        }
      }
      if (i4 != 0)
      {
        d();
        if (findContainingItemView(paramView) == null) {
          return null;
        }
        e();
        n.onFocusSearchFailed(paramView, i3, e, D);
        a(false);
      }
      localObject = ((FocusFinder)localObject).findNextFocus(this, paramView, i3);
      paramInt = i3;
    }
    else
    {
      localObject = ((FocusFinder)localObject).findNextFocus(this, paramView, paramInt);
      if ((localObject == null) && (i1 != 0))
      {
        d();
        if (findContainingItemView(paramView) == null) {
          return null;
        }
        e();
        localObject = n.onFocusSearchFailed(paramView, paramInt, e, D);
        a(false);
      }
    }
    if ((localObject != null) && (!((View)localObject).hasFocusable()))
    {
      if (getFocusedChild() == null) {
        return super.focusSearch(paramView, paramInt);
      }
      a((View)localObject, null);
      return paramView;
    }
    if (a(paramView, (View)localObject, paramInt)) {
      return localObject;
    }
    return super.focusSearch(paramView, paramInt);
  }
  
  void g()
  {
    if (aj != null) {
      return;
    }
    aj = ag.createEdgeEffect(this, 2);
    if (i)
    {
      aj.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    aj.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (n != null) {
      return n.generateDefaultLayoutParams();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("RecyclerView has no LayoutManager");
    localStringBuilder.append(a());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (n != null) {
      return n.generateLayoutParams(getContext(), paramAttributeSet);
    }
    paramAttributeSet = new StringBuilder();
    paramAttributeSet.append("RecyclerView has no LayoutManager");
    paramAttributeSet.append(a());
    throw new IllegalStateException(paramAttributeSet.toString());
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (n != null) {
      return n.generateLayoutParams(paramLayoutParams);
    }
    paramLayoutParams = new StringBuilder();
    paramLayoutParams.append("RecyclerView has no LayoutManager");
    paramLayoutParams.append(a());
    throw new IllegalStateException(paramLayoutParams.toString());
  }
  
  @Nullable
  public Adapter getAdapter()
  {
    return m;
  }
  
  public int getBaseline()
  {
    if (n != null) {
      return n.getBaseline();
    }
    return super.getBaseline();
  }
  
  public int getChildAdapterPosition(@NonNull View paramView)
  {
    paramView = b(paramView);
    if (paramView != null) {
      return paramView.getAdapterPosition();
    }
    return -1;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (aC == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return aC.onGetChildDrawingOrder(paramInt1, paramInt2);
  }
  
  public long getChildItemId(@NonNull View paramView)
  {
    Adapter localAdapter = m;
    long l1 = -1L;
    if (localAdapter != null)
    {
      if (!m.hasStableIds()) {
        return -1L;
      }
      paramView = b(paramView);
      if (paramView != null) {
        l1 = paramView.getItemId();
      }
      return l1;
    }
    return -1L;
  }
  
  public int getChildLayoutPosition(@NonNull View paramView)
  {
    paramView = b(paramView);
    if (paramView != null) {
      return paramView.getLayoutPosition();
    }
    return -1;
  }
  
  @Deprecated
  public int getChildPosition(@NonNull View paramView)
  {
    return getChildAdapterPosition(paramView);
  }
  
  public ViewHolder getChildViewHolder(@NonNull View paramView)
  {
    Object localObject = paramView.getParent();
    if ((localObject != null) && (localObject != this))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("View ");
      ((StringBuilder)localObject).append(paramView);
      ((StringBuilder)localObject).append(" is not a direct child of ");
      ((StringBuilder)localObject).append(this);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    return b(paramView);
  }
  
  public boolean getClipToPadding()
  {
    return i;
  }
  
  @Nullable
  public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate()
  {
    return H;
  }
  
  public void getDecoratedBoundsWithMargins(@NonNull View paramView, @NonNull Rect paramRect)
  {
    a(paramView, paramRect);
  }
  
  @NonNull
  public EdgeEffectFactory getEdgeEffectFactory()
  {
    return ag;
  }
  
  @Nullable
  public ItemAnimator getItemAnimator()
  {
    return z;
  }
  
  @NonNull
  public ItemDecoration getItemDecorationAt(int paramInt)
  {
    int i1 = getItemDecorationCount();
    if ((paramInt >= 0) && (paramInt < i1)) {
      return (ItemDecoration)p.get(paramInt);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" is an invalid index for size ");
    localStringBuilder.append(i1);
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
  
  public int getItemDecorationCount()
  {
    return p.size();
  }
  
  @Nullable
  public LayoutManager getLayoutManager()
  {
    return n;
  }
  
  public int getMaxFlingVelocity()
  {
    return av;
  }
  
  public int getMinFlingVelocity()
  {
    return au;
  }
  
  long getNanoTime()
  {
    if (d) {
      return System.nanoTime();
    }
    return 0L;
  }
  
  @Nullable
  public OnFlingListener getOnFlingListener()
  {
    return at;
  }
  
  public boolean getPreserveFocusAfterLayout()
  {
    return ay;
  }
  
  @NonNull
  public RecycledViewPool getRecycledViewPool()
  {
    return e.e();
  }
  
  public int getScrollState()
  {
    return al;
  }
  
  void h()
  {
    if (ai != null) {
      return;
    }
    ai = ag.createEdgeEffect(this, 1);
    if (i)
    {
      ai.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    ai.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public boolean hasFixedSize()
  {
    return r;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return getScrollingChildHelper().hasNestedScrollingParent();
  }
  
  public boolean hasNestedScrollingParent(int paramInt)
  {
    return getScrollingChildHelper().hasNestedScrollingParent(paramInt);
  }
  
  public boolean hasPendingAdapterUpdates()
  {
    return (!t) || (x) || (f.d());
  }
  
  void i()
  {
    if (ak != null) {
      return;
    }
    ak = ag.createEdgeEffect(this, 3);
    if (i)
    {
      ak.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    ak.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public void invalidateItemDecorations()
  {
    if (p.size() == 0) {
      return;
    }
    if (n != null) {
      n.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
    }
    p();
    requestLayout();
  }
  
  public boolean isAnimating()
  {
    return (z != null) && (z.isRunning());
  }
  
  public boolean isAttachedToWindow()
  {
    return q;
  }
  
  public boolean isComputingLayout()
  {
    return ae > 0;
  }
  
  public boolean isLayoutFrozen()
  {
    return v;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return getScrollingChildHelper().isNestedScrollingEnabled();
  }
  
  void j()
  {
    ak = null;
    ai = null;
    aj = null;
    ah = null;
  }
  
  void k()
  {
    ae += 1;
  }
  
  void l()
  {
    b(true);
  }
  
  boolean m()
  {
    return (ac != null) && (ac.isEnabled());
  }
  
  void n()
  {
    if ((!G) && (q))
    {
      ViewCompat.postOnAnimation(this, aH);
      G = true;
    }
  }
  
  void o()
  {
    if (m == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (n == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    D.i = false;
    if (D.d == 1)
    {
      J();
      n.c(this);
      K();
    }
    else if ((!f.f()) && (n.getWidth() == getWidth()) && (n.getHeight() == getHeight()))
    {
      n.c(this);
    }
    else
    {
      n.c(this);
      K();
    }
    L();
  }
  
  public void offsetChildrenHorizontal(@Px int paramInt)
  {
    int i2 = g.b();
    int i1 = 0;
    while (i1 < i2)
    {
      g.b(i1).offsetLeftAndRight(paramInt);
      i1 += 1;
    }
  }
  
  public void offsetChildrenVertical(@Px int paramInt)
  {
    int i2 = g.b();
    int i1 = 0;
    while (i1 < i2)
    {
      g.b(i1).offsetTopAndBottom(paramInt);
      i1 += 1;
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ae = 0;
    boolean bool = true;
    q = true;
    if ((!t) || (isLayoutRequested())) {
      bool = false;
    }
    t = bool;
    if (n != null) {
      n.b(this);
    }
    G = false;
    if (d)
    {
      B = ((t)t.a.get());
      if (B == null)
      {
        B = new t();
        Display localDisplay = ViewCompat.getDisplay(this);
        float f1;
        if ((!isInEditMode()) && (localDisplay != null))
        {
          f1 = localDisplay.getRefreshRate();
          if (f1 >= 30.0F) {}
        }
        else
        {
          f1 = 60.0F;
        }
        B.d = ((1.0E9F / f1));
        t.a.set(B);
      }
      B.a(this);
    }
  }
  
  public void onChildAttachedToWindow(@NonNull View paramView) {}
  
  public void onChildDetachedFromWindow(@NonNull View paramView) {}
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (z != null) {
      z.endAnimations();
    }
    stopScroll();
    q = false;
    if (n != null) {
      n.a(this, e);
    }
    K.clear();
    removeCallbacks(aH);
    h.b();
    if ((d) && (B != null))
    {
      B.b(this);
      B = null;
    }
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = p.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((ItemDecoration)p.get(i1)).onDraw(paramCanvas, this, D);
      i1 += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (n == null) {
      return false;
    }
    if (v) {
      return false;
    }
    if (paramMotionEvent.getAction() == 8)
    {
      float f1;
      if ((paramMotionEvent.getSource() & 0x2) != 0)
      {
        if (n.canScrollVertically()) {
          f2 = -paramMotionEvent.getAxisValue(9);
        } else {
          f2 = 0.0F;
        }
        f1 = f2;
        if (n.canScrollHorizontally())
        {
          float f3 = paramMotionEvent.getAxisValue(10);
          f1 = f2;
          f2 = f3;
          break label140;
        }
      }
      else
      {
        if ((paramMotionEvent.getSource() & 0x400000) != 0)
        {
          f2 = paramMotionEvent.getAxisValue(26);
          if (n.canScrollVertically())
          {
            f1 = -f2;
            break label138;
          }
          if (n.canScrollHorizontally())
          {
            f1 = 0.0F;
            break label140;
          }
        }
        f1 = 0.0F;
      }
      label138:
      float f2 = 0.0F;
      label140:
      if ((f1 != 0.0F) || (f2 != 0.0F)) {
        a((int)(f2 * aw), (int)(f1 * ax), paramMotionEvent);
      }
    }
    return false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = v;
    boolean bool1 = false;
    if (bool2) {
      return false;
    }
    if (a(paramMotionEvent))
    {
      B();
      return true;
    }
    if (n == null) {
      return false;
    }
    bool2 = n.canScrollHorizontally();
    boolean bool3 = n.canScrollVertically();
    if (an == null) {
      an = VelocityTracker.obtain();
    }
    an.addMovement(paramMotionEvent);
    int i2 = paramMotionEvent.getActionMasked();
    int i1 = paramMotionEvent.getActionIndex();
    switch (i2)
    {
    case 4: 
    default: 
      break;
    case 6: 
      c(paramMotionEvent);
      break;
    case 5: 
      am = paramMotionEvent.getPointerId(i1);
      i2 = (int)(paramMotionEvent.getX(i1) + 0.5F);
      aq = i2;
      ao = i2;
      i1 = (int)(paramMotionEvent.getY(i1) + 0.5F);
      ar = i1;
      ap = i1;
      break;
    case 3: 
      B();
      break;
    case 2: 
      i2 = paramMotionEvent.findPointerIndex(am);
      if (i2 < 0)
      {
        paramMotionEvent = new StringBuilder();
        paramMotionEvent.append("Error processing scroll; pointer index for id ");
        paramMotionEvent.append(am);
        paramMotionEvent.append(" not found. Did any MotionEvents get skipped?");
        Log.e("RecyclerView", paramMotionEvent.toString());
        return false;
      }
      i1 = (int)(paramMotionEvent.getX(i2) + 0.5F);
      int i3 = (int)(paramMotionEvent.getY(i2) + 0.5F);
      if (al != 1)
      {
        i2 = ao;
        int i4 = ap;
        if ((bool2) && (Math.abs(i1 - i2) > as))
        {
          aq = i1;
          i1 = 1;
        }
        else
        {
          i1 = 0;
        }
        i2 = i1;
        if (bool3)
        {
          i2 = i1;
          if (Math.abs(i3 - i4) > as)
          {
            ar = i3;
            i2 = 1;
          }
        }
        if (i2 != 0) {
          setScrollState(1);
        }
      }
      break;
    case 1: 
      an.clear();
      stopNestedScroll(0);
      break;
    case 0: 
      if (aa) {
        aa = false;
      }
      am = paramMotionEvent.getPointerId(0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      aq = i1;
      ao = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      ar = i1;
      ap = i1;
      if (al == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      paramMotionEvent = aG;
      aG[1] = 0;
      paramMotionEvent[0] = 0;
      if (bool2) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      i2 = i1;
      if (bool3) {
        i2 = i1 | 0x2;
      }
      startNestedScroll(i2, 0);
    }
    if (al == 1) {
      bool1 = true;
    }
    return bool1;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    TraceCompat.beginSection("RV OnLayout");
    o();
    TraceCompat.endSection();
    t = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (n == null)
    {
      c(paramInt1, paramInt2);
      return;
    }
    boolean bool = n.isAutoMeasureEnabled();
    int i2 = 0;
    if (bool)
    {
      int i3 = View.MeasureSpec.getMode(paramInt1);
      int i4 = View.MeasureSpec.getMode(paramInt2);
      n.onMeasure(e, D, paramInt1, paramInt2);
      int i1 = i2;
      if (i3 == 1073741824)
      {
        i1 = i2;
        if (i4 == 1073741824) {
          i1 = 1;
        }
      }
      if (i1 == 0)
      {
        if (m == null) {
          return;
        }
        if (D.d == 1) {
          J();
        }
        n.c(paramInt1, paramInt2);
        D.i = true;
        K();
        n.d(paramInt1, paramInt2);
        if (!n.d()) {
          return;
        }
        n.c(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        D.i = true;
        K();
        n.d(paramInt1, paramInt2);
      }
    }
    else
    {
      if (r)
      {
        n.onMeasure(e, D, paramInt1, paramInt2);
        return;
      }
      if (w)
      {
        e();
        k();
        E();
        l();
        if (D.k)
        {
          D.g = true;
        }
        else
        {
          f.e();
          D.g = false;
        }
        w = false;
        a(false);
      }
      else if (D.k)
      {
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
        return;
      }
      if (m != null) {
        D.e = m.getItemCount();
      } else {
        D.e = 0;
      }
      e();
      n.onMeasure(e, D, paramInt1, paramInt2);
      a(false);
      D.g = false;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    if (isComputingLayout()) {
      return false;
    }
    return super.onRequestFocusInDescendants(paramInt, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    S = ((SavedState)paramParcelable);
    super.onRestoreInstanceState(S.getSuperState());
    if ((n != null) && (S.a != null)) {
      n.onRestoreInstanceState(S.a);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (S != null)
    {
      localSavedState.a(S);
      return localSavedState;
    }
    if (n != null)
    {
      a = n.onSaveInstanceState();
      return localSavedState;
    }
    a = null;
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  public void onScrolled(@Px int paramInt1, @Px int paramInt2) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      j();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = v;
    int i7 = 0;
    if (!bool1)
    {
      if (aa) {
        return false;
      }
      if (b(paramMotionEvent))
      {
        B();
        return true;
      }
      if (n == null) {
        return false;
      }
      bool1 = n.canScrollHorizontally();
      boolean bool2 = n.canScrollVertically();
      if (an == null) {
        an = VelocityTracker.obtain();
      }
      MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
      int i2 = paramMotionEvent.getActionMasked();
      int i1 = paramMotionEvent.getActionIndex();
      if (i2 == 0)
      {
        int[] arrayOfInt = aG;
        aG[1] = 0;
        arrayOfInt[0] = 0;
      }
      localMotionEvent.offsetLocation(aG[0], aG[1]);
      switch (i2)
      {
      case 4: 
      default: 
        i1 = i7;
        break;
      case 6: 
        c(paramMotionEvent);
        i1 = i7;
        break;
      case 5: 
        am = paramMotionEvent.getPointerId(i1);
        i2 = (int)(paramMotionEvent.getX(i1) + 0.5F);
        aq = i2;
        ao = i2;
        i1 = (int)(paramMotionEvent.getY(i1) + 0.5F);
        ar = i1;
        ap = i1;
        i1 = i7;
        break;
      case 3: 
        B();
        i1 = i7;
        break;
      case 2: 
        i1 = paramMotionEvent.findPointerIndex(am);
        if (i1 < 0)
        {
          paramMotionEvent = new StringBuilder();
          paramMotionEvent.append("Error processing scroll; pointer index for id ");
          paramMotionEvent.append(am);
          paramMotionEvent.append(" not found. Did any MotionEvents get skipped?");
          Log.e("RecyclerView", paramMotionEvent.toString());
          return false;
        }
        int i8 = (int)(paramMotionEvent.getX(i1) + 0.5F);
        int i9 = (int)(paramMotionEvent.getY(i1) + 0.5F);
        int i4 = aq - i8;
        int i3 = ar - i9;
        i2 = i4;
        i1 = i3;
        if (dispatchNestedPreScroll(i4, i3, I, aF, 0))
        {
          i2 = i4 - I[0];
          i1 = i3 - I[1];
          localMotionEvent.offsetLocation(aF[0], aF[1]);
          paramMotionEvent = aG;
          paramMotionEvent[0] += aF[0];
          paramMotionEvent = aG;
          paramMotionEvent[1] += aF[1];
        }
        i3 = i2;
        i4 = i1;
        if (al != 1)
        {
          if ((bool1) && (Math.abs(i2) > as))
          {
            if (i2 > 0) {
              i2 -= as;
            } else {
              i2 += as;
            }
            i3 = 1;
          }
          else
          {
            i3 = 0;
          }
          int i6 = i3;
          int i5 = i1;
          if (bool2)
          {
            i6 = i3;
            i5 = i1;
            if (Math.abs(i1) > as)
            {
              if (i1 > 0) {
                i5 = i1 - as;
              } else {
                i5 = i1 + as;
              }
              i6 = 1;
            }
          }
          i3 = i2;
          i4 = i5;
          if (i6 != 0)
          {
            setScrollState(1);
            i4 = i5;
            i3 = i2;
          }
        }
        i1 = i7;
        if (al == 1)
        {
          aq = (i8 - aF[0]);
          ar = (i9 - aF[1]);
          if (bool1) {
            i1 = i3;
          } else {
            i1 = 0;
          }
          if (bool2) {
            i2 = i4;
          } else {
            i2 = 0;
          }
          if (a(i1, i2, localMotionEvent)) {
            getParent().requestDisallowInterceptTouchEvent(true);
          }
          i1 = i7;
          if (B != null) {
            if (i3 == 0)
            {
              i1 = i7;
              if (i4 == 0) {
                break;
              }
            }
            else
            {
              B.a(this, i3, i4);
              i1 = i7;
            }
          }
        }
        break;
      case 1: 
        an.addMovement(localMotionEvent);
        an.computeCurrentVelocity(1000, av);
        float f1;
        if (bool1) {
          f1 = -an.getXVelocity(am);
        } else {
          f1 = 0.0F;
        }
        float f2;
        if (bool2) {
          f2 = -an.getYVelocity(am);
        } else {
          f2 = 0.0F;
        }
        if (((f1 == 0.0F) && (f2 == 0.0F)) || (!fling((int)f1, (int)f2))) {
          setScrollState(0);
        }
        A();
        i1 = 1;
        break;
      case 0: 
        am = paramMotionEvent.getPointerId(0);
        i1 = (int)(paramMotionEvent.getX() + 0.5F);
        aq = i1;
        ao = i1;
        i1 = (int)(paramMotionEvent.getY() + 0.5F);
        ar = i1;
        ap = i1;
        if (bool1) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        i2 = i1;
        if (bool2) {
          i2 = i1 | 0x2;
        }
        startNestedScroll(i2, 0);
        i1 = i7;
      }
      if (i1 == 0) {
        an.addMovement(localMotionEvent);
      }
      localMotionEvent.recycle();
      return true;
    }
    return false;
  }
  
  void p()
  {
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      g.d(i1).getLayoutParams()).e = true;
      i1 += 1;
    }
    e.h();
  }
  
  void q()
  {
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.d(i1));
      if (!localViewHolder.c()) {
        localViewHolder.b();
      }
      i1 += 1;
    }
  }
  
  void r()
  {
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.d(i1));
      if (!localViewHolder.c()) {
        localViewHolder.a();
      }
      i1 += 1;
    }
    e.g();
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    ViewHolder localViewHolder = b(paramView);
    if (localViewHolder != null) {
      if (localViewHolder.n())
      {
        localViewHolder.h();
      }
      else if (!localViewHolder.c())
      {
        paramView = new StringBuilder();
        paramView.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
        paramView.append(localViewHolder);
        paramView.append(a());
        throw new IllegalArgumentException(paramView.toString());
      }
    }
    paramView.clearAnimation();
    e(paramView);
    super.removeDetachedView(paramView, paramBoolean);
  }
  
  public void removeItemDecoration(@NonNull ItemDecoration paramItemDecoration)
  {
    if (n != null) {
      n.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
    }
    p.remove(paramItemDecoration);
    if (p.isEmpty())
    {
      boolean bool;
      if (getOverScrollMode() == 2) {
        bool = true;
      } else {
        bool = false;
      }
      setWillNotDraw(bool);
    }
    p();
    requestLayout();
  }
  
  public void removeItemDecorationAt(int paramInt)
  {
    int i1 = getItemDecorationCount();
    if ((paramInt >= 0) && (paramInt < i1))
    {
      removeItemDecoration(getItemDecorationAt(paramInt));
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" is an invalid index for size ");
    localStringBuilder.append(i1);
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
  
  public void removeOnChildAttachStateChangeListener(@NonNull OnChildAttachStateChangeListener paramOnChildAttachStateChangeListener)
  {
    if (ad == null) {
      return;
    }
    ad.remove(paramOnChildAttachStateChangeListener);
  }
  
  public void removeOnItemTouchListener(@NonNull OnItemTouchListener paramOnItemTouchListener)
  {
    U.remove(paramOnItemTouchListener);
    if (V == paramOnItemTouchListener) {
      V = null;
    }
  }
  
  public void removeOnScrollListener(@NonNull OnScrollListener paramOnScrollListener)
  {
    if (aA != null) {
      aA.remove(paramOnScrollListener);
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    if ((!n.onRequestChildFocus(this, D, paramView1, paramView2)) && (paramView2 != null)) {
      a(paramView1, paramView2);
    }
    super.requestChildFocus(paramView1, paramView2);
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return n.requestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int i2 = U.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((OnItemTouchListener)U.get(i1)).onRequestDisallowInterceptTouchEvent(paramBoolean);
      i1 += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((W == 0) && (!v))
    {
      super.requestLayout();
      return;
    }
    u = true;
  }
  
  void s()
  {
    int i2 = g.c();
    int i1 = 0;
    while (i1 < i2)
    {
      ViewHolder localViewHolder = b(g.d(i1));
      if ((localViewHolder != null) && (!localViewHolder.c())) {
        localViewHolder.b(6);
      }
      i1 += 1;
    }
    p();
    e.f();
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (n == null)
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    if (v) {
      return;
    }
    boolean bool1 = n.canScrollHorizontally();
    boolean bool2 = n.canScrollVertically();
    if ((bool1) || (bool2))
    {
      if (!bool1) {
        paramInt1 = 0;
      }
      if (!bool2) {
        paramInt2 = 0;
      }
      a(paramInt1, paramInt2, null);
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
  }
  
  public void scrollToPosition(int paramInt)
  {
    if (v) {
      return;
    }
    stopScroll();
    if (n == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    n.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (a(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(@Nullable RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
  {
    H = paramRecyclerViewAccessibilityDelegate;
    ViewCompat.setAccessibilityDelegate(this, H);
  }
  
  public void setAdapter(@Nullable Adapter paramAdapter)
  {
    setLayoutFrozen(false);
    a(paramAdapter, false, true);
    c(false);
    requestLayout();
  }
  
  public void setChildDrawingOrderCallback(@Nullable ChildDrawingOrderCallback paramChildDrawingOrderCallback)
  {
    if (paramChildDrawingOrderCallback == aC) {
      return;
    }
    aC = paramChildDrawingOrderCallback;
    boolean bool;
    if (aC != null) {
      bool = true;
    } else {
      bool = false;
    }
    setChildrenDrawingOrderEnabled(bool);
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != i) {
      j();
    }
    i = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (t) {
      requestLayout();
    }
  }
  
  public void setEdgeEffectFactory(@NonNull EdgeEffectFactory paramEdgeEffectFactory)
  {
    Preconditions.checkNotNull(paramEdgeEffectFactory);
    ag = paramEdgeEffectFactory;
    j();
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public void setItemAnimator(@Nullable ItemAnimator paramItemAnimator)
  {
    if (z != null)
    {
      z.endAnimations();
      z.a(null);
    }
    z = paramItemAnimator;
    if (z != null) {
      z.a(aB);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    e.setViewCacheSize(paramInt);
  }
  
  public void setLayoutFrozen(boolean paramBoolean)
  {
    if (paramBoolean != v)
    {
      b("Do not setLayoutFrozen in layout or scroll");
      if (!paramBoolean)
      {
        v = false;
        if ((u) && (n != null) && (m != null)) {
          requestLayout();
        }
        u = false;
        return;
      }
      long l1 = SystemClock.uptimeMillis();
      onTouchEvent(MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0));
      v = true;
      aa = true;
      stopScroll();
    }
  }
  
  public void setLayoutManager(@Nullable LayoutManager paramLayoutManager)
  {
    if (paramLayoutManager == n) {
      return;
    }
    stopScroll();
    if (n != null)
    {
      if (z != null) {
        z.endAnimations();
      }
      n.removeAndRecycleAllViews(e);
      n.a(e);
      e.clear();
      if (q) {
        n.a(this, e);
      }
      n.a(null);
      n = null;
    }
    else
    {
      e.clear();
    }
    g.a();
    n = paramLayoutManager;
    if (paramLayoutManager != null) {
      if (q == null)
      {
        n.a(this);
        if (q) {
          n.b(this);
        }
      }
      else
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("LayoutManager ");
        localStringBuilder.append(paramLayoutManager);
        localStringBuilder.append(" is already attached to a RecyclerView:");
        localStringBuilder.append(q.a());
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
    }
    e.a();
    requestLayout();
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    getScrollingChildHelper().setNestedScrollingEnabled(paramBoolean);
  }
  
  public void setOnFlingListener(@Nullable OnFlingListener paramOnFlingListener)
  {
    at = paramOnFlingListener;
  }
  
  @Deprecated
  public void setOnScrollListener(@Nullable OnScrollListener paramOnScrollListener)
  {
    az = paramOnScrollListener;
  }
  
  public void setPreserveFocusAfterLayout(boolean paramBoolean)
  {
    ay = paramBoolean;
  }
  
  public void setRecycledViewPool(@Nullable RecycledViewPool paramRecycledViewPool)
  {
    e.a(paramRecycledViewPool);
  }
  
  public void setRecyclerListener(@Nullable RecyclerListener paramRecyclerListener)
  {
    o = paramRecyclerListener;
  }
  
  void setScrollState(int paramInt)
  {
    if (paramInt == al) {
      return;
    }
    al = paramInt;
    if (paramInt != 2) {
      y();
    }
    b(paramInt);
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("setScrollingTouchSlop(): bad argument constant ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append("; using default value");
      Log.w("RecyclerView", localStringBuilder.toString());
      break;
    case 1: 
      as = localViewConfiguration.getScaledPagingTouchSlop();
      return;
    }
    as = localViewConfiguration.getScaledTouchSlop();
  }
  
  public void setViewCacheExtension(@Nullable ViewCacheExtension paramViewCacheExtension)
  {
    e.a(paramViewCacheExtension);
  }
  
  public void smoothScrollBy(@Px int paramInt1, @Px int paramInt2)
  {
    smoothScrollBy(paramInt1, paramInt2, null);
  }
  
  public void smoothScrollBy(@Px int paramInt1, @Px int paramInt2, @Nullable Interpolator paramInterpolator)
  {
    if (n == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    if (v) {
      return;
    }
    if (!n.canScrollHorizontally()) {
      paramInt1 = 0;
    }
    if (!n.canScrollVertically()) {
      paramInt2 = 0;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      A.a(paramInt1, paramInt2, paramInterpolator);
    }
  }
  
  public void smoothScrollToPosition(int paramInt)
  {
    if (v) {
      return;
    }
    if (n == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    n.smoothScrollToPosition(this, D, paramInt);
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return getScrollingChildHelper().startNestedScroll(paramInt);
  }
  
  public boolean startNestedScroll(int paramInt1, int paramInt2)
  {
    return getScrollingChildHelper().startNestedScroll(paramInt1, paramInt2);
  }
  
  public void stopNestedScroll()
  {
    getScrollingChildHelper().stopNestedScroll();
  }
  
  public void stopNestedScroll(int paramInt)
  {
    getScrollingChildHelper().stopNestedScroll(paramInt);
  }
  
  public void stopScroll()
  {
    setScrollState(0);
    y();
  }
  
  public void swapAdapter(@Nullable Adapter paramAdapter, boolean paramBoolean)
  {
    setLayoutFrozen(false);
    a(paramAdapter, true, paramBoolean);
    c(true);
    requestLayout();
  }
  
  void t()
  {
    int i2 = g.b();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = g.b(i1);
      Object localObject = getChildViewHolder(localView);
      if ((localObject != null) && (h != null))
      {
        localObject = h.itemView;
        int i3 = localView.getLeft();
        int i4 = localView.getTop();
        if ((i3 != ((View)localObject).getLeft()) || (i4 != ((View)localObject).getTop())) {
          ((View)localObject).layout(i3, i4, ((View)localObject).getWidth() + i3, ((View)localObject).getHeight() + i4);
        }
      }
      i1 += 1;
    }
  }
  
  void u()
  {
    int i1 = K.size() - 1;
    while (i1 >= 0)
    {
      ViewHolder localViewHolder = (ViewHolder)K.get(i1);
      if ((itemView.getParent() == this) && (!localViewHolder.c()))
      {
        int i2 = n;
        if (i2 != -1)
        {
          ViewCompat.setImportantForAccessibility(itemView, i2);
          n = -1;
        }
      }
      i1 -= 1;
    }
    K.clear();
  }
  
  public static abstract class Adapter<VH extends RecyclerView.ViewHolder>
  {
    private final RecyclerView.a a = new RecyclerView.a();
    private boolean b = false;
    
    public Adapter() {}
    
    public final void bindViewHolder(@NonNull VH paramVH, int paramInt)
    {
      b = paramInt;
      if (hasStableIds()) {
        d = getItemId(paramInt);
      }
      paramVH.a(1, 519);
      TraceCompat.beginSection("RV OnBindView");
      onBindViewHolder(paramVH, paramInt, paramVH.q());
      paramVH.p();
      paramVH = itemView.getLayoutParams();
      if ((paramVH instanceof RecyclerView.LayoutParams)) {
        e = true;
      }
      TraceCompat.endSection();
    }
    
    @NonNull
    public final VH createViewHolder(@NonNull ViewGroup paramViewGroup, int paramInt)
    {
      try
      {
        TraceCompat.beginSection("RV CreateView");
        paramViewGroup = onCreateViewHolder(paramViewGroup, paramInt);
        if (itemView.getParent() == null)
        {
          e = paramInt;
          return paramViewGroup;
        }
        throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
      }
      finally
      {
        TraceCompat.endSection();
      }
    }
    
    public abstract int getItemCount();
    
    public long getItemId(int paramInt)
    {
      return -1L;
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public final boolean hasObservers()
    {
      return a.a();
    }
    
    public final boolean hasStableIds()
    {
      return b;
    }
    
    public final void notifyDataSetChanged()
    {
      a.b();
    }
    
    public final void notifyItemChanged(int paramInt)
    {
      a.a(paramInt, 1);
    }
    
    public final void notifyItemChanged(int paramInt, @Nullable Object paramObject)
    {
      a.a(paramInt, 1, paramObject);
    }
    
    public final void notifyItemInserted(int paramInt)
    {
      a.b(paramInt, 1);
    }
    
    public final void notifyItemMoved(int paramInt1, int paramInt2)
    {
      a.d(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2)
    {
      a.a(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2, @Nullable Object paramObject)
    {
      a.a(paramInt1, paramInt2, paramObject);
    }
    
    public final void notifyItemRangeInserted(int paramInt1, int paramInt2)
    {
      a.b(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeRemoved(int paramInt1, int paramInt2)
    {
      a.c(paramInt1, paramInt2);
    }
    
    public final void notifyItemRemoved(int paramInt)
    {
      a.c(paramInt, 1);
    }
    
    public void onAttachedToRecyclerView(@NonNull RecyclerView paramRecyclerView) {}
    
    public abstract void onBindViewHolder(@NonNull VH paramVH, int paramInt);
    
    public void onBindViewHolder(@NonNull VH paramVH, int paramInt, @NonNull List<Object> paramList)
    {
      onBindViewHolder(paramVH, paramInt);
    }
    
    @NonNull
    public abstract VH onCreateViewHolder(@NonNull ViewGroup paramViewGroup, int paramInt);
    
    public void onDetachedFromRecyclerView(@NonNull RecyclerView paramRecyclerView) {}
    
    public boolean onFailedToRecycleView(@NonNull VH paramVH)
    {
      return false;
    }
    
    public void onViewAttachedToWindow(@NonNull VH paramVH) {}
    
    public void onViewDetachedFromWindow(@NonNull VH paramVH) {}
    
    public void onViewRecycled(@NonNull VH paramVH) {}
    
    public void registerAdapterDataObserver(@NonNull RecyclerView.AdapterDataObserver paramAdapterDataObserver)
    {
      a.registerObserver(paramAdapterDataObserver);
    }
    
    public void setHasStableIds(boolean paramBoolean)
    {
      if (!hasObservers())
      {
        b = paramBoolean;
        return;
      }
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }
    
    public void unregisterAdapterDataObserver(@NonNull RecyclerView.AdapterDataObserver paramAdapterDataObserver)
    {
      a.unregisterObserver(paramAdapterDataObserver);
    }
  }
  
  public static abstract class AdapterDataObserver
  {
    public AdapterDataObserver() {}
    
    public void onChanged() {}
    
    public void onItemRangeChanged(int paramInt1, int paramInt2) {}
    
    public void onItemRangeChanged(int paramInt1, int paramInt2, @Nullable Object paramObject)
    {
      onItemRangeChanged(paramInt1, paramInt2);
    }
    
    public void onItemRangeInserted(int paramInt1, int paramInt2) {}
    
    public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onItemRangeRemoved(int paramInt1, int paramInt2) {}
  }
  
  public static abstract interface ChildDrawingOrderCallback
  {
    public abstract int onGetChildDrawingOrder(int paramInt1, int paramInt2);
  }
  
  public static class EdgeEffectFactory
  {
    public static final int DIRECTION_BOTTOM = 3;
    public static final int DIRECTION_LEFT = 0;
    public static final int DIRECTION_RIGHT = 2;
    public static final int DIRECTION_TOP = 1;
    
    public EdgeEffectFactory() {}
    
    @NonNull
    protected EdgeEffect createEdgeEffect(@NonNull RecyclerView paramRecyclerView, int paramInt)
    {
      return new EdgeEffect(paramRecyclerView.getContext());
    }
    
    @Retention(RetentionPolicy.SOURCE)
    public static @interface EdgeDirection {}
  }
  
  public static abstract class ItemAnimator
  {
    public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    public static final int FLAG_CHANGED = 2;
    public static final int FLAG_INVALIDATED = 4;
    public static final int FLAG_MOVED = 2048;
    public static final int FLAG_REMOVED = 8;
    private a a = null;
    private ArrayList<ItemAnimatorFinishedListener> b = new ArrayList();
    private long c = 120L;
    private long d = 120L;
    private long e = 250L;
    private long f = 250L;
    
    public ItemAnimator() {}
    
    static int b(RecyclerView.ViewHolder paramViewHolder)
    {
      int j = paramViewHolder.i & 0xE;
      if (paramViewHolder.j()) {
        return 4;
      }
      int i = j;
      if ((j & 0x4) == 0)
      {
        int k = paramViewHolder.getOldPosition();
        int m = paramViewHolder.getAdapterPosition();
        i = j;
        if (k != -1)
        {
          i = j;
          if (m != -1)
          {
            i = j;
            if (k != m) {
              i = j | 0x800;
            }
          }
        }
      }
      return i;
    }
    
    void a(a paramA)
    {
      a = paramA;
    }
    
    public abstract boolean animateAppearance(@NonNull RecyclerView.ViewHolder paramViewHolder, @Nullable ItemHolderInfo paramItemHolderInfo1, @NonNull ItemHolderInfo paramItemHolderInfo2);
    
    public abstract boolean animateChange(@NonNull RecyclerView.ViewHolder paramViewHolder1, @NonNull RecyclerView.ViewHolder paramViewHolder2, @NonNull ItemHolderInfo paramItemHolderInfo1, @NonNull ItemHolderInfo paramItemHolderInfo2);
    
    public abstract boolean animateDisappearance(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull ItemHolderInfo paramItemHolderInfo1, @Nullable ItemHolderInfo paramItemHolderInfo2);
    
    public abstract boolean animatePersistence(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull ItemHolderInfo paramItemHolderInfo1, @NonNull ItemHolderInfo paramItemHolderInfo2);
    
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return true;
    }
    
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull List<Object> paramList)
    {
      return canReuseUpdatedViewHolder(paramViewHolder);
    }
    
    public final void dispatchAnimationFinished(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      onAnimationFinished(paramViewHolder);
      if (a != null) {
        a.a(paramViewHolder);
      }
    }
    
    public final void dispatchAnimationStarted(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      onAnimationStarted(paramViewHolder);
    }
    
    public final void dispatchAnimationsFinished()
    {
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        ((ItemAnimatorFinishedListener)b.get(i)).onAnimationsFinished();
        i += 1;
      }
      b.clear();
    }
    
    public abstract void endAnimation(@NonNull RecyclerView.ViewHolder paramViewHolder);
    
    public abstract void endAnimations();
    
    public long getAddDuration()
    {
      return c;
    }
    
    public long getChangeDuration()
    {
      return f;
    }
    
    public long getMoveDuration()
    {
      return e;
    }
    
    public long getRemoveDuration()
    {
      return d;
    }
    
    public abstract boolean isRunning();
    
    public final boolean isRunning(@Nullable ItemAnimatorFinishedListener paramItemAnimatorFinishedListener)
    {
      boolean bool = isRunning();
      if (paramItemAnimatorFinishedListener != null)
      {
        if (!bool)
        {
          paramItemAnimatorFinishedListener.onAnimationsFinished();
          return bool;
        }
        b.add(paramItemAnimatorFinishedListener);
      }
      return bool;
    }
    
    @NonNull
    public ItemHolderInfo obtainHolderInfo()
    {
      return new ItemHolderInfo();
    }
    
    public void onAnimationFinished(@NonNull RecyclerView.ViewHolder paramViewHolder) {}
    
    public void onAnimationStarted(@NonNull RecyclerView.ViewHolder paramViewHolder) {}
    
    @NonNull
    public ItemHolderInfo recordPostLayoutInformation(@NonNull RecyclerView.State paramState, @NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return obtainHolderInfo().setFrom(paramViewHolder);
    }
    
    @NonNull
    public ItemHolderInfo recordPreLayoutInformation(@NonNull RecyclerView.State paramState, @NonNull RecyclerView.ViewHolder paramViewHolder, int paramInt, @NonNull List<Object> paramList)
    {
      return obtainHolderInfo().setFrom(paramViewHolder);
    }
    
    public abstract void runPendingAnimations();
    
    public void setAddDuration(long paramLong)
    {
      c = paramLong;
    }
    
    public void setChangeDuration(long paramLong)
    {
      f = paramLong;
    }
    
    public void setMoveDuration(long paramLong)
    {
      e = paramLong;
    }
    
    public void setRemoveDuration(long paramLong)
    {
      d = paramLong;
    }
    
    @Retention(RetentionPolicy.SOURCE)
    public static @interface AdapterChanges {}
    
    public static abstract interface ItemAnimatorFinishedListener
    {
      public abstract void onAnimationsFinished();
    }
    
    public static class ItemHolderInfo
    {
      public int bottom;
      public int changeFlags;
      public int left;
      public int right;
      public int top;
      
      public ItemHolderInfo() {}
      
      @NonNull
      public ItemHolderInfo setFrom(@NonNull RecyclerView.ViewHolder paramViewHolder)
      {
        return setFrom(paramViewHolder, 0);
      }
      
      @NonNull
      public ItemHolderInfo setFrom(@NonNull RecyclerView.ViewHolder paramViewHolder, int paramInt)
      {
        paramViewHolder = itemView;
        left = paramViewHolder.getLeft();
        top = paramViewHolder.getTop();
        right = paramViewHolder.getRight();
        bottom = paramViewHolder.getBottom();
        return this;
      }
    }
    
    static abstract interface a
    {
      public abstract void a(@NonNull RecyclerView.ViewHolder paramViewHolder);
    }
  }
  
  public static abstract class ItemDecoration
  {
    public ItemDecoration() {}
    
    @Deprecated
    public void getItemOffsets(@NonNull Rect paramRect, int paramInt, @NonNull RecyclerView paramRecyclerView)
    {
      paramRect.set(0, 0, 0, 0);
    }
    
    public void getItemOffsets(@NonNull Rect paramRect, @NonNull View paramView, @NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.State paramState)
    {
      getItemOffsets(paramRect, ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition(), paramRecyclerView);
    }
    
    @Deprecated
    public void onDraw(@NonNull Canvas paramCanvas, @NonNull RecyclerView paramRecyclerView) {}
    
    public void onDraw(@NonNull Canvas paramCanvas, @NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.State paramState)
    {
      onDraw(paramCanvas, paramRecyclerView);
    }
    
    @Deprecated
    public void onDrawOver(@NonNull Canvas paramCanvas, @NonNull RecyclerView paramRecyclerView) {}
    
    public void onDrawOver(@NonNull Canvas paramCanvas, @NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.State paramState)
    {
      onDrawOver(paramCanvas, paramRecyclerView);
    }
  }
  
  public static abstract class LayoutManager
  {
    private final ViewBoundsCheck.b a = new ViewBoundsCheck.b()
    {
      public int a()
      {
        return getPaddingLeft();
      }
      
      public int a(View paramAnonymousView)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramAnonymousView.getLayoutParams();
        return getDecoratedLeft(paramAnonymousView) - leftMargin;
      }
      
      public View a(int paramAnonymousInt)
      {
        return getChildAt(paramAnonymousInt);
      }
      
      public int b()
      {
        return getWidth() - getPaddingRight();
      }
      
      public int b(View paramAnonymousView)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramAnonymousView.getLayoutParams();
        return getDecoratedRight(paramAnonymousView) + rightMargin;
      }
    };
    private final ViewBoundsCheck.b b = new ViewBoundsCheck.b()
    {
      public int a()
      {
        return getPaddingTop();
      }
      
      public int a(View paramAnonymousView)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramAnonymousView.getLayoutParams();
        return getDecoratedTop(paramAnonymousView) - topMargin;
      }
      
      public View a(int paramAnonymousInt)
      {
        return getChildAt(paramAnonymousInt);
      }
      
      public int b()
      {
        return getHeight() - getPaddingBottom();
      }
      
      public int b(View paramAnonymousView)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramAnonymousView.getLayoutParams();
        return getDecoratedBottom(paramAnonymousView) + bottomMargin;
      }
    };
    private boolean c = true;
    private boolean d = true;
    private int e;
    private int f;
    private int g;
    private int h;
    q p;
    RecyclerView q;
    ViewBoundsCheck r = new ViewBoundsCheck(a);
    ViewBoundsCheck s = new ViewBoundsCheck(b);
    @Nullable
    RecyclerView.SmoothScroller t;
    boolean u = false;
    boolean v = false;
    boolean w = false;
    int x;
    boolean y;
    
    public LayoutManager() {}
    
    private void a(int paramInt, @NonNull View paramView)
    {
      p.e(paramInt);
    }
    
    private void a(RecyclerView.Recycler paramRecycler, int paramInt, View paramView)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.b(paramView);
      if (localViewHolder.c()) {
        return;
      }
      if ((localViewHolder.j()) && (!localViewHolder.m()) && (!q.m.hasStableIds()))
      {
        removeViewAt(paramInt);
        paramRecycler.b(localViewHolder);
        return;
      }
      detachViewAt(paramInt);
      paramRecycler.b(paramView);
      q.h.h(localViewHolder);
    }
    
    private void a(View paramView, int paramInt, boolean paramBoolean)
    {
      Object localObject = RecyclerView.b(paramView);
      if ((!paramBoolean) && (!((RecyclerView.ViewHolder)localObject).m())) {
        q.h.f((RecyclerView.ViewHolder)localObject);
      } else {
        q.h.e((RecyclerView.ViewHolder)localObject);
      }
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      if ((!((RecyclerView.ViewHolder)localObject).f()) && (!((RecyclerView.ViewHolder)localObject).d()))
      {
        if (paramView.getParent() == q)
        {
          int j = p.b(paramView);
          int i = paramInt;
          if (paramInt == -1) {
            i = p.b();
          }
          if (j != -1)
          {
            if (j != i) {
              q.n.moveView(j, i);
            }
          }
          else
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
            ((StringBuilder)localObject).append(q.indexOfChild(paramView));
            ((StringBuilder)localObject).append(q.a());
            throw new IllegalStateException(((StringBuilder)localObject).toString());
          }
        }
        else
        {
          p.a(paramView, paramInt, false);
          e = true;
          if ((t != null) && (t.isRunning())) {
            t.onChildAttachedToWindow(paramView);
          }
        }
      }
      else
      {
        if (((RecyclerView.ViewHolder)localObject).d()) {
          ((RecyclerView.ViewHolder)localObject).e();
        } else {
          ((RecyclerView.ViewHolder)localObject).g();
        }
        p.a(paramView, paramInt, paramView.getLayoutParams(), false);
      }
      if (f)
      {
        itemView.invalidate();
        f = false;
      }
    }
    
    private static boolean a(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      boolean bool2 = false;
      boolean bool1 = false;
      if ((paramInt3 > 0) && (paramInt1 != paramInt3)) {
        return false;
      }
      if (i != Integer.MIN_VALUE)
      {
        if (i != 0)
        {
          if (i != 1073741824) {
            return false;
          }
          if (paramInt2 == paramInt1) {
            bool1 = true;
          }
          return bool1;
        }
        return true;
      }
      bool1 = bool2;
      if (paramInt2 >= paramInt1) {
        bool1 = true;
      }
      return bool1;
    }
    
    private boolean a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
    {
      paramRecyclerView = paramRecyclerView.getFocusedChild();
      if (paramRecyclerView == null) {
        return false;
      }
      int i = getPaddingLeft();
      int j = getPaddingTop();
      int k = getWidth();
      int m = getPaddingRight();
      int n = getHeight();
      int i1 = getPaddingBottom();
      Rect localRect = q.k;
      getDecoratedBoundsWithMargins(paramRecyclerView, localRect);
      if ((left - paramInt1 < k - m) && (right - paramInt1 > i) && (top - paramInt2 < n - i1)) {
        return bottom - paramInt2 > j;
      }
      return false;
    }
    
    private int[] a(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
    {
      int i = getPaddingLeft();
      int j = getPaddingTop();
      int k = getWidth();
      int i5 = getPaddingRight();
      int n = getHeight();
      int i1 = getPaddingBottom();
      int i6 = paramView.getLeft() + left - paramView.getScrollX();
      int i2 = paramView.getTop() + top - paramView.getScrollY();
      int i7 = paramRect.width();
      int i3 = paramRect.height();
      int i4 = i6 - i;
      i = Math.min(0, i4);
      int m = i2 - j;
      j = Math.min(0, m);
      i5 = i7 + i6 - (k - i5);
      k = Math.max(0, i5);
      n = Math.max(0, i3 + i2 - (n - i1));
      if (getLayoutDirection() == 1)
      {
        if (k != 0) {
          i = k;
        } else {
          i = Math.max(i, i5);
        }
      }
      else if (i == 0) {
        for (;;)
        {
          i = Math.min(i4, k);
        }
      }
      if (j == 0) {
        j = Math.min(m, n);
      }
      return new int[] { i, j };
    }
    
    public static int chooseSize(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = View.MeasureSpec.getMode(paramInt1);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      if (i != Integer.MIN_VALUE)
      {
        if (i != 1073741824) {
          return Math.max(paramInt2, paramInt3);
        }
        return paramInt1;
      }
      return Math.min(paramInt1, Math.max(paramInt2, paramInt3));
    }
    
    public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      int j = 0;
      int i = Math.max(0, paramInt1 - paramInt3);
      if (paramBoolean) {
        if (paramInt4 < 0) {}
      }
      while (paramInt4 >= 0)
      {
        paramInt3 = paramInt4;
        paramInt1 = 1073741824;
        break label125;
        if (paramInt4 != -1) {
          break;
        }
        if ((paramInt2 != Integer.MIN_VALUE) && ((paramInt2 == 0) || (paramInt2 != 1073741824)))
        {
          paramInt2 = 0;
          paramInt1 = 0;
        }
        else
        {
          paramInt1 = i;
        }
        paramInt3 = paramInt1;
        paramInt1 = paramInt2;
        break label125;
      }
      if (paramInt4 == -1)
      {
        paramInt1 = paramInt2;
        paramInt3 = i;
      }
      else if (paramInt4 == -2)
      {
        if (paramInt2 != Integer.MIN_VALUE)
        {
          paramInt3 = i;
          paramInt1 = j;
          if (paramInt2 != 1073741824) {}
        }
        else
        {
          paramInt1 = Integer.MIN_VALUE;
          paramInt3 = i;
        }
      }
      else
      {
        paramInt3 = 0;
        paramInt1 = j;
      }
      label125:
      return View.MeasureSpec.makeMeasureSpec(paramInt3, paramInt1);
    }
    
    @Deprecated
    public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      int i = 0;
      paramInt1 = Math.max(0, paramInt1 - paramInt2);
      if (paramBoolean) {
        if (paramInt3 >= 0)
        {
          paramInt1 = paramInt3;
          label21:
          paramInt2 = 1073741824;
          break label59;
        }
      }
      do
      {
        paramInt1 = 0;
        paramInt2 = i;
        break label59;
        if (paramInt3 >= 0) {
          break;
        }
        if (paramInt3 == -1) {
          break label21;
        }
      } while (paramInt3 != -2);
      paramInt2 = Integer.MIN_VALUE;
      label59:
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
    }
    
    public static Properties getProperties(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
    {
      Properties localProperties = new Properties();
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt1, paramInt2);
      orientation = paramContext.getInt(R.styleable.RecyclerView_android_orientation, 1);
      spanCount = paramContext.getInt(R.styleable.RecyclerView_spanCount, 1);
      reverseLayout = paramContext.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
      stackFromEnd = paramContext.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
      paramContext.recycle();
      return localProperties;
    }
    
    void a(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      onInitializeAccessibilityNodeInfo(q.e, q.D, paramAccessibilityNodeInfoCompat);
    }
    
    void a(RecyclerView.Recycler paramRecycler)
    {
      int j = paramRecycler.c();
      int i = j - 1;
      while (i >= 0)
      {
        View localView = paramRecycler.b(i);
        RecyclerView.ViewHolder localViewHolder = RecyclerView.b(localView);
        if (!localViewHolder.c())
        {
          localViewHolder.setIsRecyclable(false);
          if (localViewHolder.n()) {
            q.removeDetachedView(localView, false);
          }
          if (q.z != null) {
            q.z.endAnimation(localViewHolder);
          }
          localViewHolder.setIsRecyclable(true);
          paramRecycler.a(localView);
        }
        i -= 1;
      }
      paramRecycler.d();
      if (j > 0) {
        q.invalidate();
      }
    }
    
    void a(RecyclerView.SmoothScroller paramSmoothScroller)
    {
      if (t == paramSmoothScroller) {
        t = null;
      }
    }
    
    void a(RecyclerView paramRecyclerView)
    {
      if (paramRecyclerView == null)
      {
        q = null;
        p = null;
        g = 0;
        h = 0;
      }
      else
      {
        q = paramRecyclerView;
        p = g;
        g = paramRecyclerView.getWidth();
        h = paramRecyclerView.getHeight();
      }
      e = 1073741824;
      f = 1073741824;
    }
    
    void a(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
    {
      v = false;
      onDetachedFromWindow(paramRecyclerView, paramRecycler);
    }
    
    void a(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.b(paramView);
      if ((localViewHolder != null) && (!localViewHolder.m()) && (!p.c(itemView))) {
        onInitializeAccessibilityNodeInfoForItem(q.e, q.D, paramView, paramAccessibilityNodeInfoCompat);
      }
    }
    
    boolean a(int paramInt, @Nullable Bundle paramBundle)
    {
      return performAccessibilityAction(q.e, q.D, paramInt, paramBundle);
    }
    
    boolean a(View paramView, int paramInt1, int paramInt2, RecyclerView.LayoutParams paramLayoutParams)
    {
      return (!c) || (!a(paramView.getMeasuredWidth(), paramInt1, width)) || (!a(paramView.getMeasuredHeight(), paramInt2, height));
    }
    
    boolean a(@NonNull View paramView, int paramInt, @Nullable Bundle paramBundle)
    {
      return performAccessibilityActionForItem(q.e, q.D, paramView, paramInt, paramBundle);
    }
    
    public void addDisappearingView(View paramView)
    {
      addDisappearingView(paramView, -1);
    }
    
    public void addDisappearingView(View paramView, int paramInt)
    {
      a(paramView, paramInt, true);
    }
    
    public void addView(View paramView)
    {
      addView(paramView, -1);
    }
    
    public void addView(View paramView, int paramInt)
    {
      a(paramView, paramInt, false);
    }
    
    public void assertInLayoutOrScroll(String paramString)
    {
      if (q != null) {
        q.a(paramString);
      }
    }
    
    public void assertNotInLayoutOrScroll(String paramString)
    {
      if (q != null) {
        q.b(paramString);
      }
    }
    
    public void attachView(@NonNull View paramView)
    {
      attachView(paramView, -1);
    }
    
    public void attachView(@NonNull View paramView, int paramInt)
    {
      attachView(paramView, paramInt, (RecyclerView.LayoutParams)paramView.getLayoutParams());
    }
    
    public void attachView(@NonNull View paramView, int paramInt, RecyclerView.LayoutParams paramLayoutParams)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.b(paramView);
      if (localViewHolder.m()) {
        q.h.e(localViewHolder);
      } else {
        q.h.f(localViewHolder);
      }
      p.a(paramView, paramInt, paramLayoutParams, localViewHolder.m());
    }
    
    void b(RecyclerView paramRecyclerView)
    {
      v = true;
      onAttachedToWindow(paramRecyclerView);
    }
    
    boolean b(View paramView, int paramInt1, int paramInt2, RecyclerView.LayoutParams paramLayoutParams)
    {
      return (paramView.isLayoutRequested()) || (!c) || (!a(paramView.getWidth(), paramInt1, width)) || (!a(paramView.getHeight(), paramInt2, height));
    }
    
    void c(int paramInt1, int paramInt2)
    {
      g = View.MeasureSpec.getSize(paramInt1);
      e = View.MeasureSpec.getMode(paramInt1);
      if ((e == 0) && (!RecyclerView.b)) {
        g = 0;
      }
      h = View.MeasureSpec.getSize(paramInt2);
      f = View.MeasureSpec.getMode(paramInt2);
      if ((f == 0) && (!RecyclerView.b)) {
        h = 0;
      }
    }
    
    void c(RecyclerView paramRecyclerView)
    {
      c(View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824));
    }
    
    public void calculateItemDecorationsForChild(@NonNull View paramView, @NonNull Rect paramRect)
    {
      if (q == null)
      {
        paramRect.set(0, 0, 0, 0);
        return;
      }
      paramRect.set(q.c(paramView));
    }
    
    public boolean canScrollHorizontally()
    {
      return false;
    }
    
    public boolean canScrollVertically()
    {
      return false;
    }
    
    public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
    {
      return paramLayoutParams != null;
    }
    
    public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView.State paramState, LayoutPrefetchRegistry paramLayoutPrefetchRegistry) {}
    
    public void collectInitialPrefetchPositions(int paramInt, LayoutPrefetchRegistry paramLayoutPrefetchRegistry) {}
    
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int computeVerticalScrollRange(@NonNull RecyclerView.State paramState)
    {
      return 0;
    }
    
    void d(int paramInt1, int paramInt2)
    {
      int i4 = getChildCount();
      if (i4 == 0)
      {
        q.c(paramInt1, paramInt2);
        return;
      }
      int j = 0;
      int i2 = Integer.MAX_VALUE;
      int m = Integer.MAX_VALUE;
      int n = Integer.MIN_VALUE;
      int i3;
      for (int i = Integer.MIN_VALUE; j < i4; i = i3)
      {
        View localView = getChildAt(j);
        Rect localRect = q.k;
        getDecoratedBoundsWithMargins(localView, localRect);
        int k = i2;
        if (left < i2) {
          k = left;
        }
        int i1 = n;
        if (right > n) {
          i1 = right;
        }
        n = m;
        if (top < m) {
          n = top;
        }
        i3 = i;
        if (bottom > i) {
          i3 = bottom;
        }
        j += 1;
        m = n;
        i2 = k;
        n = i1;
      }
      q.k.set(i2, m, n, i);
      setMeasuredDimension(q.k, paramInt1, paramInt2);
    }
    
    boolean d()
    {
      return false;
    }
    
    public void detachAndScrapAttachedViews(@NonNull RecyclerView.Recycler paramRecycler)
    {
      int i = getChildCount() - 1;
      while (i >= 0)
      {
        a(paramRecycler, i, getChildAt(i));
        i -= 1;
      }
    }
    
    public void detachAndScrapView(@NonNull View paramView, @NonNull RecyclerView.Recycler paramRecycler)
    {
      a(paramRecycler, p.b(paramView), paramView);
    }
    
    public void detachAndScrapViewAt(int paramInt, @NonNull RecyclerView.Recycler paramRecycler)
    {
      a(paramRecycler, paramInt, getChildAt(paramInt));
    }
    
    public void detachView(@NonNull View paramView)
    {
      int i = p.b(paramView);
      if (i >= 0) {
        a(i, paramView);
      }
    }
    
    public void detachViewAt(int paramInt)
    {
      a(paramInt, getChildAt(paramInt));
    }
    
    void e()
    {
      if (t != null) {
        t.stop();
      }
    }
    
    public void endAnimation(View paramView)
    {
      if (q.z != null) {
        q.z.endAnimation(RecyclerView.b(paramView));
      }
    }
    
    boolean f()
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        ViewGroup.LayoutParams localLayoutParams = getChildAt(i).getLayoutParams();
        if ((width < 0) && (height < 0)) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    @Nullable
    public View findContainingItemView(@NonNull View paramView)
    {
      if (q == null) {
        return null;
      }
      paramView = q.findContainingItemView(paramView);
      if (paramView == null) {
        return null;
      }
      if (p.c(paramView)) {
        return null;
      }
      return paramView;
    }
    
    @Nullable
    public View findViewByPosition(int paramInt)
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = getChildAt(i);
        RecyclerView.ViewHolder localViewHolder = RecyclerView.b(localView);
        if ((localViewHolder != null) && (localViewHolder.getLayoutPosition() == paramInt) && (!localViewHolder.c()) && ((q.D.isPreLayout()) || (!localViewHolder.m()))) {
          return localView;
        }
        i += 1;
      }
      return null;
    }
    
    public abstract RecyclerView.LayoutParams generateDefaultLayoutParams();
    
    public RecyclerView.LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      return new RecyclerView.LayoutParams(paramContext, paramAttributeSet);
    }
    
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      if ((paramLayoutParams instanceof RecyclerView.LayoutParams)) {
        return new RecyclerView.LayoutParams((RecyclerView.LayoutParams)paramLayoutParams);
      }
      if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
        return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
      }
      return new RecyclerView.LayoutParams(paramLayoutParams);
    }
    
    public int getBaseline()
    {
      return -1;
    }
    
    public int getBottomDecorationHeight(@NonNull View paramView)
    {
      return getLayoutParamsd.bottom;
    }
    
    @Nullable
    public View getChildAt(int paramInt)
    {
      if (p != null) {
        return p.b(paramInt);
      }
      return null;
    }
    
    public int getChildCount()
    {
      if (p != null) {
        return p.b();
      }
      return 0;
    }
    
    public boolean getClipToPadding()
    {
      return (q != null) && (q.i);
    }
    
    public int getColumnCountForAccessibility(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState)
    {
      paramRecycler = q;
      int i = 1;
      if (paramRecycler != null)
      {
        if (q.m == null) {
          return 1;
        }
        if (canScrollHorizontally()) {
          i = q.m.getItemCount();
        }
        return i;
      }
      return 1;
    }
    
    public int getDecoratedBottom(@NonNull View paramView)
    {
      return paramView.getBottom() + getBottomDecorationHeight(paramView);
    }
    
    public void getDecoratedBoundsWithMargins(@NonNull View paramView, @NonNull Rect paramRect)
    {
      RecyclerView.a(paramView, paramRect);
    }
    
    public int getDecoratedLeft(@NonNull View paramView)
    {
      return paramView.getLeft() - getLeftDecorationWidth(paramView);
    }
    
    public int getDecoratedMeasuredHeight(@NonNull View paramView)
    {
      Rect localRect = getLayoutParamsd;
      return paramView.getMeasuredHeight() + top + bottom;
    }
    
    public int getDecoratedMeasuredWidth(@NonNull View paramView)
    {
      Rect localRect = getLayoutParamsd;
      return paramView.getMeasuredWidth() + left + right;
    }
    
    public int getDecoratedRight(@NonNull View paramView)
    {
      return paramView.getRight() + getRightDecorationWidth(paramView);
    }
    
    public int getDecoratedTop(@NonNull View paramView)
    {
      return paramView.getTop() - getTopDecorationHeight(paramView);
    }
    
    @Nullable
    public View getFocusedChild()
    {
      if (q == null) {
        return null;
      }
      View localView = q.getFocusedChild();
      if (localView != null)
      {
        if (p.c(localView)) {
          return null;
        }
        return localView;
      }
      return null;
    }
    
    @Px
    public int getHeight()
    {
      return h;
    }
    
    public int getHeightMode()
    {
      return f;
    }
    
    public int getItemCount()
    {
      RecyclerView.Adapter localAdapter;
      if (q != null) {
        localAdapter = q.getAdapter();
      } else {
        localAdapter = null;
      }
      if (localAdapter != null) {
        return localAdapter.getItemCount();
      }
      return 0;
    }
    
    public int getItemViewType(@NonNull View paramView)
    {
      return RecyclerView.b(paramView).getItemViewType();
    }
    
    public int getLayoutDirection()
    {
      return ViewCompat.getLayoutDirection(q);
    }
    
    public int getLeftDecorationWidth(@NonNull View paramView)
    {
      return getLayoutParamsd.left;
    }
    
    @Px
    public int getMinimumHeight()
    {
      return ViewCompat.getMinimumHeight(q);
    }
    
    @Px
    public int getMinimumWidth()
    {
      return ViewCompat.getMinimumWidth(q);
    }
    
    @Px
    public int getPaddingBottom()
    {
      if (q != null) {
        return q.getPaddingBottom();
      }
      return 0;
    }
    
    @Px
    public int getPaddingEnd()
    {
      if (q != null) {
        return ViewCompat.getPaddingEnd(q);
      }
      return 0;
    }
    
    @Px
    public int getPaddingLeft()
    {
      if (q != null) {
        return q.getPaddingLeft();
      }
      return 0;
    }
    
    @Px
    public int getPaddingRight()
    {
      if (q != null) {
        return q.getPaddingRight();
      }
      return 0;
    }
    
    @Px
    public int getPaddingStart()
    {
      if (q != null) {
        return ViewCompat.getPaddingStart(q);
      }
      return 0;
    }
    
    @Px
    public int getPaddingTop()
    {
      if (q != null) {
        return q.getPaddingTop();
      }
      return 0;
    }
    
    public int getPosition(@NonNull View paramView)
    {
      return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
    }
    
    public int getRightDecorationWidth(@NonNull View paramView)
    {
      return getLayoutParamsd.right;
    }
    
    public int getRowCountForAccessibility(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState)
    {
      paramRecycler = q;
      int i = 1;
      if (paramRecycler != null)
      {
        if (q.m == null) {
          return 1;
        }
        if (canScrollVertically()) {
          i = q.m.getItemCount();
        }
        return i;
      }
      return 1;
    }
    
    public int getSelectionModeForAccessibility(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState)
    {
      return 0;
    }
    
    public int getTopDecorationHeight(@NonNull View paramView)
    {
      return getLayoutParamsd.top;
    }
    
    public void getTransformedBoundingBox(@NonNull View paramView, boolean paramBoolean, @NonNull Rect paramRect)
    {
      Object localObject;
      if (paramBoolean)
      {
        localObject = getLayoutParamsd;
        paramRect.set(-left, -top, paramView.getWidth() + right, paramView.getHeight() + bottom);
      }
      else
      {
        paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
      }
      if (q != null)
      {
        localObject = paramView.getMatrix();
        if ((localObject != null) && (!((Matrix)localObject).isIdentity()))
        {
          RectF localRectF = q.l;
          localRectF.set(paramRect);
          ((Matrix)localObject).mapRect(localRectF);
          paramRect.set((int)Math.floor(left), (int)Math.floor(top), (int)Math.ceil(right), (int)Math.ceil(bottom));
        }
      }
      paramRect.offset(paramView.getLeft(), paramView.getTop());
    }
    
    @Px
    public int getWidth()
    {
      return g;
    }
    
    public int getWidthMode()
    {
      return e;
    }
    
    public boolean hasFocus()
    {
      return (q != null) && (q.hasFocus());
    }
    
    public void ignoreView(@NonNull View paramView)
    {
      if ((paramView.getParent() == q) && (q.indexOfChild(paramView) != -1))
      {
        paramView = RecyclerView.b(paramView);
        paramView.b(128);
        q.h.g(paramView);
        return;
      }
      paramView = new StringBuilder();
      paramView.append("View should be fully attached to be ignored");
      paramView.append(q.a());
      throw new IllegalArgumentException(paramView.toString());
    }
    
    public boolean isAttachedToWindow()
    {
      return v;
    }
    
    public boolean isAutoMeasureEnabled()
    {
      return w;
    }
    
    public boolean isFocused()
    {
      return (q != null) && (q.isFocused());
    }
    
    public final boolean isItemPrefetchEnabled()
    {
      return d;
    }
    
    public boolean isLayoutHierarchical(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState)
    {
      return false;
    }
    
    public boolean isMeasurementCacheEnabled()
    {
      return c;
    }
    
    public boolean isSmoothScrolling()
    {
      return (t != null) && (t.isRunning());
    }
    
    public boolean isViewPartiallyVisible(@NonNull View paramView, boolean paramBoolean1, boolean paramBoolean2)
    {
      if ((r.a(paramView, 24579)) && (s.a(paramView, 24579))) {
        paramBoolean2 = true;
      } else {
        paramBoolean2 = false;
      }
      if (paramBoolean1) {
        return paramBoolean2;
      }
      return paramBoolean2 ^ true;
    }
    
    public void layoutDecorated(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      Rect localRect = getLayoutParamsd;
      paramView.layout(paramInt1 + left, paramInt2 + top, paramInt3 - right, paramInt4 - bottom);
    }
    
    public void layoutDecoratedWithMargins(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      Rect localRect = d;
      paramView.layout(paramInt1 + left + leftMargin, paramInt2 + top + topMargin, paramInt3 - right - rightMargin, paramInt4 - bottom - bottomMargin);
    }
    
    public void measureChild(@NonNull View paramView, int paramInt1, int paramInt2)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      Rect localRect = q.c(paramView);
      int k = left;
      int m = right;
      int i = top;
      int j = bottom;
      paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + (paramInt1 + (k + m)), width, canScrollHorizontally());
      paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + (paramInt2 + (i + j)), height, canScrollVertically());
      if (b(paramView, paramInt1, paramInt2, localLayoutParams)) {
        paramView.measure(paramInt1, paramInt2);
      }
    }
    
    public void measureChildWithMargins(@NonNull View paramView, int paramInt1, int paramInt2)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      Rect localRect = q.c(paramView);
      int k = left;
      int m = right;
      int i = top;
      int j = bottom;
      paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin + (paramInt1 + (k + m)), width, canScrollHorizontally());
      paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin + (paramInt2 + (i + j)), height, canScrollVertically());
      if (b(paramView, paramInt1, paramInt2, localLayoutParams)) {
        paramView.measure(paramInt1, paramInt2);
      }
    }
    
    public void moveView(int paramInt1, int paramInt2)
    {
      Object localObject = getChildAt(paramInt1);
      if (localObject != null)
      {
        detachViewAt(paramInt1);
        attachView((View)localObject, paramInt2);
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Cannot move a child from non-existing index:");
      ((StringBuilder)localObject).append(paramInt1);
      ((StringBuilder)localObject).append(q.toString());
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    
    public void offsetChildrenHorizontal(@Px int paramInt)
    {
      if (q != null) {
        q.offsetChildrenHorizontal(paramInt);
      }
    }
    
    public void offsetChildrenVertical(@Px int paramInt)
    {
      if (q != null) {
        q.offsetChildrenVertical(paramInt);
      }
    }
    
    public void onAdapterChanged(@Nullable RecyclerView.Adapter paramAdapter1, @Nullable RecyclerView.Adapter paramAdapter2) {}
    
    public boolean onAddFocusables(@NonNull RecyclerView paramRecyclerView, @NonNull ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
    {
      return false;
    }
    
    @CallSuper
    public void onAttachedToWindow(RecyclerView paramRecyclerView) {}
    
    @Deprecated
    public void onDetachedFromWindow(RecyclerView paramRecyclerView) {}
    
    @CallSuper
    public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
    {
      onDetachedFromWindow(paramRecyclerView);
    }
    
    @Nullable
    public View onFocusSearchFailed(@NonNull View paramView, int paramInt, @NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState)
    {
      return null;
    }
    
    public void onInitializeAccessibilityEvent(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState, @NonNull AccessibilityEvent paramAccessibilityEvent)
    {
      if (q != null)
      {
        if (paramAccessibilityEvent == null) {
          return;
        }
        paramRecycler = q;
        boolean bool2 = true;
        boolean bool1 = bool2;
        if (!paramRecycler.canScrollVertically(1))
        {
          bool1 = bool2;
          if (!q.canScrollVertically(-1))
          {
            bool1 = bool2;
            if (!q.canScrollHorizontally(-1)) {
              if (q.canScrollHorizontally(1)) {
                bool1 = bool2;
              } else {
                bool1 = false;
              }
            }
          }
        }
        paramAccessibilityEvent.setScrollable(bool1);
        if (q.m != null) {
          paramAccessibilityEvent.setItemCount(q.m.getItemCount());
        }
        return;
      }
    }
    
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent paramAccessibilityEvent)
    {
      onInitializeAccessibilityEvent(q.e, q.D, paramAccessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState, @NonNull AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      if ((q.canScrollVertically(-1)) || (q.canScrollHorizontally(-1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(8192);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      if ((q.canScrollVertically(1)) || (q.canScrollHorizontally(1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(4096);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      paramAccessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(paramRecycler, paramState), getColumnCountForAccessibility(paramRecycler, paramState), isLayoutHierarchical(paramRecycler, paramState), getSelectionModeForAccessibility(paramRecycler, paramState)));
    }
    
    public void onInitializeAccessibilityNodeInfoForItem(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState, @NonNull View paramView, @NonNull AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      int i;
      if (canScrollVertically()) {
        i = getPosition(paramView);
      } else {
        i = 0;
      }
      int j;
      if (canScrollHorizontally()) {
        j = getPosition(paramView);
      } else {
        j = 0;
      }
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, 1, false, false));
    }
    
    @Nullable
    public View onInterceptFocusSearch(@NonNull View paramView, int paramInt)
    {
      return null;
    }
    
    public void onItemsAdded(@NonNull RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsChanged(@NonNull RecyclerView paramRecyclerView) {}
    
    public void onItemsMoved(@NonNull RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onItemsRemoved(@NonNull RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsUpdated(@NonNull RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsUpdated(@NonNull RecyclerView paramRecyclerView, int paramInt1, int paramInt2, @Nullable Object paramObject)
    {
      onItemsUpdated(paramRecyclerView, paramInt1, paramInt2);
    }
    
    public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }
    
    public void onLayoutCompleted(RecyclerView.State paramState) {}
    
    public void onMeasure(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState, int paramInt1, int paramInt2)
    {
      q.c(paramInt1, paramInt2);
    }
    
    public boolean onRequestChildFocus(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.State paramState, @NonNull View paramView1, @Nullable View paramView2)
    {
      return onRequestChildFocus(paramRecyclerView, paramView1, paramView2);
    }
    
    @Deprecated
    public boolean onRequestChildFocus(@NonNull RecyclerView paramRecyclerView, @NonNull View paramView1, @Nullable View paramView2)
    {
      return (isSmoothScrolling()) || (paramRecyclerView.isComputingLayout());
    }
    
    public void onRestoreInstanceState(Parcelable paramParcelable) {}
    
    @Nullable
    public Parcelable onSaveInstanceState()
    {
      return null;
    }
    
    public void onScrollStateChanged(int paramInt) {}
    
    public boolean performAccessibilityAction(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState, int paramInt, @Nullable Bundle paramBundle)
    {
      if (q == null) {
        return false;
      }
      if (paramInt != 4096) {
        if (paramInt != 8192) {
          paramInt = 0;
        }
      }
      int i;
      do
      {
        do
        {
          j = 0;
          break;
          if (q.canScrollVertically(-1)) {
            i = -(getHeight() - getPaddingTop() - getPaddingBottom());
          } else {
            i = 0;
          }
          paramInt = i;
        } while (!q.canScrollHorizontally(-1));
        j = -(getWidth() - getPaddingLeft() - getPaddingRight());
        paramInt = i;
        break;
        if (q.canScrollVertically(1)) {
          i = getHeight() - getPaddingTop() - getPaddingBottom();
        } else {
          i = 0;
        }
        paramInt = i;
      } while (!q.canScrollHorizontally(1));
      int j = getWidth() - getPaddingLeft() - getPaddingRight();
      paramInt = i;
      if ((paramInt == 0) && (j == 0)) {
        return false;
      }
      q.smoothScrollBy(j, paramInt);
      return true;
    }
    
    public boolean performAccessibilityActionForItem(@NonNull RecyclerView.Recycler paramRecycler, @NonNull RecyclerView.State paramState, @NonNull View paramView, int paramInt, @Nullable Bundle paramBundle)
    {
      return false;
    }
    
    public void postOnAnimation(Runnable paramRunnable)
    {
      if (q != null) {
        ViewCompat.postOnAnimation(q, paramRunnable);
      }
    }
    
    public void removeAllViews()
    {
      int i = getChildCount() - 1;
      while (i >= 0)
      {
        p.a(i);
        i -= 1;
      }
    }
    
    public void removeAndRecycleAllViews(@NonNull RecyclerView.Recycler paramRecycler)
    {
      int i = getChildCount() - 1;
      while (i >= 0)
      {
        if (!RecyclerView.b(getChildAt(i)).c()) {
          removeAndRecycleViewAt(i, paramRecycler);
        }
        i -= 1;
      }
    }
    
    public void removeAndRecycleView(@NonNull View paramView, @NonNull RecyclerView.Recycler paramRecycler)
    {
      removeView(paramView);
      paramRecycler.recycleView(paramView);
    }
    
    public void removeAndRecycleViewAt(int paramInt, @NonNull RecyclerView.Recycler paramRecycler)
    {
      View localView = getChildAt(paramInt);
      removeViewAt(paramInt);
      paramRecycler.recycleView(localView);
    }
    
    public boolean removeCallbacks(Runnable paramRunnable)
    {
      if (q != null) {
        return q.removeCallbacks(paramRunnable);
      }
      return false;
    }
    
    public void removeDetachedView(@NonNull View paramView)
    {
      q.removeDetachedView(paramView, false);
    }
    
    public void removeView(View paramView)
    {
      p.a(paramView);
    }
    
    public void removeViewAt(int paramInt)
    {
      if (getChildAt(paramInt) != null) {
        p.a(paramInt);
      }
    }
    
    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView paramRecyclerView, @NonNull View paramView, @NonNull Rect paramRect, boolean paramBoolean)
    {
      return requestChildRectangleOnScreen(paramRecyclerView, paramView, paramRect, paramBoolean, false);
    }
    
    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView paramRecyclerView, @NonNull View paramView, @NonNull Rect paramRect, boolean paramBoolean1, boolean paramBoolean2)
    {
      paramView = a(paramRecyclerView, paramView, paramRect, paramBoolean1);
      int i = paramView[0];
      int j = paramView[1];
      if (((paramBoolean2) && (!a(paramRecyclerView, i, j))) || ((i == 0) && (j == 0))) {
        return false;
      }
      if (paramBoolean1)
      {
        paramRecyclerView.scrollBy(i, j);
        return true;
      }
      paramRecyclerView.smoothScrollBy(i, j);
      return true;
    }
    
    public void requestLayout()
    {
      if (q != null) {
        q.requestLayout();
      }
    }
    
    public void requestSimpleAnimationsInNextLayout()
    {
      u = true;
    }
    
    public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return 0;
    }
    
    public void scrollToPosition(int paramInt) {}
    
    public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
    {
      return 0;
    }
    
    @Deprecated
    public void setAutoMeasureEnabled(boolean paramBoolean)
    {
      w = paramBoolean;
    }
    
    public final void setItemPrefetchEnabled(boolean paramBoolean)
    {
      if (paramBoolean != d)
      {
        d = paramBoolean;
        x = 0;
        if (q != null) {
          q.e.a();
        }
      }
    }
    
    public void setMeasuredDimension(int paramInt1, int paramInt2)
    {
      RecyclerView.a(q, paramInt1, paramInt2);
    }
    
    public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2)
    {
      int i = paramRect.width();
      int j = getPaddingLeft();
      int k = getPaddingRight();
      int m = paramRect.height();
      int n = getPaddingTop();
      int i1 = getPaddingBottom();
      setMeasuredDimension(chooseSize(paramInt1, i + j + k, getMinimumWidth()), chooseSize(paramInt2, m + n + i1, getMinimumHeight()));
    }
    
    public void setMeasurementCacheEnabled(boolean paramBoolean)
    {
      c = paramBoolean;
    }
    
    public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt)
    {
      Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }
    
    public void startSmoothScroll(RecyclerView.SmoothScroller paramSmoothScroller)
    {
      if ((t != null) && (paramSmoothScroller != t) && (t.isRunning())) {
        t.stop();
      }
      t = paramSmoothScroller;
      t.a(q, this);
    }
    
    public void stopIgnoringView(@NonNull View paramView)
    {
      paramView = RecyclerView.b(paramView);
      paramView.i();
      paramView.r();
      paramView.b(4);
    }
    
    public boolean supportsPredictiveItemAnimations()
    {
      return false;
    }
    
    public static abstract interface LayoutPrefetchRegistry
    {
      public abstract void addPosition(int paramInt1, int paramInt2);
    }
    
    public static class Properties
    {
      public int orientation;
      public boolean reverseLayout;
      public int spanCount;
      public boolean stackFromEnd;
      
      public Properties() {}
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    RecyclerView.ViewHolder c;
    final Rect d = new Rect();
    boolean e = true;
    boolean f = false;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public int getViewAdapterPosition()
    {
      return c.getAdapterPosition();
    }
    
    public int getViewLayoutPosition()
    {
      return c.getLayoutPosition();
    }
    
    @Deprecated
    public int getViewPosition()
    {
      return c.getPosition();
    }
    
    public boolean isItemChanged()
    {
      return c.u();
    }
    
    public boolean isItemRemoved()
    {
      return c.m();
    }
    
    public boolean isViewInvalid()
    {
      return c.j();
    }
    
    public boolean viewNeedsUpdate()
    {
      return c.k();
    }
  }
  
  public static abstract interface OnChildAttachStateChangeListener
  {
    public abstract void onChildViewAttachedToWindow(@NonNull View paramView);
    
    public abstract void onChildViewDetachedFromWindow(@NonNull View paramView);
  }
  
  public static abstract class OnFlingListener
  {
    public OnFlingListener() {}
    
    public abstract boolean onFling(int paramInt1, int paramInt2);
  }
  
  public static abstract interface OnItemTouchListener
  {
    public abstract boolean onInterceptTouchEvent(@NonNull RecyclerView paramRecyclerView, @NonNull MotionEvent paramMotionEvent);
    
    public abstract void onRequestDisallowInterceptTouchEvent(boolean paramBoolean);
    
    public abstract void onTouchEvent(@NonNull RecyclerView paramRecyclerView, @NonNull MotionEvent paramMotionEvent);
  }
  
  public static abstract class OnScrollListener
  {
    public OnScrollListener() {}
    
    public void onScrollStateChanged(@NonNull RecyclerView paramRecyclerView, int paramInt) {}
    
    public void onScrolled(@NonNull RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface Orientation {}
  
  public static class RecycledViewPool
  {
    SparseArray<a> a = new SparseArray();
    private int b = 0;
    
    public RecycledViewPool() {}
    
    private a a(int paramInt)
    {
      a localA2 = (a)a.get(paramInt);
      a localA1 = localA2;
      if (localA2 == null)
      {
        localA1 = new a();
        a.put(paramInt, localA1);
      }
      return localA1;
    }
    
    long a(long paramLong1, long paramLong2)
    {
      if (paramLong1 == 0L) {
        return paramLong2;
      }
      return paramLong1 / 4L * 3L + paramLong2 / 4L;
    }
    
    void a()
    {
      b += 1;
    }
    
    void a(int paramInt, long paramLong)
    {
      a localA = a(paramInt);
      c = a(c, paramLong);
    }
    
    void a(RecyclerView.Adapter paramAdapter1, RecyclerView.Adapter paramAdapter2, boolean paramBoolean)
    {
      if (paramAdapter1 != null) {
        b();
      }
      if ((!paramBoolean) && (b == 0)) {
        clear();
      }
      if (paramAdapter2 != null) {
        a();
      }
    }
    
    boolean a(int paramInt, long paramLong1, long paramLong2)
    {
      long l = ac;
      return (l == 0L) || (paramLong1 + l < paramLong2);
    }
    
    void b()
    {
      b -= 1;
    }
    
    void b(int paramInt, long paramLong)
    {
      a localA = a(paramInt);
      d = a(d, paramLong);
    }
    
    boolean b(int paramInt, long paramLong1, long paramLong2)
    {
      long l = ad;
      return (l == 0L) || (paramLong1 + l < paramLong2);
    }
    
    public void clear()
    {
      int i = 0;
      while (i < a.size())
      {
        a.valueAt(i)).a.clear();
        i += 1;
      }
    }
    
    @Nullable
    public RecyclerView.ViewHolder getRecycledView(int paramInt)
    {
      Object localObject = (a)a.get(paramInt);
      if ((localObject != null) && (!a.isEmpty()))
      {
        localObject = a;
        return (RecyclerView.ViewHolder)((ArrayList)localObject).remove(((ArrayList)localObject).size() - 1);
      }
      return null;
    }
    
    public int getRecycledViewCount(int paramInt)
    {
      return aa.size();
    }
    
    public void putRecycledView(RecyclerView.ViewHolder paramViewHolder)
    {
      int i = paramViewHolder.getItemViewType();
      ArrayList localArrayList = aa;
      if (a.get(i)).b <= localArrayList.size()) {
        return;
      }
      paramViewHolder.r();
      localArrayList.add(paramViewHolder);
    }
    
    public void setMaxRecycledViews(int paramInt1, int paramInt2)
    {
      Object localObject = a(paramInt1);
      b = paramInt2;
      localObject = a;
      while (((ArrayList)localObject).size() > paramInt2) {
        ((ArrayList)localObject).remove(((ArrayList)localObject).size() - 1);
      }
    }
    
    static class a
    {
      final ArrayList<RecyclerView.ViewHolder> a = new ArrayList();
      int b = 5;
      long c = 0L;
      long d = 0L;
      
      a() {}
    }
  }
  
  public final class Recycler
  {
    final ArrayList<RecyclerView.ViewHolder> a = new ArrayList();
    ArrayList<RecyclerView.ViewHolder> b = null;
    final ArrayList<RecyclerView.ViewHolder> c = new ArrayList();
    int d = 2;
    RecyclerView.RecycledViewPool e;
    private final List<RecyclerView.ViewHolder> g = Collections.unmodifiableList(a);
    private int h = 2;
    private RecyclerView.ViewCacheExtension i;
    
    public Recycler() {}
    
    private void a(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      int j = paramViewGroup.getChildCount() - 1;
      while (j >= 0)
      {
        View localView = paramViewGroup.getChildAt(j);
        if ((localView instanceof ViewGroup)) {
          a((ViewGroup)localView, true);
        }
        j -= 1;
      }
      if (!paramBoolean) {
        return;
      }
      if (paramViewGroup.getVisibility() == 4)
      {
        paramViewGroup.setVisibility(0);
        paramViewGroup.setVisibility(4);
        return;
      }
      j = paramViewGroup.getVisibility();
      paramViewGroup.setVisibility(4);
      paramViewGroup.setVisibility(j);
    }
    
    private boolean a(@NonNull RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, long paramLong)
    {
      o = RecyclerView.this;
      int j = paramViewHolder.getItemViewType();
      long l = getNanoTime();
      if ((paramLong != Long.MAX_VALUE) && (!e.b(j, l, paramLong))) {
        return false;
      }
      m.bindViewHolder(paramViewHolder, paramInt1);
      paramLong = getNanoTime();
      e.b(paramViewHolder.getItemViewType(), paramLong - l);
      e(paramViewHolder);
      if (D.isPreLayout()) {
        f = paramInt2;
      }
      return true;
    }
    
    private void e(RecyclerView.ViewHolder paramViewHolder)
    {
      if (m())
      {
        View localView = itemView;
        if (ViewCompat.getImportantForAccessibility(localView) == 0) {
          ViewCompat.setImportantForAccessibility(localView, 1);
        }
        if (!ViewCompat.hasAccessibilityDelegate(localView))
        {
          paramViewHolder.b(16384);
          ViewCompat.setAccessibilityDelegate(localView, H.getItemDelegate());
        }
      }
    }
    
    private void f(RecyclerView.ViewHolder paramViewHolder)
    {
      if ((itemView instanceof ViewGroup)) {
        a((ViewGroup)itemView, false);
      }
    }
    
    @Nullable
    RecyclerView.ViewHolder a(int paramInt, boolean paramBoolean, long paramLong)
    {
      if ((paramInt >= 0) && (paramInt < D.getItemCount()))
      {
        boolean bool2 = D.isPreLayout();
        boolean bool1 = true;
        if (bool2)
        {
          localObject2 = c(paramInt);
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            k = 1;
            break label70;
          }
        }
        else
        {
          localObject1 = null;
        }
        int k = 0;
        Object localObject2 = localObject1;
        label70:
        localObject1 = localObject2;
        int j = k;
        if (localObject2 == null)
        {
          localObject2 = b(paramInt, paramBoolean);
          localObject1 = localObject2;
          j = k;
          if (localObject2 != null) {
            if (!a((RecyclerView.ViewHolder)localObject2))
            {
              if (!paramBoolean)
              {
                ((RecyclerView.ViewHolder)localObject2).b(4);
                if (((RecyclerView.ViewHolder)localObject2).d())
                {
                  removeDetachedView(itemView, false);
                  ((RecyclerView.ViewHolder)localObject2).e();
                }
                else if (((RecyclerView.ViewHolder)localObject2).f())
                {
                  ((RecyclerView.ViewHolder)localObject2).g();
                }
                b((RecyclerView.ViewHolder)localObject2);
              }
              localObject1 = null;
              j = k;
            }
            else
            {
              j = 1;
              localObject1 = localObject2;
            }
          }
        }
        localObject2 = localObject1;
        int m = j;
        if (localObject1 == null)
        {
          m = f.b(paramInt);
          if ((m >= 0) && (m < RecyclerView.this.m.getItemCount()))
          {
            int n = RecyclerView.this.m.getItemViewType(m);
            k = j;
            if (RecyclerView.this.m.hasStableIds())
            {
              localObject2 = a(RecyclerView.this.m.getItemId(m), n, paramBoolean);
              localObject1 = localObject2;
              k = j;
              if (localObject2 != null)
              {
                b = m;
                k = 1;
                localObject1 = localObject2;
              }
            }
            localObject2 = localObject1;
            if (localObject1 == null)
            {
              localObject2 = localObject1;
              if (i != null)
              {
                View localView = i.getViewForPositionAndType(this, paramInt, n);
                localObject2 = localObject1;
                if (localView != null)
                {
                  localObject2 = getChildViewHolder(localView);
                  if (localObject2 != null)
                  {
                    if (((RecyclerView.ViewHolder)localObject2).c())
                    {
                      localObject1 = new StringBuilder();
                      ((StringBuilder)localObject1).append("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                      ((StringBuilder)localObject1).append(a());
                      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
                    }
                  }
                  else
                  {
                    localObject1 = new StringBuilder();
                    ((StringBuilder)localObject1).append("getViewForPositionAndType returned a view which does not have a ViewHolder");
                    ((StringBuilder)localObject1).append(a());
                    throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
                  }
                }
              }
            }
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject2 = e().getRecycledView(n);
              localObject1 = localObject2;
              if (localObject2 != null)
              {
                ((RecyclerView.ViewHolder)localObject2).r();
                localObject1 = localObject2;
                if (RecyclerView.a)
                {
                  f((RecyclerView.ViewHolder)localObject2);
                  localObject1 = localObject2;
                }
              }
            }
            localObject2 = localObject1;
            m = k;
            if (localObject1 == null)
            {
              long l1 = getNanoTime();
              if ((paramLong != Long.MAX_VALUE) && (!e.a(n, l1, paramLong))) {
                return null;
              }
              localObject2 = RecyclerView.this.m.createViewHolder(RecyclerView.this, n);
              if (RecyclerView.d)
              {
                localObject1 = RecyclerView.d(itemView);
                if (localObject1 != null) {
                  a = new WeakReference(localObject1);
                }
              }
              long l2 = getNanoTime();
              e.a(n, l2 - l1);
              break label754;
            }
          }
          else
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Inconsistency detected. Invalid item position ");
            ((StringBuilder)localObject1).append(paramInt);
            ((StringBuilder)localObject1).append("(offset:");
            ((StringBuilder)localObject1).append(m);
            ((StringBuilder)localObject1).append(").");
            ((StringBuilder)localObject1).append("state:");
            ((StringBuilder)localObject1).append(D.getItemCount());
            ((StringBuilder)localObject1).append(a());
            throw new IndexOutOfBoundsException(((StringBuilder)localObject1).toString());
          }
        }
        k = m;
        label754:
        if ((k != 0) && (!D.isPreLayout()) && (((RecyclerView.ViewHolder)localObject2).a(8192)))
        {
          ((RecyclerView.ViewHolder)localObject2).a(0, 8192);
          if (D.j)
          {
            j = RecyclerView.ItemAnimator.b((RecyclerView.ViewHolder)localObject2);
            localObject1 = z.recordPreLayoutInformation(D, (RecyclerView.ViewHolder)localObject2, j | 0x1000, ((RecyclerView.ViewHolder)localObject2).q());
            a((RecyclerView.ViewHolder)localObject2, (RecyclerView.ItemAnimator.ItemHolderInfo)localObject1);
          }
        }
        if ((D.isPreLayout()) && (((RecyclerView.ViewHolder)localObject2).l())) {
          f = paramInt;
        } else {
          if ((!((RecyclerView.ViewHolder)localObject2).l()) || (((RecyclerView.ViewHolder)localObject2).k()) || (((RecyclerView.ViewHolder)localObject2).j())) {
            break label917;
          }
        }
        paramBoolean = false;
        break label937;
        label917:
        paramBoolean = a((RecyclerView.ViewHolder)localObject2, f.b(paramInt), paramInt, paramLong);
        label937:
        localObject1 = itemView.getLayoutParams();
        if (localObject1 == null)
        {
          localObject1 = (RecyclerView.LayoutParams)generateDefaultLayoutParams();
          itemView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
        }
        else if (!checkLayoutParams((ViewGroup.LayoutParams)localObject1))
        {
          localObject1 = (RecyclerView.LayoutParams)generateLayoutParams((ViewGroup.LayoutParams)localObject1);
          itemView.setLayoutParams((ViewGroup.LayoutParams)localObject1);
        }
        else
        {
          localObject1 = (RecyclerView.LayoutParams)localObject1;
        }
        c = ((RecyclerView.ViewHolder)localObject2);
        if ((k != 0) && (paramBoolean)) {
          paramBoolean = bool1;
        } else {
          paramBoolean = false;
        }
        f = paramBoolean;
        return localObject2;
      }
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Invalid item position ");
      ((StringBuilder)localObject1).append(paramInt);
      ((StringBuilder)localObject1).append("(");
      ((StringBuilder)localObject1).append(paramInt);
      ((StringBuilder)localObject1).append("). Item count:");
      ((StringBuilder)localObject1).append(D.getItemCount());
      ((StringBuilder)localObject1).append(a());
      throw new IndexOutOfBoundsException(((StringBuilder)localObject1).toString());
    }
    
    RecyclerView.ViewHolder a(long paramLong, int paramInt, boolean paramBoolean)
    {
      int j = a.size() - 1;
      RecyclerView.ViewHolder localViewHolder;
      while (j >= 0)
      {
        localViewHolder = (RecyclerView.ViewHolder)a.get(j);
        if ((localViewHolder.getItemId() == paramLong) && (!localViewHolder.f()))
        {
          if (paramInt == localViewHolder.getItemViewType())
          {
            localViewHolder.b(32);
            if ((localViewHolder.m()) && (!D.isPreLayout())) {
              localViewHolder.a(2, 14);
            }
            return localViewHolder;
          }
          if (!paramBoolean)
          {
            a.remove(j);
            removeDetachedView(itemView, false);
            a(itemView);
          }
        }
        j -= 1;
      }
      j = c.size() - 1;
      while (j >= 0)
      {
        localViewHolder = (RecyclerView.ViewHolder)c.get(j);
        if (localViewHolder.getItemId() == paramLong)
        {
          if (paramInt == localViewHolder.getItemViewType())
          {
            if (!paramBoolean) {
              c.remove(j);
            }
            return localViewHolder;
          }
          if (!paramBoolean)
          {
            a(j);
            return null;
          }
        }
        j -= 1;
      }
      return null;
    }
    
    View a(int paramInt, boolean paramBoolean)
    {
      return aMAX_VALUEitemView;
    }
    
    void a()
    {
      if (n != null) {
        j = n.x;
      } else {
        j = 0;
      }
      d = (h + j);
      int j = c.size() - 1;
      while ((j >= 0) && (c.size() > d))
      {
        a(j);
        j -= 1;
      }
    }
    
    void a(int paramInt)
    {
      a((RecyclerView.ViewHolder)c.get(paramInt), true);
      c.remove(paramInt);
    }
    
    void a(int paramInt1, int paramInt2)
    {
      int j;
      int k;
      int m;
      if (paramInt1 < paramInt2)
      {
        j = paramInt1;
        k = paramInt2;
        m = -1;
      }
      else
      {
        k = paramInt1;
        j = paramInt2;
        m = 1;
      }
      int i1 = c.size();
      int n = 0;
      while (n < i1)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)c.get(n);
        if ((localViewHolder != null) && (b >= j) && (b <= k)) {
          if (b == paramInt1) {
            localViewHolder.a(paramInt2 - paramInt1, false);
          } else {
            localViewHolder.a(m, false);
          }
        }
        n += 1;
      }
    }
    
    void a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      int j = c.size() - 1;
      while (j >= 0)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)c.get(j);
        if (localViewHolder != null) {
          if (b >= paramInt1 + paramInt2)
          {
            localViewHolder.a(-paramInt2, paramBoolean);
          }
          else if (b >= paramInt1)
          {
            localViewHolder.b(8);
            a(j);
          }
        }
        j -= 1;
      }
    }
    
    void a(RecyclerView.Adapter paramAdapter1, RecyclerView.Adapter paramAdapter2, boolean paramBoolean)
    {
      clear();
      e().a(paramAdapter1, paramAdapter2, paramBoolean);
    }
    
    void a(RecyclerView.RecycledViewPool paramRecycledViewPool)
    {
      if (e != null) {
        e.b();
      }
      e = paramRecycledViewPool;
      if ((e != null) && (getAdapter() != null)) {
        e.a();
      }
    }
    
    void a(RecyclerView.ViewCacheExtension paramViewCacheExtension)
    {
      i = paramViewCacheExtension;
    }
    
    void a(@NonNull RecyclerView.ViewHolder paramViewHolder, boolean paramBoolean)
    {
      RecyclerView.c(paramViewHolder);
      if (paramViewHolder.a(16384))
      {
        paramViewHolder.a(0, 16384);
        ViewCompat.setAccessibilityDelegate(itemView, null);
      }
      if (paramBoolean) {
        d(paramViewHolder);
      }
      o = null;
      e().putRecycledView(paramViewHolder);
    }
    
    void a(View paramView)
    {
      paramView = RecyclerView.b(paramView);
      l = null;
      m = false;
      paramView.g();
      b(paramView);
    }
    
    boolean a(RecyclerView.ViewHolder paramViewHolder)
    {
      if (paramViewHolder.m()) {
        return D.isPreLayout();
      }
      if ((b >= 0) && (b < m.getItemCount()))
      {
        boolean bool2 = D.isPreLayout();
        boolean bool1 = false;
        if ((!bool2) && (m.getItemViewType(b) != paramViewHolder.getItemViewType())) {
          return false;
        }
        if (m.hasStableIds())
        {
          if (paramViewHolder.getItemId() == m.getItemId(b)) {
            bool1 = true;
          }
          return bool1;
        }
        return true;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Inconsistency detected. Invalid view holder adapter position");
      localStringBuilder.append(paramViewHolder);
      localStringBuilder.append(a());
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    RecyclerView.ViewHolder b(int paramInt, boolean paramBoolean)
    {
      int m = a.size();
      int k = 0;
      int j = 0;
      RecyclerView.ViewHolder localViewHolder;
      while (j < m)
      {
        localViewHolder = (RecyclerView.ViewHolder)a.get(j);
        if ((!localViewHolder.f()) && (localViewHolder.getLayoutPosition() == paramInt) && (!localViewHolder.j()) && ((D.g) || (!localViewHolder.m())))
        {
          localViewHolder.b(32);
          return localViewHolder;
        }
        j += 1;
      }
      if (!paramBoolean)
      {
        Object localObject = g.c(paramInt);
        if (localObject != null)
        {
          localViewHolder = RecyclerView.b((View)localObject);
          g.e((View)localObject);
          paramInt = g.b((View)localObject);
          if (paramInt != -1)
          {
            g.e(paramInt);
            b((View)localObject);
            localViewHolder.b(8224);
            return localViewHolder;
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("layout index should not be -1 after unhiding a view:");
          ((StringBuilder)localObject).append(localViewHolder);
          ((StringBuilder)localObject).append(a());
          throw new IllegalStateException(((StringBuilder)localObject).toString());
        }
      }
      m = c.size();
      j = k;
      while (j < m)
      {
        localViewHolder = (RecyclerView.ViewHolder)c.get(j);
        if ((!localViewHolder.j()) && (localViewHolder.getLayoutPosition() == paramInt))
        {
          if (!paramBoolean) {
            c.remove(j);
          }
          return localViewHolder;
        }
        j += 1;
      }
      return null;
    }
    
    View b(int paramInt)
    {
      return a.get(paramInt)).itemView;
    }
    
    void b()
    {
      int j = c.size() - 1;
      while (j >= 0)
      {
        a(j);
        j -= 1;
      }
      c.clear();
      if (RecyclerView.d) {
        C.a();
      }
    }
    
    void b(int paramInt1, int paramInt2)
    {
      int k = c.size();
      int j = 0;
      while (j < k)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)c.get(j);
        if ((localViewHolder != null) && (b >= paramInt1)) {
          localViewHolder.a(paramInt2, true);
        }
        j += 1;
      }
    }
    
    void b(RecyclerView.ViewHolder paramViewHolder)
    {
      boolean bool2 = paramViewHolder.d();
      boolean bool1 = false;
      int m = 0;
      if ((!bool2) && (itemView.getParent() == null))
      {
        if (!paramViewHolder.n())
        {
          if (!paramViewHolder.c())
          {
            bool1 = paramViewHolder.t();
            int j;
            if ((RecyclerView.this.m != null) && (bool1) && (RecyclerView.this.m.onFailedToRecycleView(paramViewHolder))) {
              j = 1;
            } else {
              j = 0;
            }
            int k;
            if ((j == 0) && (!paramViewHolder.isRecyclable()))
            {
              j = 0;
              k = m;
              m = j;
            }
            else
            {
              if ((d > 0) && (!paramViewHolder.a(526)))
              {
                k = c.size();
                j = k;
                if (k >= d)
                {
                  j = k;
                  if (k > 0)
                  {
                    a(0);
                    j = k - 1;
                  }
                }
                k = j;
                if (RecyclerView.d)
                {
                  k = j;
                  if (j > 0)
                  {
                    k = j;
                    if (!C.a(b))
                    {
                      j -= 1;
                      while (j >= 0)
                      {
                        k = c.get(j)).b;
                        if (!C.a(k)) {
                          break;
                        }
                        j -= 1;
                      }
                      k = j + 1;
                    }
                  }
                }
                c.add(k, paramViewHolder);
                j = 1;
              }
              else
              {
                j = 0;
              }
              k = m;
              m = j;
              if (j == 0)
              {
                a(paramViewHolder, true);
                k = 1;
                m = j;
              }
            }
            h.g(paramViewHolder);
            if ((m == 0) && (k == 0) && (bool1)) {
              o = null;
            }
            return;
          }
          paramViewHolder = new StringBuilder();
          paramViewHolder.append("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
          paramViewHolder.append(a());
          throw new IllegalArgumentException(paramViewHolder.toString());
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
        localStringBuilder.append(paramViewHolder);
        localStringBuilder.append(a());
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Scrapped or attached views may not be recycled. isScrap:");
      localStringBuilder.append(paramViewHolder.d());
      localStringBuilder.append(" isAttached:");
      if (itemView.getParent() != null) {
        bool1 = true;
      }
      localStringBuilder.append(bool1);
      localStringBuilder.append(a());
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    
    void b(View paramView)
    {
      paramView = RecyclerView.b(paramView);
      if ((!paramView.a(12)) && (paramView.u()) && (!b(paramView)))
      {
        if (b == null) {
          b = new ArrayList();
        }
        paramView.a(this, true);
        b.add(paramView);
        return;
      }
      if ((paramView.j()) && (!paramView.m()) && (!m.hasStableIds()))
      {
        paramView = new StringBuilder();
        paramView.append("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
        paramView.append(a());
        throw new IllegalArgumentException(paramView.toString());
      }
      paramView.a(this, false);
      a.add(paramView);
    }
    
    public void bindViewToPosition(@NonNull View paramView, int paramInt)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.b(paramView);
      if (localViewHolder != null)
      {
        int j = f.b(paramInt);
        if ((j >= 0) && (j < m.getItemCount()))
        {
          a(localViewHolder, j, paramInt, Long.MAX_VALUE);
          paramView = itemView.getLayoutParams();
          if (paramView == null)
          {
            paramView = (RecyclerView.LayoutParams)generateDefaultLayoutParams();
            itemView.setLayoutParams(paramView);
          }
          else if (!checkLayoutParams(paramView))
          {
            paramView = (RecyclerView.LayoutParams)generateLayoutParams(paramView);
            itemView.setLayoutParams(paramView);
          }
          else
          {
            paramView = (RecyclerView.LayoutParams)paramView;
          }
          boolean bool = true;
          e = true;
          c = localViewHolder;
          if (itemView.getParent() != null) {
            bool = false;
          }
          f = bool;
          return;
        }
        paramView = new StringBuilder();
        paramView.append("Inconsistency detected. Invalid item position ");
        paramView.append(paramInt);
        paramView.append("(offset:");
        paramView.append(j);
        paramView.append(").");
        paramView.append("state:");
        paramView.append(D.getItemCount());
        paramView.append(a());
        throw new IndexOutOfBoundsException(paramView.toString());
      }
      paramView = new StringBuilder();
      paramView.append("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter");
      paramView.append(a());
      throw new IllegalArgumentException(paramView.toString());
    }
    
    int c()
    {
      return a.size();
    }
    
    RecyclerView.ViewHolder c(int paramInt)
    {
      if (b != null)
      {
        int m = b.size();
        if (m == 0) {
          return null;
        }
        int k = 0;
        int j = 0;
        RecyclerView.ViewHolder localViewHolder;
        while (j < m)
        {
          localViewHolder = (RecyclerView.ViewHolder)b.get(j);
          if ((!localViewHolder.f()) && (localViewHolder.getLayoutPosition() == paramInt))
          {
            localViewHolder.b(32);
            return localViewHolder;
          }
          j += 1;
        }
        if (RecyclerView.this.m.hasStableIds())
        {
          paramInt = f.b(paramInt);
          if ((paramInt > 0) && (paramInt < RecyclerView.this.m.getItemCount()))
          {
            long l = RecyclerView.this.m.getItemId(paramInt);
            paramInt = k;
            while (paramInt < m)
            {
              localViewHolder = (RecyclerView.ViewHolder)b.get(paramInt);
              if ((!localViewHolder.f()) && (localViewHolder.getItemId() == l))
              {
                localViewHolder.b(32);
                return localViewHolder;
              }
              paramInt += 1;
            }
          }
        }
        return null;
      }
      return null;
    }
    
    void c(int paramInt1, int paramInt2)
    {
      int j = c.size() - 1;
      while (j >= 0)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)c.get(j);
        if (localViewHolder != null)
        {
          int k = b;
          if ((k >= paramInt1) && (k < paramInt2 + paramInt1))
          {
            localViewHolder.b(2);
            a(j);
          }
        }
        j -= 1;
      }
    }
    
    void c(RecyclerView.ViewHolder paramViewHolder)
    {
      if (m) {
        b.remove(paramViewHolder);
      } else {
        a.remove(paramViewHolder);
      }
      l = null;
      m = false;
      paramViewHolder.g();
    }
    
    public void clear()
    {
      a.clear();
      b();
    }
    
    public int convertPreLayoutPositionToPostLayout(int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < D.getItemCount()))
      {
        if (!D.isPreLayout()) {
          return paramInt;
        }
        return f.b(paramInt);
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("invalid position ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(". State ");
      localStringBuilder.append("item count is ");
      localStringBuilder.append(D.getItemCount());
      localStringBuilder.append(a());
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    void d()
    {
      a.clear();
      if (b != null) {
        b.clear();
      }
    }
    
    void d(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      if (o != null) {
        o.onViewRecycled(paramViewHolder);
      }
      if (m != null) {
        m.onViewRecycled(paramViewHolder);
      }
      if (D != null) {
        h.g(paramViewHolder);
      }
    }
    
    RecyclerView.RecycledViewPool e()
    {
      if (e == null) {
        e = new RecyclerView.RecycledViewPool();
      }
      return e;
    }
    
    void f()
    {
      int k = c.size();
      int j = 0;
      while (j < k)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)c.get(j);
        if (localViewHolder != null)
        {
          localViewHolder.b(6);
          localViewHolder.a(null);
        }
        j += 1;
      }
      if ((m == null) || (!m.hasStableIds())) {
        b();
      }
    }
    
    void g()
    {
      int m = c.size();
      int k = 0;
      int j = 0;
      while (j < m)
      {
        ((RecyclerView.ViewHolder)c.get(j)).a();
        j += 1;
      }
      m = a.size();
      j = 0;
      while (j < m)
      {
        ((RecyclerView.ViewHolder)a.get(j)).a();
        j += 1;
      }
      if (b != null)
      {
        m = b.size();
        j = k;
        while (j < m)
        {
          ((RecyclerView.ViewHolder)b.get(j)).a();
          j += 1;
        }
      }
    }
    
    @NonNull
    public List<RecyclerView.ViewHolder> getScrapList()
    {
      return g;
    }
    
    @NonNull
    public View getViewForPosition(int paramInt)
    {
      return a(paramInt, false);
    }
    
    void h()
    {
      int k = c.size();
      int j = 0;
      while (j < k)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)c.get(j)).itemView.getLayoutParams();
        if (localLayoutParams != null) {
          e = true;
        }
        j += 1;
      }
    }
    
    public void recycleView(@NonNull View paramView)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.b(paramView);
      if (localViewHolder.n()) {
        removeDetachedView(paramView, false);
      }
      if (localViewHolder.d()) {
        localViewHolder.e();
      } else if (localViewHolder.f()) {
        localViewHolder.g();
      }
      b(localViewHolder);
    }
    
    public void setViewCacheSize(int paramInt)
    {
      h = paramInt;
      a();
    }
  }
  
  public static abstract interface RecyclerListener
  {
    public abstract void onViewRecycled(@NonNull RecyclerView.ViewHolder paramViewHolder);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public RecyclerView.SavedState a(Parcel paramAnonymousParcel)
      {
        return new RecyclerView.SavedState(paramAnonymousParcel, null);
      }
      
      public RecyclerView.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new RecyclerView.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public RecyclerView.SavedState[] a(int paramAnonymousInt)
      {
        return new RecyclerView.SavedState[paramAnonymousInt];
      }
    };
    Parcelable a;
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      if (paramClassLoader == null) {
        paramClassLoader = RecyclerView.LayoutManager.class.getClassLoader();
      }
      a = paramParcel.readParcelable(paramClassLoader);
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    void a(SavedState paramSavedState)
    {
      a = a;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(a, 0);
    }
  }
  
  public static class SimpleOnItemTouchListener
    implements RecyclerView.OnItemTouchListener
  {
    public SimpleOnItemTouchListener() {}
    
    public boolean onInterceptTouchEvent(@NonNull RecyclerView paramRecyclerView, @NonNull MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public void onRequestDisallowInterceptTouchEvent(boolean paramBoolean) {}
    
    public void onTouchEvent(@NonNull RecyclerView paramRecyclerView, @NonNull MotionEvent paramMotionEvent) {}
  }
  
  public static abstract class SmoothScroller
  {
    private int a = -1;
    private RecyclerView b;
    private RecyclerView.LayoutManager c;
    private boolean d;
    private boolean e;
    private View f;
    private final Action g = new Action(0, 0);
    private boolean h;
    
    public SmoothScroller() {}
    
    void a(int paramInt1, int paramInt2)
    {
      RecyclerView localRecyclerView = b;
      if ((!e) || (a == -1) || (localRecyclerView == null)) {
        stop();
      }
      if ((d) && (f == null) && (c != null))
      {
        PointF localPointF = computeScrollVectorForPosition(a);
        if ((localPointF != null) && ((x != 0.0F) || (y != 0.0F))) {
          localRecyclerView.a((int)Math.signum(x), (int)Math.signum(y), null);
        }
      }
      d = false;
      if (f != null) {
        if (getChildPosition(f) == a)
        {
          onTargetFound(f, D, g);
          g.a(localRecyclerView);
          stop();
        }
        else
        {
          Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
          f = null;
        }
      }
      if (e)
      {
        onSeekTargetStep(paramInt1, paramInt2, D, g);
        boolean bool = g.a();
        g.a(localRecyclerView);
        if (bool)
        {
          if (e)
          {
            d = true;
            A.a();
            return;
          }
          stop();
        }
      }
    }
    
    void a(RecyclerView paramRecyclerView, RecyclerView.LayoutManager paramLayoutManager)
    {
      if (h)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("An instance of ");
        localStringBuilder.append(getClass().getSimpleName());
        localStringBuilder.append(" was started ");
        localStringBuilder.append("more than once. Each instance of");
        localStringBuilder.append(getClass().getSimpleName());
        localStringBuilder.append(" ");
        localStringBuilder.append("is intended to only be used once. You should create a new instance for ");
        localStringBuilder.append("each use.");
        Log.w("RecyclerView", localStringBuilder.toString());
      }
      b = paramRecyclerView;
      c = paramLayoutManager;
      if (a != -1)
      {
        b.D.a = a;
        e = true;
        d = true;
        f = findViewByPosition(getTargetPosition());
        onStart();
        b.A.a();
        h = true;
        return;
      }
      throw new IllegalArgumentException("Invalid target position");
    }
    
    @Nullable
    public PointF computeScrollVectorForPosition(int paramInt)
    {
      Object localObject = getLayoutManager();
      if ((localObject instanceof ScrollVectorProvider)) {
        return ((ScrollVectorProvider)localObject).computeScrollVectorForPosition(paramInt);
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
      ((StringBuilder)localObject).append(ScrollVectorProvider.class.getCanonicalName());
      Log.w("RecyclerView", ((StringBuilder)localObject).toString());
      return null;
    }
    
    public View findViewByPosition(int paramInt)
    {
      return b.n.findViewByPosition(paramInt);
    }
    
    public int getChildCount()
    {
      return b.n.getChildCount();
    }
    
    public int getChildPosition(View paramView)
    {
      return b.getChildLayoutPosition(paramView);
    }
    
    @Nullable
    public RecyclerView.LayoutManager getLayoutManager()
    {
      return c;
    }
    
    public int getTargetPosition()
    {
      return a;
    }
    
    @Deprecated
    public void instantScrollToPosition(int paramInt)
    {
      b.scrollToPosition(paramInt);
    }
    
    public boolean isPendingInitialRun()
    {
      return d;
    }
    
    public boolean isRunning()
    {
      return e;
    }
    
    protected void normalize(@NonNull PointF paramPointF)
    {
      float f1 = (float)Math.sqrt(x * x + y * y);
      x /= f1;
      y /= f1;
    }
    
    protected void onChildAttachedToWindow(View paramView)
    {
      if (getChildPosition(paramView) == getTargetPosition()) {
        f = paramView;
      }
    }
    
    protected abstract void onSeekTargetStep(@Px int paramInt1, @Px int paramInt2, @NonNull RecyclerView.State paramState, @NonNull Action paramAction);
    
    protected abstract void onStart();
    
    protected abstract void onStop();
    
    protected abstract void onTargetFound(@NonNull View paramView, @NonNull RecyclerView.State paramState, @NonNull Action paramAction);
    
    public void setTargetPosition(int paramInt)
    {
      a = paramInt;
    }
    
    protected final void stop()
    {
      if (!e) {
        return;
      }
      e = false;
      onStop();
      b.D.a = -1;
      f = null;
      a = -1;
      d = false;
      c.a(this);
      c = null;
      b = null;
    }
    
    public static class Action
    {
      public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
      private int a;
      private int b;
      private int c;
      private int d = -1;
      private Interpolator e;
      private boolean f = false;
      private int g = 0;
      
      public Action(@Px int paramInt1, @Px int paramInt2)
      {
        this(paramInt1, paramInt2, Integer.MIN_VALUE, null);
      }
      
      public Action(@Px int paramInt1, @Px int paramInt2, int paramInt3)
      {
        this(paramInt1, paramInt2, paramInt3, null);
      }
      
      public Action(@Px int paramInt1, @Px int paramInt2, int paramInt3, @Nullable Interpolator paramInterpolator)
      {
        a = paramInt1;
        b = paramInt2;
        c = paramInt3;
        e = paramInterpolator;
      }
      
      private void b()
      {
        if ((e != null) && (c < 1)) {
          throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        if (c >= 1) {
          return;
        }
        throw new IllegalStateException("Scroll duration must be a positive number");
      }
      
      void a(RecyclerView paramRecyclerView)
      {
        if (d >= 0)
        {
          int i = d;
          d = -1;
          paramRecyclerView.a(i);
          f = false;
          return;
        }
        if (f)
        {
          b();
          if (e == null)
          {
            if (c == Integer.MIN_VALUE) {
              A.b(a, b);
            } else {
              A.a(a, b, c);
            }
          }
          else {
            A.a(a, b, c, e);
          }
          g += 1;
          if (g > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
          }
          f = false;
          return;
        }
        g = 0;
      }
      
      boolean a()
      {
        return d >= 0;
      }
      
      public int getDuration()
      {
        return c;
      }
      
      @Px
      public int getDx()
      {
        return a;
      }
      
      @Px
      public int getDy()
      {
        return b;
      }
      
      @Nullable
      public Interpolator getInterpolator()
      {
        return e;
      }
      
      public void jumpTo(int paramInt)
      {
        d = paramInt;
      }
      
      public void setDuration(int paramInt)
      {
        f = true;
        c = paramInt;
      }
      
      public void setDx(@Px int paramInt)
      {
        f = true;
        a = paramInt;
      }
      
      public void setDy(@Px int paramInt)
      {
        f = true;
        b = paramInt;
      }
      
      public void setInterpolator(@Nullable Interpolator paramInterpolator)
      {
        f = true;
        e = paramInterpolator;
      }
      
      public void update(@Px int paramInt1, @Px int paramInt2, int paramInt3, @Nullable Interpolator paramInterpolator)
      {
        a = paramInt1;
        b = paramInt2;
        c = paramInt3;
        e = paramInterpolator;
        f = true;
      }
    }
    
    public static abstract interface ScrollVectorProvider
    {
      @Nullable
      public abstract PointF computeScrollVectorForPosition(int paramInt);
    }
  }
  
  public static class State
  {
    int a = -1;
    int b = 0;
    int c = 0;
    int d = 1;
    int e = 0;
    boolean f = false;
    boolean g = false;
    boolean h = false;
    boolean i = false;
    boolean j = false;
    boolean k = false;
    int l;
    long m;
    int n;
    int o;
    int p;
    private SparseArray<Object> q;
    
    public State() {}
    
    void a(int paramInt)
    {
      if ((d & paramInt) != 0) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Layout state should be one of ");
      localStringBuilder.append(Integer.toBinaryString(paramInt));
      localStringBuilder.append(" but it is ");
      localStringBuilder.append(Integer.toBinaryString(d));
      throw new IllegalStateException(localStringBuilder.toString());
    }
    
    void a(RecyclerView.Adapter paramAdapter)
    {
      d = 1;
      e = paramAdapter.getItemCount();
      g = false;
      h = false;
      i = false;
    }
    
    public boolean didStructureChange()
    {
      return f;
    }
    
    public <T> T get(int paramInt)
    {
      if (q == null) {
        return null;
      }
      return q.get(paramInt);
    }
    
    public int getItemCount()
    {
      if (g) {
        return b - c;
      }
      return e;
    }
    
    public int getRemainingScrollHorizontal()
    {
      return o;
    }
    
    public int getRemainingScrollVertical()
    {
      return p;
    }
    
    public int getTargetScrollPosition()
    {
      return a;
    }
    
    public boolean hasTargetScrollPosition()
    {
      return a != -1;
    }
    
    public boolean isMeasuring()
    {
      return i;
    }
    
    public boolean isPreLayout()
    {
      return g;
    }
    
    public void put(int paramInt, Object paramObject)
    {
      if (q == null) {
        q = new SparseArray();
      }
      q.put(paramInt, paramObject);
    }
    
    public void remove(int paramInt)
    {
      if (q == null) {
        return;
      }
      q.remove(paramInt);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("State{mTargetPosition=");
      localStringBuilder.append(a);
      localStringBuilder.append(", mData=");
      localStringBuilder.append(q);
      localStringBuilder.append(", mItemCount=");
      localStringBuilder.append(e);
      localStringBuilder.append(", mIsMeasuring=");
      localStringBuilder.append(i);
      localStringBuilder.append(", mPreviousLayoutItemCount=");
      localStringBuilder.append(b);
      localStringBuilder.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
      localStringBuilder.append(c);
      localStringBuilder.append(", mStructureChanged=");
      localStringBuilder.append(f);
      localStringBuilder.append(", mInPreLayout=");
      localStringBuilder.append(g);
      localStringBuilder.append(", mRunSimpleAnimations=");
      localStringBuilder.append(j);
      localStringBuilder.append(", mRunPredictiveAnimations=");
      localStringBuilder.append(k);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
    
    public boolean willRunPredictiveAnimations()
    {
      return k;
    }
    
    public boolean willRunSimpleAnimations()
    {
      return j;
    }
  }
  
  public static abstract class ViewCacheExtension
  {
    public ViewCacheExtension() {}
    
    @Nullable
    public abstract View getViewForPositionAndType(@NonNull RecyclerView.Recycler paramRecycler, int paramInt1, int paramInt2);
  }
  
  public static abstract class ViewHolder
  {
    private static final List<Object> p = ;
    WeakReference<RecyclerView> a;
    int b = -1;
    int c = -1;
    long d = -1L;
    int e = -1;
    int f = -1;
    ViewHolder g = null;
    ViewHolder h = null;
    int i;
    @NonNull
    public final View itemView;
    List<Object> j = null;
    List<Object> k = null;
    RecyclerView.Recycler l = null;
    boolean m = false;
    @VisibleForTesting
    int n = -1;
    RecyclerView o;
    private int q = 0;
    private int r = 0;
    
    public ViewHolder(@NonNull View paramView)
    {
      if (paramView != null)
      {
        itemView = paramView;
        return;
      }
      throw new IllegalArgumentException("itemView may not be null");
    }
    
    private void v()
    {
      if (j == null)
      {
        j = new ArrayList();
        k = Collections.unmodifiableList(j);
      }
    }
    
    void a()
    {
      c = -1;
      f = -1;
    }
    
    void a(int paramInt1, int paramInt2)
    {
      i = (paramInt1 & paramInt2 | i & paramInt2);
    }
    
    void a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      b(8);
      a(paramInt2, paramBoolean);
      b = paramInt1;
    }
    
    void a(int paramInt, boolean paramBoolean)
    {
      if (c == -1) {
        c = b;
      }
      if (f == -1) {
        f = b;
      }
      if (paramBoolean) {
        f += paramInt;
      }
      b += paramInt;
      if (itemView.getLayoutParams() != null) {
        itemView.getLayoutParams()).e = true;
      }
    }
    
    void a(RecyclerView.Recycler paramRecycler, boolean paramBoolean)
    {
      l = paramRecycler;
      m = paramBoolean;
    }
    
    void a(RecyclerView paramRecyclerView)
    {
      if (n != -1) {
        r = n;
      } else {
        r = ViewCompat.getImportantForAccessibility(itemView);
      }
      paramRecyclerView.a(this, 4);
    }
    
    void a(Object paramObject)
    {
      if (paramObject == null)
      {
        b(1024);
        return;
      }
      if ((0x400 & i) == 0)
      {
        v();
        j.add(paramObject);
      }
    }
    
    boolean a(int paramInt)
    {
      return (paramInt & i) != 0;
    }
    
    void b()
    {
      if (c == -1) {
        c = b;
      }
    }
    
    void b(int paramInt)
    {
      i = (paramInt | i);
    }
    
    void b(RecyclerView paramRecyclerView)
    {
      paramRecyclerView.a(this, r);
      r = 0;
    }
    
    boolean c()
    {
      return (i & 0x80) != 0;
    }
    
    boolean d()
    {
      return l != null;
    }
    
    void e()
    {
      l.c(this);
    }
    
    boolean f()
    {
      return (i & 0x20) != 0;
    }
    
    void g()
    {
      i &= 0xFFFFFFDF;
    }
    
    public final int getAdapterPosition()
    {
      if (o == null) {
        return -1;
      }
      return o.d(this);
    }
    
    public final long getItemId()
    {
      return d;
    }
    
    public final int getItemViewType()
    {
      return e;
    }
    
    public final int getLayoutPosition()
    {
      if (f == -1) {
        return b;
      }
      return f;
    }
    
    public final int getOldPosition()
    {
      return c;
    }
    
    @Deprecated
    public final int getPosition()
    {
      if (f == -1) {
        return b;
      }
      return f;
    }
    
    void h()
    {
      i &= 0xFEFF;
    }
    
    void i()
    {
      i &= 0xFF7F;
    }
    
    public final boolean isRecyclable()
    {
      return ((i & 0x10) == 0) && (!ViewCompat.hasTransientState(itemView));
    }
    
    boolean j()
    {
      return (i & 0x4) != 0;
    }
    
    boolean k()
    {
      return (i & 0x2) != 0;
    }
    
    boolean l()
    {
      return (i & 0x1) != 0;
    }
    
    boolean m()
    {
      return (i & 0x8) != 0;
    }
    
    boolean n()
    {
      return (i & 0x100) != 0;
    }
    
    boolean o()
    {
      return ((i & 0x200) != 0) || (j());
    }
    
    void p()
    {
      if (j != null) {
        j.clear();
      }
      i &= 0xFBFF;
    }
    
    List<Object> q()
    {
      if ((i & 0x400) == 0)
      {
        if ((j != null) && (j.size() != 0)) {
          return k;
        }
        return p;
      }
      return p;
    }
    
    void r()
    {
      i = 0;
      b = -1;
      c = -1;
      d = -1L;
      f = -1;
      q = 0;
      g = null;
      h = null;
      p();
      r = 0;
      n = -1;
      RecyclerView.c(this);
    }
    
    boolean s()
    {
      return (i & 0x10) != 0;
    }
    
    public final void setIsRecyclable(boolean paramBoolean)
    {
      int i1;
      if (paramBoolean) {
        i1 = q - 1;
      } else {
        i1 = q + 1;
      }
      q = i1;
      if (q < 0)
      {
        q = 0;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ");
        localStringBuilder.append(this);
        Log.e("View", localStringBuilder.toString());
        return;
      }
      if ((!paramBoolean) && (q == 1))
      {
        i |= 0x10;
        return;
      }
      if ((paramBoolean) && (q == 0)) {
        i &= 0xFFFFFFEF;
      }
    }
    
    boolean t()
    {
      return ((i & 0x10) == 0) && (ViewCompat.hasTransientState(itemView));
    }
    
    public String toString()
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("ViewHolder{");
      ((StringBuilder)localObject).append(Integer.toHexString(hashCode()));
      ((StringBuilder)localObject).append(" position=");
      ((StringBuilder)localObject).append(b);
      ((StringBuilder)localObject).append(" id=");
      ((StringBuilder)localObject).append(d);
      ((StringBuilder)localObject).append(", oldPos=");
      ((StringBuilder)localObject).append(c);
      ((StringBuilder)localObject).append(", pLpos:");
      ((StringBuilder)localObject).append(f);
      StringBuilder localStringBuilder = new StringBuilder(((StringBuilder)localObject).toString());
      if (d())
      {
        localStringBuilder.append(" scrap ");
        if (m) {
          localObject = "[changeScrap]";
        } else {
          localObject = "[attachedScrap]";
        }
        localStringBuilder.append((String)localObject);
      }
      if (j()) {
        localStringBuilder.append(" invalid");
      }
      if (!l()) {
        localStringBuilder.append(" unbound");
      }
      if (k()) {
        localStringBuilder.append(" update");
      }
      if (m()) {
        localStringBuilder.append(" removed");
      }
      if (c()) {
        localStringBuilder.append(" ignored");
      }
      if (n()) {
        localStringBuilder.append(" tmpDetached");
      }
      if (!isRecyclable())
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(" not recyclable(");
        ((StringBuilder)localObject).append(q);
        ((StringBuilder)localObject).append(")");
        localStringBuilder.append(((StringBuilder)localObject).toString());
      }
      if (o()) {
        localStringBuilder.append(" undefined adapter position");
      }
      if (itemView.getParent() == null) {
        localStringBuilder.append(" no parent");
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    boolean u()
    {
      return (i & 0x2) != 0;
    }
  }
  
  static class a
    extends Observable<RecyclerView.AdapterDataObserver>
  {
    a() {}
    
    public void a(int paramInt1, int paramInt2)
    {
      a(paramInt1, paramInt2, null);
    }
    
    public void a(int paramInt1, int paramInt2, @Nullable Object paramObject)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeChanged(paramInt1, paramInt2, paramObject);
        i -= 1;
      }
    }
    
    public boolean a()
    {
      return mObservers.isEmpty() ^ true;
    }
    
    public void b()
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onChanged();
        i -= 1;
      }
    }
    
    public void b(int paramInt1, int paramInt2)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeInserted(paramInt1, paramInt2);
        i -= 1;
      }
    }
    
    public void c(int paramInt1, int paramInt2)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeRemoved(paramInt1, paramInt2);
        i -= 1;
      }
    }
    
    public void d(int paramInt1, int paramInt2)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.AdapterDataObserver)mObservers.get(i)).onItemRangeMoved(paramInt1, paramInt2, 1);
        i -= 1;
      }
    }
  }
  
  private class b
    implements RecyclerView.ItemAnimator.a
  {
    b() {}
    
    public void a(RecyclerView.ViewHolder paramViewHolder)
    {
      paramViewHolder.setIsRecyclable(true);
      if ((g != null) && (h == null)) {
        g = null;
      }
      h = null;
      if ((!paramViewHolder.s()) && (!a(itemView)) && (paramViewHolder.n())) {
        removeDetachedView(itemView, false);
      }
    }
  }
  
  private class c
    extends RecyclerView.AdapterDataObserver
  {
    c() {}
    
    void a()
    {
      if ((RecyclerView.c) && (r) && (q))
      {
        ViewCompat.postOnAnimation(RecyclerView.this, j);
        return;
      }
      w = true;
      requestLayout();
    }
    
    public void onChanged()
    {
      b(null);
      D.f = true;
      c(true);
      if (!f.d()) {
        requestLayout();
      }
    }
    
    public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      b(null);
      if (f.a(paramInt1, paramInt2, paramObject)) {
        a();
      }
    }
    
    public void onItemRangeInserted(int paramInt1, int paramInt2)
    {
      b(null);
      if (f.b(paramInt1, paramInt2)) {
        a();
      }
    }
    
    public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
    {
      b(null);
      if (f.a(paramInt1, paramInt2, paramInt3)) {
        a();
      }
    }
    
    public void onItemRangeRemoved(int paramInt1, int paramInt2)
    {
      b(null);
      if (f.c(paramInt1, paramInt2)) {
        a();
      }
    }
  }
  
  class d
    implements Runnable
  {
    OverScroller a = new OverScroller(getContext(), RecyclerView.L);
    Interpolator b = RecyclerView.L;
    private int d;
    private int e;
    private boolean f = false;
    private boolean g = false;
    
    d() {}
    
    private float a(float paramFloat)
    {
      return (float)Math.sin((paramFloat - 0.5F) * 0.47123894F);
    }
    
    private int b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      int j = Math.abs(paramInt1);
      int k = Math.abs(paramInt2);
      int i;
      if (j > k) {
        i = 1;
      } else {
        i = 0;
      }
      paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
      paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (i != 0) {
        paramInt1 = getWidth();
      } else {
        paramInt1 = getHeight();
      }
      paramInt4 = paramInt1 / 2;
      float f2 = paramInt2;
      float f1 = paramInt1;
      float f3 = Math.min(1.0F, f2 * 1.0F / f1);
      f2 = paramInt4;
      f3 = a(f3);
      if (paramInt3 > 0)
      {
        paramInt1 = Math.round(Math.abs((f2 + f3 * f2) / paramInt3) * 1000.0F) * 4;
      }
      else
      {
        if (i != 0) {
          paramInt1 = j;
        } else {
          paramInt1 = k;
        }
        paramInt1 = (int)((paramInt1 / f1 + 1.0F) * 300.0F);
      }
      return Math.min(paramInt1, 2000);
    }
    
    private void c()
    {
      g = false;
      f = true;
    }
    
    private void d()
    {
      f = false;
      if (g) {
        a();
      }
    }
    
    void a()
    {
      if (f)
      {
        g = true;
        return;
      }
      removeCallbacks(this);
      ViewCompat.postOnAnimation(RecyclerView.this, this);
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      setScrollState(2);
      e = 0;
      d = 0;
      a.fling(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
      a();
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3)
    {
      a(paramInt1, paramInt2, paramInt3, RecyclerView.L);
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a(paramInt1, paramInt2, b(paramInt1, paramInt2, paramInt3, paramInt4));
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      if (b != paramInterpolator)
      {
        b = paramInterpolator;
        a = new OverScroller(getContext(), paramInterpolator);
      }
      setScrollState(2);
      e = 0;
      d = 0;
      a.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
      if (Build.VERSION.SDK_INT < 23) {
        a.computeScrollOffset();
      }
      a();
    }
    
    public void a(int paramInt1, int paramInt2, Interpolator paramInterpolator)
    {
      int i = b(paramInt1, paramInt2, 0, 0);
      Interpolator localInterpolator = paramInterpolator;
      if (paramInterpolator == null) {
        localInterpolator = RecyclerView.L;
      }
      a(paramInt1, paramInt2, i, localInterpolator);
    }
    
    public void b()
    {
      removeCallbacks(this);
      a.abortAnimation();
    }
    
    public void b(int paramInt1, int paramInt2)
    {
      a(paramInt1, paramInt2, 0, 0);
    }
    
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   4: getfield 149	android/support/v7/widget/RecyclerView:n	Landroid/support/v7/widget/RecyclerView$LayoutManager;
      //   7: ifnonnull +8 -> 15
      //   10: aload_0
      //   11: invokevirtual 151	android/support/v7/widget/RecyclerView$d:b	()V
      //   14: return
      //   15: aload_0
      //   16: invokespecial 153	android/support/v7/widget/RecyclerView$d:c	()V
      //   19: aload_0
      //   20: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   23: invokevirtual 155	android/support/v7/widget/RecyclerView:d	()V
      //   26: aload_0
      //   27: getfield 47	android/support/v7/widget/RecyclerView$d:a	Landroid/widget/OverScroller;
      //   30: astore 13
      //   32: aload_0
      //   33: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   36: getfield 149	android/support/v7/widget/RecyclerView:n	Landroid/support/v7/widget/RecyclerView$LayoutManager;
      //   39: getfield 161	android/support/v7/widget/RecyclerView$LayoutManager:t	Landroid/support/v7/widget/RecyclerView$SmoothScroller;
      //   42: astore 14
      //   44: aload 13
      //   46: invokevirtual 138	android/widget/OverScroller:computeScrollOffset	()Z
      //   49: ifeq +761 -> 810
      //   52: aload_0
      //   53: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   56: getfield 164	android/support/v7/widget/RecyclerView:I	[I
      //   59: astore 15
      //   61: aload 13
      //   63: invokevirtual 167	android/widget/OverScroller:getCurrX	()I
      //   66: istore 11
      //   68: aload 13
      //   70: invokevirtual 170	android/widget/OverScroller:getCurrY	()I
      //   73: istore 12
      //   75: iload 11
      //   77: aload_0
      //   78: getfield 110	android/support/v7/widget/RecyclerView$d:d	I
      //   81: isub
      //   82: istore_2
      //   83: iload 12
      //   85: aload_0
      //   86: getfield 108	android/support/v7/widget/RecyclerView$d:e	I
      //   89: isub
      //   90: istore_1
      //   91: aload_0
      //   92: iload 11
      //   94: putfield 110	android/support/v7/widget/RecyclerView$d:d	I
      //   97: aload_0
      //   98: iload 12
      //   100: putfield 108	android/support/v7/widget/RecyclerView$d:e	I
      //   103: iload_2
      //   104: istore 4
      //   106: iload_1
      //   107: istore_3
      //   108: aload_0
      //   109: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   112: iload_2
      //   113: iload_1
      //   114: aload 15
      //   116: aconst_null
      //   117: iconst_1
      //   118: invokevirtual 174	android/support/v7/widget/RecyclerView:dispatchNestedPreScroll	(II[I[II)Z
      //   121: ifeq +18 -> 139
      //   124: iload_2
      //   125: aload 15
      //   127: iconst_0
      //   128: iaload
      //   129: isub
      //   130: istore 4
      //   132: iload_1
      //   133: aload 15
      //   135: iconst_1
      //   136: iaload
      //   137: isub
      //   138: istore_3
      //   139: aload_0
      //   140: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   143: getfield 178	android/support/v7/widget/RecyclerView:m	Landroid/support/v7/widget/RecyclerView$Adapter;
      //   146: ifnull +234 -> 380
      //   149: aload_0
      //   150: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   153: iload 4
      //   155: iload_3
      //   156: aload_0
      //   157: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   160: getfield 181	android/support/v7/widget/RecyclerView:J	[I
      //   163: invokevirtual 184	android/support/v7/widget/RecyclerView:a	(II[I)V
      //   166: aload_0
      //   167: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   170: getfield 181	android/support/v7/widget/RecyclerView:J	[I
      //   173: iconst_0
      //   174: iaload
      //   175: istore_1
      //   176: aload_0
      //   177: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   180: getfield 181	android/support/v7/widget/RecyclerView:J	[I
      //   183: iconst_1
      //   184: iaload
      //   185: istore_2
      //   186: iload 4
      //   188: iload_1
      //   189: isub
      //   190: istore 9
      //   192: iload_3
      //   193: iload_2
      //   194: isub
      //   195: istore 10
      //   197: iload_1
      //   198: istore 5
      //   200: iload_2
      //   201: istore 8
      //   203: iload 9
      //   205: istore 7
      //   207: iload 10
      //   209: istore 6
      //   211: aload 14
      //   213: ifnull +179 -> 392
      //   216: iload_1
      //   217: istore 5
      //   219: iload_2
      //   220: istore 8
      //   222: iload 9
      //   224: istore 7
      //   226: iload 10
      //   228: istore 6
      //   230: aload 14
      //   232: invokevirtual 189	android/support/v7/widget/RecyclerView$SmoothScroller:isPendingInitialRun	()Z
      //   235: ifne +157 -> 392
      //   238: iload_1
      //   239: istore 5
      //   241: iload_2
      //   242: istore 8
      //   244: iload 9
      //   246: istore 7
      //   248: iload 10
      //   250: istore 6
      //   252: aload 14
      //   254: invokevirtual 192	android/support/v7/widget/RecyclerView$SmoothScroller:isRunning	()Z
      //   257: ifeq +135 -> 392
      //   260: aload_0
      //   261: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   264: getfield 196	android/support/v7/widget/RecyclerView:D	Landroid/support/v7/widget/RecyclerView$State;
      //   267: invokevirtual 201	android/support/v7/widget/RecyclerView$State:getItemCount	()I
      //   270: istore 5
      //   272: iload 5
      //   274: ifne +25 -> 299
      //   277: aload 14
      //   279: invokevirtual 204	android/support/v7/widget/RecyclerView$SmoothScroller:stop	()V
      //   282: iload_1
      //   283: istore 5
      //   285: iload_2
      //   286: istore 8
      //   288: iload 9
      //   290: istore 7
      //   292: iload 10
      //   294: istore 6
      //   296: goto +96 -> 392
      //   299: aload 14
      //   301: invokevirtual 207	android/support/v7/widget/RecyclerView$SmoothScroller:getTargetPosition	()I
      //   304: iload 5
      //   306: if_icmplt +43 -> 349
      //   309: aload 14
      //   311: iload 5
      //   313: iconst_1
      //   314: isub
      //   315: invokevirtual 210	android/support/v7/widget/RecyclerView$SmoothScroller:setTargetPosition	(I)V
      //   318: aload 14
      //   320: iload 4
      //   322: iload 9
      //   324: isub
      //   325: iload_3
      //   326: iload 10
      //   328: isub
      //   329: invokevirtual 212	android/support/v7/widget/RecyclerView$SmoothScroller:a	(II)V
      //   332: iload_1
      //   333: istore 5
      //   335: iload_2
      //   336: istore 8
      //   338: iload 9
      //   340: istore 7
      //   342: iload 10
      //   344: istore 6
      //   346: goto +46 -> 392
      //   349: aload 14
      //   351: iload 4
      //   353: iload 9
      //   355: isub
      //   356: iload_3
      //   357: iload 10
      //   359: isub
      //   360: invokevirtual 212	android/support/v7/widget/RecyclerView$SmoothScroller:a	(II)V
      //   363: iload_1
      //   364: istore 5
      //   366: iload_2
      //   367: istore 8
      //   369: iload 9
      //   371: istore 7
      //   373: iload 10
      //   375: istore 6
      //   377: goto +15 -> 392
      //   380: iconst_0
      //   381: istore 5
      //   383: iconst_0
      //   384: istore 8
      //   386: iconst_0
      //   387: istore 7
      //   389: iconst_0
      //   390: istore 6
      //   392: aload_0
      //   393: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   396: getfield 216	android/support/v7/widget/RecyclerView:p	Ljava/util/ArrayList;
      //   399: invokevirtual 221	java/util/ArrayList:isEmpty	()Z
      //   402: ifne +10 -> 412
      //   405: aload_0
      //   406: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   409: invokevirtual 224	android/support/v7/widget/RecyclerView:invalidate	()V
      //   412: aload_0
      //   413: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   416: invokevirtual 227	android/support/v7/widget/RecyclerView:getOverScrollMode	()I
      //   419: iconst_2
      //   420: if_icmpeq +13 -> 433
      //   423: aload_0
      //   424: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   427: iload 4
      //   429: iload_3
      //   430: invokevirtual 228	android/support/v7/widget/RecyclerView:a	(II)V
      //   433: aload_0
      //   434: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   437: iload 5
      //   439: iload 8
      //   441: iload 7
      //   443: iload 6
      //   445: aconst_null
      //   446: iconst_1
      //   447: invokevirtual 232	android/support/v7/widget/RecyclerView:dispatchNestedScroll	(IIII[II)Z
      //   450: ifne +141 -> 591
      //   453: iload 7
      //   455: ifne +8 -> 463
      //   458: iload 6
      //   460: ifeq +131 -> 591
      //   463: aload 13
      //   465: invokevirtual 236	android/widget/OverScroller:getCurrVelocity	()F
      //   468: f2i
      //   469: istore_2
      //   470: iload 7
      //   472: iload 11
      //   474: if_icmpeq +24 -> 498
      //   477: iload 7
      //   479: ifge +9 -> 488
      //   482: iload_2
      //   483: ineg
      //   484: istore_1
      //   485: goto +15 -> 500
      //   488: iload 7
      //   490: ifle +8 -> 498
      //   493: iload_2
      //   494: istore_1
      //   495: goto +5 -> 500
      //   498: iconst_0
      //   499: istore_1
      //   500: iload 6
      //   502: iload 12
      //   504: if_icmpeq +22 -> 526
      //   507: iload 6
      //   509: ifge +9 -> 518
      //   512: iload_2
      //   513: ineg
      //   514: istore_2
      //   515: goto +13 -> 528
      //   518: iload 6
      //   520: ifle +6 -> 526
      //   523: goto +5 -> 528
      //   526: iconst_0
      //   527: istore_2
      //   528: aload_0
      //   529: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   532: invokevirtual 227	android/support/v7/widget/RecyclerView:getOverScrollMode	()I
      //   535: iconst_2
      //   536: if_icmpeq +12 -> 548
      //   539: aload_0
      //   540: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   543: iload_1
      //   544: iload_2
      //   545: invokevirtual 238	android/support/v7/widget/RecyclerView:b	(II)V
      //   548: iload_1
      //   549: ifne +18 -> 567
      //   552: iload 7
      //   554: iload 11
      //   556: if_icmpeq +11 -> 567
      //   559: aload 13
      //   561: invokevirtual 241	android/widget/OverScroller:getFinalX	()I
      //   564: ifne +27 -> 591
      //   567: iload_2
      //   568: ifne +18 -> 586
      //   571: iload 6
      //   573: iload 12
      //   575: if_icmpeq +11 -> 586
      //   578: aload 13
      //   580: invokevirtual 244	android/widget/OverScroller:getFinalY	()I
      //   583: ifne +8 -> 591
      //   586: aload 13
      //   588: invokevirtual 142	android/widget/OverScroller:abortAnimation	()V
      //   591: iload 5
      //   593: ifne +8 -> 601
      //   596: iload 8
      //   598: ifeq +14 -> 612
      //   601: aload_0
      //   602: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   605: iload 5
      //   607: iload 8
      //   609: invokevirtual 246	android/support/v7/widget/RecyclerView:f	(II)V
      //   612: aload_0
      //   613: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   616: invokestatic 249	android/support/v7/widget/RecyclerView:a	(Landroid/support/v7/widget/RecyclerView;)Z
      //   619: ifne +10 -> 629
      //   622: aload_0
      //   623: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   626: invokevirtual 224	android/support/v7/widget/RecyclerView:invalidate	()V
      //   629: iload_3
      //   630: ifeq +27 -> 657
      //   633: aload_0
      //   634: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   637: getfield 149	android/support/v7/widget/RecyclerView:n	Landroid/support/v7/widget/RecyclerView$LayoutManager;
      //   640: invokevirtual 252	android/support/v7/widget/RecyclerView$LayoutManager:canScrollVertically	()Z
      //   643: ifeq +14 -> 657
      //   646: iload 8
      //   648: iload_3
      //   649: if_icmpne +8 -> 657
      //   652: iconst_1
      //   653: istore_1
      //   654: goto +5 -> 659
      //   657: iconst_0
      //   658: istore_1
      //   659: iload 4
      //   661: ifeq +28 -> 689
      //   664: aload_0
      //   665: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   668: getfield 149	android/support/v7/widget/RecyclerView:n	Landroid/support/v7/widget/RecyclerView$LayoutManager;
      //   671: invokevirtual 255	android/support/v7/widget/RecyclerView$LayoutManager:canScrollHorizontally	()Z
      //   674: ifeq +15 -> 689
      //   677: iload 5
      //   679: iload 4
      //   681: if_icmpne +8 -> 689
      //   684: iconst_1
      //   685: istore_2
      //   686: goto +5 -> 691
      //   689: iconst_0
      //   690: istore_2
      //   691: iload 4
      //   693: ifne +7 -> 700
      //   696: iload_3
      //   697: ifeq +19 -> 716
      //   700: iload_2
      //   701: ifne +15 -> 716
      //   704: iload_1
      //   705: ifeq +6 -> 711
      //   708: goto +8 -> 716
      //   711: iconst_0
      //   712: istore_1
      //   713: goto +5 -> 718
      //   716: iconst_1
      //   717: istore_1
      //   718: aload 13
      //   720: invokevirtual 258	android/widget/OverScroller:isFinished	()Z
      //   723: ifne +55 -> 778
      //   726: iload_1
      //   727: ifne +17 -> 744
      //   730: aload_0
      //   731: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   734: iconst_1
      //   735: invokevirtual 262	android/support/v7/widget/RecyclerView:hasNestedScrollingParent	(I)Z
      //   738: ifne +6 -> 744
      //   741: goto +37 -> 778
      //   744: aload_0
      //   745: invokevirtual 91	android/support/v7/widget/RecyclerView$d:a	()V
      //   748: aload_0
      //   749: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   752: getfield 266	android/support/v7/widget/RecyclerView:B	Landroid/support/v7/widget/t;
      //   755: ifnull +55 -> 810
      //   758: aload_0
      //   759: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   762: getfield 266	android/support/v7/widget/RecyclerView:B	Landroid/support/v7/widget/t;
      //   765: aload_0
      //   766: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   769: iload 4
      //   771: iload_3
      //   772: invokevirtual 271	android/support/v7/widget/t:a	(Landroid/support/v7/widget/RecyclerView;II)V
      //   775: goto +35 -> 810
      //   778: aload_0
      //   779: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   782: iconst_0
      //   783: invokevirtual 106	android/support/v7/widget/RecyclerView:setScrollState	(I)V
      //   786: getstatic 273	android/support/v7/widget/RecyclerView:d	Z
      //   789: ifeq +13 -> 802
      //   792: aload_0
      //   793: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   796: getfield 277	android/support/v7/widget/RecyclerView:C	Landroid/support/v7/widget/t$a;
      //   799: invokevirtual 280	android/support/v7/widget/t$a:a	()V
      //   802: aload_0
      //   803: getfield 24	android/support/v7/widget/RecyclerView$d:c	Landroid/support/v7/widget/RecyclerView;
      //   806: iconst_1
      //   807: invokevirtual 283	android/support/v7/widget/RecyclerView:stopNestedScroll	(I)V
      //   810: aload 14
      //   812: ifnull +30 -> 842
      //   815: aload 14
      //   817: invokevirtual 189	android/support/v7/widget/RecyclerView$SmoothScroller:isPendingInitialRun	()Z
      //   820: ifeq +10 -> 830
      //   823: aload 14
      //   825: iconst_0
      //   826: iconst_0
      //   827: invokevirtual 212	android/support/v7/widget/RecyclerView$SmoothScroller:a	(II)V
      //   830: aload_0
      //   831: getfield 36	android/support/v7/widget/RecyclerView$d:g	Z
      //   834: ifne +8 -> 842
      //   837: aload 14
      //   839: invokevirtual 204	android/support/v7/widget/RecyclerView$SmoothScroller:stop	()V
      //   842: aload_0
      //   843: invokespecial 284	android/support/v7/widget/RecyclerView$d:d	()V
      //   846: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	847	0	this	d
      //   90	637	1	i	int
      //   82	619	2	j	int
      //   107	665	3	k	int
      //   104	666	4	m	int
      //   198	484	5	n	int
      //   209	367	6	i1	int
      //   205	352	7	i2	int
      //   201	449	8	i3	int
      //   190	180	9	i4	int
      //   195	179	10	i5	int
      //   66	491	11	i6	int
      //   73	503	12	i7	int
      //   30	689	13	localOverScroller	OverScroller
      //   42	796	14	localSmoothScroller	RecyclerView.SmoothScroller
      //   59	75	15	arrayOfInt	int[]
    }
  }
}
