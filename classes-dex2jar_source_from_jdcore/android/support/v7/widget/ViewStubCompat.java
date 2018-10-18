package android.support.v7.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.lang.ref.WeakReference;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public final class ViewStubCompat
  extends View
{
  private int a = 0;
  private int b;
  private WeakReference<View> c;
  private LayoutInflater d;
  private OnInflateListener e;
  
  public ViewStubCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ViewStubCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ViewStubCompat, paramInt, 0);
    b = paramContext.getResourceId(R.styleable.ViewStubCompat_android_inflatedId, -1);
    a = paramContext.getResourceId(R.styleable.ViewStubCompat_android_layout, 0);
    setId(paramContext.getResourceId(R.styleable.ViewStubCompat_android_id, -1));
    paramContext.recycle();
    setVisibility(8);
    setWillNotDraw(true);
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {}
  
  @SuppressLint({"MissingSuperCall"})
  public void draw(Canvas paramCanvas) {}
  
  public int getInflatedId()
  {
    return b;
  }
  
  public LayoutInflater getLayoutInflater()
  {
    return d;
  }
  
  public int getLayoutResource()
  {
    return a;
  }
  
  public View inflate()
  {
    Object localObject = getParent();
    if ((localObject != null) && ((localObject instanceof ViewGroup)))
    {
      if (a != 0)
      {
        ViewGroup localViewGroup = (ViewGroup)localObject;
        if (d != null) {
          localObject = d;
        } else {
          localObject = LayoutInflater.from(getContext());
        }
        localObject = ((LayoutInflater)localObject).inflate(a, localViewGroup, false);
        if (b != -1) {
          ((View)localObject).setId(b);
        }
        int i = localViewGroup.indexOfChild(this);
        localViewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
        if (localLayoutParams != null) {
          localViewGroup.addView((View)localObject, i, localLayoutParams);
        } else {
          localViewGroup.addView((View)localObject, i);
        }
        c = new WeakReference(localObject);
        if (e != null) {
          e.onInflate(this, (View)localObject);
        }
        return localObject;
      }
      throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
    }
    throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(0, 0);
  }
  
  public void setInflatedId(int paramInt)
  {
    b = paramInt;
  }
  
  public void setLayoutInflater(LayoutInflater paramLayoutInflater)
  {
    d = paramLayoutInflater;
  }
  
  public void setLayoutResource(int paramInt)
  {
    a = paramInt;
  }
  
  public void setOnInflateListener(OnInflateListener paramOnInflateListener)
  {
    e = paramOnInflateListener;
  }
  
  public void setVisibility(int paramInt)
  {
    if (c != null)
    {
      View localView = (View)c.get();
      if (localView != null)
      {
        localView.setVisibility(paramInt);
        return;
      }
      throw new IllegalStateException("setVisibility called on un-referenced view");
    }
    super.setVisibility(paramInt);
    if ((paramInt == 0) || (paramInt == 4)) {
      inflate();
    }
  }
  
  public static abstract interface OnInflateListener
  {
    public abstract void onInflate(ViewStubCompat paramViewStubCompat, View paramView);
  }
}
