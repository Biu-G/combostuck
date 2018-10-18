package android.support.design.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.AnimatorRes;
import android.support.annotation.BoolRes;
import android.support.annotation.CallSuper;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.design.R.attr;
import android.support.design.R.string;
import android.support.design.R.style;
import android.support.design.animation.MotionSpec;
import android.support.design.internal.ViewUtils;
import android.support.design.resources.TextAppearance;
import android.support.design.ripple.RippleUtils;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.support.v4.text.BidiFormatter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat;
import android.support.v4.widget.ExploreByTouchHelper;
import android.support.v7.widget.AppCompatCheckBox;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView.BufferType;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public class Chip
  extends AppCompatCheckBox
  implements ChipDrawable.Delegate
{
  private static final Rect a = new Rect();
  private static final int[] b = { 16842913 };
  @Nullable
  private ChipDrawable c;
  @Nullable
  private RippleDrawable d;
  @Nullable
  private View.OnClickListener e;
  @Nullable
  private CompoundButton.OnCheckedChangeListener f;
  private boolean g;
  private int h = Integer.MIN_VALUE;
  private boolean i;
  private boolean j;
  private boolean k;
  private final a l;
  private final Rect m = new Rect();
  private final RectF n = new RectF();
  private final ResourcesCompat.FontCallback o = new ResourcesCompat.FontCallback()
  {
    public void onFontRetrievalFailed(int paramAnonymousInt) {}
    
    public void onFontRetrieved(@NonNull Typeface paramAnonymousTypeface)
    {
      setText(getText());
      requestLayout();
      invalidate();
    }
  };
  
  public Chip(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Chip(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.chipStyle);
  }
  
  public Chip(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
    paramContext = ChipDrawable.createFromAttributes(paramContext, paramAttributeSet, paramInt, R.style.Widget_MaterialComponents_Chip_Action);
    setChipDrawable(paramContext);
    l = new a(this);
    ViewCompat.setAccessibilityDelegate(this, l);
    c();
    setChecked(g);
    paramContext.a(false);
    setText(paramContext.getText());
    setEllipsize(paramContext.getEllipsize());
    setIncludeFontPadding(false);
    if (getTextAppearance() != null) {
      a(getTextAppearance());
    }
    setSingleLine();
    setGravity(8388627);
    b();
  }
  
  private void a(@Nullable ChipDrawable paramChipDrawable)
  {
    if (paramChipDrawable != null) {
      paramChipDrawable.setDelegate(null);
    }
  }
  
  private void a(TextAppearance paramTextAppearance)
  {
    TextPaint localTextPaint = getPaint();
    drawableState = c.getState();
    paramTextAppearance.updateDrawState(getContext(), localTextPaint, o);
  }
  
  private void a(@Nullable AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return;
    }
    if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") == null)
    {
      if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") == null)
      {
        if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") == null)
        {
          if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") == null)
          {
            if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") == null)
            {
              if ((paramAttributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true)) && (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1) && (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1) && (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1))
              {
                if (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                  Log.w("Chip", "Chip text must be vertically center and start aligned");
                }
                return;
              }
              throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
          }
          throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
      }
      throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
    }
    throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
  }
  
  @SuppressLint({"PrivateApi"})
  private boolean a(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 10) {
      try
      {
        paramMotionEvent = ExploreByTouchHelper.class.getDeclaredField("k");
        paramMotionEvent.setAccessible(true);
        if (((Integer)paramMotionEvent.get(l)).intValue() != Integer.MIN_VALUE)
        {
          paramMotionEvent = ExploreByTouchHelper.class.getDeclaredMethod("c", new Class[] { Integer.TYPE });
          paramMotionEvent.setAccessible(true);
          paramMotionEvent.invoke(l, new Object[] { Integer.valueOf(Integer.MIN_VALUE) });
          return true;
        }
      }
      catch (NoSuchFieldException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
        return false;
      }
      catch (InvocationTargetException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
        return false;
      }
      catch (IllegalAccessException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
        return false;
      }
      catch (NoSuchMethodException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
      }
    }
    return false;
  }
  
  private boolean a(boolean paramBoolean)
  {
    d();
    if (paramBoolean)
    {
      if (h == -1)
      {
        setFocusedVirtualView(0);
        return true;
      }
    }
    else if (h == 0)
    {
      setFocusedVirtualView(-1);
      return true;
    }
    return false;
  }
  
  private void b()
  {
    if (!TextUtils.isEmpty(getText()))
    {
      if (c == null) {
        return;
      }
      float f2 = c.getChipStartPadding() + c.getChipEndPadding() + c.getTextStartPadding() + c.getTextEndPadding();
      float f1;
      if ((!c.isChipIconVisible()) || (c.getChipIcon() == null))
      {
        f1 = f2;
        if (c.getCheckedIcon() != null)
        {
          f1 = f2;
          if (c.isCheckedIconVisible())
          {
            f1 = f2;
            if (!isChecked()) {}
          }
        }
      }
      else
      {
        f1 = f2 + (c.getIconStartPadding() + c.getIconEndPadding() + c.getChipIconSize());
      }
      f2 = f1;
      if (c.isCloseIconVisible())
      {
        f2 = f1;
        if (c.getCloseIcon() != null) {
          f2 = f1 + (c.getCloseIconStartPadding() + c.getCloseIconEndPadding() + c.getCloseIconSize());
        }
      }
      if (ViewCompat.getPaddingEnd(this) != f2) {
        ViewCompat.setPaddingRelative(this, ViewCompat.getPaddingStart(this), getPaddingTop(), (int)f2, getPaddingBottom());
      }
      return;
    }
  }
  
  private void b(@NonNull ChipDrawable paramChipDrawable)
  {
    paramChipDrawable.setDelegate(this);
  }
  
  private float c(@NonNull ChipDrawable paramChipDrawable)
  {
    float f1 = getChipStartPadding() + paramChipDrawable.a() + getTextStartPadding();
    if (ViewCompat.getLayoutDirection(this) == 0) {
      return f1;
    }
    return -f1;
  }
  
  private void c()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      setOutlineProvider(new ViewOutlineProvider()
      {
        @TargetApi(21)
        public void getOutline(View paramAnonymousView, Outline paramAnonymousOutline)
        {
          if (Chip.a(Chip.this) != null)
          {
            Chip.a(Chip.this).getOutline(paramAnonymousOutline);
            return;
          }
          paramAnonymousOutline.setAlpha(0.0F);
        }
      });
    }
  }
  
  private void d()
  {
    if (h == Integer.MIN_VALUE) {
      setFocusedVirtualView(-1);
    }
  }
  
  private int[] e()
  {
    boolean bool = isEnabled();
    int i3 = 0;
    if (bool) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    int i1 = i2;
    if (k) {
      i1 = i2 + 1;
    }
    int i2 = i1;
    if (j) {
      i2 = i1 + 1;
    }
    i1 = i2;
    if (i) {
      i1 = i2 + 1;
    }
    i2 = i1;
    if (isChecked()) {
      i2 = i1 + 1;
    }
    int[] arrayOfInt = new int[i2];
    i2 = i3;
    if (isEnabled())
    {
      arrayOfInt[0] = 16842910;
      i2 = 1;
    }
    i1 = i2;
    if (k)
    {
      arrayOfInt[i2] = 16842908;
      i1 = i2 + 1;
    }
    i2 = i1;
    if (j)
    {
      arrayOfInt[i1] = 16843623;
      i2 = i1 + 1;
    }
    i1 = i2;
    if (i)
    {
      arrayOfInt[i2] = 16842919;
      i1 = i2 + 1;
    }
    if (isChecked()) {
      arrayOfInt[i1] = 16842913;
    }
    return arrayOfInt;
  }
  
  private boolean f()
  {
    return (c != null) && (c.getCloseIcon() != null);
  }
  
  private RectF getCloseIconTouchBounds()
  {
    n.setEmpty();
    if (f()) {
      c.getCloseIconTouchBounds(n);
    }
    return n;
  }
  
  private Rect getCloseIconTouchBoundsInt()
  {
    RectF localRectF = getCloseIconTouchBounds();
    m.set((int)left, (int)top, (int)right, (int)bottom);
    return m;
  }
  
  @Nullable
  private TextAppearance getTextAppearance()
  {
    if (c != null) {
      return c.getTextAppearance();
    }
    return null;
  }
  
  private void setCloseIconFocused(boolean paramBoolean)
  {
    if (k != paramBoolean)
    {
      k = paramBoolean;
      refreshDrawableState();
    }
  }
  
  private void setCloseIconHovered(boolean paramBoolean)
  {
    if (j != paramBoolean)
    {
      j = paramBoolean;
      refreshDrawableState();
    }
  }
  
  private void setCloseIconPressed(boolean paramBoolean)
  {
    if (i != paramBoolean)
    {
      i = paramBoolean;
      refreshDrawableState();
    }
  }
  
  private void setFocusedVirtualView(int paramInt)
  {
    if (h != paramInt)
    {
      if (h == 0) {
        setCloseIconFocused(false);
      }
      h = paramInt;
      if (paramInt == 0) {
        setCloseIconFocused(true);
      }
    }
  }
  
  protected boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    return (a(paramMotionEvent)) || (l.dispatchHoverEvent(paramMotionEvent)) || (super.dispatchHoverEvent(paramMotionEvent));
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (l.dispatchKeyEvent(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    boolean bool;
    if ((c != null) && (c.isCloseIconStateful())) {
      bool = c.setCloseIconState(e());
    } else {
      bool = false;
    }
    if (bool) {
      invalidate();
    }
  }
  
  @Nullable
  public Drawable getCheckedIcon()
  {
    if (c != null) {
      return c.getCheckedIcon();
    }
    return null;
  }
  
  @Nullable
  public ColorStateList getChipBackgroundColor()
  {
    if (c != null) {
      return c.getChipBackgroundColor();
    }
    return null;
  }
  
  public float getChipCornerRadius()
  {
    if (c != null) {
      return c.getChipCornerRadius();
    }
    return 0.0F;
  }
  
  public Drawable getChipDrawable()
  {
    return c;
  }
  
  public float getChipEndPadding()
  {
    if (c != null) {
      return c.getChipEndPadding();
    }
    return 0.0F;
  }
  
  @Nullable
  public Drawable getChipIcon()
  {
    if (c != null) {
      return c.getChipIcon();
    }
    return null;
  }
  
  public float getChipIconSize()
  {
    if (c != null) {
      return c.getChipIconSize();
    }
    return 0.0F;
  }
  
  @Nullable
  public ColorStateList getChipIconTint()
  {
    if (c != null) {
      return c.getChipIconTint();
    }
    return null;
  }
  
  public float getChipMinHeight()
  {
    if (c != null) {
      return c.getChipMinHeight();
    }
    return 0.0F;
  }
  
  public float getChipStartPadding()
  {
    if (c != null) {
      return c.getChipStartPadding();
    }
    return 0.0F;
  }
  
  @Nullable
  public ColorStateList getChipStrokeColor()
  {
    if (c != null) {
      return c.getChipStrokeColor();
    }
    return null;
  }
  
  public float getChipStrokeWidth()
  {
    if (c != null) {
      return c.getChipStrokeWidth();
    }
    return 0.0F;
  }
  
  @Deprecated
  public CharSequence getChipText()
  {
    return getText();
  }
  
  @Nullable
  public Drawable getCloseIcon()
  {
    if (c != null) {
      return c.getCloseIcon();
    }
    return null;
  }
  
  @Nullable
  public CharSequence getCloseIconContentDescription()
  {
    if (c != null) {
      return c.getCloseIconContentDescription();
    }
    return null;
  }
  
  public float getCloseIconEndPadding()
  {
    if (c != null) {
      return c.getCloseIconEndPadding();
    }
    return 0.0F;
  }
  
  public float getCloseIconSize()
  {
    if (c != null) {
      return c.getCloseIconSize();
    }
    return 0.0F;
  }
  
  public float getCloseIconStartPadding()
  {
    if (c != null) {
      return c.getCloseIconStartPadding();
    }
    return 0.0F;
  }
  
  @Nullable
  public ColorStateList getCloseIconTint()
  {
    if (c != null) {
      return c.getCloseIconTint();
    }
    return null;
  }
  
  public TextUtils.TruncateAt getEllipsize()
  {
    if (c != null) {
      return c.getEllipsize();
    }
    return null;
  }
  
  public void getFocusedRect(Rect paramRect)
  {
    if (h == 0)
    {
      paramRect.set(getCloseIconTouchBoundsInt());
      return;
    }
    super.getFocusedRect(paramRect);
  }
  
  @Nullable
  public MotionSpec getHideMotionSpec()
  {
    if (c != null) {
      return c.getHideMotionSpec();
    }
    return null;
  }
  
  public float getIconEndPadding()
  {
    if (c != null) {
      return c.getIconEndPadding();
    }
    return 0.0F;
  }
  
  public float getIconStartPadding()
  {
    if (c != null) {
      return c.getIconStartPadding();
    }
    return 0.0F;
  }
  
  @Nullable
  public ColorStateList getRippleColor()
  {
    if (c != null) {
      return c.getRippleColor();
    }
    return null;
  }
  
  @Nullable
  public MotionSpec getShowMotionSpec()
  {
    if (c != null) {
      return c.getShowMotionSpec();
    }
    return null;
  }
  
  public CharSequence getText()
  {
    if (c != null) {
      return c.getText();
    }
    return "";
  }
  
  public float getTextEndPadding()
  {
    if (c != null) {
      return c.getTextEndPadding();
    }
    return 0.0F;
  }
  
  public float getTextStartPadding()
  {
    if (c != null) {
      return c.getTextStartPadding();
    }
    return 0.0F;
  }
  
  public boolean isCheckable()
  {
    return (c != null) && (c.isCheckable());
  }
  
  @Deprecated
  public boolean isCheckedIconEnabled()
  {
    return isCheckedIconVisible();
  }
  
  public boolean isCheckedIconVisible()
  {
    return (c != null) && (c.isCheckedIconVisible());
  }
  
  @Deprecated
  public boolean isChipIconEnabled()
  {
    return isChipIconVisible();
  }
  
  public boolean isChipIconVisible()
  {
    return (c != null) && (c.isChipIconVisible());
  }
  
  @Deprecated
  public boolean isCloseIconEnabled()
  {
    return isCloseIconVisible();
  }
  
  public boolean isCloseIconVisible()
  {
    return (c != null) && (c.isCloseIconVisible());
  }
  
  public void onChipDrawableSizeChange()
  {
    b();
    requestLayout();
    if (Build.VERSION.SDK_INT >= 21) {
      invalidateOutline();
    }
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, b);
    }
    return arrayOfInt;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((!TextUtils.isEmpty(getText())) && (c != null) && (!c.b()))
    {
      int i1 = paramCanvas.save();
      paramCanvas.translate(c(c), 0.0F);
      super.onDraw(paramCanvas);
      paramCanvas.restoreToCount(i1);
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    if (paramBoolean) {
      setFocusedVirtualView(-1);
    } else {
      setFocusedVirtualView(Integer.MIN_VALUE);
    }
    invalidate();
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    l.onFocusChanged(paramBoolean, paramInt, paramRect);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    if (i1 != 7)
    {
      if (i1 == 10) {
        setCloseIconHovered(false);
      }
    }
    else {
      setCloseIconHovered(getCloseIconTouchBounds().contains(paramMotionEvent.getX(), paramMotionEvent.getY()));
    }
    return super.onHoverEvent(paramMotionEvent);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    int i1 = paramKeyEvent.getKeyCode();
    boolean bool2 = false;
    boolean bool1;
    if (i1 != 61)
    {
      if (i1 != 66) {
        switch (i1)
        {
        default: 
          bool1 = bool2;
          break;
        case 22: 
          bool1 = bool2;
          if (!paramKeyEvent.hasNoModifiers()) {
            break;
          }
          bool1 = a(ViewUtils.isLayoutRtl(this) ^ true);
          break;
        case 21: 
          bool1 = bool2;
          if (!paramKeyEvent.hasNoModifiers()) {
            break;
          }
          bool1 = a(ViewUtils.isLayoutRtl(this));
          break;
        }
      } else {
        switch (h)
        {
        default: 
          bool1 = bool2;
          break;
        case 0: 
          performCloseIconClick();
          return true;
        case -1: 
          performClick();
          return true;
        }
      }
    }
    else
    {
      if (paramKeyEvent.hasNoModifiers()) {
        i1 = 2;
      } else if (paramKeyEvent.hasModifiers(1)) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      bool1 = bool2;
      if (i1 != 0)
      {
        ViewParent localViewParent = getParent();
        Object localObject = this;
        View localView;
        do
        {
          localView = ((View)localObject).focusSearch(i1);
          if ((localView == null) || (localView == this)) {
            break;
          }
          localObject = localView;
        } while (localView.getParent() == localViewParent);
        bool1 = bool2;
        if (localView != null)
        {
          localView.requestFocus();
          return true;
        }
      }
    }
    if (bool1)
    {
      invalidate();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  @TargetApi(24)
  public PointerIcon onResolvePointerIcon(MotionEvent paramMotionEvent, int paramInt)
  {
    if ((getCloseIconTouchBounds().contains(paramMotionEvent.getX(), paramMotionEvent.getY())) && (isEnabled())) {
      return PointerIcon.getSystemIcon(getContext(), 1002);
    }
    return null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    boolean bool2 = getCloseIconTouchBounds().contains(paramMotionEvent.getX(), paramMotionEvent.getY());
    boolean bool1 = false;
    switch (i1)
    {
    default: 
      break;
    case 2: 
      if (!i) {
        break label121;
      }
      if (bool2) {
        break label116;
      }
      setCloseIconPressed(false);
      break;
    case 1: 
      if (i)
      {
        performCloseIconClick();
        i1 = 1;
      }
      break;
    case 3: 
      i1 = 0;
      setCloseIconPressed(false);
      break;
    }
    if (bool2)
    {
      setCloseIconPressed(true);
      label116:
      i1 = 1;
    }
    else
    {
      label121:
      i1 = 0;
    }
    if ((i1 != 0) || (super.onTouchEvent(paramMotionEvent))) {
      bool1 = true;
    }
    return bool1;
  }
  
  @CallSuper
  public boolean performCloseIconClick()
  {
    playSoundEffect(0);
    boolean bool;
    if (e != null)
    {
      e.onClick(this);
      bool = true;
    }
    else
    {
      bool = false;
    }
    l.sendEventForVirtualView(0, 1);
    return bool;
  }
  
  public void setBackground(Drawable paramDrawable)
  {
    if ((paramDrawable != c) && (paramDrawable != d)) {
      throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
    }
    super.setBackground(paramDrawable);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    if ((paramDrawable != c) && (paramDrawable != d)) {
      throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
    }
    super.setBackgroundDrawable(paramDrawable);
  }
  
  public void setBackgroundResource(int paramInt)
  {
    throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
  }
  
  public void setBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
  }
  
  public void setBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if (c != null) {
      c.setCheckable(paramBoolean);
    }
  }
  
  public void setCheckableResource(@BoolRes int paramInt)
  {
    if (c != null) {
      c.setCheckableResource(paramInt);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (c == null)
    {
      g = paramBoolean;
      return;
    }
    if (c.isCheckable())
    {
      boolean bool = isChecked();
      super.setChecked(paramBoolean);
      if ((bool != paramBoolean) && (f != null)) {
        f.onCheckedChanged(this, paramBoolean);
      }
    }
  }
  
  public void setCheckedIcon(@Nullable Drawable paramDrawable)
  {
    if (c != null) {
      c.setCheckedIcon(paramDrawable);
    }
  }
  
  @Deprecated
  public void setCheckedIconEnabled(boolean paramBoolean)
  {
    setCheckedIconVisible(paramBoolean);
  }
  
  @Deprecated
  public void setCheckedIconEnabledResource(@BoolRes int paramInt)
  {
    setCheckedIconVisible(paramInt);
  }
  
  public void setCheckedIconResource(@DrawableRes int paramInt)
  {
    if (c != null) {
      c.setCheckedIconResource(paramInt);
    }
  }
  
  public void setCheckedIconVisible(@BoolRes int paramInt)
  {
    if (c != null) {
      c.setCheckedIconVisible(paramInt);
    }
  }
  
  public void setCheckedIconVisible(boolean paramBoolean)
  {
    if (c != null) {
      c.setCheckedIconVisible(paramBoolean);
    }
  }
  
  public void setChipBackgroundColor(@Nullable ColorStateList paramColorStateList)
  {
    if (c != null) {
      c.setChipBackgroundColor(paramColorStateList);
    }
  }
  
  public void setChipBackgroundColorResource(@ColorRes int paramInt)
  {
    if (c != null) {
      c.setChipBackgroundColorResource(paramInt);
    }
  }
  
  public void setChipCornerRadius(float paramFloat)
  {
    if (c != null) {
      c.setChipCornerRadius(paramFloat);
    }
  }
  
  public void setChipCornerRadiusResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setChipCornerRadiusResource(paramInt);
    }
  }
  
  public void setChipDrawable(@NonNull ChipDrawable paramChipDrawable)
  {
    if (c != paramChipDrawable)
    {
      a(c);
      c = paramChipDrawable;
      b(c);
      if (RippleUtils.USE_FRAMEWORK_RIPPLE)
      {
        d = new RippleDrawable(RippleUtils.convertToRippleDrawableColor(c.getRippleColor()), c, null);
        c.setUseCompatRipple(false);
        ViewCompat.setBackground(this, d);
        return;
      }
      c.setUseCompatRipple(true);
      ViewCompat.setBackground(this, c);
    }
  }
  
  public void setChipEndPadding(float paramFloat)
  {
    if (c != null) {
      c.setChipEndPadding(paramFloat);
    }
  }
  
  public void setChipEndPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setChipEndPaddingResource(paramInt);
    }
  }
  
  public void setChipIcon(@Nullable Drawable paramDrawable)
  {
    if (c != null) {
      c.setChipIcon(paramDrawable);
    }
  }
  
  @Deprecated
  public void setChipIconEnabled(boolean paramBoolean)
  {
    setChipIconVisible(paramBoolean);
  }
  
  @Deprecated
  public void setChipIconEnabledResource(@BoolRes int paramInt)
  {
    setChipIconVisible(paramInt);
  }
  
  public void setChipIconResource(@DrawableRes int paramInt)
  {
    if (c != null) {
      c.setChipIconResource(paramInt);
    }
  }
  
  public void setChipIconSize(float paramFloat)
  {
    if (c != null) {
      c.setChipIconSize(paramFloat);
    }
  }
  
  public void setChipIconSizeResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setChipIconSizeResource(paramInt);
    }
  }
  
  public void setChipIconTint(@Nullable ColorStateList paramColorStateList)
  {
    if (c != null) {
      c.setChipIconTint(paramColorStateList);
    }
  }
  
  public void setChipIconTintResource(@ColorRes int paramInt)
  {
    if (c != null) {
      c.setChipIconTintResource(paramInt);
    }
  }
  
  public void setChipIconVisible(@BoolRes int paramInt)
  {
    if (c != null) {
      c.setChipIconVisible(paramInt);
    }
  }
  
  public void setChipIconVisible(boolean paramBoolean)
  {
    if (c != null) {
      c.setChipIconVisible(paramBoolean);
    }
  }
  
  public void setChipMinHeight(float paramFloat)
  {
    if (c != null) {
      c.setChipMinHeight(paramFloat);
    }
  }
  
  public void setChipMinHeightResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setChipMinHeightResource(paramInt);
    }
  }
  
  public void setChipStartPadding(float paramFloat)
  {
    if (c != null) {
      c.setChipStartPadding(paramFloat);
    }
  }
  
  public void setChipStartPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setChipStartPaddingResource(paramInt);
    }
  }
  
  public void setChipStrokeColor(@Nullable ColorStateList paramColorStateList)
  {
    if (c != null) {
      c.setChipStrokeColor(paramColorStateList);
    }
  }
  
  public void setChipStrokeColorResource(@ColorRes int paramInt)
  {
    if (c != null) {
      c.setChipStrokeColorResource(paramInt);
    }
  }
  
  public void setChipStrokeWidth(float paramFloat)
  {
    if (c != null) {
      c.setChipStrokeWidth(paramFloat);
    }
  }
  
  public void setChipStrokeWidthResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setChipStrokeWidthResource(paramInt);
    }
  }
  
  @Deprecated
  public void setChipText(@Nullable CharSequence paramCharSequence)
  {
    setText(paramCharSequence);
  }
  
  @Deprecated
  public void setChipTextResource(@StringRes int paramInt)
  {
    setText(getResources().getString(paramInt));
  }
  
  public void setCloseIcon(@Nullable Drawable paramDrawable)
  {
    if (c != null) {
      c.setCloseIcon(paramDrawable);
    }
  }
  
  public void setCloseIconContentDescription(@Nullable CharSequence paramCharSequence)
  {
    if (c != null) {
      c.setCloseIconContentDescription(paramCharSequence);
    }
  }
  
  @Deprecated
  public void setCloseIconEnabled(boolean paramBoolean)
  {
    setCloseIconVisible(paramBoolean);
  }
  
  @Deprecated
  public void setCloseIconEnabledResource(@BoolRes int paramInt)
  {
    setCloseIconVisible(paramInt);
  }
  
  public void setCloseIconEndPadding(float paramFloat)
  {
    if (c != null) {
      c.setCloseIconEndPadding(paramFloat);
    }
  }
  
  public void setCloseIconEndPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setCloseIconEndPaddingResource(paramInt);
    }
  }
  
  public void setCloseIconResource(@DrawableRes int paramInt)
  {
    if (c != null) {
      c.setCloseIconResource(paramInt);
    }
  }
  
  public void setCloseIconSize(float paramFloat)
  {
    if (c != null) {
      c.setCloseIconSize(paramFloat);
    }
  }
  
  public void setCloseIconSizeResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setCloseIconSizeResource(paramInt);
    }
  }
  
  public void setCloseIconStartPadding(float paramFloat)
  {
    if (c != null) {
      c.setCloseIconStartPadding(paramFloat);
    }
  }
  
  public void setCloseIconStartPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setCloseIconStartPaddingResource(paramInt);
    }
  }
  
  public void setCloseIconTint(@Nullable ColorStateList paramColorStateList)
  {
    if (c != null) {
      c.setCloseIconTint(paramColorStateList);
    }
  }
  
  public void setCloseIconTintResource(@ColorRes int paramInt)
  {
    if (c != null) {
      c.setCloseIconTintResource(paramInt);
    }
  }
  
  public void setCloseIconVisible(@BoolRes int paramInt)
  {
    if (c != null) {
      c.setCloseIconVisible(paramInt);
    }
  }
  
  public void setCloseIconVisible(boolean paramBoolean)
  {
    if (c != null) {
      c.setCloseIconVisible(paramBoolean);
    }
  }
  
  public void setCompoundDrawables(@Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawables(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesRelative(@Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawablesRelative(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 == 0)
    {
      if (paramInt3 == 0)
      {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 == 0)
    {
      if (paramInt3 == 0)
      {
        super.setCompoundDrawablesWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawablesWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
  }
  
  public void setEllipsize(TextUtils.TruncateAt paramTruncateAt)
  {
    if (c == null) {
      return;
    }
    if (paramTruncateAt != TextUtils.TruncateAt.MARQUEE)
    {
      super.setEllipsize(paramTruncateAt);
      if (c != null) {
        c.setEllipsize(paramTruncateAt);
      }
      return;
    }
    throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
  }
  
  public void setGravity(int paramInt)
  {
    if (paramInt != 8388627)
    {
      Log.w("Chip", "Chip text must be vertically center and start aligned");
      return;
    }
    super.setGravity(paramInt);
  }
  
  public void setHideMotionSpec(@Nullable MotionSpec paramMotionSpec)
  {
    if (c != null) {
      c.setHideMotionSpec(paramMotionSpec);
    }
  }
  
  public void setHideMotionSpecResource(@AnimatorRes int paramInt)
  {
    if (c != null) {
      c.setHideMotionSpecResource(paramInt);
    }
  }
  
  public void setIconEndPadding(float paramFloat)
  {
    if (c != null) {
      c.setIconEndPadding(paramFloat);
    }
  }
  
  public void setIconEndPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setIconEndPaddingResource(paramInt);
    }
  }
  
  public void setIconStartPadding(float paramFloat)
  {
    if (c != null) {
      c.setIconStartPadding(paramFloat);
    }
  }
  
  public void setIconStartPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setIconStartPaddingResource(paramInt);
    }
  }
  
  public void setLines(int paramInt)
  {
    if (paramInt <= 1)
    {
      super.setLines(paramInt);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  public void setMaxLines(int paramInt)
  {
    if (paramInt <= 1)
    {
      super.setMaxLines(paramInt);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  public void setMaxWidth(@Px int paramInt)
  {
    super.setMaxWidth(paramInt);
    if (c != null) {
      c.setMaxWidth(paramInt);
    }
  }
  
  public void setMinLines(int paramInt)
  {
    if (paramInt <= 1)
    {
      super.setMinLines(paramInt);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    f = paramOnCheckedChangeListener;
  }
  
  public void setOnCloseIconClickListener(View.OnClickListener paramOnClickListener)
  {
    e = paramOnClickListener;
  }
  
  public void setRippleColor(@Nullable ColorStateList paramColorStateList)
  {
    if (c != null) {
      c.setRippleColor(paramColorStateList);
    }
  }
  
  public void setRippleColorResource(@ColorRes int paramInt)
  {
    if (c != null) {
      c.setRippleColorResource(paramInt);
    }
  }
  
  public void setShowMotionSpec(@Nullable MotionSpec paramMotionSpec)
  {
    if (c != null) {
      c.setShowMotionSpec(paramMotionSpec);
    }
  }
  
  public void setShowMotionSpecResource(@AnimatorRes int paramInt)
  {
    if (c != null) {
      c.setShowMotionSpecResource(paramInt);
    }
  }
  
  public void setSingleLine(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.setSingleLine(paramBoolean);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    if (c == null) {
      return;
    }
    Object localObject = paramCharSequence;
    if (paramCharSequence == null) {
      localObject = "";
    }
    paramCharSequence = BidiFormatter.getInstance().unicodeWrap((CharSequence)localObject);
    if (c.b()) {
      paramCharSequence = null;
    }
    super.setText(paramCharSequence, paramBufferType);
    if (c != null) {
      c.setText((CharSequence)localObject);
    }
  }
  
  public void setTextAppearance(int paramInt)
  {
    super.setTextAppearance(paramInt);
    if (c != null) {
      c.setTextAppearanceResource(paramInt);
    }
    if (getTextAppearance() != null)
    {
      getTextAppearance().updateMeasureState(getContext(), getPaint(), o);
      a(getTextAppearance());
    }
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    if (c != null) {
      c.setTextAppearanceResource(paramInt);
    }
    if (getTextAppearance() != null)
    {
      getTextAppearance().updateMeasureState(paramContext, getPaint(), o);
      a(getTextAppearance());
    }
  }
  
  public void setTextAppearance(@Nullable TextAppearance paramTextAppearance)
  {
    if (c != null) {
      c.setTextAppearance(paramTextAppearance);
    }
    if (getTextAppearance() != null)
    {
      getTextAppearance().updateMeasureState(getContext(), getPaint(), o);
      a(paramTextAppearance);
    }
  }
  
  public void setTextAppearanceResource(@StyleRes int paramInt)
  {
    if (c != null) {
      c.setTextAppearanceResource(paramInt);
    }
    setTextAppearance(getContext(), paramInt);
  }
  
  public void setTextEndPadding(float paramFloat)
  {
    if (c != null) {
      c.setTextEndPadding(paramFloat);
    }
  }
  
  public void setTextEndPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setTextEndPaddingResource(paramInt);
    }
  }
  
  public void setTextStartPadding(float paramFloat)
  {
    if (c != null) {
      c.setTextStartPadding(paramFloat);
    }
  }
  
  public void setTextStartPaddingResource(@DimenRes int paramInt)
  {
    if (c != null) {
      c.setTextStartPaddingResource(paramInt);
    }
  }
  
  private class a
    extends ExploreByTouchHelper
  {
    a(Chip paramChip)
    {
      super();
    }
    
    protected int getVirtualViewAt(float paramFloat1, float paramFloat2)
    {
      if ((Chip.b(Chip.this)) && (Chip.c(Chip.this).contains(paramFloat1, paramFloat2))) {
        return 0;
      }
      return -1;
    }
    
    protected void getVisibleVirtualViews(List<Integer> paramList)
    {
      if (Chip.b(Chip.this)) {
        paramList.add(Integer.valueOf(0));
      }
    }
    
    protected boolean onPerformActionForVirtualView(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      if ((paramInt2 == 16) && (paramInt1 == 0)) {
        return performCloseIconClick();
      }
      return false;
    }
    
    protected void onPopulateNodeForHost(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      boolean bool;
      if ((Chip.a(Chip.this) != null) && (Chip.a(Chip.this).isCheckable())) {
        bool = true;
      } else {
        bool = false;
      }
      paramAccessibilityNodeInfoCompat.setCheckable(bool);
      paramAccessibilityNodeInfoCompat.setClassName(Chip.class.getName());
      CharSequence localCharSequence = getText();
      if (Build.VERSION.SDK_INT >= 23)
      {
        paramAccessibilityNodeInfoCompat.setText(localCharSequence);
        return;
      }
      paramAccessibilityNodeInfoCompat.setContentDescription(localCharSequence);
    }
    
    protected void onPopulateNodeForVirtualView(int paramInt, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      if (Chip.b(Chip.this))
      {
        Object localObject = getCloseIconContentDescription();
        if (localObject != null)
        {
          paramAccessibilityNodeInfoCompat.setContentDescription((CharSequence)localObject);
        }
        else
        {
          localObject = getText();
          Context localContext = getContext();
          paramInt = R.string.mtrl_chip_close_icon_content_description;
          if (TextUtils.isEmpty((CharSequence)localObject)) {
            localObject = "";
          }
          paramAccessibilityNodeInfoCompat.setContentDescription(localContext.getString(paramInt, new Object[] { localObject }).trim());
        }
        paramAccessibilityNodeInfoCompat.setBoundsInParent(Chip.d(Chip.this));
        paramAccessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        paramAccessibilityNodeInfoCompat.setEnabled(isEnabled());
        return;
      }
      paramAccessibilityNodeInfoCompat.setContentDescription("");
      paramAccessibilityNodeInfoCompat.setBoundsInParent(Chip.a());
    }
  }
}
