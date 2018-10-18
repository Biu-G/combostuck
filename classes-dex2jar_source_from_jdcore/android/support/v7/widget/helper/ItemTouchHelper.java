package android.support.v7.widget.helper;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R.dimen;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ChildDrawingOrderCallback;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnChildAttachStateChangeListener;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.Log;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public class ItemTouchHelper
  extends RecyclerView.ItemDecoration
  implements RecyclerView.OnChildAttachStateChangeListener
{
  public static final int ACTION_STATE_DRAG = 2;
  public static final int ACTION_STATE_IDLE = 0;
  public static final int ACTION_STATE_SWIPE = 1;
  public static final int ANIMATION_TYPE_DRAG = 8;
  public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
  public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
  public static final int DOWN = 2;
  public static final int END = 32;
  public static final int LEFT = 4;
  public static final int RIGHT = 8;
  public static final int START = 16;
  public static final int UP = 1;
  private a A;
  private final RecyclerView.OnItemTouchListener B = new RecyclerView.OnItemTouchListener()
  {
    public boolean onInterceptTouchEvent(@NonNull RecyclerView paramAnonymousRecyclerView, @NonNull MotionEvent paramAnonymousMotionEvent)
    {
      p.onTouchEvent(paramAnonymousMotionEvent);
      int i = paramAnonymousMotionEvent.getActionMasked();
      if (i == 0)
      {
        g = paramAnonymousMotionEvent.getPointerId(0);
        c = paramAnonymousMotionEvent.getX();
        d = paramAnonymousMotionEvent.getY();
        c();
        if (b == null)
        {
          paramAnonymousRecyclerView = b(paramAnonymousMotionEvent);
          if (paramAnonymousRecyclerView != null)
          {
            ItemTouchHelper localItemTouchHelper = ItemTouchHelper.this;
            c -= l;
            localItemTouchHelper = ItemTouchHelper.this;
            d -= m;
            a(h, true);
            if (a.remove(h.itemView)) {
              h.clearView(k, h);
            }
            a(h, i);
            a(paramAnonymousMotionEvent, ItemTouchHelper.this.i, 0);
          }
        }
      }
      else if ((i != 3) && (i != 1))
      {
        if (g != -1)
        {
          int j = paramAnonymousMotionEvent.findPointerIndex(g);
          if (j >= 0) {
            a(i, paramAnonymousMotionEvent, j);
          }
        }
      }
      else
      {
        g = -1;
        a(null, 0);
      }
      if (m != null) {
        m.addMovement(paramAnonymousMotionEvent);
      }
      return b != null;
    }
    
    public void onRequestDisallowInterceptTouchEvent(boolean paramAnonymousBoolean)
    {
      if (!paramAnonymousBoolean) {
        return;
      }
      a(null, 0);
    }
    
    public void onTouchEvent(@NonNull RecyclerView paramAnonymousRecyclerView, @NonNull MotionEvent paramAnonymousMotionEvent)
    {
      p.onTouchEvent(paramAnonymousMotionEvent);
      if (m != null) {
        m.addMovement(paramAnonymousMotionEvent);
      }
      if (g == -1) {
        return;
      }
      int j = paramAnonymousMotionEvent.getActionMasked();
      int k = paramAnonymousMotionEvent.findPointerIndex(g);
      if (k >= 0) {
        a(j, paramAnonymousMotionEvent, k);
      }
      paramAnonymousRecyclerView = b;
      if (paramAnonymousRecyclerView == null) {
        return;
      }
      int i = 0;
      if (j != 6)
      {
        switch (j)
        {
        default: 
          return;
        case 3: 
          if (m != null) {
            m.clear();
          }
          break;
        case 2: 
          if (k < 0) {
            return;
          }
          a(paramAnonymousMotionEvent, ItemTouchHelper.this.i, k);
          a(paramAnonymousRecyclerView);
          ItemTouchHelper.this.k.removeCallbacks(l);
          l.run();
          ItemTouchHelper.this.k.invalidate();
          return;
        }
        a(null, 0);
        g = -1;
        return;
      }
      j = paramAnonymousMotionEvent.getActionIndex();
      if (paramAnonymousMotionEvent.getPointerId(j) == g)
      {
        if (j == 0) {
          i = 1;
        }
        g = paramAnonymousMotionEvent.getPointerId(i);
        a(paramAnonymousMotionEvent, ItemTouchHelper.this.i, j);
      }
    }
  };
  private Rect C;
  private long D;
  final List<View> a = new ArrayList();
  RecyclerView.ViewHolder b = null;
  float c;
  float d;
  float e;
  float f;
  int g = -1;
  @NonNull
  Callback h;
  int i;
  List<b> j = new ArrayList();
  RecyclerView k;
  final Runnable l = new Runnable()
  {
    public void run()
    {
      if ((b != null) && (b()))
      {
        if (b != null) {
          a(b);
        }
        k.removeCallbacks(l);
        ViewCompat.postOnAnimation(k, this);
      }
    }
  };
  VelocityTracker m;
  View n = null;
  int o = -1;
  GestureDetectorCompat p;
  private final float[] q = new float[2];
  private float r;
  private float s;
  private float t;
  private float u;
  private int v = 0;
  private int w;
  private List<RecyclerView.ViewHolder> x;
  private List<Integer> y;
  private RecyclerView.ChildDrawingOrderCallback z = null;
  
  public ItemTouchHelper(@NonNull Callback paramCallback)
  {
    h = paramCallback;
  }
  
  private void a(float[] paramArrayOfFloat)
  {
    if ((i & 0xC) != 0) {
      paramArrayOfFloat[0] = (t + e - b.itemView.getLeft());
    } else {
      paramArrayOfFloat[0] = b.itemView.getTranslationX();
    }
    if ((i & 0x3) != 0)
    {
      paramArrayOfFloat[1] = (u + f - b.itemView.getTop());
      return;
    }
    paramArrayOfFloat[1] = b.itemView.getTranslationY();
  }
  
  private static boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return (paramFloat1 >= paramFloat3) && (paramFloat1 <= paramFloat3 + paramView.getWidth()) && (paramFloat2 >= paramFloat4) && (paramFloat2 <= paramFloat4 + paramView.getHeight());
  }
  
  private int b(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if ((paramInt & 0xC) != 0)
    {
      float f1 = e;
      int i2 = 4;
      int i1;
      if (f1 > 0.0F) {
        i1 = 8;
      } else {
        i1 = 4;
      }
      if ((m != null) && (g > -1))
      {
        m.computeCurrentVelocity(1000, h.getSwipeVelocityThreshold(s));
        f2 = m.getXVelocity(g);
        f1 = m.getYVelocity(g);
        if (f2 > 0.0F) {
          i2 = 8;
        }
        f2 = Math.abs(f2);
        if (((i2 & paramInt) != 0) && (i1 == i2) && (f2 >= h.getSwipeEscapeVelocity(r)) && (f2 > Math.abs(f1))) {
          return i2;
        }
      }
      f1 = k.getWidth();
      float f2 = h.getSwipeThreshold(paramViewHolder);
      if (((paramInt & i1) != 0) && (Math.abs(e) > f1 * f2)) {
        return i1;
      }
    }
    return 0;
  }
  
  private List<RecyclerView.ViewHolder> b(RecyclerView.ViewHolder paramViewHolder)
  {
    Object localObject = paramViewHolder;
    if (x == null)
    {
      x = new ArrayList();
      y = new ArrayList();
    }
    else
    {
      x.clear();
      y.clear();
    }
    int i2 = h.getBoundingBoxMargin();
    int i4 = Math.round(t + e) - i2;
    int i5 = Math.round(u + f) - i2;
    int i1 = itemView.getWidth();
    i2 *= 2;
    int i6 = i1 + i4 + i2;
    int i7 = itemView.getHeight() + i5 + i2;
    int i8 = (i4 + i6) / 2;
    int i9 = (i5 + i7) / 2;
    localObject = k.getLayoutManager();
    int i10 = ((RecyclerView.LayoutManager)localObject).getChildCount();
    i1 = 0;
    while (i1 < i10)
    {
      View localView = ((RecyclerView.LayoutManager)localObject).getChildAt(i1);
      if ((localView != itemView) && (localView.getBottom() >= i5) && (localView.getTop() <= i7) && (localView.getRight() >= i4) && (localView.getLeft() <= i6))
      {
        RecyclerView.ViewHolder localViewHolder = k.getChildViewHolder(localView);
        if (h.canDropOver(k, b, localViewHolder))
        {
          i2 = Math.abs(i8 - (localView.getLeft() + localView.getRight()) / 2);
          int i3 = Math.abs(i9 - (localView.getTop() + localView.getBottom()) / 2);
          int i11 = i2 * i2 + i3 * i3;
          int i12 = x.size();
          i2 = 0;
          i3 = 0;
          while ((i2 < i12) && (i11 > ((Integer)y.get(i2)).intValue()))
          {
            i3 += 1;
            i2 += 1;
          }
          x.add(i3, localViewHolder);
          y.add(i3, Integer.valueOf(i11));
        }
      }
      i1 += 1;
    }
    return x;
  }
  
  private int c(RecyclerView.ViewHolder paramViewHolder)
  {
    if (v == 2) {
      return 0;
    }
    int i2 = h.getMovementFlags(k, paramViewHolder);
    int i1 = (h.convertToAbsoluteDirection(i2, ViewCompat.getLayoutDirection(k)) & 0xFF00) >> 8;
    if (i1 == 0) {
      return 0;
    }
    i2 = (i2 & 0xFF00) >> 8;
    int i3;
    if (Math.abs(e) > Math.abs(f))
    {
      i3 = b(paramViewHolder, i1);
      if (i3 > 0)
      {
        if ((i2 & i3) == 0) {
          return Callback.convertToRelativeDirection(i3, ViewCompat.getLayoutDirection(k));
        }
        return i3;
      }
      i1 = c(paramViewHolder, i1);
      if (i1 > 0) {
        return i1;
      }
    }
    else
    {
      i3 = c(paramViewHolder, i1);
      if (i3 > 0) {
        return i3;
      }
      i1 = b(paramViewHolder, i1);
      if (i1 > 0)
      {
        if ((i2 & i1) == 0) {
          return Callback.convertToRelativeDirection(i1, ViewCompat.getLayoutDirection(k));
        }
        return i1;
      }
    }
    return 0;
  }
  
  private int c(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if ((paramInt & 0x3) != 0)
    {
      float f1 = f;
      int i2 = 1;
      int i1;
      if (f1 > 0.0F) {
        i1 = 2;
      } else {
        i1 = 1;
      }
      if ((m != null) && (g > -1))
      {
        m.computeCurrentVelocity(1000, h.getSwipeVelocityThreshold(s));
        f1 = m.getXVelocity(g);
        f2 = m.getYVelocity(g);
        if (f2 > 0.0F) {
          i2 = 2;
        }
        f2 = Math.abs(f2);
        if (((i2 & paramInt) != 0) && (i2 == i1) && (f2 >= h.getSwipeEscapeVelocity(r)) && (f2 > Math.abs(f1))) {
          return i2;
        }
      }
      f1 = k.getHeight();
      float f2 = h.getSwipeThreshold(paramViewHolder);
      if (((paramInt & i1) != 0) && (Math.abs(f) > f1 * f2)) {
        return i1;
      }
    }
    return 0;
  }
  
  private RecyclerView.ViewHolder c(MotionEvent paramMotionEvent)
  {
    RecyclerView.LayoutManager localLayoutManager = k.getLayoutManager();
    if (g == -1) {
      return null;
    }
    int i1 = paramMotionEvent.findPointerIndex(g);
    float f3 = paramMotionEvent.getX(i1);
    float f4 = c;
    float f1 = paramMotionEvent.getY(i1);
    float f2 = d;
    f3 = Math.abs(f3 - f4);
    f1 = Math.abs(f1 - f2);
    if ((f3 < w) && (f1 < w)) {
      return null;
    }
    if ((f3 > f1) && (localLayoutManager.canScrollHorizontally())) {
      return null;
    }
    if ((f1 > f3) && (localLayoutManager.canScrollVertically())) {
      return null;
    }
    paramMotionEvent = a(paramMotionEvent);
    if (paramMotionEvent == null) {
      return null;
    }
    return k.getChildViewHolder(paramMotionEvent);
  }
  
  private void d()
  {
    w = ViewConfiguration.get(k.getContext()).getScaledTouchSlop();
    k.addItemDecoration(this);
    k.addOnItemTouchListener(B);
    k.addOnChildAttachStateChangeListener(this);
    f();
  }
  
  private void e()
  {
    k.removeItemDecoration(this);
    k.removeOnItemTouchListener(B);
    k.removeOnChildAttachStateChangeListener(this);
    int i1 = j.size() - 1;
    while (i1 >= 0)
    {
      b localB = (b)j.get(0);
      h.clearView(k, h);
      i1 -= 1;
    }
    j.clear();
    n = null;
    o = -1;
    h();
    g();
  }
  
  private void f()
  {
    A = new a();
    p = new GestureDetectorCompat(k.getContext(), A);
  }
  
  private void g()
  {
    if (A != null)
    {
      A.a();
      A = null;
    }
    if (p != null) {
      p = null;
    }
  }
  
  private void h()
  {
    if (m != null)
    {
      m.recycle();
      m = null;
    }
  }
  
  private void i()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return;
    }
    if (z == null) {
      z = new RecyclerView.ChildDrawingOrderCallback()
      {
        public int onGetChildDrawingOrder(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          if (n == null) {
            return paramAnonymousInt2;
          }
          int j = o;
          int i = j;
          if (j == -1)
          {
            i = k.indexOfChild(n);
            o = i;
          }
          if (paramAnonymousInt2 == paramAnonymousInt1 - 1) {
            return i;
          }
          if (paramAnonymousInt2 < i) {
            return paramAnonymousInt2;
          }
          return paramAnonymousInt2 + 1;
        }
      };
    }
    k.setChildDrawingOrderCallback(z);
  }
  
  View a(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    if (b != null)
    {
      paramMotionEvent = b.itemView;
      if (a(paramMotionEvent, f1, f2, t + e, u + f)) {
        return paramMotionEvent;
      }
    }
    int i1 = j.size() - 1;
    while (i1 >= 0)
    {
      paramMotionEvent = (b)j.get(i1);
      View localView = h.itemView;
      if (a(localView, f1, f2, l, m)) {
        return localView;
      }
      i1 -= 1;
    }
    return k.findChildViewUnder(f1, f2);
  }
  
  void a(int paramInt1, MotionEvent paramMotionEvent, int paramInt2)
  {
    if ((b == null) && (paramInt1 == 2) && (v != 2))
    {
      if (!h.isItemViewSwipeEnabled()) {
        return;
      }
      if (k.getScrollState() == 1) {
        return;
      }
      RecyclerView.ViewHolder localViewHolder = c(paramMotionEvent);
      if (localViewHolder == null) {
        return;
      }
      paramInt1 = (h.a(k, localViewHolder) & 0xFF00) >> 8;
      if (paramInt1 == 0) {
        return;
      }
      float f1 = paramMotionEvent.getX(paramInt2);
      float f2 = paramMotionEvent.getY(paramInt2);
      f1 -= c;
      f2 -= d;
      float f3 = Math.abs(f1);
      float f4 = Math.abs(f2);
      if ((f3 < w) && (f4 < w)) {
        return;
      }
      if (f3 > f4)
      {
        if ((f1 < 0.0F) && ((paramInt1 & 0x4) == 0)) {
          return;
        }
        if ((f1 <= 0.0F) || ((paramInt1 & 0x8) != 0)) {}
      }
      else
      {
        if ((f2 < 0.0F) && ((paramInt1 & 0x1) == 0)) {
          return;
        }
        if ((f2 > 0.0F) && ((paramInt1 & 0x2) == 0)) {
          return;
        }
      }
      f = 0.0F;
      e = 0.0F;
      g = paramMotionEvent.getPointerId(0);
      a(localViewHolder, 1);
      return;
    }
  }
  
  void a(RecyclerView.ViewHolder paramViewHolder)
  {
    if (k.isLayoutRequested()) {
      return;
    }
    if (v != 2) {
      return;
    }
    float f1 = h.getMoveThreshold(paramViewHolder);
    int i1 = (int)(t + e);
    int i2 = (int)(u + f);
    if ((Math.abs(i2 - itemView.getTop()) < itemView.getHeight() * f1) && (Math.abs(i1 - itemView.getLeft()) < itemView.getWidth() * f1)) {
      return;
    }
    Object localObject = b(paramViewHolder);
    if (((List)localObject).size() == 0) {
      return;
    }
    localObject = h.chooseDropTarget(paramViewHolder, (List)localObject, i1, i2);
    if (localObject == null)
    {
      x.clear();
      y.clear();
      return;
    }
    int i3 = ((RecyclerView.ViewHolder)localObject).getAdapterPosition();
    int i4 = paramViewHolder.getAdapterPosition();
    if (h.onMove(k, paramViewHolder, (RecyclerView.ViewHolder)localObject)) {
      h.onMoved(k, paramViewHolder, i4, (RecyclerView.ViewHolder)localObject, i3, i1, i2);
    }
  }
  
  void a(@Nullable RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if ((paramViewHolder == b) && (paramInt == v)) {
      return;
    }
    D = Long.MIN_VALUE;
    int i3 = v;
    a(paramViewHolder, true);
    v = paramInt;
    if (paramInt == 2) {
      if (paramViewHolder != null)
      {
        n = itemView;
        i();
      }
      else
      {
        throw new IllegalArgumentException("Must pass a ViewHolder when dragging");
      }
    }
    int i1;
    if (b != null)
    {
      Object localObject = b;
      if (itemView.getParent() != null)
      {
        final int i2;
        if (i3 == 2) {
          i2 = 0;
        } else {
          i2 = c((RecyclerView.ViewHolder)localObject);
        }
        h();
        if ((i2 != 4) && (i2 != 8) && (i2 != 16) && (i2 != 32)) {
          switch (i2)
          {
          }
        }
        float f2;
        for (float f1 = 0.0F;; f1 = Math.signum(e) * k.getWidth())
        {
          f2 = 0.0F;
          break;
          f2 = Math.signum(f) * k.getHeight();
          f1 = 0.0F;
          break;
        }
        if (i3 == 2) {
          i1 = 8;
        } else if (i2 > 0) {
          i1 = 2;
        } else {
          i1 = 4;
        }
        a(q);
        float f3 = q[0];
        float f4 = q[1];
        localObject = new b((RecyclerView.ViewHolder)localObject, i1, i3, f3, f4, f1, f2)
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            super.onAnimationEnd(paramAnonymousAnimator);
            if (n) {
              return;
            }
            if (i2 <= 0)
            {
              h.clearView(k, b);
            }
            else
            {
              a.add(b.itemView);
              k = true;
              if (i2 > 0) {
                a(this, i2);
              }
            }
            if (n == b.itemView) {
              a(b.itemView);
            }
          }
        };
        ((b)localObject).a(h.getAnimationDuration(k, i1, f1 - f3, f2 - f4));
        j.add(localObject);
        ((b)localObject).a();
        i1 = 1;
      }
      else
      {
        a(itemView);
        h.clearView(k, (RecyclerView.ViewHolder)localObject);
        i1 = 0;
      }
      b = null;
    }
    else
    {
      i1 = 0;
    }
    if (paramViewHolder != null)
    {
      i = ((h.a(k, paramViewHolder) & (1 << paramInt * 8 + 8) - 1) >> v * 8);
      t = itemView.getLeft();
      u = itemView.getTop();
      b = paramViewHolder;
      if (paramInt == 2) {
        b.itemView.performHapticFeedback(0);
      }
    }
    boolean bool = false;
    paramViewHolder = k.getParent();
    if (paramViewHolder != null)
    {
      if (b != null) {
        bool = true;
      }
      paramViewHolder.requestDisallowInterceptTouchEvent(bool);
    }
    if (i1 == 0) {
      k.getLayoutManager().requestSimpleAnimationsInNextLayout();
    }
    h.onSelectedChanged(b, v);
    k.invalidate();
  }
  
  void a(RecyclerView.ViewHolder paramViewHolder, boolean paramBoolean)
  {
    int i1 = j.size() - 1;
    while (i1 >= 0)
    {
      b localB = (b)j.get(i1);
      if (h == paramViewHolder)
      {
        n |= paramBoolean;
        if (!o) {
          localB.b();
        }
        j.remove(i1);
        return;
      }
      i1 -= 1;
    }
  }
  
  void a(final b paramB, final int paramInt)
  {
    k.post(new Runnable()
    {
      public void run()
      {
        if ((k != null) && (k.isAttachedToWindow()) && (!paramBn) && (paramBh.getAdapterPosition() != -1))
        {
          RecyclerView.ItemAnimator localItemAnimator = k.getItemAnimator();
          if (((localItemAnimator == null) || (!localItemAnimator.isRunning(null))) && (!a()))
          {
            h.onSwiped(paramBh, paramInt);
            return;
          }
          k.post(this);
        }
      }
    });
  }
  
  void a(MotionEvent paramMotionEvent, int paramInt1, int paramInt2)
  {
    float f1 = paramMotionEvent.getX(paramInt2);
    float f2 = paramMotionEvent.getY(paramInt2);
    e = (f1 - c);
    f = (f2 - d);
    if ((paramInt1 & 0x4) == 0) {
      e = Math.max(0.0F, e);
    }
    if ((paramInt1 & 0x8) == 0) {
      e = Math.min(0.0F, e);
    }
    if ((paramInt1 & 0x1) == 0) {
      f = Math.max(0.0F, f);
    }
    if ((paramInt1 & 0x2) == 0) {
      f = Math.min(0.0F, f);
    }
  }
  
  void a(View paramView)
  {
    if (paramView == n)
    {
      n = null;
      if (z != null) {
        k.setChildDrawingOrderCallback(null);
      }
    }
  }
  
  boolean a()
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (!j.get(i1)).o) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public void attachToRecyclerView(@Nullable RecyclerView paramRecyclerView)
  {
    if (k == paramRecyclerView) {
      return;
    }
    if (k != null) {
      e();
    }
    k = paramRecyclerView;
    if (paramRecyclerView != null)
    {
      paramRecyclerView = paramRecyclerView.getResources();
      r = paramRecyclerView.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
      s = paramRecyclerView.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
      d();
    }
  }
  
  b b(MotionEvent paramMotionEvent)
  {
    if (j.isEmpty()) {
      return null;
    }
    paramMotionEvent = a(paramMotionEvent);
    int i1 = j.size() - 1;
    while (i1 >= 0)
    {
      b localB = (b)j.get(i1);
      if (h.itemView == paramMotionEvent) {
        return localB;
      }
      i1 -= 1;
    }
    return null;
  }
  
  boolean b()
  {
    if (b == null)
    {
      D = Long.MIN_VALUE;
      return false;
    }
    long l2 = System.currentTimeMillis();
    long l1;
    if (D == Long.MIN_VALUE) {
      l1 = 0L;
    } else {
      l1 = l2 - D;
    }
    RecyclerView.LayoutManager localLayoutManager = k.getLayoutManager();
    if (C == null) {
      C = new Rect();
    }
    localLayoutManager.calculateItemDecorationsForChild(b.itemView, C);
    if (localLayoutManager.canScrollHorizontally())
    {
      i2 = (int)(t + e);
      i1 = i2 - C.left - k.getPaddingLeft();
      if ((e < 0.0F) && (i1 < 0)) {
        break label198;
      }
      if (e > 0.0F)
      {
        i1 = i2 + b.itemView.getWidth() + C.right - (k.getWidth() - k.getPaddingRight());
        if (i1 > 0) {
          break label198;
        }
      }
    }
    int i1 = 0;
    label198:
    if (localLayoutManager.canScrollVertically())
    {
      i3 = (int)(u + f);
      i2 = i3 - C.top - k.getPaddingTop();
      if ((f < 0.0F) && (i2 < 0)) {
        break label306;
      }
      if (f > 0.0F)
      {
        i2 = i3 + b.itemView.getHeight() + C.bottom - (k.getHeight() - k.getPaddingBottom());
        if (i2 > 0) {
          break label306;
        }
      }
    }
    int i2 = 0;
    label306:
    int i3 = i1;
    if (i1 != 0) {
      i3 = h.interpolateOutOfBoundsScroll(k, b.itemView.getWidth(), i1, k.getWidth(), l1);
    }
    if (i2 != 0) {
      i2 = h.interpolateOutOfBoundsScroll(k, b.itemView.getHeight(), i2, k.getHeight(), l1);
    }
    if ((i3 == 0) && (i2 == 0))
    {
      D = Long.MIN_VALUE;
      return false;
    }
    if (D == Long.MIN_VALUE) {
      D = l2;
    }
    k.scrollBy(i3, i2);
    return true;
  }
  
  void c()
  {
    if (m != null) {
      m.recycle();
    }
    m = VelocityTracker.obtain();
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    paramRect.setEmpty();
  }
  
  public void onChildViewAttachedToWindow(@NonNull View paramView) {}
  
  public void onChildViewDetachedFromWindow(@NonNull View paramView)
  {
    a(paramView);
    paramView = k.getChildViewHolder(paramView);
    if (paramView == null) {
      return;
    }
    if ((b != null) && (paramView == b))
    {
      a(null, 0);
      return;
    }
    a(paramView, false);
    if (a.remove(itemView)) {
      h.clearView(k, paramView);
    }
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    o = -1;
    float f1;
    float f2;
    if (b != null)
    {
      a(q);
      f1 = q[0];
      f2 = q[1];
    }
    else
    {
      f1 = 0.0F;
      f2 = 0.0F;
    }
    h.a(paramCanvas, paramRecyclerView, b, j, v, f1, f2);
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    float f1;
    float f2;
    if (b != null)
    {
      a(q);
      f1 = q[0];
      f2 = q[1];
    }
    else
    {
      f1 = 0.0F;
      f2 = 0.0F;
    }
    h.b(paramCanvas, paramRecyclerView, b, j, v, f1, f2);
  }
  
  public void startDrag(@NonNull RecyclerView.ViewHolder paramViewHolder)
  {
    if (!h.b(k, paramViewHolder))
    {
      Log.e("ItemTouchHelper", "Start drag has been called but dragging is not enabled");
      return;
    }
    if (itemView.getParent() != k)
    {
      Log.e("ItemTouchHelper", "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
      return;
    }
    c();
    f = 0.0F;
    e = 0.0F;
    a(paramViewHolder, 2);
  }
  
  public void startSwipe(@NonNull RecyclerView.ViewHolder paramViewHolder)
  {
    if (!h.c(k, paramViewHolder))
    {
      Log.e("ItemTouchHelper", "Start swipe has been called but swiping is not enabled");
      return;
    }
    if (itemView.getParent() != k)
    {
      Log.e("ItemTouchHelper", "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper.");
      return;
    }
    c();
    f = 0.0F;
    e = 0.0F;
    a(paramViewHolder, 1);
  }
  
  public static abstract class Callback
  {
    public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
    public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;
    private static final Interpolator a = new Interpolator()
    {
      public float getInterpolation(float paramAnonymousFloat)
      {
        return paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat;
      }
    };
    private static final Interpolator b = new Interpolator()
    {
      public float getInterpolation(float paramAnonymousFloat)
      {
        paramAnonymousFloat -= 1.0F;
        return paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat + 1.0F;
      }
    };
    private int c = -1;
    
    public Callback() {}
    
    private int a(RecyclerView paramRecyclerView)
    {
      if (c == -1) {
        c = paramRecyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
      }
      return c;
    }
    
    public static int convertToRelativeDirection(int paramInt1, int paramInt2)
    {
      int i = paramInt1 & 0xC0C0C;
      if (i == 0) {
        return paramInt1;
      }
      paramInt1 &= i;
      if (paramInt2 == 0) {
        return paramInt1 | i << 2;
      }
      paramInt2 = i << 1;
      return paramInt1 | 0xFFF3F3F3 & paramInt2 | (paramInt2 & 0xC0C0C) << 2;
    }
    
    @NonNull
    public static ItemTouchUIUtil getDefaultUIUtil()
    {
      return a.a;
    }
    
    public static int makeFlag(int paramInt1, int paramInt2)
    {
      return paramInt2 << paramInt1 * 8;
    }
    
    public static int makeMovementFlags(int paramInt1, int paramInt2)
    {
      int i = makeFlag(0, paramInt2 | paramInt1);
      paramInt2 = makeFlag(1, paramInt2);
      return makeFlag(2, paramInt1) | paramInt2 | i;
    }
    
    final int a(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
    {
      return convertToAbsoluteDirection(getMovementFlags(paramRecyclerView, paramViewHolder), ViewCompat.getLayoutDirection(paramRecyclerView));
    }
    
    void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, List<ItemTouchHelper.b> paramList, int paramInt, float paramFloat1, float paramFloat2)
    {
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        ItemTouchHelper.b localB = (ItemTouchHelper.b)paramList.get(i);
        localB.c();
        int k = paramCanvas.save();
        onChildDraw(paramCanvas, paramRecyclerView, h, l, m, i, false);
        paramCanvas.restoreToCount(k);
        i += 1;
      }
      if (paramViewHolder != null)
      {
        i = paramCanvas.save();
        onChildDraw(paramCanvas, paramRecyclerView, paramViewHolder, paramFloat1, paramFloat2, paramInt, true);
        paramCanvas.restoreToCount(i);
      }
    }
    
    void b(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, List<ItemTouchHelper.b> paramList, int paramInt, float paramFloat1, float paramFloat2)
    {
      int k = paramList.size();
      int j = 0;
      int i = 0;
      while (i < k)
      {
        ItemTouchHelper.b localB = (ItemTouchHelper.b)paramList.get(i);
        int m = paramCanvas.save();
        onChildDrawOver(paramCanvas, paramRecyclerView, h, l, m, i, false);
        paramCanvas.restoreToCount(m);
        i += 1;
      }
      if (paramViewHolder != null)
      {
        i = paramCanvas.save();
        onChildDrawOver(paramCanvas, paramRecyclerView, paramViewHolder, paramFloat1, paramFloat2, paramInt, true);
        paramCanvas.restoreToCount(i);
      }
      paramInt = k - 1;
      i = j;
      while (paramInt >= 0)
      {
        paramCanvas = (ItemTouchHelper.b)paramList.get(paramInt);
        if ((o) && (!k)) {
          paramList.remove(paramInt);
        } else if (!o) {
          i = 1;
        }
        paramInt -= 1;
      }
      if (i != 0) {
        paramRecyclerView.invalidate();
      }
    }
    
    boolean b(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
    {
      return (a(paramRecyclerView, paramViewHolder) & 0xFF0000) != 0;
    }
    
    boolean c(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
    {
      return (a(paramRecyclerView, paramViewHolder) & 0xFF00) != 0;
    }
    
    public boolean canDropOver(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder1, @NonNull RecyclerView.ViewHolder paramViewHolder2)
    {
      return true;
    }
    
    public RecyclerView.ViewHolder chooseDropTarget(@NonNull RecyclerView.ViewHolder paramViewHolder, @NonNull List<RecyclerView.ViewHolder> paramList, int paramInt1, int paramInt2)
    {
      int n = itemView.getWidth();
      int i1 = itemView.getHeight();
      int i2 = paramInt1 - itemView.getLeft();
      int i3 = paramInt2 - itemView.getTop();
      int i4 = paramList.size();
      Object localObject2 = null;
      int i = -1;
      int k = 0;
      while (k < i4)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)paramList.get(k);
        if (i2 > 0)
        {
          j = itemView.getRight() - (paramInt1 + n);
          if ((j < 0) && (itemView.getRight() > itemView.getRight()))
          {
            j = Math.abs(j);
            if (j > i)
            {
              localObject2 = localViewHolder;
              break label146;
            }
          }
        }
        int j = i;
        label146:
        Object localObject1 = localObject2;
        i = j;
        int m;
        if (i2 < 0)
        {
          m = itemView.getLeft() - paramInt1;
          localObject1 = localObject2;
          i = j;
          if (m > 0)
          {
            localObject1 = localObject2;
            i = j;
            if (itemView.getLeft() < itemView.getLeft())
            {
              m = Math.abs(m);
              localObject1 = localObject2;
              i = j;
              if (m > j)
              {
                i = m;
                localObject1 = localViewHolder;
              }
            }
          }
        }
        localObject2 = localObject1;
        j = i;
        if (i3 < 0)
        {
          m = itemView.getTop() - paramInt2;
          localObject2 = localObject1;
          j = i;
          if (m > 0)
          {
            localObject2 = localObject1;
            j = i;
            if (itemView.getTop() < itemView.getTop())
            {
              m = Math.abs(m);
              localObject2 = localObject1;
              j = i;
              if (m > i)
              {
                j = m;
                localObject2 = localViewHolder;
              }
            }
          }
        }
        if (i3 > 0)
        {
          i = itemView.getBottom() - (paramInt2 + i1);
          if ((i < 0) && (itemView.getBottom() > itemView.getBottom()))
          {
            i = Math.abs(i);
            if (i > j)
            {
              localObject2 = localViewHolder;
              break label404;
            }
          }
        }
        i = j;
        label404:
        k += 1;
      }
      return localObject2;
    }
    
    public void clearView(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      a.a.clearView(itemView);
    }
    
    public int convertToAbsoluteDirection(int paramInt1, int paramInt2)
    {
      int i = paramInt1 & 0x303030;
      if (i == 0) {
        return paramInt1;
      }
      paramInt1 &= i;
      if (paramInt2 == 0) {
        return paramInt1 | i >> 2;
      }
      paramInt2 = i >> 1;
      return paramInt1 | 0xFFCFCFCF & paramInt2 | (paramInt2 & 0x303030) >> 2;
    }
    
    public long getAnimationDuration(@NonNull RecyclerView paramRecyclerView, int paramInt, float paramFloat1, float paramFloat2)
    {
      paramRecyclerView = paramRecyclerView.getItemAnimator();
      if (paramRecyclerView == null)
      {
        if (paramInt == 8) {
          return 200L;
        }
        return 250L;
      }
      if (paramInt == 8) {
        return paramRecyclerView.getMoveDuration();
      }
      return paramRecyclerView.getRemoveDuration();
    }
    
    public int getBoundingBoxMargin()
    {
      return 0;
    }
    
    public float getMoveThreshold(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return 0.5F;
    }
    
    public abstract int getMovementFlags(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder);
    
    public float getSwipeEscapeVelocity(float paramFloat)
    {
      return paramFloat;
    }
    
    public float getSwipeThreshold(@NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return 0.5F;
    }
    
    public float getSwipeVelocityThreshold(float paramFloat)
    {
      return paramFloat;
    }
    
    public int interpolateOutOfBoundsScroll(@NonNull RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3, long paramLong)
    {
      paramInt3 = a(paramRecyclerView);
      int i = Math.abs(paramInt2);
      int j = (int)Math.signum(paramInt2);
      float f2 = i;
      float f1 = 1.0F;
      f2 = Math.min(1.0F, f2 * 1.0F / paramInt1);
      paramInt1 = (int)(j * paramInt3 * b.getInterpolation(f2));
      if (paramLong <= 2000L) {
        f1 = (float)paramLong / 2000.0F;
      }
      paramInt1 = (int)(paramInt1 * a.getInterpolation(f1));
      if (paramInt1 == 0)
      {
        if (paramInt2 > 0) {
          return 1;
        }
        return -1;
      }
      return paramInt1;
    }
    
    public boolean isItemViewSwipeEnabled()
    {
      return true;
    }
    
    public boolean isLongPressDragEnabled()
    {
      return true;
    }
    
    public void onChildDraw(@NonNull Canvas paramCanvas, @NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
    {
      a.a.onDraw(paramCanvas, paramRecyclerView, itemView, paramFloat1, paramFloat2, paramInt, paramBoolean);
    }
    
    public void onChildDrawOver(@NonNull Canvas paramCanvas, @NonNull RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
    {
      a.a.onDrawOver(paramCanvas, paramRecyclerView, itemView, paramFloat1, paramFloat2, paramInt, paramBoolean);
    }
    
    public abstract boolean onMove(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder1, @NonNull RecyclerView.ViewHolder paramViewHolder2);
    
    public void onMoved(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder1, int paramInt1, @NonNull RecyclerView.ViewHolder paramViewHolder2, int paramInt2, int paramInt3, int paramInt4)
    {
      RecyclerView.LayoutManager localLayoutManager = paramRecyclerView.getLayoutManager();
      if ((localLayoutManager instanceof ItemTouchHelper.ViewDropHandler))
      {
        ((ItemTouchHelper.ViewDropHandler)localLayoutManager).prepareForDrop(itemView, itemView, paramInt3, paramInt4);
        return;
      }
      if (localLayoutManager.canScrollHorizontally())
      {
        if (localLayoutManager.getDecoratedLeft(itemView) <= paramRecyclerView.getPaddingLeft()) {
          paramRecyclerView.scrollToPosition(paramInt2);
        }
        if (localLayoutManager.getDecoratedRight(itemView) >= paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight()) {
          paramRecyclerView.scrollToPosition(paramInt2);
        }
      }
      if (localLayoutManager.canScrollVertically())
      {
        if (localLayoutManager.getDecoratedTop(itemView) <= paramRecyclerView.getPaddingTop()) {
          paramRecyclerView.scrollToPosition(paramInt2);
        }
        if (localLayoutManager.getDecoratedBottom(itemView) >= paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom()) {
          paramRecyclerView.scrollToPosition(paramInt2);
        }
      }
    }
    
    public void onSelectedChanged(@Nullable RecyclerView.ViewHolder paramViewHolder, int paramInt)
    {
      if (paramViewHolder != null) {
        a.a.onSelected(itemView);
      }
    }
    
    public abstract void onSwiped(@NonNull RecyclerView.ViewHolder paramViewHolder, int paramInt);
  }
  
  public static abstract class SimpleCallback
    extends ItemTouchHelper.Callback
  {
    private int a;
    private int b;
    
    public SimpleCallback(int paramInt1, int paramInt2)
    {
      a = paramInt2;
      b = paramInt1;
    }
    
    public int getDragDirs(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return b;
    }
    
    public int getMovementFlags(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return makeMovementFlags(getDragDirs(paramRecyclerView, paramViewHolder), getSwipeDirs(paramRecyclerView, paramViewHolder));
    }
    
    public int getSwipeDirs(@NonNull RecyclerView paramRecyclerView, @NonNull RecyclerView.ViewHolder paramViewHolder)
    {
      return a;
    }
    
    public void setDefaultDragDirs(int paramInt)
    {
      b = paramInt;
    }
    
    public void setDefaultSwipeDirs(int paramInt)
    {
      a = paramInt;
    }
  }
  
  public static abstract interface ViewDropHandler
  {
    public abstract void prepareForDrop(@NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2);
  }
  
  private class a
    extends GestureDetector.SimpleOnGestureListener
  {
    private boolean b = true;
    
    a() {}
    
    void a()
    {
      b = false;
    }
    
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      return true;
    }
    
    public void onLongPress(MotionEvent paramMotionEvent)
    {
      if (!b) {
        return;
      }
      Object localObject = a(paramMotionEvent);
      if (localObject != null)
      {
        localObject = k.getChildViewHolder((View)localObject);
        if (localObject != null)
        {
          if (!h.b(k, (RecyclerView.ViewHolder)localObject)) {
            return;
          }
          if (paramMotionEvent.getPointerId(0) == g)
          {
            int i = paramMotionEvent.findPointerIndex(g);
            float f1 = paramMotionEvent.getX(i);
            float f2 = paramMotionEvent.getY(i);
            c = f1;
            d = f2;
            paramMotionEvent = ItemTouchHelper.this;
            f = 0.0F;
            e = 0.0F;
            if (h.isLongPressDragEnabled()) {
              a((RecyclerView.ViewHolder)localObject, 2);
            }
          }
        }
      }
    }
  }
  
  private static class b
    implements Animator.AnimatorListener
  {
    private final ValueAnimator a;
    private float b;
    final float d;
    final float e;
    final float f;
    final float g;
    final RecyclerView.ViewHolder h;
    final int i;
    final int j;
    boolean k;
    float l;
    float m;
    boolean n = false;
    boolean o = false;
    
    b(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      i = paramInt2;
      j = paramInt1;
      h = paramViewHolder;
      d = paramFloat1;
      e = paramFloat2;
      f = paramFloat3;
      g = paramFloat4;
      a = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
      a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          a(paramAnonymousValueAnimator.getAnimatedFraction());
        }
      });
      a.setTarget(itemView);
      a.addListener(this);
      a(0.0F);
    }
    
    public void a()
    {
      h.setIsRecyclable(false);
      a.start();
    }
    
    public void a(float paramFloat)
    {
      b = paramFloat;
    }
    
    public void a(long paramLong)
    {
      a.setDuration(paramLong);
    }
    
    public void b()
    {
      a.cancel();
    }
    
    public void c()
    {
      if (d == f) {
        l = h.itemView.getTranslationX();
      } else {
        l = (d + b * (f - d));
      }
      if (e == g)
      {
        m = h.itemView.getTranslationY();
        return;
      }
      m = (e + b * (g - e));
    }
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      a(1.0F);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (!o) {
        h.setIsRecyclable(true);
      }
      o = true;
    }
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationStart(Animator paramAnimator) {}
  }
}
