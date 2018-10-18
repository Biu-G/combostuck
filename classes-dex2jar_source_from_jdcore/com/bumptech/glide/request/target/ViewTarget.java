package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class ViewTarget<T extends View, Z>
  extends BaseTarget<Z>
{
  private static boolean a;
  @Nullable
  private static Integer b;
  private final a c;
  @Nullable
  private View.OnAttachStateChangeListener d;
  private boolean e;
  private boolean f;
  protected final T view;
  
  public ViewTarget(@NonNull T paramT)
  {
    view = ((View)Preconditions.checkNotNull(paramT));
    c = new a(paramT);
  }
  
  @Deprecated
  public ViewTarget(@NonNull T paramT, boolean paramBoolean)
  {
    this(paramT);
    if (paramBoolean) {
      waitForLayout();
    }
  }
  
  private void a(@Nullable Object paramObject)
  {
    if (b == null)
    {
      a = true;
      view.setTag(paramObject);
      return;
    }
    view.setTag(b.intValue(), paramObject);
  }
  
  private void c()
  {
    if (d != null)
    {
      if (f) {
        return;
      }
      view.addOnAttachStateChangeListener(d);
      f = true;
      return;
    }
  }
  
  private void d()
  {
    if (d != null)
    {
      if (!f) {
        return;
      }
      view.removeOnAttachStateChangeListener(d);
      f = false;
      return;
    }
  }
  
  @Nullable
  private Object e()
  {
    if (b == null) {
      return view.getTag();
    }
    return view.getTag(b.intValue());
  }
  
  public static void setTagId(int paramInt)
  {
    if ((b == null) && (!a))
    {
      b = Integer.valueOf(paramInt);
      return;
    }
    throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
  }
  
  void a()
  {
    Request localRequest = getRequest();
    if ((localRequest != null) && (localRequest.isPaused())) {
      localRequest.begin();
    }
  }
  
  void b()
  {
    Request localRequest = getRequest();
    if ((localRequest != null) && (!localRequest.isCancelled()) && (!localRequest.isPaused()))
    {
      e = true;
      localRequest.pause();
      e = false;
    }
  }
  
  @NonNull
  public final ViewTarget<T, Z> clearOnDetach()
  {
    if (d != null) {
      return this;
    }
    d = new View.OnAttachStateChangeListener()
    {
      public void onViewAttachedToWindow(View paramAnonymousView)
      {
        a();
      }
      
      public void onViewDetachedFromWindow(View paramAnonymousView)
      {
        b();
      }
    };
    c();
    return this;
  }
  
  @Nullable
  public Request getRequest()
  {
    Object localObject = e();
    if (localObject != null)
    {
      if ((localObject instanceof Request)) {
        return (Request)localObject;
      }
      throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }
    return null;
  }
  
  @CallSuper
  public void getSize(@NonNull SizeReadyCallback paramSizeReadyCallback)
  {
    c.a(paramSizeReadyCallback);
  }
  
  @NonNull
  public T getView()
  {
    return view;
  }
  
  @CallSuper
  public void onLoadCleared(@Nullable Drawable paramDrawable)
  {
    super.onLoadCleared(paramDrawable);
    c.b();
    if (!e) {
      d();
    }
  }
  
  @CallSuper
  public void onLoadStarted(@Nullable Drawable paramDrawable)
  {
    super.onLoadStarted(paramDrawable);
    c();
  }
  
  @CallSuper
  public void removeCallback(@NonNull SizeReadyCallback paramSizeReadyCallback)
  {
    c.b(paramSizeReadyCallback);
  }
  
  public void setRequest(@Nullable Request paramRequest)
  {
    a(paramRequest);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Target for: ");
    localStringBuilder.append(view);
    return localStringBuilder.toString();
  }
  
  @NonNull
  public final ViewTarget<T, Z> waitForLayout()
  {
    c.b = true;
    return this;
  }
  
  @VisibleForTesting
  static final class a
  {
    @Nullable
    @VisibleForTesting
    static Integer a;
    boolean b;
    private final View c;
    private final List<SizeReadyCallback> d = new ArrayList();
    @Nullable
    private a e;
    
    a(@NonNull View paramView)
    {
      c = paramView;
    }
    
    private int a(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = paramInt2 - paramInt3;
      if (i > 0) {
        return i;
      }
      if ((b) && (c.isLayoutRequested())) {
        return 0;
      }
      paramInt1 -= paramInt3;
      if (paramInt1 > 0) {
        return paramInt1;
      }
      if ((!c.isLayoutRequested()) && (paramInt2 == -2))
      {
        if (Log.isLoggable("ViewTarget", 4)) {
          Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
        }
        return a(c.getContext());
      }
      return 0;
    }
    
    private static int a(@NonNull Context paramContext)
    {
      if (a == null)
      {
        paramContext = ((WindowManager)Preconditions.checkNotNull((WindowManager)paramContext.getSystemService("window"))).getDefaultDisplay();
        Point localPoint = new Point();
        paramContext.getSize(localPoint);
        a = Integer.valueOf(Math.max(x, y));
      }
      return a.intValue();
    }
    
    private void a(int paramInt1, int paramInt2)
    {
      Iterator localIterator = new ArrayList(d).iterator();
      while (localIterator.hasNext()) {
        ((SizeReadyCallback)localIterator.next()).onSizeReady(paramInt1, paramInt2);
      }
    }
    
    private boolean a(int paramInt)
    {
      return (paramInt > 0) || (paramInt == Integer.MIN_VALUE);
    }
    
    private boolean b(int paramInt1, int paramInt2)
    {
      return (a(paramInt1)) && (a(paramInt2));
    }
    
    private int c()
    {
      int j = c.getPaddingTop();
      int k = c.getPaddingBottom();
      ViewGroup.LayoutParams localLayoutParams = c.getLayoutParams();
      int i;
      if (localLayoutParams != null) {
        i = height;
      } else {
        i = 0;
      }
      return a(c.getHeight(), i, j + k);
    }
    
    private int d()
    {
      int j = c.getPaddingLeft();
      int k = c.getPaddingRight();
      ViewGroup.LayoutParams localLayoutParams = c.getLayoutParams();
      int i;
      if (localLayoutParams != null) {
        i = width;
      } else {
        i = 0;
      }
      return a(c.getWidth(), i, j + k);
    }
    
    void a()
    {
      if (d.isEmpty()) {
        return;
      }
      int i = d();
      int j = c();
      if (!b(i, j)) {
        return;
      }
      a(i, j);
      b();
    }
    
    void a(@NonNull SizeReadyCallback paramSizeReadyCallback)
    {
      int i = d();
      int j = c();
      if (b(i, j))
      {
        paramSizeReadyCallback.onSizeReady(i, j);
        return;
      }
      if (!d.contains(paramSizeReadyCallback)) {
        d.add(paramSizeReadyCallback);
      }
      if (e == null)
      {
        paramSizeReadyCallback = c.getViewTreeObserver();
        e = new a(this);
        paramSizeReadyCallback.addOnPreDrawListener(e);
      }
    }
    
    void b()
    {
      ViewTreeObserver localViewTreeObserver = c.getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeOnPreDrawListener(e);
      }
      e = null;
      d.clear();
    }
    
    void b(@NonNull SizeReadyCallback paramSizeReadyCallback)
    {
      d.remove(paramSizeReadyCallback);
    }
    
    private static final class a
      implements ViewTreeObserver.OnPreDrawListener
    {
      private final WeakReference<ViewTarget.a> a;
      
      a(@NonNull ViewTarget.a paramA)
      {
        a = new WeakReference(paramA);
      }
      
      public boolean onPreDraw()
      {
        if (Log.isLoggable("ViewTarget", 2))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("OnGlobalLayoutListener called attachStateListener=");
          ((StringBuilder)localObject).append(this);
          Log.v("ViewTarget", ((StringBuilder)localObject).toString());
        }
        Object localObject = (ViewTarget.a)a.get();
        if (localObject != null) {
          ((ViewTarget.a)localObject).a();
        }
        return true;
      }
    }
  }
}
