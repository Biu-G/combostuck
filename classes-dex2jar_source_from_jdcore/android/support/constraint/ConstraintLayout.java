package android.support.constraint;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.widgets.Analyzer;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import android.support.constraint.solver.widgets.ConstraintWidgetContainer;
import android.support.constraint.solver.widgets.ResolutionAnchor;
import android.support.constraint.solver.widgets.ResolutionDimension;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;
import java.util.HashMap;

public class ConstraintLayout
  extends ViewGroup
{
  public static final int DESIGN_INFO_ID = 0;
  public static final String VERSION = "ConstraintLayout-1.1.3";
  SparseArray<View> a = new SparseArray();
  ConstraintWidgetContainer b = new ConstraintWidgetContainer();
  int c = -1;
  int d = -1;
  int e = 0;
  int f = 0;
  private ArrayList<ConstraintHelper> g = new ArrayList(4);
  private final ArrayList<ConstraintWidget> h = new ArrayList(100);
  private int i = 0;
  private int j = 0;
  private int k = Integer.MAX_VALUE;
  private int l = Integer.MAX_VALUE;
  private boolean m = true;
  private int n = 7;
  private ConstraintSet o = null;
  private int p = -1;
  private HashMap<String, Integer> q = new HashMap();
  private int r = -1;
  private int s = -1;
  private Metrics t;
  
  public ConstraintLayout(Context paramContext)
  {
    super(paramContext);
    a(null);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private final ConstraintWidget a(int paramInt)
  {
    if (paramInt == 0) {
      return b;
    }
    View localView2 = (View)a.get(paramInt);
    View localView1 = localView2;
    if (localView2 == null)
    {
      localView2 = findViewById(paramInt);
      localView1 = localView2;
      if (localView2 != null)
      {
        localView1 = localView2;
        if (localView2 != this)
        {
          localView1 = localView2;
          if (localView2.getParent() == this)
          {
            onViewAdded(localView2);
            localView1 = localView2;
          }
        }
      }
    }
    if (localView1 == this) {
      return b;
    }
    if (localView1 == null) {
      return null;
    }
    return getLayoutParamss;
  }
  
  private void a()
  {
    int i4 = getChildCount();
    int i3 = 0;
    int i1 = 0;
    int i2;
    for (;;)
    {
      i2 = i3;
      if (i1 >= i4) {
        break;
      }
      if (getChildAt(i1).isLayoutRequested())
      {
        i2 = 1;
        break;
      }
      i1 += 1;
    }
    if (i2 != 0)
    {
      h.clear();
      b();
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i8 = getPaddingTop() + getPaddingBottom();
    int i9 = getPaddingLeft() + getPaddingRight();
    int i10 = getChildCount();
    int i5 = 0;
    while (i5 < i10)
    {
      View localView = getChildAt(i5);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        ConstraintWidget localConstraintWidget = s;
        if ((!f) && (!g))
        {
          localConstraintWidget.setVisibility(localView.getVisibility());
          int i6 = width;
          int i7 = height;
          int i1;
          if ((!c) && (!d) && ((c) || (matchConstraintDefaultWidth != 1)) && (width != -1) && ((d) || ((matchConstraintDefaultHeight != 1) && (height != -1)))) {
            i1 = 0;
          } else {
            i1 = 1;
          }
          int i3;
          int i4;
          int i2;
          if (i1 != 0)
          {
            if (i6 == 0)
            {
              i3 = getChildMeasureSpec(paramInt1, i9, -2);
              i1 = 1;
            }
            else if (i6 == -1)
            {
              i3 = getChildMeasureSpec(paramInt1, i9, -1);
              i1 = 0;
            }
            else
            {
              if (i6 == -2) {
                i1 = 1;
              } else {
                i1 = 0;
              }
              i3 = getChildMeasureSpec(paramInt1, i9, i6);
            }
            if (i7 == 0)
            {
              i4 = getChildMeasureSpec(paramInt2, i8, -2);
              i2 = 1;
            }
            else if (i7 == -1)
            {
              i4 = getChildMeasureSpec(paramInt2, i8, -1);
              i2 = 0;
            }
            else
            {
              if (i7 == -2) {
                i2 = 1;
              } else {
                i2 = 0;
              }
              i4 = getChildMeasureSpec(paramInt2, i8, i7);
            }
            localView.measure(i3, i4);
            if (t != null)
            {
              Metrics localMetrics = t;
              measures += 1L;
            }
            boolean bool;
            if (i6 == -2) {
              bool = true;
            } else {
              bool = false;
            }
            localConstraintWidget.setWidthWrapContent(bool);
            if (i7 == -2) {
              bool = true;
            } else {
              bool = false;
            }
            localConstraintWidget.setHeightWrapContent(bool);
            i3 = localView.getMeasuredWidth();
            i4 = localView.getMeasuredHeight();
          }
          else
          {
            i1 = 0;
            i2 = 0;
            i4 = i7;
            i3 = i6;
          }
          localConstraintWidget.setWidth(i3);
          localConstraintWidget.setHeight(i4);
          if (i1 != 0) {
            localConstraintWidget.setWrapWidth(i3);
          }
          if (i2 != 0) {
            localConstraintWidget.setWrapHeight(i4);
          }
          if (e)
          {
            i1 = localView.getBaseline();
            if (i1 != -1) {
              localConstraintWidget.setBaselineDistance(i1);
            }
          }
        }
      }
      i5 += 1;
    }
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    b.setCompanionWidget(this);
    a.put(getId(), this);
    o = null;
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.ConstraintLayout_Layout);
      int i2 = paramAttributeSet.getIndexCount();
      int i1 = 0;
      while (i1 < i2)
      {
        int i3 = paramAttributeSet.getIndex(i1);
        if (i3 == R.styleable.ConstraintLayout_Layout_android_minWidth) {
          i = paramAttributeSet.getDimensionPixelOffset(i3, i);
        } else if (i3 == R.styleable.ConstraintLayout_Layout_android_minHeight) {
          j = paramAttributeSet.getDimensionPixelOffset(i3, j);
        } else if (i3 == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
          k = paramAttributeSet.getDimensionPixelOffset(i3, k);
        } else if (i3 == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
          l = paramAttributeSet.getDimensionPixelOffset(i3, l);
        } else if (i3 == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
          n = paramAttributeSet.getInt(i3, n);
        } else if (i3 == R.styleable.ConstraintLayout_Layout_constraintSet) {
          i3 = paramAttributeSet.getResourceId(i3, 0);
        }
        try
        {
          o = new ConstraintSet();
          o.load(getContext(), i3);
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;) {}
        }
        o = null;
        p = i3;
        i1 += 1;
      }
      paramAttributeSet.recycle();
    }
    b.setOptimizationLevel(n);
  }
  
  private void b()
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge Z and I\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    int i1 = getPaddingTop() + getPaddingBottom();
    int i13 = getPaddingLeft() + getPaddingRight();
    int i8 = getChildCount();
    int i2 = 0;
    long l1;
    View localView;
    LayoutParams localLayoutParams;
    ConstraintWidget localConstraintWidget;
    int i5;
    int i6;
    int i3;
    int i7;
    int i4;
    Object localObject;
    boolean bool;
    for (;;)
    {
      l1 = 1L;
      if (i2 >= i8) {
        break;
      }
      localView = getChildAt(i2);
      if (localView.getVisibility() != 8)
      {
        do
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          localConstraintWidget = s;
        } while ((f) || (g));
        localConstraintWidget.setVisibility(localView.getVisibility());
        i5 = width;
        i6 = height;
        if ((i5 != 0) && (i6 != 0))
        {
          if (i5 == -2) {
            i3 = 1;
          } else {
            i3 = 0;
          }
          i7 = getChildMeasureSpec(paramInt1, i13, i5);
          if (i6 == -2) {
            i4 = 1;
          } else {
            i4 = 0;
          }
          localView.measure(i7, getChildMeasureSpec(paramInt2, i1, i6));
          if (t != null)
          {
            localObject = t;
            measures += 1L;
          }
          if (i5 == -2) {
            bool = true;
          } else {
            bool = false;
          }
          localConstraintWidget.setWidthWrapContent(bool);
          if (i6 == -2) {
            bool = true;
          } else {
            bool = false;
          }
          localConstraintWidget.setHeightWrapContent(bool);
          i5 = localView.getMeasuredWidth();
          i6 = localView.getMeasuredHeight();
          localConstraintWidget.setWidth(i5);
          localConstraintWidget.setHeight(i6);
          if (i3 != 0) {
            localConstraintWidget.setWrapWidth(i5);
          }
          if (i4 != 0) {
            localConstraintWidget.setWrapHeight(i6);
          }
          if (e)
          {
            i3 = localView.getBaseline();
            if (i3 != -1) {
              localConstraintWidget.setBaselineDistance(i3);
            }
          }
          if ((c) && (d))
          {
            localConstraintWidget.getResolutionWidth().resolve(i5);
            localConstraintWidget.getResolutionHeight().resolve(i6);
          }
        }
        else
        {
          localConstraintWidget.getResolutionWidth().invalidate();
          localConstraintWidget.getResolutionHeight().invalidate();
        }
      }
      i2 += 1;
    }
    b.solveGraph();
    int i9 = 0;
    while (i9 < i8)
    {
      localView = getChildAt(i9);
      if (localView.getVisibility() != 8)
      {
        do
        {
          do
          {
            localLayoutParams = (LayoutParams)localView.getLayoutParams();
            localConstraintWidget = s;
          } while ((f) || (g));
          localConstraintWidget.setVisibility(localView.getVisibility());
          i6 = width;
          i7 = height;
        } while ((i6 != 0) && (i7 != 0));
        localObject = localConstraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).getResolutionNode();
        ResolutionAnchor localResolutionAnchor1 = localConstraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).getResolutionNode();
        if ((localConstraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).getTarget() != null) && (localConstraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget() != null)) {
          i3 = 1;
        } else {
          i3 = 0;
        }
        ResolutionAnchor localResolutionAnchor2 = localConstraintWidget.getAnchor(ConstraintAnchor.Type.TOP).getResolutionNode();
        ResolutionAnchor localResolutionAnchor3 = localConstraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).getResolutionNode();
        int i12;
        if ((localConstraintWidget.getAnchor(ConstraintAnchor.Type.TOP).getTarget() != null) && (localConstraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget() != null)) {
          i12 = 1;
        } else {
          i12 = 0;
        }
        if ((i6 == 0) && (i7 == 0) && (i3 != 0) && (i12 != 0))
        {
          l1 = 1L;
        }
        else
        {
          if (b.getHorizontalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            i5 = 1;
          } else {
            i5 = 0;
          }
          if (b.getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          if (i5 == 0) {
            localConstraintWidget.getResolutionWidth().invalidate();
          }
          if (i2 == 0) {
            localConstraintWidget.getResolutionHeight().invalidate();
          }
          if (i6 == 0)
          {
            if ((i5 != 0) && (localConstraintWidget.isSpreadWidth()) && (i3 != 0) && (((ResolutionAnchor)localObject).isResolved()) && (localResolutionAnchor1.isResolved()))
            {
              i6 = (int)(localResolutionAnchor1.getResolvedValue() - ((ResolutionAnchor)localObject).getResolvedValue());
              localConstraintWidget.getResolutionWidth().resolve(i6);
              i4 = getChildMeasureSpec(paramInt1, i13, i6);
            }
            else
            {
              i4 = getChildMeasureSpec(paramInt1, i13, -2);
              i10 = 0;
              i3 = 1;
              i11 = i6;
              break label903;
            }
          }
          else
          {
            if (i6 != -1) {
              break label869;
            }
            i4 = getChildMeasureSpec(paramInt1, i13, -1);
          }
          i3 = 0;
          int i10 = i5;
          int i11 = i6;
          break label903;
          label869:
          if (i6 == -2) {
            i3 = 1;
          } else {
            i3 = 0;
          }
          i4 = getChildMeasureSpec(paramInt1, i13, i6);
          i11 = i6;
          i10 = i5;
          label903:
          if (i7 == 0)
          {
            if ((i2 != 0) && (localConstraintWidget.isSpreadHeight()) && (i12 != 0) && (localResolutionAnchor2.isResolved()) && (localResolutionAnchor3.isResolved()))
            {
              i7 = (int)(localResolutionAnchor3.getResolvedValue() - localResolutionAnchor2.getResolvedValue());
              localConstraintWidget.getResolutionHeight().resolve(i7);
              i6 = getChildMeasureSpec(paramInt2, i1, i7);
            }
            else
            {
              i6 = getChildMeasureSpec(paramInt2, i1, -2);
              i2 = 0;
              i5 = 1;
              break label1046;
            }
          }
          else
          {
            i6 = i1;
            if (i7 != -1) {
              break label1020;
            }
            i6 = getChildMeasureSpec(paramInt2, i6, -1);
          }
          i5 = 0;
          break label1046;
          label1020:
          if (i7 == -2) {
            i5 = 1;
          } else {
            i5 = 0;
          }
          i6 = getChildMeasureSpec(paramInt2, i6, i7);
          label1046:
          localView.measure(i4, i6);
          if (t != null)
          {
            localObject = t;
            measures += 1L;
          }
          long l2 = 1L;
          if (i11 == -2) {
            bool = true;
          } else {
            bool = false;
          }
          localConstraintWidget.setWidthWrapContent(bool);
          if (i7 == -2) {
            bool = true;
          } else {
            bool = false;
          }
          localConstraintWidget.setHeightWrapContent(bool);
          i4 = localView.getMeasuredWidth();
          i6 = localView.getMeasuredHeight();
          localConstraintWidget.setWidth(i4);
          localConstraintWidget.setHeight(i6);
          if (i3 != 0) {
            localConstraintWidget.setWrapWidth(i4);
          }
          if (i5 != 0) {
            localConstraintWidget.setWrapHeight(i6);
          }
          if (i10 != 0) {
            localConstraintWidget.getResolutionWidth().resolve(i4);
          } else {
            localConstraintWidget.getResolutionWidth().remove();
          }
          if (i2 != 0) {
            localConstraintWidget.getResolutionHeight().resolve(i6);
          }
          for (;;)
          {
            break;
            localConstraintWidget.getResolutionHeight().remove();
          }
          if (e)
          {
            i2 = localView.getBaseline();
            l1 = l2;
            if (i2 != -1)
            {
              localConstraintWidget.setBaselineDistance(i2);
              l1 = l2;
            }
          }
          else
          {
            l1 = l2;
          }
        }
      }
      i9 += 1;
    }
  }
  
  private void c()
  {
    int i3 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    while (i1 < i3)
    {
      View localView = getChildAt(i1);
      if ((localView instanceof Placeholder)) {
        ((Placeholder)localView).updatePostMeasure(this);
      }
      i1 += 1;
    }
    i3 = g.size();
    if (i3 > 0)
    {
      i1 = i2;
      while (i1 < i3)
      {
        ((ConstraintHelper)g.get(i1)).updatePostMeasure(this);
        i1 += 1;
      }
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i4 = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i1 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    int i2 = getPaddingTop();
    int i3 = getPaddingBottom();
    int i5 = getPaddingLeft();
    int i6 = getPaddingRight();
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.FIXED;
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
    getLayoutParams();
    if (i4 != Integer.MIN_VALUE)
    {
      if (i4 != 0) {
        if (i4 == 1073741824) {}
      }
      for (;;)
      {
        paramInt1 = 0;
        break;
        paramInt1 = Math.min(k, paramInt1) - (i5 + i6);
        break;
        localDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      }
    }
    localDimensionBehaviour1 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    if (i1 != Integer.MIN_VALUE)
    {
      if (i1 != 0) {
        if (i1 == 1073741824) {}
      }
      for (;;)
      {
        paramInt2 = 0;
        break;
        paramInt2 = Math.min(l, paramInt2) - (i2 + i3);
        break;
        localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
      }
    }
    localDimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    b.setMinWidth(0);
    b.setMinHeight(0);
    b.setHorizontalDimensionBehaviour(localDimensionBehaviour1);
    b.setWidth(paramInt1);
    b.setVerticalDimensionBehaviour(localDimensionBehaviour2);
    b.setHeight(paramInt2);
    b.setMinWidth(i - getPaddingLeft() - getPaddingRight());
    b.setMinHeight(j - getPaddingTop() - getPaddingBottom());
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if (Build.VERSION.SDK_INT < 14) {
      onViewAdded(paramView);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (isInEditMode())
    {
      int i2 = getChildCount();
      float f1 = getWidth();
      float f2 = getHeight();
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject = getChildAt(i1);
        if (((View)localObject).getVisibility() != 8)
        {
          localObject = ((View)localObject).getTag();
          if ((localObject != null) && ((localObject instanceof String)))
          {
            localObject = ((String)localObject).split(",");
            if (localObject.length == 4)
            {
              int i4 = Integer.parseInt(localObject[0]);
              int i6 = Integer.parseInt(localObject[1]);
              int i5 = Integer.parseInt(localObject[2]);
              int i3 = Integer.parseInt(localObject[3]);
              i4 = (int)(i4 / 1080.0F * f1);
              i6 = (int)(i6 / 1920.0F * f2);
              i5 = (int)(i5 / 1080.0F * f1);
              i3 = (int)(i3 / 1920.0F * f2);
              localObject = new Paint();
              ((Paint)localObject).setColor(-65536);
              float f3 = i4;
              float f4 = i6;
              float f5 = i4 + i5;
              paramCanvas.drawLine(f3, f4, f5, f4, (Paint)localObject);
              float f6 = i6 + i3;
              paramCanvas.drawLine(f5, f4, f5, f6, (Paint)localObject);
              paramCanvas.drawLine(f5, f6, f3, f6, (Paint)localObject);
              paramCanvas.drawLine(f3, f6, f3, f4, (Paint)localObject);
              ((Paint)localObject).setColor(-16711936);
              paramCanvas.drawLine(f3, f4, f5, f6, (Paint)localObject);
              paramCanvas.drawLine(f3, f6, f5, f4, (Paint)localObject);
            }
          }
        }
        i1 += 1;
      }
    }
  }
  
  public void fillMetrics(Metrics paramMetrics)
  {
    t = paramMetrics;
    b.fillMetrics(paramMetrics);
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-2, -2);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public Object getDesignInformation(int paramInt, Object paramObject)
  {
    if ((paramInt == 0) && ((paramObject instanceof String)))
    {
      paramObject = (String)paramObject;
      if ((q != null) && (q.containsKey(paramObject))) {
        return q.get(paramObject);
      }
    }
    return null;
  }
  
  public int getMaxHeight()
  {
    return l;
  }
  
  public int getMaxWidth()
  {
    return k;
  }
  
  public int getMinHeight()
  {
    return j;
  }
  
  public int getMinWidth()
  {
    return i;
  }
  
  public int getOptimizationLevel()
  {
    return b.getOptimizationLevel();
  }
  
  public View getViewById(int paramInt)
  {
    return (View)a.get(paramInt);
  }
  
  public final ConstraintWidget getViewWidget(View paramView)
  {
    if (paramView == this) {
      return b;
    }
    if (paramView == null) {
      return null;
    }
    return getLayoutParamss;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = getChildCount();
    paramBoolean = isInEditMode();
    paramInt2 = 0;
    paramInt1 = 0;
    while (paramInt1 < paramInt3)
    {
      View localView = getChildAt(paramInt1);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      ConstraintWidget localConstraintWidget = s;
      if (((localView.getVisibility() != 8) || (f) || (g) || (paramBoolean)) && (!h))
      {
        paramInt4 = localConstraintWidget.getDrawX();
        int i1 = localConstraintWidget.getDrawY();
        int i2 = localConstraintWidget.getWidth() + paramInt4;
        int i3 = localConstraintWidget.getHeight() + i1;
        localView.layout(paramInt4, i1, i2, i3);
        if ((localView instanceof Placeholder))
        {
          localView = ((Placeholder)localView).getContent();
          if (localView != null)
          {
            localView.setVisibility(0);
            localView.layout(paramInt4, i1, i2, i3);
          }
        }
      }
      paramInt1 += 1;
    }
    paramInt3 = g.size();
    if (paramInt3 > 0)
    {
      paramInt1 = paramInt2;
      while (paramInt1 < paramInt3)
      {
        ((ConstraintHelper)g.get(paramInt1)).updatePostLayout(this);
        paramInt1 += 1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    System.currentTimeMillis();
    int i4 = View.MeasureSpec.getMode(paramInt1);
    int i5 = View.MeasureSpec.getSize(paramInt1);
    int i7 = View.MeasureSpec.getMode(paramInt2);
    int i8 = View.MeasureSpec.getSize(paramInt2);
    int i2 = getPaddingLeft();
    int i3 = getPaddingTop();
    b.setX(i2);
    b.setY(i3);
    b.setMaxWidth(k);
    b.setMaxHeight(l);
    Object localObject;
    if (Build.VERSION.SDK_INT >= 17)
    {
      localObject = b;
      boolean bool;
      if (getLayoutDirection() == 1) {
        bool = true;
      } else {
        bool = false;
      }
      ((ConstraintWidgetContainer)localObject).setRtl(bool);
    }
    c(paramInt1, paramInt2);
    int i11 = b.getWidth();
    int i10 = b.getHeight();
    if (m)
    {
      m = false;
      a();
      i1 = 1;
    }
    else
    {
      i1 = 0;
    }
    int i6;
    if ((n & 0x8) == 8) {
      i6 = 1;
    } else {
      i6 = 0;
    }
    if (i6 != 0)
    {
      b.preOptimize();
      b.optimizeForDimensions(i11, i10);
      b(paramInt1, paramInt2);
    }
    else
    {
      a(paramInt1, paramInt2);
    }
    c();
    if ((getChildCount() > 0) && (i1 != 0)) {
      Analyzer.determineGroups(b);
    }
    if (b.mGroupsWrapOptimized)
    {
      if ((b.mHorizontalWrapOptimized) && (i4 == Integer.MIN_VALUE))
      {
        if (b.mWrapFixedWidth < i5) {
          b.setWidth(b.mWrapFixedWidth);
        }
        b.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
      }
      if ((b.mVerticalWrapOptimized) && (i7 == Integer.MIN_VALUE))
      {
        if (b.mWrapFixedHeight < i8) {
          b.setHeight(b.mWrapFixedHeight);
        }
        b.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
      }
    }
    if ((n & 0x20) == 32)
    {
      i1 = b.getWidth();
      i9 = b.getHeight();
      if ((r != i1) && (i4 == 1073741824)) {
        Analyzer.setPosition(b.mWidgetGroups, 0, i1);
      }
      if ((s != i9) && (i7 == 1073741824)) {
        Analyzer.setPosition(b.mWidgetGroups, 1, i9);
      }
      if ((b.mHorizontalWrapOptimized) && (b.mWrapFixedWidth > i5)) {
        Analyzer.setPosition(b.mWidgetGroups, 0, i5);
      }
      if ((b.mVerticalWrapOptimized) && (b.mWrapFixedHeight > i8)) {
        Analyzer.setPosition(b.mWidgetGroups, 1, i8);
      }
    }
    if (getChildCount() > 0) {
      solveLinearSystem("First pass");
    }
    int i9 = h.size();
    int i14 = i3 + getPaddingBottom();
    int i15 = i2 + getPaddingRight();
    if (i9 > 0)
    {
      if (b.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
        i7 = 1;
      } else {
        i7 = 0;
      }
      if (b.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
        i8 = 1;
      } else {
        i8 = 0;
      }
      i3 = Math.max(b.getWidth(), i);
      i2 = Math.max(b.getHeight(), j);
      int i12 = 0;
      i4 = 0;
      i1 = 0;
      View localView;
      while (i12 < i9)
      {
        localObject = (ConstraintWidget)h.get(i12);
        localView = (View)((ConstraintWidget)localObject).getCompanionWidget();
        if (localView != null) {
          for (;;)
          {
            LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
            if ((!g) && (!f))
            {
              int i13 = localView.getVisibility();
              i5 = i4;
              if (i13 != 8)
              {
                while ((i6 != 0) && (((ConstraintWidget)localObject).getResolutionWidth().isResolved()) && (((ConstraintWidget)localObject).getResolutionHeight().isResolved())) {}
                if ((width == -2) && (c)) {
                  i4 = getChildMeasureSpec(paramInt1, i15, width);
                } else {
                  i4 = View.MeasureSpec.makeMeasureSpec(((ConstraintWidget)localObject).getWidth(), 1073741824);
                }
                if ((height == -2) && (d)) {
                  i13 = getChildMeasureSpec(paramInt2, i14, height);
                } else {
                  i13 = View.MeasureSpec.makeMeasureSpec(((ConstraintWidget)localObject).getHeight(), 1073741824);
                }
                localView.measure(i4, i13);
                if (t != null)
                {
                  Metrics localMetrics = t;
                  additionalMeasures += 1L;
                }
                int i16 = localView.getMeasuredWidth();
                i13 = localView.getMeasuredHeight();
                i4 = i3;
                if (i16 != ((ConstraintWidget)localObject).getWidth())
                {
                  ((ConstraintWidget)localObject).setWidth(i16);
                  if (i6 != 0) {
                    ((ConstraintWidget)localObject).getResolutionWidth().resolve(i16);
                  }
                  i4 = i3;
                  if (i7 != 0)
                  {
                    i4 = i3;
                    if (((ConstraintWidget)localObject).getRight() > i3) {
                      i4 = Math.max(i3, ((ConstraintWidget)localObject).getRight() + ((ConstraintWidget)localObject).getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                    }
                  }
                  i5 = 1;
                }
                i3 = i2;
                if (i13 != ((ConstraintWidget)localObject).getHeight())
                {
                  ((ConstraintWidget)localObject).setHeight(i13);
                  if (i6 != 0) {
                    ((ConstraintWidget)localObject).getResolutionHeight().resolve(i13);
                  }
                  i3 = i2;
                  if (i8 != 0)
                  {
                    i3 = i2;
                    if (((ConstraintWidget)localObject).getBottom() > i2) {
                      i3 = Math.max(i2, ((ConstraintWidget)localObject).getBottom() + ((ConstraintWidget)localObject).getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                    }
                  }
                  i5 = 1;
                }
                i2 = i5;
                if (e)
                {
                  i13 = localView.getBaseline();
                  i2 = i5;
                  if (i13 != -1)
                  {
                    i2 = i5;
                    if (i13 != ((ConstraintWidget)localObject).getBaselineDistance())
                    {
                      ((ConstraintWidget)localObject).setBaselineDistance(i13);
                      i2 = 1;
                    }
                  }
                }
                if (Build.VERSION.SDK_INT >= 11)
                {
                  i1 = combineMeasuredStates(i1, localView.getMeasuredState());
                  i5 = i3;
                  i3 = i4;
                  i4 = i2;
                  break;
                }
                i5 = i3;
                i3 = i4;
                i4 = i2;
                break;
              }
            }
          }
        }
        i5 = i2;
        i12 += 1;
        i2 = i5;
      }
      i5 = i1;
      if (i4 != 0)
      {
        b.setWidth(i11);
        b.setHeight(i10);
        if (i6 != 0) {
          b.solveGraph();
        }
        solveLinearSystem("2nd pass");
        if (b.getWidth() < i3)
        {
          b.setWidth(i3);
          i1 = 1;
        }
        else
        {
          i1 = 0;
        }
        if (b.getHeight() < i2)
        {
          b.setHeight(i2);
          i1 = 1;
        }
        if (i1 != 0) {
          solveLinearSystem("3rd pass");
        }
      }
      i2 = 0;
      for (;;)
      {
        i1 = i5;
        if (i2 >= i9) {
          break;
        }
        localObject = (ConstraintWidget)h.get(i2);
        localView = (View)((ConstraintWidget)localObject).getCompanionWidget();
        if (localView != null)
        {
          while (((localView.getMeasuredWidth() == ((ConstraintWidget)localObject).getWidth()) && (localView.getMeasuredHeight() == ((ConstraintWidget)localObject).getHeight())) || (((ConstraintWidget)localObject).getVisibility() == 8)) {}
          localView.measure(View.MeasureSpec.makeMeasureSpec(((ConstraintWidget)localObject).getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(((ConstraintWidget)localObject).getHeight(), 1073741824));
          if (t != null)
          {
            localObject = t;
            additionalMeasures += 1L;
          }
        }
        i2 += 1;
      }
    }
    int i1 = 0;
    i2 = b.getWidth() + i15;
    i3 = b.getHeight() + i14;
    if (Build.VERSION.SDK_INT >= 11)
    {
      paramInt1 = resolveSizeAndState(i2, paramInt1, i1);
      i1 = resolveSizeAndState(i3, paramInt2, i1 << 16);
      paramInt2 = Math.min(k, paramInt1 & 0xFFFFFF);
      i1 = Math.min(l, i1 & 0xFFFFFF);
      paramInt1 = paramInt2;
      if (b.isWidthMeasuredTooSmall()) {
        paramInt1 = paramInt2 | 0x1000000;
      }
      paramInt2 = i1;
      if (b.isHeightMeasuredTooSmall()) {
        paramInt2 = i1 | 0x1000000;
      }
      setMeasuredDimension(paramInt1, paramInt2);
      r = paramInt1;
      s = paramInt2;
      return;
    }
    setMeasuredDimension(i2, i3);
    r = i2;
    s = i3;
  }
  
  public void onViewAdded(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      super.onViewAdded(paramView);
    }
    Object localObject = getViewWidget(paramView);
    if (((paramView instanceof Guideline)) && (!(localObject instanceof android.support.constraint.solver.widgets.Guideline)))
    {
      localObject = (LayoutParams)paramView.getLayoutParams();
      s = new android.support.constraint.solver.widgets.Guideline();
      f = true;
      ((android.support.constraint.solver.widgets.Guideline)s).setOrientation(orientation);
    }
    if ((paramView instanceof ConstraintHelper))
    {
      localObject = (ConstraintHelper)paramView;
      ((ConstraintHelper)localObject).validateParams();
      getLayoutParamsg = true;
      if (!g.contains(localObject)) {
        g.add(localObject);
      }
    }
    a.put(paramView.getId(), paramView);
    m = true;
  }
  
  public void onViewRemoved(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      super.onViewRemoved(paramView);
    }
    a.remove(paramView.getId());
    ConstraintWidget localConstraintWidget = getViewWidget(paramView);
    b.remove(localConstraintWidget);
    g.remove(paramView);
    h.remove(localConstraintWidget);
    m = true;
  }
  
  public void removeView(View paramView)
  {
    super.removeView(paramView);
    if (Build.VERSION.SDK_INT < 14) {
      onViewRemoved(paramView);
    }
  }
  
  public void requestLayout()
  {
    super.requestLayout();
    m = true;
    r = -1;
    s = -1;
    c = -1;
    d = -1;
    e = 0;
    f = 0;
  }
  
  public void setConstraintSet(ConstraintSet paramConstraintSet)
  {
    o = paramConstraintSet;
  }
  
  public void setDesignInformation(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == 0) && ((paramObject1 instanceof String)) && ((paramObject2 instanceof Integer)))
    {
      if (q == null) {
        q = new HashMap();
      }
      String str = (String)paramObject1;
      paramInt = str.indexOf("/");
      paramObject1 = str;
      if (paramInt != -1) {
        paramObject1 = str.substring(paramInt + 1);
      }
      paramInt = ((Integer)paramObject2).intValue();
      q.put(paramObject1, Integer.valueOf(paramInt));
    }
  }
  
  public void setId(int paramInt)
  {
    a.remove(getId());
    super.setId(paramInt);
    a.put(getId(), this);
  }
  
  public void setMaxHeight(int paramInt)
  {
    if (paramInt == l) {
      return;
    }
    l = paramInt;
    requestLayout();
  }
  
  public void setMaxWidth(int paramInt)
  {
    if (paramInt == k) {
      return;
    }
    k = paramInt;
    requestLayout();
  }
  
  public void setMinHeight(int paramInt)
  {
    if (paramInt == j) {
      return;
    }
    j = paramInt;
    requestLayout();
  }
  
  public void setMinWidth(int paramInt)
  {
    if (paramInt == i) {
      return;
    }
    i = paramInt;
    requestLayout();
  }
  
  public void setOptimizationLevel(int paramInt)
  {
    b.setOptimizationLevel(paramInt);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  protected void solveLinearSystem(String paramString)
  {
    b.layout();
    if (t != null)
    {
      paramString = t;
      resolutions += 1L;
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int END = 7;
    public static final int HORIZONTAL = 0;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int VERTICAL = 1;
    float a = 0.0F;
    int b = 1;
    public int baselineToBaseline = -1;
    public int bottomToBottom = -1;
    public int bottomToTop = -1;
    boolean c = true;
    public float circleAngle = 0.0F;
    public int circleConstraint = -1;
    public int circleRadius = 0;
    public boolean constrainedHeight = false;
    public boolean constrainedWidth = false;
    boolean d = true;
    public String dimensionRatio = null;
    boolean e = false;
    public int editorAbsoluteX = -1;
    public int editorAbsoluteY = -1;
    public int endToEnd = -1;
    public int endToStart = -1;
    boolean f = false;
    boolean g = false;
    public int goneBottomMargin = -1;
    public int goneEndMargin = -1;
    public int goneLeftMargin = -1;
    public int goneRightMargin = -1;
    public int goneStartMargin = -1;
    public int goneTopMargin = -1;
    public int guideBegin = -1;
    public int guideEnd = -1;
    public float guidePercent = -1.0F;
    boolean h = false;
    public boolean helped = false;
    public float horizontalBias = 0.5F;
    public int horizontalChainStyle = 0;
    public float horizontalWeight = -1.0F;
    int i = -1;
    int j = -1;
    int k = -1;
    int l = -1;
    public int leftToLeft = -1;
    public int leftToRight = -1;
    int m = -1;
    public int matchConstraintDefaultHeight = 0;
    public int matchConstraintDefaultWidth = 0;
    public int matchConstraintMaxHeight = 0;
    public int matchConstraintMaxWidth = 0;
    public int matchConstraintMinHeight = 0;
    public int matchConstraintMinWidth = 0;
    public float matchConstraintPercentHeight = 1.0F;
    public float matchConstraintPercentWidth = 1.0F;
    int n = -1;
    float o = 0.5F;
    public int orientation = -1;
    int p;
    int q;
    float r;
    public int rightToLeft = -1;
    public int rightToRight = -1;
    ConstraintWidget s = new ConstraintWidget();
    public int startToEnd = -1;
    public int startToStart = -1;
    public int topToBottom = -1;
    public int topToTop = -1;
    public float verticalBias = 0.5F;
    public int verticalChainStyle = 0;
    public float verticalWeight = -1.0F;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ConstraintLayout_Layout);
      int i3 = paramContext.getIndexCount();
      int i1 = 0;
      while (i1 < i3)
      {
        int i2 = paramContext.getIndex(i1);
        String str;
        switch (a.a.get(i2))
        {
        case 43: 
        default: 
          break;
        case 50: 
          editorAbsoluteY = paramContext.getDimensionPixelOffset(i2, editorAbsoluteY);
          break;
        case 49: 
          editorAbsoluteX = paramContext.getDimensionPixelOffset(i2, editorAbsoluteX);
          break;
        case 48: 
          verticalChainStyle = paramContext.getInt(i2, 0);
          break;
        case 47: 
          horizontalChainStyle = paramContext.getInt(i2, 0);
          break;
        case 46: 
          verticalWeight = paramContext.getFloat(i2, verticalWeight);
          break;
        case 45: 
          horizontalWeight = paramContext.getFloat(i2, horizontalWeight);
          break;
        case 44: 
          dimensionRatio = paramContext.getString(i2);
          a = NaN.0F;
          b = -1;
          if (dimensionRatio != null)
          {
            int i4 = dimensionRatio.length();
            i2 = dimensionRatio.indexOf(',');
            if ((i2 > 0) && (i2 < i4 - 1))
            {
              paramAttributeSet = dimensionRatio.substring(0, i2);
              if (paramAttributeSet.equalsIgnoreCase("W")) {
                b = 0;
              } else if (paramAttributeSet.equalsIgnoreCase("H")) {
                b = 1;
              }
              i2 += 1;
            }
            else
            {
              i2 = 0;
            }
            int i5 = dimensionRatio.indexOf(':');
            if ((i5 >= 0) && (i5 < i4 - 1))
            {
              paramAttributeSet = dimensionRatio.substring(i2, i5);
              str = dimensionRatio.substring(i5 + 1);
              if ((paramAttributeSet.length() <= 0) || (str.length() <= 0)) {
                break label2032;
              }
            }
          }
          break;
        }
        try
        {
          float f1 = Float.parseFloat(paramAttributeSet);
          float f2 = Float.parseFloat(str);
          if ((f1 <= 0.0F) || (f2 <= 0.0F)) {
            break label2032;
          }
          if (b == 1) {
            a = Math.abs(f2 / f1);
          } else {
            a = Math.abs(f1 / f2);
          }
        }
        catch (NumberFormatException paramAttributeSet)
        {
          for (;;) {}
        }
        paramAttributeSet = dimensionRatio.substring(i2);
        if (paramAttributeSet.length() > 0)
        {
          a = Float.parseFloat(paramAttributeSet);
          break label2032;
          matchConstraintPercentHeight = Math.max(0.0F, paramContext.getFloat(i2, matchConstraintPercentHeight));
        }
        try
        {
          matchConstraintMaxHeight = paramContext.getDimensionPixelSize(i2, matchConstraintMaxHeight);
        }
        catch (Exception paramAttributeSet)
        {
          for (;;) {}
        }
        if (paramContext.getInt(i2, matchConstraintMaxHeight) == -2) {
          matchConstraintMaxHeight = -2;
        }
        try
        {
          matchConstraintMinHeight = paramContext.getDimensionPixelSize(i2, matchConstraintMinHeight);
        }
        catch (Exception paramAttributeSet)
        {
          for (;;) {}
        }
        if (paramContext.getInt(i2, matchConstraintMinHeight) == -2)
        {
          matchConstraintMinHeight = -2;
          break label2032;
          matchConstraintPercentWidth = Math.max(0.0F, paramContext.getFloat(i2, matchConstraintPercentWidth));
        }
        try
        {
          matchConstraintMaxWidth = paramContext.getDimensionPixelSize(i2, matchConstraintMaxWidth);
        }
        catch (Exception paramAttributeSet)
        {
          for (;;) {}
        }
        if (paramContext.getInt(i2, matchConstraintMaxWidth) == -2) {
          matchConstraintMaxWidth = -2;
        }
        try
        {
          matchConstraintMinWidth = paramContext.getDimensionPixelSize(i2, matchConstraintMinWidth);
        }
        catch (Exception paramAttributeSet)
        {
          for (;;) {}
        }
        if (paramContext.getInt(i2, matchConstraintMinWidth) == -2)
        {
          matchConstraintMinWidth = -2;
          break label2032;
          matchConstraintDefaultHeight = paramContext.getInt(i2, 0);
          if (matchConstraintDefaultHeight == 1)
          {
            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
            break label2032;
            matchConstraintDefaultWidth = paramContext.getInt(i2, 0);
            if (matchConstraintDefaultWidth == 1)
            {
              Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
              break label2032;
              verticalBias = paramContext.getFloat(i2, verticalBias);
              break label2032;
              horizontalBias = paramContext.getFloat(i2, horizontalBias);
              break label2032;
              constrainedHeight = paramContext.getBoolean(i2, constrainedHeight);
              break label2032;
              constrainedWidth = paramContext.getBoolean(i2, constrainedWidth);
              break label2032;
              goneEndMargin = paramContext.getDimensionPixelSize(i2, goneEndMargin);
              break label2032;
              goneStartMargin = paramContext.getDimensionPixelSize(i2, goneStartMargin);
              break label2032;
              goneBottomMargin = paramContext.getDimensionPixelSize(i2, goneBottomMargin);
              break label2032;
              goneRightMargin = paramContext.getDimensionPixelSize(i2, goneRightMargin);
              break label2032;
              goneTopMargin = paramContext.getDimensionPixelSize(i2, goneTopMargin);
              break label2032;
              goneLeftMargin = paramContext.getDimensionPixelSize(i2, goneLeftMargin);
              break label2032;
              endToEnd = paramContext.getResourceId(i2, endToEnd);
              if (endToEnd == -1)
              {
                endToEnd = paramContext.getInt(i2, -1);
                break label2032;
                endToStart = paramContext.getResourceId(i2, endToStart);
                if (endToStart == -1)
                {
                  endToStart = paramContext.getInt(i2, -1);
                  break label2032;
                  startToStart = paramContext.getResourceId(i2, startToStart);
                  if (startToStart == -1)
                  {
                    startToStart = paramContext.getInt(i2, -1);
                    break label2032;
                    startToEnd = paramContext.getResourceId(i2, startToEnd);
                    if (startToEnd == -1)
                    {
                      startToEnd = paramContext.getInt(i2, -1);
                      break label2032;
                      baselineToBaseline = paramContext.getResourceId(i2, baselineToBaseline);
                      if (baselineToBaseline == -1)
                      {
                        baselineToBaseline = paramContext.getInt(i2, -1);
                        break label2032;
                        bottomToBottom = paramContext.getResourceId(i2, bottomToBottom);
                        if (bottomToBottom == -1)
                        {
                          bottomToBottom = paramContext.getInt(i2, -1);
                          break label2032;
                          bottomToTop = paramContext.getResourceId(i2, bottomToTop);
                          if (bottomToTop == -1)
                          {
                            bottomToTop = paramContext.getInt(i2, -1);
                            break label2032;
                            topToBottom = paramContext.getResourceId(i2, topToBottom);
                            if (topToBottom == -1)
                            {
                              topToBottom = paramContext.getInt(i2, -1);
                              break label2032;
                              topToTop = paramContext.getResourceId(i2, topToTop);
                              if (topToTop == -1)
                              {
                                topToTop = paramContext.getInt(i2, -1);
                                break label2032;
                                rightToRight = paramContext.getResourceId(i2, rightToRight);
                                if (rightToRight == -1)
                                {
                                  rightToRight = paramContext.getInt(i2, -1);
                                  break label2032;
                                  rightToLeft = paramContext.getResourceId(i2, rightToLeft);
                                  if (rightToLeft == -1)
                                  {
                                    rightToLeft = paramContext.getInt(i2, -1);
                                    break label2032;
                                    leftToRight = paramContext.getResourceId(i2, leftToRight);
                                    if (leftToRight == -1)
                                    {
                                      leftToRight = paramContext.getInt(i2, -1);
                                      break label2032;
                                      leftToLeft = paramContext.getResourceId(i2, leftToLeft);
                                      if (leftToLeft == -1)
                                      {
                                        leftToLeft = paramContext.getInt(i2, -1);
                                        break label2032;
                                        guidePercent = paramContext.getFloat(i2, guidePercent);
                                        break label2032;
                                        guideEnd = paramContext.getDimensionPixelOffset(i2, guideEnd);
                                        break label2032;
                                        guideBegin = paramContext.getDimensionPixelOffset(i2, guideBegin);
                                        break label2032;
                                        circleAngle = (paramContext.getFloat(i2, circleAngle) % 360.0F);
                                        if (circleAngle < 0.0F)
                                        {
                                          circleAngle = ((360.0F - circleAngle) % 360.0F);
                                          break label2032;
                                          circleRadius = paramContext.getDimensionPixelSize(i2, circleRadius);
                                          break label2032;
                                          circleConstraint = paramContext.getResourceId(i2, circleConstraint);
                                          if (circleConstraint == -1)
                                          {
                                            circleConstraint = paramContext.getInt(i2, -1);
                                            break label2032;
                                            orientation = paramContext.getInt(i2, orientation);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        label2032:
        i1 += 1;
      }
      paramContext.recycle();
      validate();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      guideBegin = guideBegin;
      guideEnd = guideEnd;
      guidePercent = guidePercent;
      leftToLeft = leftToLeft;
      leftToRight = leftToRight;
      rightToLeft = rightToLeft;
      rightToRight = rightToRight;
      topToTop = topToTop;
      topToBottom = topToBottom;
      bottomToTop = bottomToTop;
      bottomToBottom = bottomToBottom;
      baselineToBaseline = baselineToBaseline;
      circleConstraint = circleConstraint;
      circleRadius = circleRadius;
      circleAngle = circleAngle;
      startToEnd = startToEnd;
      startToStart = startToStart;
      endToStart = endToStart;
      endToEnd = endToEnd;
      goneLeftMargin = goneLeftMargin;
      goneTopMargin = goneTopMargin;
      goneRightMargin = goneRightMargin;
      goneBottomMargin = goneBottomMargin;
      goneStartMargin = goneStartMargin;
      goneEndMargin = goneEndMargin;
      horizontalBias = horizontalBias;
      verticalBias = verticalBias;
      dimensionRatio = dimensionRatio;
      a = a;
      b = b;
      horizontalWeight = horizontalWeight;
      verticalWeight = verticalWeight;
      horizontalChainStyle = horizontalChainStyle;
      verticalChainStyle = verticalChainStyle;
      constrainedWidth = constrainedWidth;
      constrainedHeight = constrainedHeight;
      matchConstraintDefaultWidth = matchConstraintDefaultWidth;
      matchConstraintDefaultHeight = matchConstraintDefaultHeight;
      matchConstraintMinWidth = matchConstraintMinWidth;
      matchConstraintMaxWidth = matchConstraintMaxWidth;
      matchConstraintMinHeight = matchConstraintMinHeight;
      matchConstraintMaxHeight = matchConstraintMaxHeight;
      matchConstraintPercentWidth = matchConstraintPercentWidth;
      matchConstraintPercentHeight = matchConstraintPercentHeight;
      editorAbsoluteX = editorAbsoluteX;
      editorAbsoluteY = editorAbsoluteY;
      orientation = orientation;
      c = c;
      d = d;
      e = e;
      f = f;
      i = i;
      j = j;
      k = k;
      l = l;
      m = m;
      n = n;
      o = o;
      s = s;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public void reset()
    {
      if (s != null) {
        s.reset();
      }
    }
    
    @TargetApi(17)
    public void resolveLayoutDirection(int paramInt)
    {
      int i2 = leftMargin;
      int i3 = rightMargin;
      super.resolveLayoutDirection(paramInt);
      k = -1;
      l = -1;
      i = -1;
      j = -1;
      m = -1;
      n = -1;
      m = goneLeftMargin;
      n = goneRightMargin;
      o = horizontalBias;
      p = guideBegin;
      q = guideEnd;
      r = guidePercent;
      paramInt = getLayoutDirection();
      int i1 = 0;
      if (1 == paramInt) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (paramInt != 0)
      {
        if (startToEnd != -1) {
          k = startToEnd;
        }
        for (;;)
        {
          paramInt = 1;
          break;
          paramInt = i1;
          if (startToStart == -1) {
            break;
          }
          l = startToStart;
        }
        if (endToStart != -1)
        {
          j = endToStart;
          paramInt = 1;
        }
        if (endToEnd != -1)
        {
          i = endToEnd;
          paramInt = 1;
        }
        if (goneStartMargin != -1) {
          n = goneStartMargin;
        }
        if (goneEndMargin != -1) {
          m = goneEndMargin;
        }
        if (paramInt != 0) {
          o = (1.0F - horizontalBias);
        }
        if ((f) && (orientation == 1)) {
          if (guidePercent != -1.0F)
          {
            r = (1.0F - guidePercent);
            p = -1;
            q = -1;
          }
          else if (guideBegin != -1)
          {
            q = guideBegin;
            p = -1;
            r = -1.0F;
          }
          else if (guideEnd != -1)
          {
            p = guideEnd;
            q = -1;
            r = -1.0F;
          }
        }
      }
      else
      {
        if (startToEnd != -1) {
          j = startToEnd;
        }
        if (startToStart != -1) {
          i = startToStart;
        }
        if (endToStart != -1) {
          k = endToStart;
        }
        if (endToEnd != -1) {
          l = endToEnd;
        }
        if (goneStartMargin != -1) {
          m = goneStartMargin;
        }
        if (goneEndMargin != -1) {
          n = goneEndMargin;
        }
      }
      if ((endToStart == -1) && (endToEnd == -1) && (startToStart == -1) && (startToEnd == -1))
      {
        if (rightToLeft != -1)
        {
          k = rightToLeft;
          if ((rightMargin <= 0) && (i3 > 0)) {
            rightMargin = i3;
          }
        }
        else if (rightToRight != -1)
        {
          l = rightToRight;
          if ((rightMargin <= 0) && (i3 > 0)) {
            rightMargin = i3;
          }
        }
        if (leftToLeft != -1)
        {
          i = leftToLeft;
          if ((leftMargin <= 0) && (i2 > 0)) {
            leftMargin = i2;
          }
        }
        else if (leftToRight != -1)
        {
          j = leftToRight;
          if ((leftMargin <= 0) && (i2 > 0)) {
            leftMargin = i2;
          }
        }
      }
    }
    
    public void validate()
    {
      f = false;
      c = true;
      d = true;
      if ((width == -2) && (constrainedWidth))
      {
        c = false;
        matchConstraintDefaultWidth = 1;
      }
      if ((height == -2) && (constrainedHeight))
      {
        d = false;
        matchConstraintDefaultHeight = 1;
      }
      if ((width == 0) || (width == -1))
      {
        c = false;
        if ((width == 0) && (matchConstraintDefaultWidth == 1))
        {
          width = -2;
          constrainedWidth = true;
        }
      }
      if ((height == 0) || (height == -1))
      {
        d = false;
        if ((height == 0) && (matchConstraintDefaultHeight == 1))
        {
          height = -2;
          constrainedHeight = true;
        }
      }
      if ((guidePercent != -1.0F) || (guideBegin != -1) || (guideEnd != -1))
      {
        f = true;
        c = true;
        d = true;
        if (!(s instanceof android.support.constraint.solver.widgets.Guideline)) {
          s = new android.support.constraint.solver.widgets.Guideline();
        }
        ((android.support.constraint.solver.widgets.Guideline)s).setOrientation(orientation);
      }
    }
    
    private static class a
    {
      public static final SparseIntArray a = new SparseIntArray();
      
      static
      {
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
        a.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
        a.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
        a.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
        a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
        a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
        a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
        a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
        a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
        a.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
        a.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
      }
    }
  }
}
