package android.support.design.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.annotation.VisibleForTesting;
import android.support.design.R.attr;
import android.support.design.R.color;
import android.support.design.R.dimen;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.design.R.string;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.animation.AnimationUtils;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.internal.ViewUtils;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.TintTypedArray;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

public class TextInputLayout
  extends LinearLayout
{
  public static final int BOX_BACKGROUND_FILLED = 1;
  public static final int BOX_BACKGROUND_NONE = 0;
  public static final int BOX_BACKGROUND_OUTLINE = 2;
  @ColorInt
  private int A;
  @ColorInt
  private int B;
  private Drawable C;
  private final Rect D = new Rect();
  private final RectF E = new RectF();
  private Typeface F;
  private boolean G;
  private Drawable H;
  private CharSequence I;
  private CheckableImageButton J;
  private boolean K;
  private Drawable L;
  private Drawable M;
  private ColorStateList N;
  private boolean O;
  private PorterDuff.Mode P;
  private boolean Q;
  private ColorStateList R;
  private ColorStateList S;
  @ColorInt
  private final int T;
  @ColorInt
  private final int U;
  @ColorInt
  private int V;
  @ColorInt
  private final int W;
  EditText a;
  private boolean aa;
  private boolean ab;
  private ValueAnimator ac;
  private boolean ad;
  private boolean ae;
  private boolean af;
  boolean b;
  final CollapsingTextHelper c = new CollapsingTextHelper(this);
  private final FrameLayout d;
  private CharSequence e;
  private final f f = new f(this);
  private int g;
  private boolean h;
  private TextView i;
  private final int j;
  private final int k;
  private boolean l;
  private CharSequence m;
  private boolean n;
  private GradientDrawable o;
  private final int p;
  private final int q;
  private int r;
  private final int s;
  private float t;
  private float u;
  private float v;
  private float w;
  private int x;
  private final int y;
  private final int z;
  
  public TextInputLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.textInputStyle);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(1);
    setWillNotDraw(false);
    setAddStatesFromChildren(true);
    d = new FrameLayout(paramContext);
    d.setAddStatesFromChildren(true);
    addView(d);
    c.setTextSizeInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
    c.setPositionInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
    c.setCollapsedTextGravity(8388659);
    paramAttributeSet = ThemeEnforcement.obtainTintedStyledAttributes(paramContext, paramAttributeSet, R.styleable.TextInputLayout, paramInt, R.style.Widget_Design_TextInputLayout, new int[0]);
    l = paramAttributeSet.getBoolean(R.styleable.TextInputLayout_hintEnabled, true);
    setHint(paramAttributeSet.getText(R.styleable.TextInputLayout_android_hint));
    ab = paramAttributeSet.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
    p = paramContext.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_bottom_offset);
    q = paramContext.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
    s = paramAttributeSet.getDimensionPixelOffset(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
    t = paramAttributeSet.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopStart, 0.0F);
    u = paramAttributeSet.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopEnd, 0.0F);
    v = paramAttributeSet.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, 0.0F);
    w = paramAttributeSet.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomStart, 0.0F);
    B = paramAttributeSet.getColor(R.styleable.TextInputLayout_boxBackgroundColor, 0);
    V = paramAttributeSet.getColor(R.styleable.TextInputLayout_boxStrokeColor, 0);
    y = paramContext.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default);
    z = paramContext.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused);
    x = y;
    setBoxBackgroundMode(paramAttributeSet.getInt(R.styleable.TextInputLayout_boxBackgroundMode, 0));
    if (paramAttributeSet.hasValue(R.styleable.TextInputLayout_android_textColorHint))
    {
      ColorStateList localColorStateList = paramAttributeSet.getColorStateList(R.styleable.TextInputLayout_android_textColorHint);
      S = localColorStateList;
      R = localColorStateList;
    }
    T = ContextCompat.getColor(paramContext, R.color.mtrl_textinput_default_box_stroke_color);
    W = ContextCompat.getColor(paramContext, R.color.mtrl_textinput_disabled_color);
    U = ContextCompat.getColor(paramContext, R.color.mtrl_textinput_hovered_box_stroke_color);
    if (paramAttributeSet.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
      setHintTextAppearance(paramAttributeSet.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, 0));
    }
    paramInt = paramAttributeSet.getResourceId(R.styleable.TextInputLayout_errorTextAppearance, 0);
    boolean bool1 = paramAttributeSet.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
    int i1 = paramAttributeSet.getResourceId(R.styleable.TextInputLayout_helperTextTextAppearance, 0);
    boolean bool2 = paramAttributeSet.getBoolean(R.styleable.TextInputLayout_helperTextEnabled, false);
    paramContext = paramAttributeSet.getText(R.styleable.TextInputLayout_helperText);
    boolean bool3 = paramAttributeSet.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
    setCounterMaxLength(paramAttributeSet.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
    k = paramAttributeSet.getResourceId(R.styleable.TextInputLayout_counterTextAppearance, 0);
    j = paramAttributeSet.getResourceId(R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
    G = paramAttributeSet.getBoolean(R.styleable.TextInputLayout_passwordToggleEnabled, false);
    H = paramAttributeSet.getDrawable(R.styleable.TextInputLayout_passwordToggleDrawable);
    I = paramAttributeSet.getText(R.styleable.TextInputLayout_passwordToggleContentDescription);
    if (paramAttributeSet.hasValue(R.styleable.TextInputLayout_passwordToggleTint))
    {
      O = true;
      N = paramAttributeSet.getColorStateList(R.styleable.TextInputLayout_passwordToggleTint);
    }
    if (paramAttributeSet.hasValue(R.styleable.TextInputLayout_passwordToggleTintMode))
    {
      Q = true;
      P = ViewUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
    }
    paramAttributeSet.recycle();
    setHelperTextEnabled(bool2);
    setHelperText(paramContext);
    setHelperTextTextAppearance(i1);
    setErrorEnabled(bool1);
    setErrorTextAppearance(paramInt);
    setCounterEnabled(bool3);
    r();
    ViewCompat.setImportantForAccessibility(this, 2);
  }
  
  private void a(RectF paramRectF)
  {
    left -= q;
    top -= q;
    right += q;
    bottom += q;
  }
  
  private static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i2 = paramViewGroup.getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = paramViewGroup.getChildAt(i1);
      localView.setEnabled(paramBoolean);
      if ((localView instanceof ViewGroup)) {
        a((ViewGroup)localView, paramBoolean);
      }
      i1 += 1;
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool1 = isEnabled();
    EditText localEditText = a;
    int i2 = 1;
    int i1;
    if ((localEditText != null) && (!TextUtils.isEmpty(a.getText()))) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if ((a == null) || (!a.hasFocus())) {
      i2 = 0;
    }
    boolean bool2 = f.g();
    if (R != null)
    {
      c.setCollapsedTextColor(R);
      c.setExpandedTextColor(R);
    }
    if (!bool1)
    {
      c.setCollapsedTextColor(ColorStateList.valueOf(W));
      c.setExpandedTextColor(ColorStateList.valueOf(W));
    }
    else if (bool2)
    {
      c.setCollapsedTextColor(f.k());
    }
    else if ((h) && (i != null))
    {
      c.setCollapsedTextColor(i.getTextColors());
    }
    else if ((i2 != 0) && (S != null))
    {
      c.setCollapsedTextColor(S);
    }
    if ((i1 == 0) && ((!isEnabled()) || ((i2 == 0) && (!bool2))))
    {
      if ((paramBoolean2) || (!aa)) {
        c(paramBoolean1);
      }
    }
    else if ((paramBoolean2) || (aa)) {
      b(paramBoolean1);
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if ((ac != null) && (ac.isRunning())) {
      ac.cancel();
    }
    if ((paramBoolean) && (ab)) {
      a(1.0F);
    } else {
      c.setExpansionFraction(1.0F);
    }
    aa = false;
    if (s()) {
      t();
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if ((ac != null) && (ac.isRunning())) {
      ac.cancel();
    }
    if ((paramBoolean) && (ab)) {
      a(0.0F);
    } else {
      c.setExpansionFraction(0.0F);
    }
    if ((s()) && (((a)o).a())) {
      u();
    }
    aa = true;
  }
  
  private void d()
  {
    e();
    if (r != 0) {
      f();
    }
    g();
  }
  
  private void e()
  {
    if (r == 0)
    {
      o = null;
      return;
    }
    if ((r == 2) && (l) && (!(o instanceof a)))
    {
      o = new a();
      return;
    }
    if (!(o instanceof GradientDrawable)) {
      o = new GradientDrawable();
    }
  }
  
  private void f()
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)d.getLayoutParams();
    int i1 = i();
    if (i1 != topMargin)
    {
      topMargin = i1;
      d.requestLayout();
    }
  }
  
  private void g()
  {
    if ((r != 0) && (o != null) && (a != null))
    {
      if (getRight() == 0) {
        return;
      }
      int i8 = a.getLeft();
      int i7 = h();
      int i6 = a.getRight();
      int i5 = a.getBottom() + p;
      int i4 = i8;
      int i3 = i7;
      int i2 = i6;
      int i1 = i5;
      if (r == 2)
      {
        i4 = i8 + z / 2;
        i3 = i7 - z / 2;
        i2 = i6 - z / 2;
        i1 = i5 + z / 2;
      }
      o.setBounds(i4, i3, i2, i1);
      m();
      k();
      return;
    }
  }
  
  @NonNull
  private Drawable getBoxBackground()
  {
    if ((r != 1) && (r != 2)) {
      throw new IllegalStateException();
    }
    return o;
  }
  
  private float[] getCornerRadiiAsArray()
  {
    if (!ViewUtils.isLayoutRtl(this)) {
      return new float[] { t, t, u, u, v, v, w, w };
    }
    return new float[] { u, u, t, t, w, w, v, v };
  }
  
  private int h()
  {
    if (a == null) {
      return 0;
    }
    switch (r)
    {
    default: 
      return 0;
    case 2: 
      return a.getTop() + i();
    }
    return a.getTop();
  }
  
  private int i()
  {
    if (!l) {
      return 0;
    }
    switch (r)
    {
    default: 
      return 0;
    case 2: 
      return (int)(c.getCollapsedTextHeight() / 2.0F);
    }
    return (int)c.getCollapsedTextHeight();
  }
  
  private int j()
  {
    switch (r)
    {
    default: 
      return getPaddingTop();
    case 2: 
      return getBoxBackgroundgetBoundstop - i();
    }
    return getBoxBackgroundgetBoundstop + s;
  }
  
  private void k()
  {
    if (a == null) {
      return;
    }
    Object localObject2 = a.getBackground();
    if (localObject2 == null) {
      return;
    }
    Object localObject1 = localObject2;
    if (android.support.v7.widget.DrawableUtils.canSafelyMutateDrawable((Drawable)localObject2)) {
      localObject1 = ((Drawable)localObject2).mutate();
    }
    localObject2 = new Rect();
    DescendantOffsetUtils.getDescendantRect(this, a, (Rect)localObject2);
    localObject2 = ((Drawable)localObject1).getBounds();
    if (left != right)
    {
      Rect localRect = new Rect();
      ((Drawable)localObject1).getPadding(localRect);
      int i1 = left;
      int i2 = left;
      int i3 = right;
      int i4 = right;
      ((Drawable)localObject1).setBounds(i1 - i2, top, i3 + i4 * 2, a.getBottom());
    }
  }
  
  private void l()
  {
    switch (r)
    {
    default: 
      
    case 2: 
      if (V == 0)
      {
        V = S.getColorForState(getDrawableState(), S.getDefaultColor());
        return;
      }
      break;
    case 1: 
      x = 0;
    }
  }
  
  private void m()
  {
    if (o == null) {
      return;
    }
    l();
    if ((a != null) && (r == 2))
    {
      if (a.getBackground() != null) {
        C = a.getBackground();
      }
      ViewCompat.setBackground(a, null);
    }
    if ((a != null) && (r == 1) && (C != null)) {
      ViewCompat.setBackground(a, C);
    }
    if ((x > -1) && (A != 0)) {
      o.setStroke(x, A);
    }
    o.setCornerRadii(getCornerRadiiAsArray());
    o.setColor(B);
    invalidate();
  }
  
  private void n()
  {
    int i1 = Build.VERSION.SDK_INT;
    if ((i1 != 21) && (i1 != 22)) {
      return;
    }
    Drawable localDrawable1 = a.getBackground();
    if (localDrawable1 == null) {
      return;
    }
    if (!ad)
    {
      Drawable localDrawable2 = localDrawable1.getConstantState().newDrawable();
      if ((localDrawable1 instanceof DrawableContainer)) {
        ad = DrawableUtils.setContainerConstantState((DrawableContainer)localDrawable1, localDrawable2.getConstantState());
      }
      if (!ad)
      {
        ViewCompat.setBackground(a, localDrawable2);
        ad = true;
        d();
      }
    }
  }
  
  private void o()
  {
    if (a == null) {
      return;
    }
    Drawable[] arrayOfDrawable;
    if (q())
    {
      if (J == null)
      {
        J = ((CheckableImageButton)LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_password_icon, d, false));
        J.setImageDrawable(H);
        J.setContentDescription(I);
        d.addView(J);
        J.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            passwordVisibilityToggleRequested(false);
          }
        });
      }
      if ((a != null) && (ViewCompat.getMinimumHeight(a) <= 0)) {
        a.setMinimumHeight(ViewCompat.getMinimumHeight(J));
      }
      J.setVisibility(0);
      J.setChecked(K);
      if (L == null) {
        L = new ColorDrawable();
      }
      L.setBounds(0, 0, J.getMeasuredWidth(), 1);
      arrayOfDrawable = TextViewCompat.getCompoundDrawablesRelative(a);
      if (arrayOfDrawable[2] != L) {
        M = arrayOfDrawable[2];
      }
      TextViewCompat.setCompoundDrawablesRelative(a, arrayOfDrawable[0], arrayOfDrawable[1], L, arrayOfDrawable[3]);
      J.setPadding(a.getPaddingLeft(), a.getPaddingTop(), a.getPaddingRight(), a.getPaddingBottom());
      return;
    }
    if ((J != null) && (J.getVisibility() == 0)) {
      J.setVisibility(8);
    }
    if (L != null)
    {
      arrayOfDrawable = TextViewCompat.getCompoundDrawablesRelative(a);
      if (arrayOfDrawable[2] == L)
      {
        TextViewCompat.setCompoundDrawablesRelative(a, arrayOfDrawable[0], arrayOfDrawable[1], M, arrayOfDrawable[3]);
        L = null;
      }
    }
  }
  
  private boolean p()
  {
    return (a != null) && ((a.getTransformationMethod() instanceof PasswordTransformationMethod));
  }
  
  private boolean q()
  {
    return (G) && ((p()) || (K));
  }
  
  private void r()
  {
    if ((H != null) && ((O) || (Q)))
    {
      H = DrawableCompat.wrap(H).mutate();
      if (O) {
        DrawableCompat.setTintList(H, N);
      }
      if (Q) {
        DrawableCompat.setTintMode(H, P);
      }
      if ((J != null) && (J.getDrawable() != H)) {
        J.setImageDrawable(H);
      }
    }
  }
  
  private boolean s()
  {
    return (l) && (!TextUtils.isEmpty(m)) && ((o instanceof a));
  }
  
  private void setEditText(EditText paramEditText)
  {
    if (a == null)
    {
      if (!(paramEditText instanceof TextInputEditText)) {
        Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
      }
      a = paramEditText;
      d();
      setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
      if (!p()) {
        c.setTypefaces(a.getTypeface());
      }
      c.setExpandedTextSize(a.getTextSize());
      int i1 = a.getGravity();
      c.setCollapsedTextGravity(i1 & 0xFFFFFF8F | 0x30);
      c.setExpandedTextGravity(i1);
      a.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable)
        {
          a(TextInputLayout.a(TextInputLayout.this) ^ true);
          if (b) {
            a(paramAnonymousEditable.length());
          }
        }
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      if (R == null) {
        R = a.getHintTextColors();
      }
      if (l)
      {
        if (TextUtils.isEmpty(m))
        {
          e = a.getHint();
          setHint(e);
          a.setHint(null);
        }
        n = true;
      }
      if (i != null) {
        a(a.getText().length());
      }
      f.d();
      o();
      a(false, true);
      return;
    }
    throw new IllegalArgumentException("We already have an EditText, can only have one");
  }
  
  private void setHintInternal(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(paramCharSequence, m))
    {
      m = paramCharSequence;
      c.setText(paramCharSequence);
      if (!aa) {
        t();
      }
    }
  }
  
  private void t()
  {
    if (!s()) {
      return;
    }
    RectF localRectF = E;
    c.getCollapsedTextActualBounds(localRectF);
    a(localRectF);
    ((a)o).a(localRectF);
  }
  
  private void u()
  {
    if (s()) {
      ((a)o).b();
    }
  }
  
  @VisibleForTesting
  void a(float paramFloat)
  {
    if (c.getExpansionFraction() == paramFloat) {
      return;
    }
    if (ac == null)
    {
      ac = new ValueAnimator();
      ac.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
      ac.setDuration(167L);
      ac.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          c.setExpansionFraction(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
        }
      });
    }
    ac.setFloatValues(new float[] { c.getExpansionFraction(), paramFloat });
    ac.start();
  }
  
  void a(int paramInt)
  {
    boolean bool2 = h;
    if (g == -1)
    {
      i.setText(String.valueOf(paramInt));
      i.setContentDescription(null);
      h = false;
    }
    else
    {
      if (ViewCompat.getAccessibilityLiveRegion(i) == 1) {
        ViewCompat.setAccessibilityLiveRegion(i, 0);
      }
      boolean bool1;
      if (paramInt > g) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      h = bool1;
      if (bool2 != h)
      {
        TextView localTextView = i;
        int i1;
        if (h) {
          i1 = j;
        } else {
          i1 = k;
        }
        a(localTextView, i1);
        if (h) {
          ViewCompat.setAccessibilityLiveRegion(i, 1);
        }
      }
      i.setText(getContext().getString(R.string.character_counter_pattern, new Object[] { Integer.valueOf(paramInt), Integer.valueOf(g) }));
      i.setContentDescription(getContext().getString(R.string.character_counter_content_description, new Object[] { Integer.valueOf(paramInt), Integer.valueOf(g) }));
    }
    if ((a != null) && (bool2 != h))
    {
      a(false);
      c();
      b();
    }
  }
  
  void a(TextView paramTextView, @StyleRes int paramInt)
  {
    i1 = 1;
    try
    {
      TextViewCompat.setTextAppearance(paramTextView, paramInt);
      if (Build.VERSION.SDK_INT >= 23)
      {
        paramInt = paramTextView.getTextColors().getDefaultColor();
        if (paramInt == -65281)
        {
          paramInt = i1;
          break label37;
        }
      }
      paramInt = 0;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        label37:
        paramInt = i1;
      }
    }
    if (paramInt != 0)
    {
      TextViewCompat.setTextAppearance(paramTextView, R.style.TextAppearance_AppCompat_Caption);
      paramTextView.setTextColor(ContextCompat.getColor(getContext(), R.color.design_error));
    }
  }
  
  void a(boolean paramBoolean)
  {
    a(paramBoolean, false);
  }
  
  boolean a()
  {
    return n;
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText))
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramLayoutParams);
      gravity = (gravity & 0xFFFFFF8F | 0x10);
      d.addView(paramView, localLayoutParams);
      d.setLayoutParams(paramLayoutParams);
      f();
      setEditText((EditText)paramView);
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  void b()
  {
    if (a == null) {
      return;
    }
    Drawable localDrawable2 = a.getBackground();
    if (localDrawable2 == null) {
      return;
    }
    n();
    Drawable localDrawable1 = localDrawable2;
    if (android.support.v7.widget.DrawableUtils.canSafelyMutateDrawable(localDrawable2)) {
      localDrawable1 = localDrawable2.mutate();
    }
    if (f.g())
    {
      localDrawable1.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(f.j(), PorterDuff.Mode.SRC_IN));
      return;
    }
    if ((h) && (i != null))
    {
      localDrawable1.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
      return;
    }
    DrawableCompat.clearColorFilter(localDrawable1);
    a.refreshDrawableState();
  }
  
  void c()
  {
    if (o != null)
    {
      if (r == 0) {
        return;
      }
      EditText localEditText = a;
      int i2 = 1;
      int i1;
      if ((localEditText != null) && (a.hasFocus())) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if ((a == null) || (!a.isHovered())) {
        i2 = 0;
      }
      if (r == 2)
      {
        if (!isEnabled()) {
          A = W;
        } else if (f.g()) {
          A = f.j();
        } else if ((h) && (i != null)) {
          A = i.getCurrentTextColor();
        } else if (i1 != 0) {
          A = V;
        } else if (i2 != 0) {
          A = U;
        } else {
          A = T;
        }
        if (((i2 != 0) || (i1 != 0)) && (isEnabled())) {
          x = z;
        } else {
          x = y;
        }
        m();
      }
      return;
    }
  }
  
  public void dispatchProvideAutofillStructure(ViewStructure paramViewStructure, int paramInt)
  {
    if ((e != null) && (a != null))
    {
      boolean bool = n;
      n = false;
      CharSequence localCharSequence = a.getHint();
      a.setHint(e);
      try
      {
        super.dispatchProvideAutofillStructure(paramViewStructure, paramInt);
        return;
      }
      finally
      {
        a.setHint(localCharSequence);
        n = bool;
      }
    }
    super.dispatchProvideAutofillStructure(paramViewStructure, paramInt);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    af = true;
    super.dispatchRestoreInstanceState(paramSparseArray);
    af = false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (o != null) {
      o.draw(paramCanvas);
    }
    super.draw(paramCanvas);
    if (l) {
      c.draw(paramCanvas);
    }
  }
  
  protected void drawableStateChanged()
  {
    if (ae) {
      return;
    }
    boolean bool2 = true;
    ae = true;
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    if ((!ViewCompat.isLaidOut(this)) || (!isEnabled())) {
      bool2 = false;
    }
    a(bool2);
    b();
    g();
    c();
    boolean bool1;
    if (c != null) {
      bool1 = c.setState(arrayOfInt) | false;
    } else {
      bool1 = false;
    }
    if (bool1) {
      invalidate();
    }
    ae = false;
  }
  
  public int getBoxBackgroundColor()
  {
    return B;
  }
  
  public float getBoxCornerRadiusBottomEnd()
  {
    return v;
  }
  
  public float getBoxCornerRadiusBottomStart()
  {
    return w;
  }
  
  public float getBoxCornerRadiusTopEnd()
  {
    return u;
  }
  
  public float getBoxCornerRadiusTopStart()
  {
    return t;
  }
  
  public int getBoxStrokeColor()
  {
    return V;
  }
  
  public int getCounterMaxLength()
  {
    return g;
  }
  
  @Nullable
  CharSequence getCounterOverflowDescription()
  {
    if ((b) && (h) && (i != null)) {
      return i.getContentDescription();
    }
    return null;
  }
  
  @Nullable
  public ColorStateList getDefaultHintTextColor()
  {
    return R;
  }
  
  @Nullable
  public EditText getEditText()
  {
    return a;
  }
  
  @Nullable
  public CharSequence getError()
  {
    if (f.e()) {
      return f.h();
    }
    return null;
  }
  
  @ColorInt
  public int getErrorCurrentTextColors()
  {
    return f.j();
  }
  
  @VisibleForTesting
  final int getErrorTextCurrentColor()
  {
    return f.j();
  }
  
  @Nullable
  public CharSequence getHelperText()
  {
    if (f.f()) {
      return f.i();
    }
    return null;
  }
  
  @ColorInt
  public int getHelperTextCurrentTextColor()
  {
    return f.l();
  }
  
  @Nullable
  public CharSequence getHint()
  {
    if (l) {
      return m;
    }
    return null;
  }
  
  @VisibleForTesting
  final float getHintCollapsedTextHeight()
  {
    return c.getCollapsedTextHeight();
  }
  
  @VisibleForTesting
  final int getHintCurrentCollapsedTextColor()
  {
    return c.getCurrentCollapsedTextColor();
  }
  
  @Nullable
  public CharSequence getPasswordVisibilityToggleContentDescription()
  {
    return I;
  }
  
  @Nullable
  public Drawable getPasswordVisibilityToggleDrawable()
  {
    return H;
  }
  
  @Nullable
  public Typeface getTypeface()
  {
    return F;
  }
  
  public boolean isCounterEnabled()
  {
    return b;
  }
  
  public boolean isErrorEnabled()
  {
    return f.e();
  }
  
  public boolean isHelperTextEnabled()
  {
    return f.f();
  }
  
  public boolean isHintAnimationEnabled()
  {
    return ab;
  }
  
  public boolean isHintEnabled()
  {
    return l;
  }
  
  public boolean isPasswordVisibilityToggleEnabled()
  {
    return G;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (o != null) {
      g();
    }
    if ((l) && (a != null))
    {
      Rect localRect = D;
      DescendantOffsetUtils.getDescendantRect(this, a, localRect);
      paramInt1 = left + a.getCompoundPaddingLeft();
      paramInt3 = right - a.getCompoundPaddingRight();
      int i1 = j();
      c.setExpandedBounds(paramInt1, top + a.getCompoundPaddingTop(), paramInt3, bottom - a.getCompoundPaddingBottom());
      c.setCollapsedBounds(paramInt1, i1, paramInt3, paramInt4 - paramInt2 - getPaddingBottom());
      c.recalculate();
      if ((s()) && (!aa)) {
        t();
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    o();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof a))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (a)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setError(a);
    if (b) {
      passwordVisibilityToggleRequested(true);
    }
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    a localA = new a(super.onSaveInstanceState());
    if (f.g()) {
      a = getError();
    }
    b = K;
    return localA;
  }
  
  public void passwordVisibilityToggleRequested(boolean paramBoolean)
  {
    if (G)
    {
      int i1 = a.getSelectionEnd();
      if (p())
      {
        a.setTransformationMethod(null);
        K = true;
      }
      else
      {
        a.setTransformationMethod(PasswordTransformationMethod.getInstance());
        K = false;
      }
      J.setChecked(K);
      if (paramBoolean) {
        J.jumpDrawablesToCurrentState();
      }
      a.setSelection(i1);
    }
  }
  
  public void setBoxBackgroundColor(@ColorInt int paramInt)
  {
    if (B != paramInt)
    {
      B = paramInt;
      m();
    }
  }
  
  public void setBoxBackgroundColorResource(@ColorRes int paramInt)
  {
    setBoxBackgroundColor(ContextCompat.getColor(getContext(), paramInt));
  }
  
  public void setBoxBackgroundMode(int paramInt)
  {
    if (paramInt == r) {
      return;
    }
    r = paramInt;
    d();
  }
  
  public void setBoxCornerRadii(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if ((t != paramFloat1) || (u != paramFloat2) || (v != paramFloat4) || (w != paramFloat3))
    {
      t = paramFloat1;
      u = paramFloat2;
      v = paramFloat4;
      w = paramFloat3;
      m();
    }
  }
  
  public void setBoxCornerRadiiResources(@DimenRes int paramInt1, @DimenRes int paramInt2, @DimenRes int paramInt3, @DimenRes int paramInt4)
  {
    setBoxCornerRadii(getContext().getResources().getDimension(paramInt1), getContext().getResources().getDimension(paramInt2), getContext().getResources().getDimension(paramInt3), getContext().getResources().getDimension(paramInt4));
  }
  
  public void setBoxStrokeColor(@ColorInt int paramInt)
  {
    if (V != paramInt)
    {
      V = paramInt;
      c();
    }
  }
  
  public void setCounterEnabled(boolean paramBoolean)
  {
    if (b != paramBoolean)
    {
      if (paramBoolean)
      {
        i = new AppCompatTextView(getContext());
        i.setId(R.id.textinput_counter);
        if (F != null) {
          i.setTypeface(F);
        }
        i.setMaxLines(1);
        a(i, k);
        f.a(i, 2);
        if (a == null) {
          a(0);
        } else {
          a(a.getText().length());
        }
      }
      else
      {
        f.b(i, 2);
        i = null;
      }
      b = paramBoolean;
    }
  }
  
  public void setCounterMaxLength(int paramInt)
  {
    if (g != paramInt)
    {
      if (paramInt > 0) {
        g = paramInt;
      } else {
        g = -1;
      }
      if (b)
      {
        if (a == null) {
          paramInt = 0;
        } else {
          paramInt = a.getText().length();
        }
        a(paramInt);
      }
    }
  }
  
  public void setDefaultHintTextColor(@Nullable ColorStateList paramColorStateList)
  {
    R = paramColorStateList;
    S = paramColorStateList;
    if (a != null) {
      a(false);
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    a(this, paramBoolean);
    super.setEnabled(paramBoolean);
  }
  
  public void setError(@Nullable CharSequence paramCharSequence)
  {
    if (!f.e())
    {
      if (TextUtils.isEmpty(paramCharSequence)) {
        return;
      }
      setErrorEnabled(true);
    }
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      f.b(paramCharSequence);
      return;
    }
    f.b();
  }
  
  public void setErrorEnabled(boolean paramBoolean)
  {
    f.a(paramBoolean);
  }
  
  public void setErrorTextAppearance(@StyleRes int paramInt)
  {
    f.b(paramInt);
  }
  
  public void setErrorTextColor(@Nullable ColorStateList paramColorStateList)
  {
    f.a(paramColorStateList);
  }
  
  public void setHelperText(@Nullable CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      if (isHelperTextEnabled()) {
        setHelperTextEnabled(false);
      }
    }
    else
    {
      if (!isHelperTextEnabled()) {
        setHelperTextEnabled(true);
      }
      f.a(paramCharSequence);
    }
  }
  
  public void setHelperTextColor(@Nullable ColorStateList paramColorStateList)
  {
    f.b(paramColorStateList);
  }
  
  public void setHelperTextEnabled(boolean paramBoolean)
  {
    f.b(paramBoolean);
  }
  
  public void setHelperTextTextAppearance(@StyleRes int paramInt)
  {
    f.c(paramInt);
  }
  
  public void setHint(@Nullable CharSequence paramCharSequence)
  {
    if (l)
    {
      setHintInternal(paramCharSequence);
      sendAccessibilityEvent(2048);
    }
  }
  
  public void setHintAnimationEnabled(boolean paramBoolean)
  {
    ab = paramBoolean;
  }
  
  public void setHintEnabled(boolean paramBoolean)
  {
    if (paramBoolean != l)
    {
      l = paramBoolean;
      if (!l)
      {
        n = false;
        if ((!TextUtils.isEmpty(m)) && (TextUtils.isEmpty(a.getHint()))) {
          a.setHint(m);
        }
        setHintInternal(null);
      }
      else
      {
        CharSequence localCharSequence = a.getHint();
        if (!TextUtils.isEmpty(localCharSequence))
        {
          if (TextUtils.isEmpty(m)) {
            setHint(localCharSequence);
          }
          a.setHint(null);
        }
        n = true;
      }
      if (a != null) {
        f();
      }
    }
  }
  
  public void setHintTextAppearance(@StyleRes int paramInt)
  {
    c.setCollapsedTextAppearance(paramInt);
    S = c.getCollapsedTextColor();
    if (a != null)
    {
      a(false);
      f();
    }
  }
  
  public void setPasswordVisibilityToggleContentDescription(@StringRes int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getResources().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setPasswordVisibilityToggleContentDescription(localCharSequence);
  }
  
  public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence paramCharSequence)
  {
    I = paramCharSequence;
    if (J != null) {
      J.setContentDescription(paramCharSequence);
    }
  }
  
  public void setPasswordVisibilityToggleDrawable(@DrawableRes int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setPasswordVisibilityToggleDrawable(localDrawable);
  }
  
  public void setPasswordVisibilityToggleDrawable(@Nullable Drawable paramDrawable)
  {
    H = paramDrawable;
    if (J != null) {
      J.setImageDrawable(paramDrawable);
    }
  }
  
  public void setPasswordVisibilityToggleEnabled(boolean paramBoolean)
  {
    if (G != paramBoolean)
    {
      G = paramBoolean;
      if ((!paramBoolean) && (K) && (a != null)) {
        a.setTransformationMethod(PasswordTransformationMethod.getInstance());
      }
      K = false;
      o();
    }
  }
  
  public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList paramColorStateList)
  {
    N = paramColorStateList;
    O = true;
    r();
  }
  
  public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    P = paramMode;
    Q = true;
    r();
  }
  
  public void setTextInputAccessibilityDelegate(AccessibilityDelegate paramAccessibilityDelegate)
  {
    if (a != null) {
      ViewCompat.setAccessibilityDelegate(a, paramAccessibilityDelegate);
    }
  }
  
  public void setTypeface(@Nullable Typeface paramTypeface)
  {
    if (paramTypeface != F)
    {
      F = paramTypeface;
      c.setTypefaces(paramTypeface);
      f.a(paramTypeface);
      if (i != null) {
        i.setTypeface(paramTypeface);
      }
    }
  }
  
  public static class AccessibilityDelegate
    extends AccessibilityDelegateCompat
  {
    private final TextInputLayout a;
    
    public AccessibilityDelegate(TextInputLayout paramTextInputLayout)
    {
      a = paramTextInputLayout;
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      paramView = a.getEditText();
      if (paramView != null) {
        paramView = paramView.getText();
      } else {
        paramView = null;
      }
      CharSequence localCharSequence3 = a.getHint();
      CharSequence localCharSequence1 = a.getError();
      CharSequence localCharSequence2 = a.getCounterOverflowDescription();
      boolean bool1 = TextUtils.isEmpty(paramView) ^ true;
      boolean bool2 = TextUtils.isEmpty(localCharSequence3) ^ true;
      boolean bool3 = TextUtils.isEmpty(localCharSequence1) ^ true;
      boolean bool5 = false;
      int i;
      if ((!bool3) && (TextUtils.isEmpty(localCharSequence2))) {
        i = 0;
      } else {
        i = 1;
      }
      if (bool1) {
        paramAccessibilityNodeInfoCompat.setText(paramView);
      } else if (bool2) {
        paramAccessibilityNodeInfoCompat.setText(localCharSequence3);
      }
      if (bool2)
      {
        paramAccessibilityNodeInfoCompat.setHintText(localCharSequence3);
        boolean bool4 = bool5;
        if (!bool1)
        {
          bool4 = bool5;
          if (bool2) {
            bool4 = true;
          }
        }
        paramAccessibilityNodeInfoCompat.setShowingHintText(bool4);
      }
      if (i != 0)
      {
        if (bool3) {
          paramView = localCharSequence1;
        } else {
          paramView = localCharSequence2;
        }
        paramAccessibilityNodeInfoCompat.setError(paramView);
        paramAccessibilityNodeInfoCompat.setContentInvalid(true);
      }
    }
    
    public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramView = a.getEditText();
      if (paramView != null) {
        paramView = paramView.getText();
      } else {
        paramView = null;
      }
      Object localObject = paramView;
      if (TextUtils.isEmpty(paramView)) {
        localObject = a.getHint();
      }
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramAccessibilityEvent.getText().add(localObject);
      }
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface BoxBackgroundMode {}
  
  static class a
    extends AbsSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public TextInputLayout.a a(Parcel paramAnonymousParcel)
      {
        return new TextInputLayout.a(paramAnonymousParcel, null);
      }
      
      public TextInputLayout.a a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new TextInputLayout.a(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public TextInputLayout.a[] a(int paramAnonymousInt)
      {
        return new TextInputLayout.a[paramAnonymousInt];
      }
    };
    CharSequence a;
    boolean b;
    
    a(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      a = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      b = bool;
    }
    
    a(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("TextInputLayout.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" error=");
      localStringBuilder.append(a);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
  }
}
