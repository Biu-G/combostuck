package android.support.design.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.annotation.AnimatorRes;
import android.support.annotation.AttrRes;
import android.support.annotation.BoolRes;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.annotation.XmlRes;
import android.support.design.R.attr;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.animation.MotionSpec;
import android.support.design.canvas.CanvasCompat;
import android.support.design.drawable.DrawableUtils;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.resources.MaterialResources;
import android.support.design.resources.TextAppearance;
import android.support.design.ripple.RippleUtils;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.TintAwareDrawable;
import android.support.v4.text.BidiFormatter;
import android.support.v7.content.res.AppCompatResources;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Xml;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class ChipDrawable
  extends Drawable
  implements Drawable.Callback, TintAwareDrawable
{
  private static final int[] a = { 16842910 };
  private float A;
  private float B;
  private float C;
  private float D;
  private float E;
  private float F;
  private float G;
  private final Context H;
  private final TextPaint I = new TextPaint(1);
  private final Paint J = new Paint(1);
  @Nullable
  private final Paint K;
  private final Paint.FontMetrics L = new Paint.FontMetrics();
  private final RectF M = new RectF();
  private final PointF N = new PointF();
  @ColorInt
  private int O;
  @ColorInt
  private int P;
  @ColorInt
  private int Q;
  @ColorInt
  private int R;
  private boolean S;
  @ColorInt
  private int T;
  private int U = 255;
  @Nullable
  private ColorFilter V;
  @Nullable
  private PorterDuffColorFilter W;
  @Nullable
  private ColorStateList X;
  @Nullable
  private PorterDuff.Mode Y = PorterDuff.Mode.SRC_IN;
  private int[] Z;
  private boolean aa;
  @Nullable
  private ColorStateList ab;
  private WeakReference<Delegate> ac = new WeakReference(null);
  private boolean ad = true;
  private float ae;
  private TextUtils.TruncateAt af;
  private boolean ag;
  private int ah;
  @Nullable
  private ColorStateList b;
  private float c;
  private float d;
  @Nullable
  private ColorStateList e;
  private float f;
  @Nullable
  private ColorStateList g;
  @Nullable
  private CharSequence h;
  @Nullable
  private CharSequence i;
  @Nullable
  private TextAppearance j;
  private final ResourcesCompat.FontCallback k = new ResourcesCompat.FontCallback()
  {
    public void onFontRetrievalFailed(int paramAnonymousInt) {}
    
    public void onFontRetrieved(@NonNull Typeface paramAnonymousTypeface)
    {
      ChipDrawable.a(ChipDrawable.this, true);
      onSizeChange();
      invalidateSelf();
    }
  };
  private boolean l;
  @Nullable
  private Drawable m;
  @Nullable
  private ColorStateList n;
  private float o;
  private boolean p;
  @Nullable
  private Drawable q;
  @Nullable
  private ColorStateList r;
  private float s;
  @Nullable
  private CharSequence t;
  private boolean u;
  private boolean v;
  @Nullable
  private Drawable w;
  @Nullable
  private MotionSpec x;
  @Nullable
  private MotionSpec y;
  private float z;
  
  private ChipDrawable(Context paramContext)
  {
    H = paramContext;
    h = "";
    I.density = getResourcesgetDisplayMetricsdensity;
    K = null;
    if (K != null) {
      K.setStyle(Paint.Style.STROKE);
    }
    setState(a);
    setCloseIconState(a);
    ag = true;
  }
  
  private float a(@Nullable CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return 0.0F;
    }
    return I.measureText(paramCharSequence, 0, paramCharSequence.length());
  }
  
  private void a(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    J.setColor(O);
    J.setStyle(Paint.Style.FILL);
    J.setColorFilter(j());
    M.set(paramRect);
    paramCanvas.drawRoundRect(M, d, d, J);
  }
  
  private void a(Rect paramRect, RectF paramRectF)
  {
    paramRectF.setEmpty();
    if ((c()) || (d()))
    {
      float f1 = z + A;
      if (DrawableCompat.getLayoutDirection(this) == 0)
      {
        left = (left + f1);
        right = (left + o);
      }
      else
      {
        right = (right - f1);
        left = (right - o);
      }
      top = (paramRect.exactCenterY() - o / 2.0F);
      bottom = (top + o);
    }
  }
  
  private void a(AttributeSet paramAttributeSet, @AttrRes int paramInt1, @StyleRes int paramInt2)
  {
    TypedArray localTypedArray = ThemeEnforcement.obtainStyledAttributes(H, paramAttributeSet, R.styleable.Chip, paramInt1, paramInt2, new int[0]);
    setChipBackgroundColor(MaterialResources.getColorStateList(H, localTypedArray, R.styleable.Chip_chipBackgroundColor));
    setChipMinHeight(localTypedArray.getDimension(R.styleable.Chip_chipMinHeight, 0.0F));
    setChipCornerRadius(localTypedArray.getDimension(R.styleable.Chip_chipCornerRadius, 0.0F));
    setChipStrokeColor(MaterialResources.getColorStateList(H, localTypedArray, R.styleable.Chip_chipStrokeColor));
    setChipStrokeWidth(localTypedArray.getDimension(R.styleable.Chip_chipStrokeWidth, 0.0F));
    setRippleColor(MaterialResources.getColorStateList(H, localTypedArray, R.styleable.Chip_rippleColor));
    setText(localTypedArray.getText(R.styleable.Chip_android_text));
    setTextAppearance(MaterialResources.getTextAppearance(H, localTypedArray, R.styleable.Chip_android_textAppearance));
    switch (localTypedArray.getInt(R.styleable.Chip_android_ellipsize, 0))
    {
    default: 
      break;
    case 3: 
      setEllipsize(TextUtils.TruncateAt.END);
      break;
    case 2: 
      setEllipsize(TextUtils.TruncateAt.MIDDLE);
      break;
    case 1: 
      setEllipsize(TextUtils.TruncateAt.START);
    }
    setChipIconVisible(localTypedArray.getBoolean(R.styleable.Chip_chipIconVisible, false));
    if ((paramAttributeSet != null) && (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null) && (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null)) {
      setChipIconVisible(localTypedArray.getBoolean(R.styleable.Chip_chipIconEnabled, false));
    }
    setChipIcon(MaterialResources.getDrawable(H, localTypedArray, R.styleable.Chip_chipIcon));
    setChipIconTint(MaterialResources.getColorStateList(H, localTypedArray, R.styleable.Chip_chipIconTint));
    setChipIconSize(localTypedArray.getDimension(R.styleable.Chip_chipIconSize, 0.0F));
    setCloseIconVisible(localTypedArray.getBoolean(R.styleable.Chip_closeIconVisible, false));
    if ((paramAttributeSet != null) && (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null) && (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null)) {
      setCloseIconVisible(localTypedArray.getBoolean(R.styleable.Chip_closeIconEnabled, false));
    }
    setCloseIcon(MaterialResources.getDrawable(H, localTypedArray, R.styleable.Chip_closeIcon));
    setCloseIconTint(MaterialResources.getColorStateList(H, localTypedArray, R.styleable.Chip_closeIconTint));
    setCloseIconSize(localTypedArray.getDimension(R.styleable.Chip_closeIconSize, 0.0F));
    setCheckable(localTypedArray.getBoolean(R.styleable.Chip_android_checkable, false));
    setCheckedIconVisible(localTypedArray.getBoolean(R.styleable.Chip_checkedIconVisible, false));
    if ((paramAttributeSet != null) && (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null) && (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null)) {
      setCheckedIconVisible(localTypedArray.getBoolean(R.styleable.Chip_checkedIconEnabled, false));
    }
    setCheckedIcon(MaterialResources.getDrawable(H, localTypedArray, R.styleable.Chip_checkedIcon));
    setShowMotionSpec(MotionSpec.createFromAttribute(H, localTypedArray, R.styleable.Chip_showMotionSpec));
    setHideMotionSpec(MotionSpec.createFromAttribute(H, localTypedArray, R.styleable.Chip_hideMotionSpec));
    setChipStartPadding(localTypedArray.getDimension(R.styleable.Chip_chipStartPadding, 0.0F));
    setIconStartPadding(localTypedArray.getDimension(R.styleable.Chip_iconStartPadding, 0.0F));
    setIconEndPadding(localTypedArray.getDimension(R.styleable.Chip_iconEndPadding, 0.0F));
    setTextStartPadding(localTypedArray.getDimension(R.styleable.Chip_textStartPadding, 0.0F));
    setTextEndPadding(localTypedArray.getDimension(R.styleable.Chip_textEndPadding, 0.0F));
    setCloseIconStartPadding(localTypedArray.getDimension(R.styleable.Chip_closeIconStartPadding, 0.0F));
    setCloseIconEndPadding(localTypedArray.getDimension(R.styleable.Chip_closeIconEndPadding, 0.0F));
    setChipEndPadding(localTypedArray.getDimension(R.styleable.Chip_chipEndPadding, 0.0F));
    setMaxWidth(localTypedArray.getDimensionPixelSize(R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
    localTypedArray.recycle();
  }
  
  private static boolean a(@Nullable ColorStateList paramColorStateList)
  {
    return (paramColorStateList != null) && (paramColorStateList.isStateful());
  }
  
  private static boolean a(@Nullable Drawable paramDrawable)
  {
    return (paramDrawable != null) && (paramDrawable.isStateful());
  }
  
  private static boolean a(@Nullable TextAppearance paramTextAppearance)
  {
    return (paramTextAppearance != null) && (textColor != null) && (textColor.isStateful());
  }
  
  private static boolean a(@Nullable int[] paramArrayOfInt, @AttrRes int paramInt)
  {
    if (paramArrayOfInt == null) {
      return false;
    }
    int i2 = paramArrayOfInt.length;
    int i1 = 0;
    while (i1 < i2)
    {
      if (paramArrayOfInt[i1] == paramInt) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private boolean a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    boolean bool1 = super.onStateChange(paramArrayOfInt1);
    ColorStateList localColorStateList = b;
    int i2 = 0;
    if (localColorStateList != null) {
      i1 = b.getColorForState(paramArrayOfInt1, O);
    } else {
      i1 = 0;
    }
    if (O != i1)
    {
      O = i1;
      bool1 = true;
    }
    if (e != null) {
      i1 = e.getColorForState(paramArrayOfInt1, P);
    } else {
      i1 = 0;
    }
    if (P != i1)
    {
      P = i1;
      bool1 = true;
    }
    if (ab != null) {
      i1 = ab.getColorForState(paramArrayOfInt1, Q);
    } else {
      i1 = 0;
    }
    boolean bool2 = bool1;
    if (Q != i1)
    {
      Q = i1;
      bool2 = bool1;
      if (aa) {
        bool2 = true;
      }
    }
    if ((j != null) && (j.textColor != null)) {
      i1 = j.textColor.getColorForState(paramArrayOfInt1, R);
    } else {
      i1 = 0;
    }
    bool1 = bool2;
    if (R != i1)
    {
      R = i1;
      bool1 = true;
    }
    boolean bool3;
    if ((a(getState(), 16842912)) && (u)) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    bool2 = bool1;
    if (S != bool3)
    {
      bool2 = bool1;
      if (w != null)
      {
        float f1 = a();
        S = bool3;
        if (f1 != a())
        {
          bool2 = true;
          i1 = 1;
          break label314;
        }
        bool2 = true;
      }
    }
    int i1 = 0;
    label314:
    if (X != null) {
      i2 = X.getColorForState(paramArrayOfInt1, T);
    }
    if (T != i2)
    {
      T = i2;
      W = DrawableUtils.updateTintFilter(this, X, Y);
      bool2 = true;
    }
    bool1 = bool2;
    if (a(m)) {
      bool1 = bool2 | m.setState(paramArrayOfInt1);
    }
    bool2 = bool1;
    if (a(w)) {
      bool2 = bool1 | w.setState(paramArrayOfInt1);
    }
    bool1 = bool2;
    if (a(q)) {
      bool1 = bool2 | q.setState(paramArrayOfInt2);
    }
    if (bool1) {
      invalidateSelf();
    }
    if (i1 != 0) {
      onSizeChange();
    }
    return bool1;
  }
  
  private void b(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    if (f > 0.0F)
    {
      J.setColor(P);
      J.setStyle(Paint.Style.STROKE);
      J.setColorFilter(j());
      M.set(left + f / 2.0F, top + f / 2.0F, right - f / 2.0F, bottom - f / 2.0F);
      float f1 = d - f / 2.0F;
      paramCanvas.drawRoundRect(M, f1, f1, J);
    }
  }
  
  private void b(Rect paramRect, RectF paramRectF)
  {
    paramRectF.setEmpty();
    if (i != null)
    {
      float f1 = z + a() + C;
      float f2 = G + h() + D;
      if (DrawableCompat.getLayoutDirection(this) == 0)
      {
        left = (left + f1);
        right = (right - f2);
      }
      else
      {
        left = (left + f2);
        right = (right - f1);
      }
      top = top;
      bottom = bottom;
    }
  }
  
  private void b(@Nullable Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      paramDrawable.setCallback(null);
    }
  }
  
  private void c(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    J.setColor(Q);
    J.setStyle(Paint.Style.FILL);
    M.set(paramRect);
    paramCanvas.drawRoundRect(M, d, d, J);
  }
  
  private void c(Rect paramRect, RectF paramRectF)
  {
    paramRectF.setEmpty();
    if (e())
    {
      float f1 = G + F;
      if (DrawableCompat.getLayoutDirection(this) == 0)
      {
        right = (right - f1);
        left = (right - s);
      }
      else
      {
        left = (left + f1);
        right = (left + s);
      }
      top = (paramRect.exactCenterY() - s / 2.0F);
      bottom = (top + s);
    }
  }
  
  private void c(@Nullable Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      DrawableCompat.setLayoutDirection(paramDrawable, DrawableCompat.getLayoutDirection(this));
      paramDrawable.setLevel(getLevel());
      paramDrawable.setVisible(isVisible(), false);
      if (paramDrawable == q)
      {
        if (paramDrawable.isStateful()) {
          paramDrawable.setState(getCloseIconState());
        }
        DrawableCompat.setTintList(paramDrawable, r);
        return;
      }
      if (paramDrawable.isStateful()) {
        paramDrawable.setState(getState());
      }
    }
  }
  
  private boolean c()
  {
    return (l) && (m != null);
  }
  
  public static ChipDrawable createFromAttributes(Context paramContext, AttributeSet paramAttributeSet, @AttrRes int paramInt1, @StyleRes int paramInt2)
  {
    paramContext = new ChipDrawable(paramContext);
    paramContext.a(paramAttributeSet, paramInt1, paramInt2);
    return paramContext;
  }
  
  public static ChipDrawable createFromResource(Context paramContext, @XmlRes int paramInt)
  {
    try
    {
      localObject = paramContext.getResources().getXml(paramInt);
      int i1;
      do
      {
        i1 = ((XmlPullParser)localObject).next();
      } while ((i1 != 2) && (i1 != 1));
      if (i1 == 2)
      {
        if (TextUtils.equals(((XmlPullParser)localObject).getName(), "chip"))
        {
          localObject = Xml.asAttributeSet((XmlPullParser)localObject);
          int i2 = ((AttributeSet)localObject).getStyleAttribute();
          i1 = i2;
          if (i2 == 0) {
            i1 = R.style.Widget_MaterialComponents_Chip_Entry;
          }
          return createFromAttributes(paramContext, (AttributeSet)localObject, R.attr.chipStandaloneStyle, i1);
        }
        throw new XmlPullParserException("Must have a <chip> start tag");
      }
      throw new XmlPullParserException("No start tag found");
    }
    catch (XmlPullParserException|IOException paramContext)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Can't load chip resource ID #0x");
      ((StringBuilder)localObject).append(Integer.toHexString(paramInt));
      localObject = new Resources.NotFoundException(((StringBuilder)localObject).toString());
      ((Resources.NotFoundException)localObject).initCause(paramContext);
      throw ((Throwable)localObject);
    }
  }
  
  private void d(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    if (c())
    {
      a(paramRect, M);
      float f1 = M.left;
      float f2 = M.top;
      paramCanvas.translate(f1, f2);
      m.setBounds(0, 0, (int)M.width(), (int)M.height());
      m.draw(paramCanvas);
      paramCanvas.translate(-f1, -f2);
    }
  }
  
  private void d(Rect paramRect, RectF paramRectF)
  {
    paramRectF.set(paramRect);
    if (e())
    {
      float f1 = G + F + s + E + D;
      if (DrawableCompat.getLayoutDirection(this) == 0)
      {
        right = (right - f1);
        return;
      }
      left = (left + f1);
    }
  }
  
  private boolean d()
  {
    return (v) && (w != null) && (S);
  }
  
  private void e(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    if (d())
    {
      a(paramRect, M);
      float f1 = M.left;
      float f2 = M.top;
      paramCanvas.translate(f1, f2);
      w.setBounds(0, 0, (int)M.width(), (int)M.height());
      w.draw(paramCanvas);
      paramCanvas.translate(-f1, -f2);
    }
  }
  
  private void e(Rect paramRect, RectF paramRectF)
  {
    paramRectF.setEmpty();
    if (e())
    {
      float f1 = G + F + s + E + D;
      if (DrawableCompat.getLayoutDirection(this) == 0)
      {
        right = right;
        left = (right - f1);
      }
      else
      {
        left = left;
        right = (left + f1);
      }
      top = top;
      bottom = bottom;
    }
  }
  
  private boolean e()
  {
    return (p) && (q != null);
  }
  
  private void f(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    if (i != null)
    {
      Object localObject = a(paramRect, N);
      b(paramRect, M);
      if (j != null)
      {
        I.drawableState = getState();
        j.updateDrawState(H, I, k);
      }
      I.setTextAlign((Paint.Align)localObject);
      int i1 = Math.round(g());
      int i3 = Math.round(M.width());
      int i2 = 0;
      if (i1 > i3) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0)
      {
        i2 = paramCanvas.save();
        paramCanvas.clipRect(M);
      }
      localObject = i;
      paramRect = (Rect)localObject;
      if (i1 != 0)
      {
        paramRect = (Rect)localObject;
        if (af != null) {
          paramRect = TextUtils.ellipsize(i, I, M.width(), af);
        }
      }
      paramCanvas.drawText(paramRect, 0, paramRect.length(), N.x, N.y, I);
      if (i1 != 0) {
        paramCanvas.restoreToCount(i2);
      }
    }
  }
  
  private boolean f()
  {
    return (v) && (w != null) && (u);
  }
  
  private float g()
  {
    if (!ad) {
      return ae;
    }
    ae = a(i);
    ad = false;
    return ae;
  }
  
  private void g(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    if (e())
    {
      c(paramRect, M);
      float f1 = M.left;
      float f2 = M.top;
      paramCanvas.translate(f1, f2);
      q.setBounds(0, 0, (int)M.width(), (int)M.height());
      q.draw(paramCanvas);
      paramCanvas.translate(-f1, -f2);
    }
  }
  
  private float h()
  {
    if (e()) {
      return E + s + F;
    }
    return 0.0F;
  }
  
  private void h(@NonNull Canvas paramCanvas, Rect paramRect)
  {
    if (K != null)
    {
      K.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
      paramCanvas.drawRect(paramRect, K);
      if ((c()) || (d()))
      {
        a(paramRect, M);
        paramCanvas.drawRect(M, K);
      }
      if (i != null) {
        paramCanvas.drawLine(left, paramRect.exactCenterY(), right, paramRect.exactCenterY(), K);
      }
      if (e())
      {
        c(paramRect, M);
        paramCanvas.drawRect(M, K);
      }
      K.setColor(ColorUtils.setAlphaComponent(-65536, 127));
      d(paramRect, M);
      paramCanvas.drawRect(M, K);
      K.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
      e(paramRect, M);
      paramCanvas.drawRect(M, K);
    }
  }
  
  private float i()
  {
    I.getFontMetrics(L);
    return (L.descent + L.ascent) / 2.0F;
  }
  
  @Nullable
  private ColorFilter j()
  {
    if (V != null) {
      return V;
    }
    return W;
  }
  
  private void k()
  {
    ColorStateList localColorStateList;
    if (aa) {
      localColorStateList = RippleUtils.convertToRippleDrawableColor(g);
    } else {
      localColorStateList = null;
    }
    ab = localColorStateList;
  }
  
  float a()
  {
    if ((!c()) && (!d())) {
      return 0.0F;
    }
    return A + o + B;
  }
  
  Paint.Align a(Rect paramRect, PointF paramPointF)
  {
    paramPointF.set(0.0F, 0.0F);
    Paint.Align localAlign = Paint.Align.LEFT;
    if (i != null)
    {
      float f1 = z + a() + C;
      if (DrawableCompat.getLayoutDirection(this) == 0)
      {
        x = (left + f1);
        localAlign = Paint.Align.LEFT;
      }
      else
      {
        x = (right - f1);
        localAlign = Paint.Align.RIGHT;
      }
      y = (paramRect.centerY() - i());
    }
    return localAlign;
  }
  
  void a(boolean paramBoolean)
  {
    ag = paramBoolean;
  }
  
  boolean b()
  {
    return ag;
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    if (!localRect.isEmpty())
    {
      if (getAlpha() == 0) {
        return;
      }
      int i1 = 0;
      if (U < 255) {
        i1 = CanvasCompat.saveLayerAlpha(paramCanvas, left, top, right, bottom, U);
      }
      a(paramCanvas, localRect);
      b(paramCanvas, localRect);
      c(paramCanvas, localRect);
      d(paramCanvas, localRect);
      e(paramCanvas, localRect);
      if (ag) {
        f(paramCanvas, localRect);
      }
      g(paramCanvas, localRect);
      h(paramCanvas, localRect);
      if (U < 255) {
        paramCanvas.restoreToCount(i1);
      }
      return;
    }
  }
  
  public int getAlpha()
  {
    return U;
  }
  
  @Nullable
  public Drawable getCheckedIcon()
  {
    return w;
  }
  
  @Nullable
  public ColorStateList getChipBackgroundColor()
  {
    return b;
  }
  
  public float getChipCornerRadius()
  {
    return d;
  }
  
  public float getChipEndPadding()
  {
    return G;
  }
  
  @Nullable
  public Drawable getChipIcon()
  {
    if (m != null) {
      return DrawableCompat.unwrap(m);
    }
    return null;
  }
  
  public float getChipIconSize()
  {
    return o;
  }
  
  @Nullable
  public ColorStateList getChipIconTint()
  {
    return n;
  }
  
  public float getChipMinHeight()
  {
    return c;
  }
  
  public float getChipStartPadding()
  {
    return z;
  }
  
  @Nullable
  public ColorStateList getChipStrokeColor()
  {
    return e;
  }
  
  public float getChipStrokeWidth()
  {
    return f;
  }
  
  public void getChipTouchBounds(RectF paramRectF)
  {
    d(getBounds(), paramRectF);
  }
  
  @Nullable
  public Drawable getCloseIcon()
  {
    if (q != null) {
      return DrawableCompat.unwrap(q);
    }
    return null;
  }
  
  @Nullable
  public CharSequence getCloseIconContentDescription()
  {
    return t;
  }
  
  public float getCloseIconEndPadding()
  {
    return F;
  }
  
  public float getCloseIconSize()
  {
    return s;
  }
  
  public float getCloseIconStartPadding()
  {
    return E;
  }
  
  @NonNull
  public int[] getCloseIconState()
  {
    return Z;
  }
  
  @Nullable
  public ColorStateList getCloseIconTint()
  {
    return r;
  }
  
  public void getCloseIconTouchBounds(RectF paramRectF)
  {
    e(getBounds(), paramRectF);
  }
  
  @Nullable
  public ColorFilter getColorFilter()
  {
    return V;
  }
  
  public TextUtils.TruncateAt getEllipsize()
  {
    return af;
  }
  
  @Nullable
  public MotionSpec getHideMotionSpec()
  {
    return y;
  }
  
  public float getIconEndPadding()
  {
    return B;
  }
  
  public float getIconStartPadding()
  {
    return A;
  }
  
  public int getIntrinsicHeight()
  {
    return (int)c;
  }
  
  public int getIntrinsicWidth()
  {
    return Math.min(Math.round(z + a() + C + g() + D + h() + G), ah);
  }
  
  @Px
  public int getMaxWidth()
  {
    return ah;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  @TargetApi(21)
  public void getOutline(@NonNull Outline paramOutline)
  {
    Rect localRect = getBounds();
    if (!localRect.isEmpty()) {
      paramOutline.setRoundRect(localRect, d);
    } else {
      paramOutline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), d);
    }
    paramOutline.setAlpha(getAlpha() / 255.0F);
  }
  
  @Nullable
  public ColorStateList getRippleColor()
  {
    return g;
  }
  
  @Nullable
  public MotionSpec getShowMotionSpec()
  {
    return x;
  }
  
  @NonNull
  public CharSequence getText()
  {
    return h;
  }
  
  @Nullable
  public TextAppearance getTextAppearance()
  {
    return j;
  }
  
  public float getTextEndPadding()
  {
    return D;
  }
  
  public float getTextStartPadding()
  {
    return C;
  }
  
  public boolean getUseCompatRipple()
  {
    return aa;
  }
  
  public void invalidateDrawable(@NonNull Drawable paramDrawable)
  {
    paramDrawable = getCallback();
    if (paramDrawable != null) {
      paramDrawable.invalidateDrawable(this);
    }
  }
  
  public boolean isCheckable()
  {
    return u;
  }
  
  @Deprecated
  public boolean isCheckedIconEnabled()
  {
    return isCheckedIconVisible();
  }
  
  public boolean isCheckedIconVisible()
  {
    return v;
  }
  
  @Deprecated
  public boolean isChipIconEnabled()
  {
    return isChipIconVisible();
  }
  
  public boolean isChipIconVisible()
  {
    return l;
  }
  
  @Deprecated
  public boolean isCloseIconEnabled()
  {
    return isCloseIconVisible();
  }
  
  public boolean isCloseIconStateful()
  {
    return a(q);
  }
  
  public boolean isCloseIconVisible()
  {
    return p;
  }
  
  public boolean isStateful()
  {
    return (a(b)) || (a(e)) || ((aa) && (a(ab))) || (a(j)) || (f()) || (a(m)) || (a(w)) || (a(X));
  }
  
  @TargetApi(23)
  public boolean onLayoutDirectionChanged(int paramInt)
  {
    boolean bool2 = super.onLayoutDirectionChanged(paramInt);
    boolean bool1 = bool2;
    if (c()) {
      bool1 = bool2 | m.setLayoutDirection(paramInt);
    }
    bool2 = bool1;
    if (d()) {
      bool2 = bool1 | w.setLayoutDirection(paramInt);
    }
    bool1 = bool2;
    if (e()) {
      bool1 = bool2 | q.setLayoutDirection(paramInt);
    }
    if (bool1) {
      invalidateSelf();
    }
    return true;
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    boolean bool2 = super.onLevelChange(paramInt);
    boolean bool1 = bool2;
    if (c()) {
      bool1 = bool2 | m.setLevel(paramInt);
    }
    bool2 = bool1;
    if (d()) {
      bool2 = bool1 | w.setLevel(paramInt);
    }
    bool1 = bool2;
    if (e()) {
      bool1 = bool2 | q.setLevel(paramInt);
    }
    if (bool1) {
      invalidateSelf();
    }
    return bool1;
  }
  
  protected void onSizeChange()
  {
    Delegate localDelegate = (Delegate)ac.get();
    if (localDelegate != null) {
      localDelegate.onChipDrawableSizeChange();
    }
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    return a(paramArrayOfInt, getCloseIconState());
  }
  
  public void scheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable, long paramLong)
  {
    paramDrawable = getCallback();
    if (paramDrawable != null) {
      paramDrawable.scheduleDrawable(this, paramRunnable, paramLong);
    }
  }
  
  public void setAlpha(int paramInt)
  {
    if (U != paramInt)
    {
      U = paramInt;
      invalidateSelf();
    }
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if (u != paramBoolean)
    {
      u = paramBoolean;
      float f1 = a();
      if ((!paramBoolean) && (S)) {
        S = false;
      }
      float f2 = a();
      invalidateSelf();
      if (f1 != f2) {
        onSizeChange();
      }
    }
  }
  
  public void setCheckableResource(@BoolRes int paramInt)
  {
    setCheckable(H.getResources().getBoolean(paramInt));
  }
  
  public void setCheckedIcon(@Nullable Drawable paramDrawable)
  {
    if (w != paramDrawable)
    {
      float f1 = a();
      w = paramDrawable;
      float f2 = a();
      b(w);
      c(w);
      invalidateSelf();
      if (f1 != f2) {
        onSizeChange();
      }
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
    setCheckedIconVisible(H.getResources().getBoolean(paramInt));
  }
  
  public void setCheckedIconResource(@DrawableRes int paramInt)
  {
    setCheckedIcon(AppCompatResources.getDrawable(H, paramInt));
  }
  
  public void setCheckedIconVisible(@BoolRes int paramInt)
  {
    setCheckedIconVisible(H.getResources().getBoolean(paramInt));
  }
  
  public void setCheckedIconVisible(boolean paramBoolean)
  {
    if (v != paramBoolean)
    {
      boolean bool = d();
      v = paramBoolean;
      paramBoolean = d();
      int i1;
      if (bool != paramBoolean) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0)
      {
        if (paramBoolean) {
          c(w);
        } else {
          b(w);
        }
        invalidateSelf();
        onSizeChange();
      }
    }
  }
  
  public void setChipBackgroundColor(@Nullable ColorStateList paramColorStateList)
  {
    if (b != paramColorStateList)
    {
      b = paramColorStateList;
      onStateChange(getState());
    }
  }
  
  public void setChipBackgroundColorResource(@ColorRes int paramInt)
  {
    setChipBackgroundColor(AppCompatResources.getColorStateList(H, paramInt));
  }
  
  public void setChipCornerRadius(float paramFloat)
  {
    if (d != paramFloat)
    {
      d = paramFloat;
      invalidateSelf();
    }
  }
  
  public void setChipCornerRadiusResource(@DimenRes int paramInt)
  {
    setChipCornerRadius(H.getResources().getDimension(paramInt));
  }
  
  public void setChipEndPadding(float paramFloat)
  {
    if (G != paramFloat)
    {
      G = paramFloat;
      invalidateSelf();
      onSizeChange();
    }
  }
  
  public void setChipEndPaddingResource(@DimenRes int paramInt)
  {
    setChipEndPadding(H.getResources().getDimension(paramInt));
  }
  
  public void setChipIcon(@Nullable Drawable paramDrawable)
  {
    Drawable localDrawable = getChipIcon();
    if (localDrawable != paramDrawable)
    {
      float f1 = a();
      if (paramDrawable != null) {
        paramDrawable = DrawableCompat.wrap(paramDrawable).mutate();
      } else {
        paramDrawable = null;
      }
      m = paramDrawable;
      float f2 = a();
      b(localDrawable);
      if (c()) {
        c(m);
      }
      invalidateSelf();
      if (f1 != f2) {
        onSizeChange();
      }
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
    setChipIcon(AppCompatResources.getDrawable(H, paramInt));
  }
  
  public void setChipIconSize(float paramFloat)
  {
    if (o != paramFloat)
    {
      float f1 = a();
      o = paramFloat;
      paramFloat = a();
      invalidateSelf();
      if (f1 != paramFloat) {
        onSizeChange();
      }
    }
  }
  
  public void setChipIconSizeResource(@DimenRes int paramInt)
  {
    setChipIconSize(H.getResources().getDimension(paramInt));
  }
  
  public void setChipIconTint(@Nullable ColorStateList paramColorStateList)
  {
    if (n != paramColorStateList)
    {
      n = paramColorStateList;
      if (c()) {
        DrawableCompat.setTintList(m, paramColorStateList);
      }
      onStateChange(getState());
    }
  }
  
  public void setChipIconTintResource(@ColorRes int paramInt)
  {
    setChipIconTint(AppCompatResources.getColorStateList(H, paramInt));
  }
  
  public void setChipIconVisible(@BoolRes int paramInt)
  {
    setChipIconVisible(H.getResources().getBoolean(paramInt));
  }
  
  public void setChipIconVisible(boolean paramBoolean)
  {
    if (l != paramBoolean)
    {
      boolean bool = c();
      l = paramBoolean;
      paramBoolean = c();
      int i1;
      if (bool != paramBoolean) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0)
      {
        if (paramBoolean) {
          c(m);
        } else {
          b(m);
        }
        invalidateSelf();
        onSizeChange();
      }
    }
  }
  
  public void setChipMinHeight(float paramFloat)
  {
    if (c != paramFloat)
    {
      c = paramFloat;
      invalidateSelf();
      onSizeChange();
    }
  }
  
  public void setChipMinHeightResource(@DimenRes int paramInt)
  {
    setChipMinHeight(H.getResources().getDimension(paramInt));
  }
  
  public void setChipStartPadding(float paramFloat)
  {
    if (z != paramFloat)
    {
      z = paramFloat;
      invalidateSelf();
      onSizeChange();
    }
  }
  
  public void setChipStartPaddingResource(@DimenRes int paramInt)
  {
    setChipStartPadding(H.getResources().getDimension(paramInt));
  }
  
  public void setChipStrokeColor(@Nullable ColorStateList paramColorStateList)
  {
    if (e != paramColorStateList)
    {
      e = paramColorStateList;
      onStateChange(getState());
    }
  }
  
  public void setChipStrokeColorResource(@ColorRes int paramInt)
  {
    setChipStrokeColor(AppCompatResources.getColorStateList(H, paramInt));
  }
  
  public void setChipStrokeWidth(float paramFloat)
  {
    if (f != paramFloat)
    {
      f = paramFloat;
      J.setStrokeWidth(paramFloat);
      invalidateSelf();
    }
  }
  
  public void setChipStrokeWidthResource(@DimenRes int paramInt)
  {
    setChipStrokeWidth(H.getResources().getDimension(paramInt));
  }
  
  public void setCloseIcon(@Nullable Drawable paramDrawable)
  {
    Drawable localDrawable = getCloseIcon();
    if (localDrawable != paramDrawable)
    {
      float f1 = h();
      if (paramDrawable != null) {
        paramDrawable = DrawableCompat.wrap(paramDrawable).mutate();
      } else {
        paramDrawable = null;
      }
      q = paramDrawable;
      float f2 = h();
      b(localDrawable);
      if (e()) {
        c(q);
      }
      invalidateSelf();
      if (f1 != f2) {
        onSizeChange();
      }
    }
  }
  
  public void setCloseIconContentDescription(@Nullable CharSequence paramCharSequence)
  {
    if (t != paramCharSequence)
    {
      t = BidiFormatter.getInstance().unicodeWrap(paramCharSequence);
      invalidateSelf();
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
    if (F != paramFloat)
    {
      F = paramFloat;
      invalidateSelf();
      if (e()) {
        onSizeChange();
      }
    }
  }
  
  public void setCloseIconEndPaddingResource(@DimenRes int paramInt)
  {
    setCloseIconEndPadding(H.getResources().getDimension(paramInt));
  }
  
  public void setCloseIconResource(@DrawableRes int paramInt)
  {
    setCloseIcon(AppCompatResources.getDrawable(H, paramInt));
  }
  
  public void setCloseIconSize(float paramFloat)
  {
    if (s != paramFloat)
    {
      s = paramFloat;
      invalidateSelf();
      if (e()) {
        onSizeChange();
      }
    }
  }
  
  public void setCloseIconSizeResource(@DimenRes int paramInt)
  {
    setCloseIconSize(H.getResources().getDimension(paramInt));
  }
  
  public void setCloseIconStartPadding(float paramFloat)
  {
    if (E != paramFloat)
    {
      E = paramFloat;
      invalidateSelf();
      if (e()) {
        onSizeChange();
      }
    }
  }
  
  public void setCloseIconStartPaddingResource(@DimenRes int paramInt)
  {
    setCloseIconStartPadding(H.getResources().getDimension(paramInt));
  }
  
  public boolean setCloseIconState(@NonNull int[] paramArrayOfInt)
  {
    if (!Arrays.equals(Z, paramArrayOfInt))
    {
      Z = paramArrayOfInt;
      if (e()) {
        return a(getState(), paramArrayOfInt);
      }
    }
    return false;
  }
  
  public void setCloseIconTint(@Nullable ColorStateList paramColorStateList)
  {
    if (r != paramColorStateList)
    {
      r = paramColorStateList;
      if (e()) {
        DrawableCompat.setTintList(q, paramColorStateList);
      }
      onStateChange(getState());
    }
  }
  
  public void setCloseIconTintResource(@ColorRes int paramInt)
  {
    setCloseIconTint(AppCompatResources.getColorStateList(H, paramInt));
  }
  
  public void setCloseIconVisible(@BoolRes int paramInt)
  {
    setCloseIconVisible(H.getResources().getBoolean(paramInt));
  }
  
  public void setCloseIconVisible(boolean paramBoolean)
  {
    if (p != paramBoolean)
    {
      boolean bool = e();
      p = paramBoolean;
      paramBoolean = e();
      int i1;
      if (bool != paramBoolean) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0)
      {
        if (paramBoolean) {
          c(q);
        } else {
          b(q);
        }
        invalidateSelf();
        onSizeChange();
      }
    }
  }
  
  public void setColorFilter(@Nullable ColorFilter paramColorFilter)
  {
    if (V != paramColorFilter)
    {
      V = paramColorFilter;
      invalidateSelf();
    }
  }
  
  public void setDelegate(@Nullable Delegate paramDelegate)
  {
    ac = new WeakReference(paramDelegate);
  }
  
  public void setEllipsize(@Nullable TextUtils.TruncateAt paramTruncateAt)
  {
    af = paramTruncateAt;
  }
  
  public void setHideMotionSpec(@Nullable MotionSpec paramMotionSpec)
  {
    y = paramMotionSpec;
  }
  
  public void setHideMotionSpecResource(@AnimatorRes int paramInt)
  {
    setHideMotionSpec(MotionSpec.createFromResource(H, paramInt));
  }
  
  public void setIconEndPadding(float paramFloat)
  {
    if (B != paramFloat)
    {
      float f1 = a();
      B = paramFloat;
      paramFloat = a();
      invalidateSelf();
      if (f1 != paramFloat) {
        onSizeChange();
      }
    }
  }
  
  public void setIconEndPaddingResource(@DimenRes int paramInt)
  {
    setIconEndPadding(H.getResources().getDimension(paramInt));
  }
  
  public void setIconStartPadding(float paramFloat)
  {
    if (A != paramFloat)
    {
      float f1 = a();
      A = paramFloat;
      paramFloat = a();
      invalidateSelf();
      if (f1 != paramFloat) {
        onSizeChange();
      }
    }
  }
  
  public void setIconStartPaddingResource(@DimenRes int paramInt)
  {
    setIconStartPadding(H.getResources().getDimension(paramInt));
  }
  
  public void setMaxWidth(@Px int paramInt)
  {
    ah = paramInt;
  }
  
  public void setRippleColor(@Nullable ColorStateList paramColorStateList)
  {
    if (g != paramColorStateList)
    {
      g = paramColorStateList;
      k();
      onStateChange(getState());
    }
  }
  
  public void setRippleColorResource(@ColorRes int paramInt)
  {
    setRippleColor(AppCompatResources.getColorStateList(H, paramInt));
  }
  
  public void setShowMotionSpec(@Nullable MotionSpec paramMotionSpec)
  {
    x = paramMotionSpec;
  }
  
  public void setShowMotionSpecResource(@AnimatorRes int paramInt)
  {
    setShowMotionSpec(MotionSpec.createFromResource(H, paramInt));
  }
  
  public void setText(@Nullable CharSequence paramCharSequence)
  {
    Object localObject = paramCharSequence;
    if (paramCharSequence == null) {
      localObject = "";
    }
    if (h != localObject)
    {
      h = ((CharSequence)localObject);
      i = BidiFormatter.getInstance().unicodeWrap((CharSequence)localObject);
      ad = true;
      invalidateSelf();
      onSizeChange();
    }
  }
  
  public void setTextAppearance(@Nullable TextAppearance paramTextAppearance)
  {
    if (j != paramTextAppearance)
    {
      j = paramTextAppearance;
      if (paramTextAppearance != null)
      {
        paramTextAppearance.updateMeasureState(H, I, k);
        ad = true;
      }
      onStateChange(getState());
      onSizeChange();
    }
  }
  
  public void setTextAppearanceResource(@StyleRes int paramInt)
  {
    setTextAppearance(new TextAppearance(H, paramInt));
  }
  
  public void setTextEndPadding(float paramFloat)
  {
    if (D != paramFloat)
    {
      D = paramFloat;
      invalidateSelf();
      onSizeChange();
    }
  }
  
  public void setTextEndPaddingResource(@DimenRes int paramInt)
  {
    setTextEndPadding(H.getResources().getDimension(paramInt));
  }
  
  public void setTextResource(@StringRes int paramInt)
  {
    setText(H.getResources().getString(paramInt));
  }
  
  public void setTextStartPadding(float paramFloat)
  {
    if (C != paramFloat)
    {
      C = paramFloat;
      invalidateSelf();
      onSizeChange();
    }
  }
  
  public void setTextStartPaddingResource(@DimenRes int paramInt)
  {
    setTextStartPadding(H.getResources().getDimension(paramInt));
  }
  
  public void setTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (X != paramColorStateList)
    {
      X = paramColorStateList;
      onStateChange(getState());
    }
  }
  
  public void setTintMode(@NonNull PorterDuff.Mode paramMode)
  {
    if (Y != paramMode)
    {
      Y = paramMode;
      W = DrawableUtils.updateTintFilter(this, X, paramMode);
      invalidateSelf();
    }
  }
  
  public void setUseCompatRipple(boolean paramBoolean)
  {
    if (aa != paramBoolean)
    {
      aa = paramBoolean;
      k();
      onStateChange(getState());
    }
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2 = super.setVisible(paramBoolean1, paramBoolean2);
    boolean bool1 = bool2;
    if (c()) {
      bool1 = bool2 | m.setVisible(paramBoolean1, paramBoolean2);
    }
    bool2 = bool1;
    if (d()) {
      bool2 = bool1 | w.setVisible(paramBoolean1, paramBoolean2);
    }
    bool1 = bool2;
    if (e()) {
      bool1 = bool2 | q.setVisible(paramBoolean1, paramBoolean2);
    }
    if (bool1) {
      invalidateSelf();
    }
    return bool1;
  }
  
  public void unscheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable)
  {
    paramDrawable = getCallback();
    if (paramDrawable != null) {
      paramDrawable.unscheduleDrawable(this, paramRunnable);
    }
  }
  
  public static abstract interface Delegate
  {
    public abstract void onChipDrawableSizeChange();
  }
}
