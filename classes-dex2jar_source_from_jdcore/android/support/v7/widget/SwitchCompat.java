package android.support.v7.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.text.AllCapsTransformationMethod;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.ActionMode.Callback;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import java.util.List;

public class SwitchCompat
  extends CompoundButton
{
  private static final int[] N = { 16842912 };
  private static final Property<SwitchCompat, Float> c = new Property(Float.class, "thumbPos")
  {
    public Float a(SwitchCompat paramAnonymousSwitchCompat)
    {
      return Float.valueOf(a);
    }
    
    public void a(SwitchCompat paramAnonymousSwitchCompat, Float paramAnonymousFloat)
    {
      paramAnonymousSwitchCompat.setThumbPosition(paramAnonymousFloat.floatValue());
    }
  };
  private int A;
  private int B;
  private int C;
  private int D;
  private int E;
  private int F;
  private int G;
  private final TextPaint H = new TextPaint(1);
  private ColorStateList I;
  private Layout J;
  private Layout K;
  private TransformationMethod L;
  private final Rect M = new Rect();
  float a;
  ObjectAnimator b;
  private Drawable d;
  private ColorStateList e = null;
  private PorterDuff.Mode f = null;
  private boolean g = false;
  private boolean h = false;
  private Drawable i;
  private ColorStateList j = null;
  private PorterDuff.Mode k = null;
  private boolean l = false;
  private boolean m = false;
  private int n;
  private int o;
  private int p;
  private boolean q;
  private CharSequence r;
  private CharSequence s;
  private boolean t;
  private int u;
  private int v;
  private float w;
  private float x;
  private VelocityTracker y = VelocityTracker.obtain();
  private int z;
  
  public SwitchCompat(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.switchStyle);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = getResources();
    H.density = getDisplayMetricsdensity;
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.SwitchCompat, paramInt, 0);
    d = paramAttributeSet.getDrawable(R.styleable.SwitchCompat_android_thumb);
    if (d != null) {
      d.setCallback(this);
    }
    i = paramAttributeSet.getDrawable(R.styleable.SwitchCompat_track);
    if (i != null) {
      i.setCallback(this);
    }
    r = paramAttributeSet.getText(R.styleable.SwitchCompat_android_textOn);
    s = paramAttributeSet.getText(R.styleable.SwitchCompat_android_textOff);
    t = paramAttributeSet.getBoolean(R.styleable.SwitchCompat_showText, true);
    n = paramAttributeSet.getDimensionPixelSize(R.styleable.SwitchCompat_thumbTextPadding, 0);
    o = paramAttributeSet.getDimensionPixelSize(R.styleable.SwitchCompat_switchMinWidth, 0);
    p = paramAttributeSet.getDimensionPixelSize(R.styleable.SwitchCompat_switchPadding, 0);
    q = paramAttributeSet.getBoolean(R.styleable.SwitchCompat_splitTrack, false);
    localObject = paramAttributeSet.getColorStateList(R.styleable.SwitchCompat_thumbTint);
    if (localObject != null)
    {
      e = ((ColorStateList)localObject);
      g = true;
    }
    localObject = DrawableUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.SwitchCompat_thumbTintMode, -1), null);
    if (f != localObject)
    {
      f = ((PorterDuff.Mode)localObject);
      h = true;
    }
    if ((g) || (h)) {
      b();
    }
    localObject = paramAttributeSet.getColorStateList(R.styleable.SwitchCompat_trackTint);
    if (localObject != null)
    {
      j = ((ColorStateList)localObject);
      l = true;
    }
    localObject = DrawableUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.SwitchCompat_trackTintMode, -1), null);
    if (k != localObject)
    {
      k = ((PorterDuff.Mode)localObject);
      m = true;
    }
    if ((l) || (m)) {
      a();
    }
    paramInt = paramAttributeSet.getResourceId(R.styleable.SwitchCompat_switchTextAppearance, 0);
    if (paramInt != 0) {
      setSwitchTextAppearance(paramContext, paramInt);
    }
    paramAttributeSet.recycle();
    paramContext = ViewConfiguration.get(paramContext);
    v = paramContext.getScaledTouchSlop();
    z = paramContext.getScaledMinimumFlingVelocity();
    refreshDrawableState();
    setChecked(isChecked());
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 < paramFloat2) {
      return paramFloat2;
    }
    paramFloat2 = paramFloat1;
    if (paramFloat1 > paramFloat3) {
      paramFloat2 = paramFloat3;
    }
    return paramFloat2;
  }
  
  private Layout a(CharSequence paramCharSequence)
  {
    CharSequence localCharSequence = paramCharSequence;
    if (L != null) {
      localCharSequence = L.getTransformation(paramCharSequence, this);
    }
    paramCharSequence = H;
    int i1;
    if (localCharSequence != null) {
      i1 = (int)Math.ceil(Layout.getDesiredWidth(localCharSequence, H));
    } else {
      i1 = 0;
    }
    return new StaticLayout(localCharSequence, paramCharSequence, i1, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
  }
  
  private void a()
  {
    if ((i != null) && ((l) || (m)))
    {
      i = i.mutate();
      if (l) {
        DrawableCompat.setTintList(i, j);
      }
      if (m) {
        DrawableCompat.setTintMode(i, k);
      }
      if (i.isStateful()) {
        i.setState(getDrawableState());
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Typeface localTypeface;
    switch (paramInt1)
    {
    default: 
      localTypeface = null;
      break;
    case 3: 
      localTypeface = Typeface.MONOSPACE;
      break;
    case 2: 
      localTypeface = Typeface.SERIF;
      break;
    case 1: 
      localTypeface = Typeface.SANS_SERIF;
    }
    setSwitchTypeface(localTypeface, paramInt2);
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    paramMotionEvent = MotionEvent.obtain(paramMotionEvent);
    paramMotionEvent.setAction(3);
    super.onTouchEvent(paramMotionEvent);
    paramMotionEvent.recycle();
  }
  
  private void a(boolean paramBoolean)
  {
    float f1;
    if (paramBoolean) {
      f1 = 1.0F;
    } else {
      f1 = 0.0F;
    }
    b = ObjectAnimator.ofFloat(this, c, new float[] { f1 });
    b.setDuration(250L);
    if (Build.VERSION.SDK_INT >= 18) {
      b.setAutoCancel(true);
    }
    b.start();
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    Drawable localDrawable = d;
    boolean bool2 = false;
    if (localDrawable == null) {
      return false;
    }
    int i3 = getThumbOffset();
    d.getPadding(M);
    int i1 = E;
    int i2 = v;
    i3 = D + i3 - v;
    int i4 = C;
    int i5 = M.left;
    int i6 = M.right;
    int i7 = v;
    int i8 = G;
    int i9 = v;
    boolean bool1 = bool2;
    if (paramFloat1 > i3)
    {
      bool1 = bool2;
      if (paramFloat1 < i4 + i3 + i5 + i6 + i7)
      {
        bool1 = bool2;
        if (paramFloat2 > i1 - i2)
        {
          bool1 = bool2;
          if (paramFloat2 < i8 + i9) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  private void b()
  {
    if ((d != null) && ((g) || (h)))
    {
      d = d.mutate();
      if (g) {
        DrawableCompat.setTintList(d, e);
      }
      if (h) {
        DrawableCompat.setTintMode(d, f);
      }
      if (d.isStateful()) {
        d.setState(getDrawableState());
      }
    }
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    u = 0;
    int i1 = paramMotionEvent.getAction();
    boolean bool1 = true;
    if ((i1 == 1) && (isEnabled())) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    boolean bool2 = isChecked();
    if (i1 != 0)
    {
      y.computeCurrentVelocity(1000);
      float f1 = y.getXVelocity();
      if (Math.abs(f1) > z)
      {
        if (ViewUtils.isLayoutRtl(this))
        {
          if (f1 < 0.0F) {}
        }
        else {
          while (f1 <= 0.0F)
          {
            bool1 = false;
            break;
          }
        }
      }
      else {
        bool1 = getTargetCheckedState();
      }
    }
    else
    {
      bool1 = bool2;
    }
    if (bool1 != bool2) {
      playSoundEffect(0);
    }
    setChecked(bool1);
    a(paramMotionEvent);
  }
  
  private void c()
  {
    if (b != null) {
      b.cancel();
    }
  }
  
  private boolean getTargetCheckedState()
  {
    return a > 0.5F;
  }
  
  private int getThumbOffset()
  {
    float f1;
    if (ViewUtils.isLayoutRtl(this)) {
      f1 = 1.0F - a;
    } else {
      f1 = a;
    }
    return (int)(f1 * getThumbScrollRange() + 0.5F);
  }
  
  private int getThumbScrollRange()
  {
    if (i != null)
    {
      Rect localRect2 = M;
      i.getPadding(localRect2);
      Rect localRect1;
      if (d != null) {
        localRect1 = DrawableUtils.getOpticalBounds(d);
      } else {
        localRect1 = DrawableUtils.INSETS_NONE;
      }
      return A - C - left - right - left - right;
    }
    return 0;
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = M;
    int i4 = D;
    int i7 = E;
    int i5 = F;
    int i8 = G;
    int i2 = getThumbOffset() + i4;
    Object localObject;
    if (d != null) {
      localObject = DrawableUtils.getOpticalBounds(d);
    } else {
      localObject = DrawableUtils.INSETS_NONE;
    }
    int i1 = i2;
    if (i != null)
    {
      i.getPadding(localRect);
      int i9 = i2 + left;
      if (localObject != null)
      {
        i1 = i4;
        if (left > left) {
          i1 = i4 + (left - left);
        }
        if (top > top) {
          i2 = top - top + i7;
        } else {
          i2 = i7;
        }
        i3 = i5;
        if (right > right) {
          i3 = i5 - (right - right);
        }
        i4 = i1;
        i5 = i3;
        i6 = i2;
        if (bottom > bottom)
        {
          i6 = i8 - (bottom - bottom);
          break label255;
        }
      }
      else
      {
        i6 = i7;
      }
      i1 = i8;
      i2 = i6;
      int i6 = i1;
      int i3 = i5;
      i1 = i4;
      label255:
      i.setBounds(i1, i2, i3, i6);
      i1 = i9;
    }
    if (d != null)
    {
      d.getPadding(localRect);
      i2 = i1 - left;
      i1 = i1 + C + right;
      d.setBounds(i2, i7, i1, i8);
      localObject = getBackground();
      if (localObject != null) {
        DrawableCompat.setHotspotBounds((Drawable)localObject, i2, i7, i1, i8);
      }
    }
    super.draw(paramCanvas);
  }
  
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      super.drawableHotspotChanged(paramFloat1, paramFloat2);
    }
    if (d != null) {
      DrawableCompat.setHotspot(d, paramFloat1, paramFloat2);
    }
    if (i != null) {
      DrawableCompat.setHotspot(i, paramFloat1, paramFloat2);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    Drawable localDrawable = d;
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = false | localDrawable.setState(arrayOfInt);
      }
    }
    localDrawable = i;
    bool2 = bool1;
    if (localDrawable != null)
    {
      bool2 = bool1;
      if (localDrawable.isStateful()) {
        bool2 = bool1 | localDrawable.setState(arrayOfInt);
      }
    }
    if (bool2) {
      invalidate();
    }
  }
  
  public int getCompoundPaddingLeft()
  {
    if (!ViewUtils.isLayoutRtl(this)) {
      return super.getCompoundPaddingLeft();
    }
    int i2 = super.getCompoundPaddingLeft() + A;
    int i1 = i2;
    if (!TextUtils.isEmpty(getText())) {
      i1 = i2 + p;
    }
    return i1;
  }
  
  public int getCompoundPaddingRight()
  {
    if (ViewUtils.isLayoutRtl(this)) {
      return super.getCompoundPaddingRight();
    }
    int i2 = super.getCompoundPaddingRight() + A;
    int i1 = i2;
    if (!TextUtils.isEmpty(getText())) {
      i1 = i2 + p;
    }
    return i1;
  }
  
  public boolean getShowText()
  {
    return t;
  }
  
  public boolean getSplitTrack()
  {
    return q;
  }
  
  public int getSwitchMinWidth()
  {
    return o;
  }
  
  public int getSwitchPadding()
  {
    return p;
  }
  
  public CharSequence getTextOff()
  {
    return s;
  }
  
  public CharSequence getTextOn()
  {
    return r;
  }
  
  public Drawable getThumbDrawable()
  {
    return d;
  }
  
  public int getThumbTextPadding()
  {
    return n;
  }
  
  @Nullable
  public ColorStateList getThumbTintList()
  {
    return e;
  }
  
  @Nullable
  public PorterDuff.Mode getThumbTintMode()
  {
    return f;
  }
  
  public Drawable getTrackDrawable()
  {
    return i;
  }
  
  @Nullable
  public ColorStateList getTrackTintList()
  {
    return j;
  }
  
  @Nullable
  public PorterDuff.Mode getTrackTintMode()
  {
    return k;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (d != null) {
      d.jumpToCurrentState();
    }
    if (i != null) {
      i.jumpToCurrentState();
    }
    if ((b != null) && (b.isStarted()))
    {
      b.end();
      b = null;
    }
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, N);
    }
    return arrayOfInt;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Object localObject1 = M;
    Object localObject3 = i;
    if (localObject3 != null) {
      ((Drawable)localObject3).getPadding((Rect)localObject1);
    } else {
      ((Rect)localObject1).setEmpty();
    }
    int i3 = E;
    int i4 = G;
    int i5 = top;
    int i6 = bottom;
    Object localObject2 = d;
    int i1;
    if (localObject3 != null) {
      if ((q) && (localObject2 != null))
      {
        Rect localRect = DrawableUtils.getOpticalBounds((Drawable)localObject2);
        ((Drawable)localObject2).copyBounds((Rect)localObject1);
        left += left;
        right -= right;
        i1 = paramCanvas.save();
        paramCanvas.clipRect((Rect)localObject1, Region.Op.DIFFERENCE);
        ((Drawable)localObject3).draw(paramCanvas);
        paramCanvas.restoreToCount(i1);
      }
      else
      {
        ((Drawable)localObject3).draw(paramCanvas);
      }
    }
    int i2 = paramCanvas.save();
    if (localObject2 != null) {
      ((Drawable)localObject2).draw(paramCanvas);
    }
    if (getTargetCheckedState()) {
      localObject1 = J;
    } else {
      localObject1 = K;
    }
    if (localObject1 != null)
    {
      localObject3 = getDrawableState();
      if (I != null) {
        H.setColor(I.getColorForState((int[])localObject3, 0));
      }
      H.drawableState = ((int[])localObject3);
      if (localObject2 != null)
      {
        localObject2 = ((Drawable)localObject2).getBounds();
        i1 = left + right;
      }
      else
      {
        i1 = getWidth();
      }
      i1 /= 2;
      int i7 = ((Layout)localObject1).getWidth() / 2;
      i3 = (i3 + i5 + (i4 - i6)) / 2;
      i4 = ((Layout)localObject1).getHeight() / 2;
      paramCanvas.translate(i1 - i7, i3 - i4);
      ((Layout)localObject1).draw(paramCanvas);
    }
    paramCanvas.restoreToCount(i2);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName("android.widget.Switch");
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName("android.widget.Switch");
    CharSequence localCharSequence1;
    if (isChecked()) {
      localCharSequence1 = r;
    } else {
      localCharSequence1 = s;
    }
    if (!TextUtils.isEmpty(localCharSequence1))
    {
      CharSequence localCharSequence2 = paramAccessibilityNodeInfo.getText();
      if (TextUtils.isEmpty(localCharSequence2))
      {
        paramAccessibilityNodeInfo.setText(localCharSequence1);
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localCharSequence2);
      localStringBuilder.append(' ');
      localStringBuilder.append(localCharSequence1);
      paramAccessibilityNodeInfo.setText(localStringBuilder);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Object localObject = d;
    paramInt2 = 0;
    if (localObject != null)
    {
      localObject = M;
      if (i != null) {
        i.getPadding((Rect)localObject);
      } else {
        ((Rect)localObject).setEmpty();
      }
      Rect localRect = DrawableUtils.getOpticalBounds(d);
      paramInt2 = Math.max(0, left - left);
      paramInt1 = Math.max(0, right - right);
    }
    else
    {
      paramInt1 = 0;
    }
    if (ViewUtils.isLayoutRtl(this))
    {
      paramInt3 = getPaddingLeft() + paramInt2;
      paramInt4 = A + paramInt3 - paramInt2 - paramInt1;
    }
    else
    {
      paramInt4 = getWidth() - getPaddingRight() - paramInt1;
      paramInt3 = paramInt4 - A + paramInt2 + paramInt1;
    }
    paramInt1 = getGravity() & 0x70;
    if (paramInt1 != 16)
    {
      if (paramInt1 != 80)
      {
        paramInt1 = getPaddingTop();
        paramInt2 = B + paramInt1;
      }
      else
      {
        paramInt2 = getHeight() - getPaddingBottom();
        paramInt1 = paramInt2 - B;
      }
    }
    else
    {
      paramInt1 = (getPaddingTop() + getHeight() - getPaddingBottom()) / 2 - B / 2;
      paramInt2 = B + paramInt1;
    }
    D = paramInt3;
    E = paramInt1;
    G = paramInt2;
    F = paramInt4;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    if (t)
    {
      if (J == null) {
        J = a(r);
      }
      if (K == null) {
        K = a(s);
      }
    }
    Rect localRect = M;
    Drawable localDrawable = d;
    int i4 = 0;
    int i2;
    if (localDrawable != null)
    {
      d.getPadding(localRect);
      i2 = d.getIntrinsicWidth() - left - right;
      i1 = d.getIntrinsicHeight();
    }
    else
    {
      i2 = 0;
      i1 = 0;
    }
    if (t) {
      i3 = Math.max(J.getWidth(), K.getWidth()) + n * 2;
    } else {
      i3 = 0;
    }
    C = Math.max(i3, i2);
    if (i != null)
    {
      i.getPadding(localRect);
      i2 = i.getIntrinsicHeight();
    }
    else
    {
      localRect.setEmpty();
      i2 = i4;
    }
    int i6 = left;
    int i5 = right;
    i4 = i5;
    int i3 = i6;
    if (d != null)
    {
      localRect = DrawableUtils.getOpticalBounds(d);
      i3 = Math.max(i6, left);
      i4 = Math.max(i5, right);
    }
    i3 = Math.max(o, C * 2 + i3 + i4);
    int i1 = Math.max(i2, i1);
    A = i3;
    B = i1;
    super.onMeasure(paramInt1, paramInt2);
    if (getMeasuredHeight() < i1) {
      setMeasuredDimension(getMeasuredWidthAndState(), i1);
    }
  }
  
  public void onPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramAccessibilityEvent);
    CharSequence localCharSequence;
    if (isChecked()) {
      localCharSequence = r;
    } else {
      localCharSequence = s;
    }
    if (localCharSequence != null) {
      paramAccessibilityEvent.getText().add(localCharSequence);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    y.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      break;
    case 2: 
      switch (u)
      {
      default: 
        break;
      case 2: 
        float f3 = paramMotionEvent.getX();
        int i1 = getThumbScrollRange();
        f1 = f3 - w;
        if (i1 != 0) {
          f1 /= i1;
        } else if (f1 > 0.0F) {
          f1 = 1.0F;
        } else {
          f1 = -1.0F;
        }
        f2 = f1;
        if (ViewUtils.isLayoutRtl(this)) {
          f2 = -f1;
        }
        f1 = a(a + f2, 0.0F, 1.0F);
        if (f1 != a)
        {
          w = f3;
          setThumbPosition(f1);
        }
        return true;
      case 1: 
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        if ((Math.abs(f1 - w) > v) || (Math.abs(f2 - x) > v))
        {
          u = 2;
          getParent().requestDisallowInterceptTouchEvent(true);
          w = f1;
          x = f2;
          return true;
        }
        break;
      }
      break;
    case 1: 
    case 3: 
      if (u == 2)
      {
        b(paramMotionEvent);
        super.onTouchEvent(paramMotionEvent);
        return true;
      }
      u = 0;
      y.clear();
      break;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      if ((isEnabled()) && (a(f1, f2)))
      {
        u = 1;
        w = f1;
        x = f2;
      }
      break;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    super.setChecked(paramBoolean);
    paramBoolean = isChecked();
    if ((getWindowToken() != null) && (ViewCompat.isLaidOut(this)))
    {
      a(paramBoolean);
      return;
    }
    c();
    float f1;
    if (paramBoolean) {
      f1 = 1.0F;
    } else {
      f1 = 0.0F;
    }
    setThumbPosition(f1);
  }
  
  public void setCustomSelectionActionModeCallback(ActionMode.Callback paramCallback)
  {
    super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, paramCallback));
  }
  
  public void setShowText(boolean paramBoolean)
  {
    if (t != paramBoolean)
    {
      t = paramBoolean;
      requestLayout();
    }
  }
  
  public void setSplitTrack(boolean paramBoolean)
  {
    q = paramBoolean;
    invalidate();
  }
  
  public void setSwitchMinWidth(int paramInt)
  {
    o = paramInt;
    requestLayout();
  }
  
  public void setSwitchPadding(int paramInt)
  {
    p = paramInt;
    requestLayout();
  }
  
  public void setSwitchTextAppearance(Context paramContext, int paramInt)
  {
    paramContext = TintTypedArray.obtainStyledAttributes(paramContext, paramInt, R.styleable.TextAppearance);
    ColorStateList localColorStateList = paramContext.getColorStateList(R.styleable.TextAppearance_android_textColor);
    if (localColorStateList != null) {
      I = localColorStateList;
    } else {
      I = getTextColors();
    }
    paramInt = paramContext.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
    if (paramInt != 0)
    {
      float f1 = paramInt;
      if (f1 != H.getTextSize())
      {
        H.setTextSize(f1);
        requestLayout();
      }
    }
    a(paramContext.getInt(R.styleable.TextAppearance_android_typeface, -1), paramContext.getInt(R.styleable.TextAppearance_android_textStyle, -1));
    if (paramContext.getBoolean(R.styleable.TextAppearance_textAllCaps, false)) {
      L = new AllCapsTransformationMethod(getContext());
    } else {
      L = null;
    }
    paramContext.recycle();
  }
  
  public void setSwitchTypeface(Typeface paramTypeface)
  {
    if (((H.getTypeface() != null) && (!H.getTypeface().equals(paramTypeface))) || ((H.getTypeface() == null) && (paramTypeface != null)))
    {
      H.setTypeface(paramTypeface);
      requestLayout();
      invalidate();
    }
  }
  
  public void setSwitchTypeface(Typeface paramTypeface, int paramInt)
  {
    float f1 = 0.0F;
    boolean bool = false;
    if (paramInt > 0)
    {
      if (paramTypeface == null) {
        paramTypeface = Typeface.defaultFromStyle(paramInt);
      } else {
        paramTypeface = Typeface.create(paramTypeface, paramInt);
      }
      setSwitchTypeface(paramTypeface);
      int i1;
      if (paramTypeface != null) {
        i1 = paramTypeface.getStyle();
      } else {
        i1 = 0;
      }
      paramInt = i1 & paramInt;
      paramTypeface = H;
      if ((paramInt & 0x1) != 0) {
        bool = true;
      }
      paramTypeface.setFakeBoldText(bool);
      paramTypeface = H;
      if ((paramInt & 0x2) != 0) {
        f1 = -0.25F;
      }
      paramTypeface.setTextSkewX(f1);
      return;
    }
    H.setFakeBoldText(false);
    H.setTextSkewX(0.0F);
    setSwitchTypeface(paramTypeface);
  }
  
  public void setTextOff(CharSequence paramCharSequence)
  {
    s = paramCharSequence;
    requestLayout();
  }
  
  public void setTextOn(CharSequence paramCharSequence)
  {
    r = paramCharSequence;
    requestLayout();
  }
  
  public void setThumbDrawable(Drawable paramDrawable)
  {
    if (d != null) {
      d.setCallback(null);
    }
    d = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    requestLayout();
  }
  
  void setThumbPosition(float paramFloat)
  {
    a = paramFloat;
    invalidate();
  }
  
  public void setThumbResource(int paramInt)
  {
    setThumbDrawable(AppCompatResources.getDrawable(getContext(), paramInt));
  }
  
  public void setThumbTextPadding(int paramInt)
  {
    n = paramInt;
    requestLayout();
  }
  
  public void setThumbTintList(@Nullable ColorStateList paramColorStateList)
  {
    e = paramColorStateList;
    g = true;
    b();
  }
  
  public void setThumbTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    f = paramMode;
    h = true;
    b();
  }
  
  public void setTrackDrawable(Drawable paramDrawable)
  {
    if (i != null) {
      i.setCallback(null);
    }
    i = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    requestLayout();
  }
  
  public void setTrackResource(int paramInt)
  {
    setTrackDrawable(AppCompatResources.getDrawable(getContext(), paramInt));
  }
  
  public void setTrackTintList(@Nullable ColorStateList paramColorStateList)
  {
    j = paramColorStateList;
    l = true;
    a();
  }
  
  public void setTrackTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    k = paramMode;
    m = true;
    a();
  }
  
  public void toggle()
  {
    setChecked(isChecked() ^ true);
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == d) || (paramDrawable == i);
  }
}
