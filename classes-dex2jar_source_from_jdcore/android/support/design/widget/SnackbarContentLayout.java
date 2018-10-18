package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.R.dimen;
import android.support.design.R.id;
import android.support.design.R.styleable;
import android.support.design.snackbar.ContentViewCallback;
import android.support.v4.view.ViewCompat;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class SnackbarContentLayout
  extends LinearLayout
  implements ContentViewCallback
{
  private TextView a;
  private Button b;
  private int c;
  private int d;
  
  public SnackbarContentLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SnackbarContentLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SnackbarLayout);
    c = paramContext.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
    d = paramContext.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
    paramContext.recycle();
  }
  
  private static void a(View paramView, int paramInt1, int paramInt2)
  {
    if (ViewCompat.isPaddingRelative(paramView))
    {
      ViewCompat.setPaddingRelative(paramView, ViewCompat.getPaddingStart(paramView), paramInt1, ViewCompat.getPaddingEnd(paramView), paramInt2);
      return;
    }
    paramView.setPadding(paramView.getPaddingLeft(), paramInt1, paramView.getPaddingRight(), paramInt2);
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool;
    if (paramInt1 != getOrientation())
    {
      setOrientation(paramInt1);
      bool = true;
    }
    else
    {
      bool = false;
    }
    if ((a.getPaddingTop() != paramInt2) || (a.getPaddingBottom() != paramInt3))
    {
      a(a, paramInt2, paramInt3);
      bool = true;
    }
    return bool;
  }
  
  public void animateContentIn(int paramInt1, int paramInt2)
  {
    a.setAlpha(0.0F);
    ViewPropertyAnimator localViewPropertyAnimator = a.animate().alpha(1.0F);
    long l1 = paramInt2;
    localViewPropertyAnimator = localViewPropertyAnimator.setDuration(l1);
    long l2 = paramInt1;
    localViewPropertyAnimator.setStartDelay(l2).start();
    if (b.getVisibility() == 0)
    {
      b.setAlpha(0.0F);
      b.animate().alpha(1.0F).setDuration(l1).setStartDelay(l2).start();
    }
  }
  
  public void animateContentOut(int paramInt1, int paramInt2)
  {
    a.setAlpha(1.0F);
    ViewPropertyAnimator localViewPropertyAnimator = a.animate().alpha(0.0F);
    long l1 = paramInt2;
    localViewPropertyAnimator = localViewPropertyAnimator.setDuration(l1);
    long l2 = paramInt1;
    localViewPropertyAnimator.setStartDelay(l2).start();
    if (b.getVisibility() == 0)
    {
      b.setAlpha(1.0F);
      b.animate().alpha(0.0F).setDuration(l1).setStartDelay(l2).start();
    }
  }
  
  public Button getActionView()
  {
    return b;
  }
  
  public TextView getMessageView()
  {
    return a;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a = ((TextView)findViewById(R.id.snackbar_text));
    b = ((Button)findViewById(R.id.snackbar_action));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = paramInt1;
    if (c > 0)
    {
      i = paramInt1;
      if (getMeasuredWidth() > c)
      {
        i = View.MeasureSpec.makeMeasureSpec(c, 1073741824);
        super.onMeasure(i, paramInt2);
      }
    }
    int k = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
    int m = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
    paramInt1 = a.getLayout().getLineCount();
    int j = 1;
    if (paramInt1 > 1) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    if ((paramInt1 != 0) && (d > 0) && (b.getMeasuredWidth() > d))
    {
      if (a(1, k, k - m))
      {
        paramInt1 = j;
        break label171;
      }
    }
    else
    {
      if (paramInt1 != 0) {
        paramInt1 = k;
      } else {
        paramInt1 = m;
      }
      if (a(0, paramInt1, paramInt1))
      {
        paramInt1 = j;
        break label171;
      }
    }
    paramInt1 = 0;
    label171:
    if (paramInt1 != 0) {
      super.onMeasure(i, paramInt2);
    }
  }
}
