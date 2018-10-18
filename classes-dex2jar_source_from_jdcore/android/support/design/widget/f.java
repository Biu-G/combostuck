package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.design.R.dimen;
import android.support.design.R.id;
import android.support.design.animation.AnimationUtils;
import android.support.design.animation.AnimatorSetCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.Space;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.widget.AppCompatTextView;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

final class f
{
  private final Context a;
  private final TextInputLayout b;
  private LinearLayout c;
  private int d;
  private FrameLayout e;
  private int f;
  @Nullable
  private Animator g;
  private final float h;
  private int i;
  private int j;
  private CharSequence k;
  private boolean l;
  private TextView m;
  private int n;
  private CharSequence o;
  private boolean p;
  private TextView q;
  private int r;
  private Typeface s;
  
  public f(TextInputLayout paramTextInputLayout)
  {
    a = paramTextInputLayout.getContext();
    b = paramTextInputLayout;
    h = a.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
  }
  
  private ObjectAnimator a(TextView paramTextView)
  {
    paramTextView = ObjectAnimator.ofFloat(paramTextView, View.TRANSLATION_Y, new float[] { -h, 0.0F });
    paramTextView.setDuration(217L);
    paramTextView.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
    return paramTextView;
  }
  
  private ObjectAnimator a(TextView paramTextView, boolean paramBoolean)
  {
    float f1;
    if (paramBoolean) {
      f1 = 1.0F;
    } else {
      f1 = 0.0F;
    }
    paramTextView = ObjectAnimator.ofFloat(paramTextView, View.ALPHA, new float[] { f1 });
    paramTextView.setDuration(167L);
    paramTextView.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
    return paramTextView;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return;
    }
    TextView localTextView;
    if (paramInt2 != 0)
    {
      localTextView = d(paramInt2);
      if (localTextView != null)
      {
        localTextView.setVisibility(0);
        localTextView.setAlpha(1.0F);
      }
    }
    if (paramInt1 != 0)
    {
      localTextView = d(paramInt1);
      if (localTextView != null)
      {
        localTextView.setVisibility(4);
        if (paramInt1 == 1) {
          localTextView.setText(null);
        }
      }
    }
    i = paramInt2;
  }
  
  private void a(final int paramInt1, final int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      AnimatorSet localAnimatorSet = new AnimatorSet();
      g = localAnimatorSet;
      ArrayList localArrayList = new ArrayList();
      a(localArrayList, p, q, 2, paramInt1, paramInt2);
      a(localArrayList, l, m, 1, paramInt1, paramInt2);
      AnimatorSetCompat.playTogether(localAnimatorSet, localArrayList);
      localAnimatorSet.addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          f.a(f.this, paramInt2);
          f.a(f.this, null);
          if (b != null)
          {
            b.setVisibility(4);
            if ((paramInt1 == 1) && (f.a(f.this) != null)) {
              f.a(f.this).setText(null);
            }
          }
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          if (d != null) {
            d.setVisibility(0);
          }
        }
      });
      localAnimatorSet.start();
    }
    else
    {
      a(paramInt1, paramInt2);
    }
    b.b();
    b.a(paramBoolean);
    b.c();
  }
  
  private void a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 0) {
      paramViewGroup.setVisibility(8);
    }
  }
  
  private void a(@Nullable TextView paramTextView, Typeface paramTypeface)
  {
    if (paramTextView != null) {
      paramTextView.setTypeface(paramTypeface);
    }
  }
  
  private void a(List<Animator> paramList, boolean paramBoolean, TextView paramTextView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramTextView != null)
    {
      if (!paramBoolean) {
        return;
      }
      if ((paramInt1 == paramInt3) || (paramInt1 == paramInt2))
      {
        if (paramInt3 == paramInt1) {
          paramBoolean = true;
        } else {
          paramBoolean = false;
        }
        paramList.add(a(paramTextView, paramBoolean));
        if (paramInt3 == paramInt1) {
          paramList.add(a(paramTextView));
        }
      }
      return;
    }
  }
  
  private boolean a(TextView paramTextView, @Nullable CharSequence paramCharSequence)
  {
    return (ViewCompat.isLaidOut(b)) && (b.isEnabled()) && ((j != i) || (paramTextView == null) || (!TextUtils.equals(paramTextView.getText(), paramCharSequence)));
  }
  
  @Nullable
  private TextView d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 2: 
      return q;
    }
    return m;
  }
  
  private boolean e(int paramInt)
  {
    return (paramInt == 1) && (m != null) && (!TextUtils.isEmpty(k));
  }
  
  private boolean m()
  {
    return (c != null) && (b.getEditText() != null);
  }
  
  void a()
  {
    c();
    if (i == 2) {
      j = 0;
    }
    a(i, j, a(q, null));
  }
  
  void a(@Nullable ColorStateList paramColorStateList)
  {
    if (m != null) {
      m.setTextColor(paramColorStateList);
    }
  }
  
  void a(Typeface paramTypeface)
  {
    if (paramTypeface != s)
    {
      s = paramTypeface;
      a(m, paramTypeface);
      a(q, paramTypeface);
    }
  }
  
  void a(TextView paramTextView, int paramInt)
  {
    if ((c == null) && (e == null))
    {
      c = new LinearLayout(a);
      c.setOrientation(0);
      b.addView(c, -1, -2);
      e = new FrameLayout(a);
      c.addView(e, -1, new FrameLayout.LayoutParams(-2, -2));
      Space localSpace = new Space(a);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, 0, 1.0F);
      c.addView(localSpace, localLayoutParams);
      if (b.getEditText() != null) {
        d();
      }
    }
    if (a(paramInt))
    {
      e.setVisibility(0);
      e.addView(paramTextView);
      f += 1;
    }
    else
    {
      c.addView(paramTextView, paramInt);
    }
    c.setVisibility(0);
    d += 1;
  }
  
  void a(CharSequence paramCharSequence)
  {
    c();
    o = paramCharSequence;
    q.setText(paramCharSequence);
    if (i != 2) {
      j = 2;
    }
    a(i, j, a(q, paramCharSequence));
  }
  
  void a(boolean paramBoolean)
  {
    if (l == paramBoolean) {
      return;
    }
    c();
    if (paramBoolean)
    {
      m = new AppCompatTextView(a);
      m.setId(R.id.textinput_error);
      if (s != null) {
        m.setTypeface(s);
      }
      b(n);
      m.setVisibility(4);
      ViewCompat.setAccessibilityLiveRegion(m, 1);
      a(m, 0);
    }
    else
    {
      b();
      b(m, 0);
      m = null;
      b.b();
      b.c();
    }
    l = paramBoolean;
  }
  
  boolean a(int paramInt)
  {
    boolean bool = true;
    if (paramInt != 0)
    {
      if (paramInt == 1) {
        return true;
      }
      bool = false;
    }
    return bool;
  }
  
  void b()
  {
    k = null;
    c();
    if (i == 1) {
      if ((p) && (!TextUtils.isEmpty(o))) {
        j = 2;
      } else {
        j = 0;
      }
    }
    a(i, j, a(m, null));
  }
  
  void b(@StyleRes int paramInt)
  {
    n = paramInt;
    if (m != null) {
      b.a(m, paramInt);
    }
  }
  
  void b(@Nullable ColorStateList paramColorStateList)
  {
    if (q != null) {
      q.setTextColor(paramColorStateList);
    }
  }
  
  void b(TextView paramTextView, int paramInt)
  {
    if (c == null) {
      return;
    }
    if ((a(paramInt)) && (e != null))
    {
      f -= 1;
      a(e, f);
      e.removeView(paramTextView);
    }
    else
    {
      c.removeView(paramTextView);
    }
    d -= 1;
    a(c, d);
  }
  
  void b(CharSequence paramCharSequence)
  {
    c();
    k = paramCharSequence;
    m.setText(paramCharSequence);
    if (i != 1) {
      j = 1;
    }
    a(i, j, a(m, paramCharSequence));
  }
  
  void b(boolean paramBoolean)
  {
    if (p == paramBoolean) {
      return;
    }
    c();
    if (paramBoolean)
    {
      q = new AppCompatTextView(a);
      q.setId(R.id.textinput_helper_text);
      if (s != null) {
        q.setTypeface(s);
      }
      q.setVisibility(4);
      ViewCompat.setAccessibilityLiveRegion(q, 1);
      c(r);
      a(q, 1);
    }
    else
    {
      a();
      b(q, 1);
      q = null;
      b.b();
      b.c();
    }
    p = paramBoolean;
  }
  
  void c()
  {
    if (g != null) {
      g.cancel();
    }
  }
  
  void c(@StyleRes int paramInt)
  {
    r = paramInt;
    if (q != null) {
      TextViewCompat.setTextAppearance(q, paramInt);
    }
  }
  
  void d()
  {
    if (m()) {
      ViewCompat.setPaddingRelative(c, ViewCompat.getPaddingStart(b.getEditText()), 0, ViewCompat.getPaddingEnd(b.getEditText()), 0);
    }
  }
  
  boolean e()
  {
    return l;
  }
  
  boolean f()
  {
    return p;
  }
  
  boolean g()
  {
    return e(j);
  }
  
  CharSequence h()
  {
    return k;
  }
  
  CharSequence i()
  {
    return o;
  }
  
  @ColorInt
  int j()
  {
    if (m != null) {
      return m.getCurrentTextColor();
    }
    return -1;
  }
  
  @Nullable
  ColorStateList k()
  {
    if (m != null) {
      return m.getTextColors();
    }
    return null;
  }
  
  @ColorInt
  int l()
  {
    if (q != null) {
      return q.getCurrentTextColor();
    }
    return -1;
  }
}
