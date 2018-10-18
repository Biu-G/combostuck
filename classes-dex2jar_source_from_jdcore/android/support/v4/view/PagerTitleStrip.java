package android.support.v4.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.widget.TextViewCompat;
import android.text.TextUtils.TruncateAt;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Locale;

@ViewPager.DecorView
public class PagerTitleStrip
  extends ViewGroup
{
  private static final int[] n = { 16842804, 16842901, 16842904, 16842927 };
  private static final int[] o = { 16843660 };
  ViewPager a;
  TextView b;
  TextView c;
  TextView d;
  float e = -1.0F;
  int f;
  private int g = -1;
  private int h;
  private int i;
  private boolean j;
  private boolean k;
  private final a l = new a();
  private WeakReference<PagerAdapter> m;
  private int p;
  
  public PagerTitleStrip(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PagerTitleStrip(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TextView localTextView = new TextView(paramContext);
    b = localTextView;
    addView(localTextView);
    localTextView = new TextView(paramContext);
    c = localTextView;
    addView(localTextView);
    localTextView = new TextView(paramContext);
    d = localTextView;
    addView(localTextView);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, n);
    boolean bool = false;
    int i1 = paramAttributeSet.getResourceId(0, 0);
    if (i1 != 0)
    {
      TextViewCompat.setTextAppearance(b, i1);
      TextViewCompat.setTextAppearance(c, i1);
      TextViewCompat.setTextAppearance(d, i1);
    }
    int i2 = paramAttributeSet.getDimensionPixelSize(1, 0);
    if (i2 != 0) {
      setTextSize(0, i2);
    }
    if (paramAttributeSet.hasValue(2))
    {
      i2 = paramAttributeSet.getColor(2, 0);
      b.setTextColor(i2);
      c.setTextColor(i2);
      d.setTextColor(i2);
    }
    i = paramAttributeSet.getInteger(3, 80);
    paramAttributeSet.recycle();
    f = c.getTextColors().getDefaultColor();
    setNonPrimaryAlpha(0.6F);
    b.setEllipsize(TextUtils.TruncateAt.END);
    c.setEllipsize(TextUtils.TruncateAt.END);
    d.setEllipsize(TextUtils.TruncateAt.END);
    if (i1 != 0)
    {
      paramAttributeSet = paramContext.obtainStyledAttributes(i1, o);
      bool = paramAttributeSet.getBoolean(0, false);
      paramAttributeSet.recycle();
    }
    if (bool)
    {
      setSingleLineAllCaps(b);
      setSingleLineAllCaps(c);
      setSingleLineAllCaps(d);
    }
    else
    {
      b.setSingleLine();
      c.setSingleLine();
      d.setSingleLine();
    }
    h = ((int)(getResourcesgetDisplayMetricsdensity * 16.0F));
  }
  
  private static void setSingleLineAllCaps(TextView paramTextView)
  {
    paramTextView.setTransformationMethod(new b(paramTextView.getContext()));
  }
  
  void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    if (paramInt != g) {
      a(paramInt, a.getAdapter());
    } else if ((!paramBoolean) && (paramFloat == e)) {
      return;
    }
    k = true;
    int i4 = b.getMeasuredWidth();
    int i9 = c.getMeasuredWidth();
    int i3 = d.getMeasuredWidth();
    int i8 = i9 / 2;
    int i5 = getWidth();
    paramInt = getHeight();
    int i7 = getPaddingLeft();
    int i6 = getPaddingRight();
    int i1 = getPaddingTop();
    int i2 = getPaddingBottom();
    int i10 = i6 + i8;
    float f2 = 0.5F + paramFloat;
    float f1 = f2;
    if (f2 > 1.0F) {
      f1 = f2 - 1.0F;
    }
    i8 = i5 - i10 - (int)((i5 - (i7 + i8) - i10) * f1) - i8;
    i9 += i8;
    int i12 = b.getBaseline();
    int i11 = c.getBaseline();
    i10 = d.getBaseline();
    int i13 = Math.max(Math.max(i12, i11), i10);
    i12 = i13 - i12;
    i11 = i13 - i11;
    i10 = i13 - i10;
    i13 = b.getMeasuredHeight();
    int i14 = c.getMeasuredHeight();
    int i15 = d.getMeasuredHeight();
    i13 = Math.max(Math.max(i13 + i12, i14 + i11), i15 + i10);
    i14 = i & 0x70;
    if (i14 != 16)
    {
      if (i14 != 80)
      {
        paramInt = i12 + i1;
        i2 = i11 + i1;
        i1 += i10;
      }
      else
      {
        i1 = paramInt - i2 - i13;
        paramInt = i12 + i1;
        i2 = i11 + i1;
        i1 += i10;
      }
    }
    else
    {
      i1 = (paramInt - i1 - i2 - i13) / 2;
      paramInt = i12 + i1;
      i2 = i11 + i1;
      i1 += i10;
    }
    c.layout(i8, i2, i9, c.getMeasuredHeight() + i2);
    i2 = Math.min(i7, i8 - h - i4);
    b.layout(i2, paramInt, i4 + i2, b.getMeasuredHeight() + paramInt);
    paramInt = Math.max(i5 - i6 - i3, i9 + h);
    d.layout(paramInt, i1, paramInt + i3, d.getMeasuredHeight() + i1);
    e = paramFloat;
    k = false;
  }
  
  void a(int paramInt, PagerAdapter paramPagerAdapter)
  {
    if (paramPagerAdapter != null) {
      i1 = paramPagerAdapter.getCount();
    } else {
      i1 = 0;
    }
    j = true;
    Object localObject2 = null;
    if ((paramInt >= 1) && (paramPagerAdapter != null)) {
      localObject1 = paramPagerAdapter.getPageTitle(paramInt - 1);
    } else {
      localObject1 = null;
    }
    b.setText((CharSequence)localObject1);
    TextView localTextView = c;
    if ((paramPagerAdapter != null) && (paramInt < i1)) {
      localObject1 = paramPagerAdapter.getPageTitle(paramInt);
    } else {
      localObject1 = null;
    }
    localTextView.setText((CharSequence)localObject1);
    int i2 = paramInt + 1;
    Object localObject1 = localObject2;
    if (i2 < i1)
    {
      localObject1 = localObject2;
      if (paramPagerAdapter != null) {
        localObject1 = paramPagerAdapter.getPageTitle(i2);
      }
    }
    d.setText((CharSequence)localObject1);
    int i1 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int)((getWidth() - getPaddingLeft() - getPaddingRight()) * 0.8F)), Integer.MIN_VALUE);
    i2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, getHeight() - getPaddingTop() - getPaddingBottom()), Integer.MIN_VALUE);
    b.measure(i1, i2);
    c.measure(i1, i2);
    d.measure(i1, i2);
    g = paramInt;
    if (!k) {
      a(paramInt, e, false);
    }
    j = false;
  }
  
  void a(PagerAdapter paramPagerAdapter1, PagerAdapter paramPagerAdapter2)
  {
    if (paramPagerAdapter1 != null)
    {
      paramPagerAdapter1.unregisterDataSetObserver(l);
      m = null;
    }
    if (paramPagerAdapter2 != null)
    {
      paramPagerAdapter2.registerDataSetObserver(l);
      m = new WeakReference(paramPagerAdapter2);
    }
    if (a != null)
    {
      g = -1;
      e = -1.0F;
      a(a.getCurrentItem(), paramPagerAdapter2);
      requestLayout();
    }
  }
  
  int getMinHeight()
  {
    Drawable localDrawable = getBackground();
    if (localDrawable != null) {
      return localDrawable.getIntrinsicHeight();
    }
    return 0;
  }
  
  public int getTextSpacing()
  {
    return h;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Object localObject = getParent();
    if ((localObject instanceof ViewPager))
    {
      localObject = (ViewPager)localObject;
      PagerAdapter localPagerAdapter = ((ViewPager)localObject).getAdapter();
      ((ViewPager)localObject).setInternalPageChangeListener(l);
      ((ViewPager)localObject).addOnAdapterChangeListener(l);
      a = ((ViewPager)localObject);
      if (m != null) {
        localObject = (PagerAdapter)m.get();
      } else {
        localObject = null;
      }
      a((PagerAdapter)localObject, localPagerAdapter);
      return;
    }
    throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null)
    {
      a(a.getAdapter(), null);
      a.setInternalPageChangeListener(null);
      a.removeOnAdapterChangeListener(l);
      a = null;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a != null)
    {
      float f2 = e;
      float f1 = 0.0F;
      if (f2 >= 0.0F) {
        f1 = e;
      }
      a(g, f1, true);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824)
    {
      int i2 = getPaddingTop() + getPaddingBottom();
      int i3 = getChildMeasureSpec(paramInt2, i2, -2);
      int i1 = View.MeasureSpec.getSize(paramInt1);
      paramInt1 = getChildMeasureSpec(paramInt1, (int)(i1 * 0.2F), -2);
      b.measure(paramInt1, i3);
      c.measure(paramInt1, i3);
      d.measure(paramInt1, i3);
      if (View.MeasureSpec.getMode(paramInt2) == 1073741824)
      {
        paramInt1 = View.MeasureSpec.getSize(paramInt2);
      }
      else
      {
        paramInt1 = c.getMeasuredHeight();
        paramInt1 = Math.max(getMinHeight(), paramInt1 + i2);
      }
      setMeasuredDimension(i1, View.resolveSizeAndState(paramInt1, paramInt2, c.getMeasuredState() << 16));
      return;
    }
    throw new IllegalStateException("Must measure with an exact width");
  }
  
  public void requestLayout()
  {
    if (!j) {
      super.requestLayout();
    }
  }
  
  public void setGravity(int paramInt)
  {
    i = paramInt;
    requestLayout();
  }
  
  public void setNonPrimaryAlpha(@FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    p = ((int)(paramFloat * 255.0F) & 0xFF);
    int i1 = p << 24 | f & 0xFFFFFF;
    b.setTextColor(i1);
    d.setTextColor(i1);
  }
  
  public void setTextColor(@ColorInt int paramInt)
  {
    f = paramInt;
    c.setTextColor(paramInt);
    paramInt = p << 24 | f & 0xFFFFFF;
    b.setTextColor(paramInt);
    d.setTextColor(paramInt);
  }
  
  public void setTextSize(int paramInt, float paramFloat)
  {
    b.setTextSize(paramInt, paramFloat);
    c.setTextSize(paramInt, paramFloat);
    d.setTextSize(paramInt, paramFloat);
  }
  
  public void setTextSpacing(int paramInt)
  {
    h = paramInt;
    requestLayout();
  }
  
  private class a
    extends DataSetObserver
    implements ViewPager.OnAdapterChangeListener, ViewPager.OnPageChangeListener
  {
    private int b;
    
    a() {}
    
    public void onAdapterChanged(ViewPager paramViewPager, PagerAdapter paramPagerAdapter1, PagerAdapter paramPagerAdapter2)
    {
      a(paramPagerAdapter1, paramPagerAdapter2);
    }
    
    public void onChanged()
    {
      a(a.getCurrentItem(), a.getAdapter());
      float f2 = e;
      float f1 = 0.0F;
      if (f2 >= 0.0F) {
        f1 = e;
      }
      a(a.getCurrentItem(), f1, true);
    }
    
    public void onPageScrollStateChanged(int paramInt)
    {
      b = paramInt;
    }
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
      paramInt2 = paramInt1;
      if (paramFloat > 0.5F) {
        paramInt2 = paramInt1 + 1;
      }
      a(paramInt2, paramFloat, false);
    }
    
    public void onPageSelected(int paramInt)
    {
      if (b == 0)
      {
        a(a.getCurrentItem(), a.getAdapter());
        float f2 = e;
        float f1 = 0.0F;
        if (f2 >= 0.0F) {
          f1 = e;
        }
        a(a.getCurrentItem(), f1, true);
      }
    }
  }
  
  private static class b
    extends SingleLineTransformationMethod
  {
    private Locale a;
    
    b(Context paramContext)
    {
      a = getResourcesgetConfigurationlocale;
    }
    
    public CharSequence getTransformation(CharSequence paramCharSequence, View paramView)
    {
      paramCharSequence = super.getTransformation(paramCharSequence, paramView);
      if (paramCharSequence != null) {
        return paramCharSequence.toString().toUpperCase(a);
      }
      return null;
    }
  }
}
