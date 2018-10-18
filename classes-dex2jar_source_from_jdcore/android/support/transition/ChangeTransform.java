package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

public class ChangeTransform
  extends Transition
{
  private static final String[] i = { "android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix" };
  private static final Property<b, float[]> j = new Property([F.class, "nonTranslations")
  {
    public void a(ChangeTransform.b paramAnonymousB, float[] paramAnonymousArrayOfFloat)
    {
      paramAnonymousB.a(paramAnonymousArrayOfFloat);
    }
    
    public float[] a(ChangeTransform.b paramAnonymousB)
    {
      return null;
    }
  };
  private static final Property<b, PointF> k = new Property(PointF.class, "translations")
  {
    public PointF a(ChangeTransform.b paramAnonymousB)
    {
      return null;
    }
    
    public void a(ChangeTransform.b paramAnonymousB, PointF paramAnonymousPointF)
    {
      paramAnonymousB.a(paramAnonymousPointF);
    }
  };
  private static final boolean l;
  boolean a = true;
  private boolean m = true;
  private Matrix n = new Matrix();
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 21) {
      bool = true;
    } else {
      bool = false;
    }
    l = bool;
  }
  
  public ChangeTransform() {}
  
  public ChangeTransform(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.g);
    paramAttributeSet = (XmlPullParser)paramAttributeSet;
    a = TypedArrayUtils.getNamedBoolean(paramContext, paramAttributeSet, "reparentWithOverlay", 1, true);
    m = TypedArrayUtils.getNamedBoolean(paramContext, paramAttributeSet, "reparent", 0, true);
    paramContext.recycle();
  }
  
  private ObjectAnimator a(final TransitionValues paramTransitionValues1, final TransitionValues paramTransitionValues2, final boolean paramBoolean)
  {
    paramTransitionValues1 = (Matrix)values.get("android:changeTransform:matrix");
    Object localObject2 = (Matrix)values.get("android:changeTransform:matrix");
    Object localObject1 = paramTransitionValues1;
    if (paramTransitionValues1 == null) {
      localObject1 = h.a;
    }
    paramTransitionValues1 = (TransitionValues)localObject2;
    if (localObject2 == null) {
      paramTransitionValues1 = h.a;
    }
    if (((Matrix)localObject1).equals(paramTransitionValues1)) {
      return null;
    }
    localObject2 = (c)values.get("android:changeTransform:transforms");
    paramTransitionValues2 = view;
    a(paramTransitionValues2);
    Object localObject3 = new float[9];
    ((Matrix)localObject1).getValues((float[])localObject3);
    float[] arrayOfFloat = new float[9];
    paramTransitionValues1.getValues(arrayOfFloat);
    localObject1 = new b(paramTransitionValues2, (float[])localObject3);
    PropertyValuesHolder localPropertyValuesHolder = PropertyValuesHolder.ofObject(j, new b(new float[9]), new float[][] { localObject3, arrayOfFloat });
    localObject3 = getPathMotion().getPath(localObject3[2], localObject3[5], arrayOfFloat[2], arrayOfFloat[5]);
    localObject3 = ObjectAnimator.ofPropertyValuesHolder(localObject1, new PropertyValuesHolder[] { localPropertyValuesHolder, k.a(k, (Path)localObject3) });
    paramTransitionValues1 = new AnimatorListenerAdapter()
    {
      private boolean g;
      private Matrix h = new Matrix();
      
      private void a(Matrix paramAnonymousMatrix)
      {
        h.set(paramAnonymousMatrix);
        paramTransitionValues2.setTag(R.id.transition_transform, h);
        d.a(paramTransitionValues2);
      }
      
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        g = true;
      }
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (!g) {
          if ((paramBoolean) && (paramBoolean))
          {
            a(paramTransitionValues1);
          }
          else
          {
            paramTransitionValues2.setTag(R.id.transition_transform, null);
            paramTransitionValues2.setTag(R.id.parent_matrix, null);
          }
        }
        aa.c(paramTransitionValues2, null);
        d.a(paramTransitionValues2);
      }
      
      public void onAnimationPause(Animator paramAnonymousAnimator)
      {
        a(e.a());
      }
      
      public void onAnimationResume(Animator paramAnonymousAnimator)
      {
        ChangeTransform.a(paramTransitionValues2);
      }
    };
    ((ObjectAnimator)localObject3).addListener(paramTransitionValues1);
    a.a((Animator)localObject3, paramTransitionValues1);
    return localObject3;
  }
  
  private void a(TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    Matrix localMatrix1 = (Matrix)values.get("android:changeTransform:parentMatrix");
    view.setTag(R.id.parent_matrix, localMatrix1);
    Matrix localMatrix2 = n;
    localMatrix2.reset();
    localMatrix1.invert(localMatrix2);
    localMatrix1 = (Matrix)values.get("android:changeTransform:matrix");
    paramTransitionValues2 = localMatrix1;
    if (localMatrix1 == null)
    {
      paramTransitionValues2 = new Matrix();
      values.put("android:changeTransform:matrix", paramTransitionValues2);
    }
    paramTransitionValues2.postConcat((Matrix)values.get("android:changeTransform:parentMatrix"));
    paramTransitionValues2.postConcat(localMatrix2);
  }
  
  static void a(View paramView)
  {
    a(paramView, 0.0F, 0.0F, 0.0F, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F);
  }
  
  static void a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    paramView.setTranslationX(paramFloat1);
    paramView.setTranslationY(paramFloat2);
    ViewCompat.setTranslationZ(paramView, paramFloat3);
    paramView.setScaleX(paramFloat4);
    paramView.setScaleY(paramFloat5);
    paramView.setRotationX(paramFloat6);
    paramView.setRotationY(paramFloat7);
    paramView.setRotation(paramFloat8);
  }
  
  private void a(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    View localView = view;
    Object localObject = new Matrix((Matrix)values.get("android:changeTransform:parentMatrix"));
    aa.b(paramViewGroup, (Matrix)localObject);
    localObject = f.a(localView, paramViewGroup, (Matrix)localObject);
    if (localObject == null) {
      return;
    }
    ((e)localObject).a((ViewGroup)values.get("android:changeTransform:parent"), view);
    for (paramViewGroup = this; e != null; paramViewGroup = e) {}
    paramViewGroup.addListener(new a(localView, (e)localObject));
    if (l)
    {
      if (view != view) {
        aa.a(view, 0.0F);
      }
      aa.a(localView, 1.0F);
    }
  }
  
  private boolean a(ViewGroup paramViewGroup1, ViewGroup paramViewGroup2)
  {
    if ((b(paramViewGroup1)) && (b(paramViewGroup2)))
    {
      paramViewGroup1 = a(paramViewGroup1, true);
      if ((paramViewGroup1 == null) || (paramViewGroup2 != view)) {}
    }
    else
    {
      while (paramViewGroup1 == paramViewGroup2) {
        return true;
      }
    }
    return false;
  }
  
  private void b(TransitionValues paramTransitionValues)
  {
    View localView = view;
    if (localView.getVisibility() == 8) {
      return;
    }
    values.put("android:changeTransform:parent", localView.getParent());
    Object localObject = new c(localView);
    values.put("android:changeTransform:transforms", localObject);
    localObject = localView.getMatrix();
    if ((localObject != null) && (!((Matrix)localObject).isIdentity())) {
      localObject = new Matrix((Matrix)localObject);
    } else {
      localObject = null;
    }
    values.put("android:changeTransform:matrix", localObject);
    if (m)
    {
      localObject = new Matrix();
      ViewGroup localViewGroup = (ViewGroup)localView.getParent();
      aa.a(localViewGroup, (Matrix)localObject);
      ((Matrix)localObject).preTranslate(-localViewGroup.getScrollX(), -localViewGroup.getScrollY());
      values.put("android:changeTransform:parentMatrix", localObject);
      values.put("android:changeTransform:intermediateMatrix", localView.getTag(R.id.transition_transform));
      values.put("android:changeTransform:intermediateParentMatrix", localView.getTag(R.id.parent_matrix));
    }
  }
  
  public void captureEndValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
    if (!l) {
      ((ViewGroup)view.getParent()).startViewTransition(view);
    }
  }
  
  public Animator createAnimator(@NonNull ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    if ((paramTransitionValues1 != null) && (paramTransitionValues2 != null) && (values.containsKey("android:changeTransform:parent")) && (values.containsKey("android:changeTransform:parent")))
    {
      ViewGroup localViewGroup = (ViewGroup)values.get("android:changeTransform:parent");
      Object localObject = (ViewGroup)values.get("android:changeTransform:parent");
      boolean bool;
      if ((m) && (!a(localViewGroup, (ViewGroup)localObject))) {
        bool = true;
      } else {
        bool = false;
      }
      localObject = (Matrix)values.get("android:changeTransform:intermediateMatrix");
      if (localObject != null) {
        values.put("android:changeTransform:matrix", localObject);
      }
      localObject = (Matrix)values.get("android:changeTransform:intermediateParentMatrix");
      if (localObject != null) {
        values.put("android:changeTransform:parentMatrix", localObject);
      }
      if (bool) {
        a(paramTransitionValues1, paramTransitionValues2);
      }
      localObject = a(paramTransitionValues1, paramTransitionValues2, bool);
      if ((bool) && (localObject != null) && (a))
      {
        a(paramViewGroup, paramTransitionValues1, paramTransitionValues2);
        return localObject;
      }
      if (!l) {
        localViewGroup.endViewTransition(view);
      }
      return localObject;
    }
    return null;
  }
  
  public boolean getReparent()
  {
    return m;
  }
  
  public boolean getReparentWithOverlay()
  {
    return a;
  }
  
  public String[] getTransitionProperties()
  {
    return i;
  }
  
  public void setReparent(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setReparentWithOverlay(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private static class a
    extends TransitionListenerAdapter
  {
    private View a;
    private e b;
    
    a(View paramView, e paramE)
    {
      a = paramView;
      b = paramE;
    }
    
    public void onTransitionEnd(@NonNull Transition paramTransition)
    {
      paramTransition.removeListener(this);
      f.a(a);
      a.setTag(R.id.transition_transform, null);
      a.setTag(R.id.parent_matrix, null);
    }
    
    public void onTransitionPause(@NonNull Transition paramTransition)
    {
      b.setVisibility(4);
    }
    
    public void onTransitionResume(@NonNull Transition paramTransition)
    {
      b.setVisibility(0);
    }
  }
  
  private static class b
  {
    private final Matrix a = new Matrix();
    private final View b;
    private final float[] c;
    private float d;
    private float e;
    
    b(View paramView, float[] paramArrayOfFloat)
    {
      b = paramView;
      c = ((float[])paramArrayOfFloat.clone());
      d = c[2];
      e = c[5];
      b();
    }
    
    private void b()
    {
      c[2] = d;
      c[5] = e;
      a.setValues(c);
      aa.c(b, a);
    }
    
    Matrix a()
    {
      return a;
    }
    
    void a(PointF paramPointF)
    {
      d = x;
      e = y;
      b();
    }
    
    void a(float[] paramArrayOfFloat)
    {
      System.arraycopy(paramArrayOfFloat, 0, c, 0, paramArrayOfFloat.length);
      b();
    }
  }
  
  private static class c
  {
    final float a;
    final float b;
    final float c;
    final float d;
    final float e;
    final float f;
    final float g;
    final float h;
    
    c(View paramView)
    {
      a = paramView.getTranslationX();
      b = paramView.getTranslationY();
      c = ViewCompat.getTranslationZ(paramView);
      d = paramView.getScaleX();
      e = paramView.getScaleY();
      f = paramView.getRotationX();
      g = paramView.getRotationY();
      h = paramView.getRotation();
    }
    
    public void a(View paramView)
    {
      ChangeTransform.a(paramView, a, b, c, d, e, f, g, h);
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof c;
      boolean bool2 = false;
      if (!bool1) {
        return false;
      }
      paramObject = (c)paramObject;
      bool1 = bool2;
      if (a == a)
      {
        bool1 = bool2;
        if (b == b)
        {
          bool1 = bool2;
          if (c == c)
          {
            bool1 = bool2;
            if (d == d)
            {
              bool1 = bool2;
              if (e == e)
              {
                bool1 = bool2;
                if (f == f)
                {
                  bool1 = bool2;
                  if (g == g)
                  {
                    bool1 = bool2;
                    if (h == h) {
                      bool1 = true;
                    }
                  }
                }
              }
            }
          }
        }
      }
      return bool1;
    }
    
    public int hashCode()
    {
      float f1 = a;
      int i3 = 0;
      int i;
      if (f1 != 0.0F) {
        i = Float.floatToIntBits(a);
      } else {
        i = 0;
      }
      int j;
      if (b != 0.0F) {
        j = Float.floatToIntBits(b);
      } else {
        j = 0;
      }
      int k;
      if (c != 0.0F) {
        k = Float.floatToIntBits(c);
      } else {
        k = 0;
      }
      int m;
      if (d != 0.0F) {
        m = Float.floatToIntBits(d);
      } else {
        m = 0;
      }
      int n;
      if (e != 0.0F) {
        n = Float.floatToIntBits(e);
      } else {
        n = 0;
      }
      int i1;
      if (f != 0.0F) {
        i1 = Float.floatToIntBits(f);
      } else {
        i1 = 0;
      }
      int i2;
      if (g != 0.0F) {
        i2 = Float.floatToIntBits(g);
      } else {
        i2 = 0;
      }
      if (h != 0.0F) {
        i3 = Float.floatToIntBits(h);
      }
      return ((((((i * 31 + j) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3;
    }
  }
}
