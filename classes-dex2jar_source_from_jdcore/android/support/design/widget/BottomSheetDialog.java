package android.support.design.widget;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.StyleRes;
import android.support.design.R.attr;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.design.R.style;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.app.AppCompatDialog;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;

public class BottomSheetDialog
  extends AppCompatDialog
{
  boolean a = true;
  private BottomSheetBehavior<FrameLayout> b;
  private boolean c = true;
  private boolean d;
  private BottomSheetBehavior.BottomSheetCallback e = new BottomSheetBehavior.BottomSheetCallback()
  {
    public void onSlide(@NonNull View paramAnonymousView, float paramAnonymousFloat) {}
    
    public void onStateChanged(@NonNull View paramAnonymousView, int paramAnonymousInt)
    {
      if (paramAnonymousInt == 5) {
        cancel();
      }
    }
  };
  
  public BottomSheetDialog(@NonNull Context paramContext)
  {
    this(paramContext, 0);
  }
  
  public BottomSheetDialog(@NonNull Context paramContext, @StyleRes int paramInt)
  {
    super(paramContext, a(paramContext, paramInt));
    supportRequestWindowFeature(1);
  }
  
  protected BottomSheetDialog(@NonNull Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    super(paramContext, paramBoolean, paramOnCancelListener);
    supportRequestWindowFeature(1);
    a = paramBoolean;
  }
  
  private static int a(Context paramContext, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0)
    {
      TypedValue localTypedValue = new TypedValue();
      if (paramContext.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, localTypedValue, true)) {
        return resourceId;
      }
      i = R.style.Theme_Design_Light_BottomSheetDialog;
    }
    return i;
  }
  
  private View a(int paramInt, View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    FrameLayout localFrameLayout = (FrameLayout)View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
    CoordinatorLayout localCoordinatorLayout = (CoordinatorLayout)localFrameLayout.findViewById(R.id.coordinator);
    View localView = paramView;
    if (paramInt != 0)
    {
      localView = paramView;
      if (paramView == null) {
        localView = getLayoutInflater().inflate(paramInt, localCoordinatorLayout, false);
      }
    }
    paramView = (FrameLayout)localCoordinatorLayout.findViewById(R.id.design_bottom_sheet);
    b = BottomSheetBehavior.from(paramView);
    b.setBottomSheetCallback(e);
    b.setHideable(a);
    if (paramLayoutParams == null) {
      paramView.addView(localView);
    } else {
      paramView.addView(localView, paramLayoutParams);
    }
    localCoordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if ((a) && (isShowing()) && (a())) {
          cancel();
        }
      }
    });
    ViewCompat.setAccessibilityDelegate(paramView, new AccessibilityDelegateCompat()
    {
      public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfoCompat paramAnonymousAccessibilityNodeInfoCompat)
      {
        super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousAccessibilityNodeInfoCompat);
        if (a)
        {
          paramAnonymousAccessibilityNodeInfoCompat.addAction(1048576);
          paramAnonymousAccessibilityNodeInfoCompat.setDismissable(true);
          return;
        }
        paramAnonymousAccessibilityNodeInfoCompat.setDismissable(false);
      }
      
      public boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        if ((paramAnonymousInt == 1048576) && (a))
        {
          cancel();
          return true;
        }
        return super.performAccessibilityAction(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
      }
    });
    paramView.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    return localFrameLayout;
  }
  
  boolean a()
  {
    if (!d)
    {
      TypedArray localTypedArray = getContext().obtainStyledAttributes(new int[] { 16843611 });
      c = localTypedArray.getBoolean(0, true);
      localTypedArray.recycle();
      d = true;
    }
    return c;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getWindow();
    if (paramBundle != null)
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        paramBundle.clearFlags(67108864);
        paramBundle.addFlags(Integer.MIN_VALUE);
      }
      paramBundle.setLayout(-1, -1);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    if ((b != null) && (b.getState() == 5)) {
      b.setState(4);
    }
  }
  
  public void setCancelable(boolean paramBoolean)
  {
    super.setCancelable(paramBoolean);
    if (a != paramBoolean)
    {
      a = paramBoolean;
      if (b != null) {
        b.setHideable(paramBoolean);
      }
    }
  }
  
  public void setCanceledOnTouchOutside(boolean paramBoolean)
  {
    super.setCanceledOnTouchOutside(paramBoolean);
    if ((paramBoolean) && (!a)) {
      a = true;
    }
    c = paramBoolean;
    d = true;
  }
  
  public void setContentView(@LayoutRes int paramInt)
  {
    super.setContentView(a(paramInt, null, null));
  }
  
  public void setContentView(View paramView)
  {
    super.setContentView(a(0, paramView, null));
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(a(0, paramView, paramLayoutParams));
  }
}
