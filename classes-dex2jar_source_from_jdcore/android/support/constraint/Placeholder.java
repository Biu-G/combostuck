package android.support.constraint;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.support.constraint.solver.widgets.ConstraintWidget;
import android.util.AttributeSet;
import android.view.View;

public class Placeholder
  extends View
{
  private int a = -1;
  private View b = null;
  private int c = 4;
  
  public Placeholder(Context paramContext)
  {
    super(paramContext);
    a(null);
  }
  
  public Placeholder(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public Placeholder(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  public Placeholder(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    super.setVisibility(c);
    a = -1;
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.ConstraintLayout_placeholder);
      int j = paramAttributeSet.getIndexCount();
      int i = 0;
      while (i < j)
      {
        int k = paramAttributeSet.getIndex(i);
        if (k == R.styleable.ConstraintLayout_placeholder_content) {
          a = paramAttributeSet.getResourceId(k, a);
        } else if (k == R.styleable.ConstraintLayout_placeholder_emptyVisibility) {
          c = paramAttributeSet.getInt(k, c);
        }
        i += 1;
      }
    }
  }
  
  public View getContent()
  {
    return b;
  }
  
  public int getEmptyVisibility()
  {
    return c;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (isInEditMode())
    {
      paramCanvas.drawRGB(223, 223, 223);
      Paint localPaint = new Paint();
      localPaint.setARGB(255, 210, 210, 210);
      localPaint.setTextAlign(Paint.Align.CENTER);
      localPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
      Rect localRect = new Rect();
      paramCanvas.getClipBounds(localRect);
      localPaint.setTextSize(localRect.height());
      int i = localRect.height();
      int j = localRect.width();
      localPaint.setTextAlign(Paint.Align.LEFT);
      localPaint.getTextBounds("?", 0, "?".length(), localRect);
      paramCanvas.drawText("?", j / 2.0F - localRect.width() / 2.0F - left, i / 2.0F + localRect.height() / 2.0F - bottom, localPaint);
    }
  }
  
  public void setContentId(int paramInt)
  {
    if (a == paramInt) {
      return;
    }
    if (b != null)
    {
      b.setVisibility(0);
      b.getLayoutParams()).h = false;
      b = null;
    }
    a = paramInt;
    if (paramInt != -1)
    {
      View localView = ((View)getParent()).findViewById(paramInt);
      if (localView != null) {
        localView.setVisibility(8);
      }
    }
  }
  
  public void setEmptyVisibility(int paramInt)
  {
    c = paramInt;
  }
  
  public void updatePostMeasure(ConstraintLayout paramConstraintLayout)
  {
    if (b == null) {
      return;
    }
    paramConstraintLayout = (ConstraintLayout.LayoutParams)getLayoutParams();
    ConstraintLayout.LayoutParams localLayoutParams = (ConstraintLayout.LayoutParams)b.getLayoutParams();
    s.setVisibility(0);
    s.setWidth(s.getWidth());
    s.setHeight(s.getHeight());
    s.setVisibility(8);
  }
  
  public void updatePreLayout(ConstraintLayout paramConstraintLayout)
  {
    if ((a == -1) && (!isInEditMode())) {
      setVisibility(c);
    }
    b = paramConstraintLayout.findViewById(a);
    if (b != null)
    {
      b.getLayoutParams()).h = true;
      b.setVisibility(0);
      setVisibility(0);
    }
  }
}
