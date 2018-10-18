package android.support.design.chip;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.BoolRes;
import android.support.annotation.DimenRes;
import android.support.annotation.Dimension;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.design.R.attr;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.FlowLayout;
import android.support.design.internal.ThemeEnforcement;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

public class ChipGroup
  extends FlowLayout
{
  @Dimension
  private int a;
  @Dimension
  private int b;
  private boolean c;
  @Nullable
  private OnCheckedChangeListener d;
  private final a e = new a(null);
  private b f = new b(null);
  @IdRes
  private int g = -1;
  private boolean h = false;
  
  public ChipGroup(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ChipGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.chipGroupStyle);
  }
  
  public ChipGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.ChipGroup, paramInt, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
    paramInt = paramContext.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacing, 0);
    setChipSpacingHorizontal(paramContext.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingHorizontal, paramInt));
    setChipSpacingVertical(paramContext.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingVertical, paramInt));
    setSingleLine(paramContext.getBoolean(R.styleable.ChipGroup_singleLine, false));
    setSingleSelection(paramContext.getBoolean(R.styleable.ChipGroup_singleSelection, false));
    paramInt = paramContext.getResourceId(R.styleable.ChipGroup_checkedChip, -1);
    if (paramInt != -1) {
      g = paramInt;
    }
    paramContext.recycle();
    super.setOnHierarchyChangeListener(f);
  }
  
  private void a(@IdRes int paramInt, boolean paramBoolean)
  {
    View localView = findViewById(paramInt);
    if ((localView instanceof Chip))
    {
      h = true;
      ((Chip)localView).setChecked(paramBoolean);
      h = false;
    }
  }
  
  private void setCheckedId(int paramInt)
  {
    g = paramInt;
    if ((d != null) && (c)) {
      d.onCheckedChanged(this, paramInt);
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof Chip))
    {
      Chip localChip = (Chip)paramView;
      if (localChip.isChecked())
      {
        if ((g != -1) && (c)) {
          a(g, false);
        }
        setCheckedId(localChip.getId());
      }
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void check(@IdRes int paramInt)
  {
    if (paramInt == g) {
      return;
    }
    if ((g != -1) && (c)) {
      a(g, false);
    }
    if (paramInt != -1) {
      a(paramInt, true);
    }
    setCheckedId(paramInt);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof LayoutParams));
  }
  
  public void clearCheck()
  {
    h = true;
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if ((localView instanceof Chip)) {
        ((Chip)localView).setChecked(false);
      }
      i += 1;
    }
    h = false;
    setCheckedId(-1);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-2, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  @IdRes
  public int getCheckedChipId()
  {
    if (c) {
      return g;
    }
    return -1;
  }
  
  @Dimension
  public int getChipSpacingHorizontal()
  {
    return a;
  }
  
  @Dimension
  public int getChipSpacingVertical()
  {
    return b;
  }
  
  public boolean isSingleSelection()
  {
    return c;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (g != -1)
    {
      a(g, true);
      setCheckedId(g);
    }
  }
  
  public void setChipSpacing(@Dimension int paramInt)
  {
    setChipSpacingHorizontal(paramInt);
    setChipSpacingVertical(paramInt);
  }
  
  public void setChipSpacingHorizontal(@Dimension int paramInt)
  {
    if (a != paramInt)
    {
      a = paramInt;
      setItemSpacing(paramInt);
      requestLayout();
    }
  }
  
  public void setChipSpacingHorizontalResource(@DimenRes int paramInt)
  {
    setChipSpacingHorizontal(getResources().getDimensionPixelOffset(paramInt));
  }
  
  public void setChipSpacingResource(@DimenRes int paramInt)
  {
    setChipSpacing(getResources().getDimensionPixelOffset(paramInt));
  }
  
  public void setChipSpacingVertical(@Dimension int paramInt)
  {
    if (b != paramInt)
    {
      b = paramInt;
      setLineSpacing(paramInt);
      requestLayout();
    }
  }
  
  public void setChipSpacingVerticalResource(@DimenRes int paramInt)
  {
    setChipSpacingVertical(getResources().getDimensionPixelOffset(paramInt));
  }
  
  @Deprecated
  public void setDividerDrawableHorizontal(Drawable paramDrawable)
  {
    throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  @Deprecated
  public void setDividerDrawableVertical(@Nullable Drawable paramDrawable)
  {
    throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  @Deprecated
  public void setFlexWrap(int paramInt)
  {
    throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
  }
  
  public void setOnCheckedChangeListener(OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    d = paramOnCheckedChangeListener;
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    b.a(f, paramOnHierarchyChangeListener);
  }
  
  @Deprecated
  public void setShowDividerHorizontal(int paramInt)
  {
    throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  @Deprecated
  public void setShowDividerVertical(int paramInt)
  {
    throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  public void setSingleLine(@BoolRes int paramInt)
  {
    setSingleLine(getResources().getBoolean(paramInt));
  }
  
  public void setSingleSelection(@BoolRes int paramInt)
  {
    setSingleSelection(getResources().getBoolean(paramInt));
  }
  
  public void setSingleSelection(boolean paramBoolean)
  {
    if (c != paramBoolean)
    {
      c = paramBoolean;
      clearCheck();
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface OnCheckedChangeListener
  {
    public abstract void onCheckedChanged(ChipGroup paramChipGroup, @IdRes int paramInt);
  }
  
  private class a
    implements CompoundButton.OnCheckedChangeListener
  {
    private a() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (ChipGroup.a(ChipGroup.this)) {
        return;
      }
      int i = paramCompoundButton.getId();
      if (paramBoolean)
      {
        if ((ChipGroup.b(ChipGroup.this) != -1) && (ChipGroup.b(ChipGroup.this) != i) && (ChipGroup.c(ChipGroup.this))) {
          ChipGroup.a(ChipGroup.this, ChipGroup.b(ChipGroup.this), false);
        }
        ChipGroup.a(ChipGroup.this, i);
        return;
      }
      if (ChipGroup.b(ChipGroup.this) == i) {
        ChipGroup.a(ChipGroup.this, -1);
      }
    }
  }
  
  private class b
    implements ViewGroup.OnHierarchyChangeListener
  {
    private ViewGroup.OnHierarchyChangeListener b;
    
    private b() {}
    
    public void onChildViewAdded(View paramView1, View paramView2)
    {
      if ((paramView1 == ChipGroup.this) && ((paramView2 instanceof Chip)))
      {
        if (paramView2.getId() == -1)
        {
          int i;
          if (Build.VERSION.SDK_INT >= 17) {
            i = View.generateViewId();
          } else {
            i = paramView2.hashCode();
          }
          paramView2.setId(i);
        }
        ((Chip)paramView2).setOnCheckedChangeListenerInternal(ChipGroup.d(ChipGroup.this));
      }
      if (b != null) {
        b.onChildViewAdded(paramView1, paramView2);
      }
    }
    
    public void onChildViewRemoved(View paramView1, View paramView2)
    {
      if ((paramView1 == ChipGroup.this) && ((paramView2 instanceof Chip))) {
        ((Chip)paramView2).setOnCheckedChangeListenerInternal(null);
      }
      if (b != null) {
        b.onChildViewRemoved(paramView1, paramView2);
      }
    }
  }
}
