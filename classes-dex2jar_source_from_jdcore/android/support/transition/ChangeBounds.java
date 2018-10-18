package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

public class ChangeBounds
  extends Transition
{
  private static final String[] a = { "android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY" };
  private static final Property<Drawable, PointF> i = new Property(PointF.class, "boundsOrigin")
  {
    private Rect a = new Rect();
    
    public PointF a(Drawable paramAnonymousDrawable)
    {
      paramAnonymousDrawable.copyBounds(a);
      return new PointF(a.left, a.top);
    }
    
    public void a(Drawable paramAnonymousDrawable, PointF paramAnonymousPointF)
    {
      paramAnonymousDrawable.copyBounds(a);
      a.offsetTo(Math.round(x), Math.round(y));
      paramAnonymousDrawable.setBounds(a);
    }
  };
  private static final Property<a, PointF> j = new Property(PointF.class, "topLeft")
  {
    public PointF a(ChangeBounds.a paramAnonymousA)
    {
      return null;
    }
    
    public void a(ChangeBounds.a paramAnonymousA, PointF paramAnonymousPointF)
    {
      paramAnonymousA.a(paramAnonymousPointF);
    }
  };
  private static final Property<a, PointF> k = new Property(PointF.class, "bottomRight")
  {
    public PointF a(ChangeBounds.a paramAnonymousA)
    {
      return null;
    }
    
    public void a(ChangeBounds.a paramAnonymousA, PointF paramAnonymousPointF)
    {
      paramAnonymousA.b(paramAnonymousPointF);
    }
  };
  private static final Property<View, PointF> l = new Property(PointF.class, "bottomRight")
  {
    public PointF a(View paramAnonymousView)
    {
      return null;
    }
    
    public void a(View paramAnonymousView, PointF paramAnonymousPointF)
    {
      aa.a(paramAnonymousView, paramAnonymousView.getLeft(), paramAnonymousView.getTop(), Math.round(x), Math.round(y));
    }
  };
  private static final Property<View, PointF> m = new Property(PointF.class, "topLeft")
  {
    public PointF a(View paramAnonymousView)
    {
      return null;
    }
    
    public void a(View paramAnonymousView, PointF paramAnonymousPointF)
    {
      aa.a(paramAnonymousView, Math.round(x), Math.round(y), paramAnonymousView.getRight(), paramAnonymousView.getBottom());
    }
  };
  private static final Property<View, PointF> n = new Property(PointF.class, "position")
  {
    public PointF a(View paramAnonymousView)
    {
      return null;
    }
    
    public void a(View paramAnonymousView, PointF paramAnonymousPointF)
    {
      int i = Math.round(x);
      int j = Math.round(y);
      aa.a(paramAnonymousView, i, j, paramAnonymousView.getWidth() + i, paramAnonymousView.getHeight() + j);
    }
  };
  private static l r = new l();
  private int[] o = new int[2];
  private boolean p = false;
  private boolean q = false;
  
  public ChangeBounds() {}
  
  public ChangeBounds(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.d);
    boolean bool = TypedArrayUtils.getNamedBoolean(paramContext, (XmlResourceParser)paramAttributeSet, "resizeClip", 0, false);
    paramContext.recycle();
    setResizeClip(bool);
  }
  
  private boolean a(View paramView1, View paramView2)
  {
    if (q)
    {
      TransitionValues localTransitionValues = a(paramView1, true);
      if (localTransitionValues == null) {
        if (paramView1 == paramView2) {
          return true;
        }
      }
      while (paramView2 != view) {
        return false;
      }
    }
    return true;
  }
  
  private void b(TransitionValues paramTransitionValues)
  {
    View localView = view;
    if ((ViewCompat.isLaidOut(localView)) || (localView.getWidth() != 0) || (localView.getHeight() != 0))
    {
      values.put("android:changeBounds:bounds", new Rect(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
      values.put("android:changeBounds:parent", view.getParent());
      if (q)
      {
        view.getLocationInWindow(o);
        values.put("android:changeBounds:windowX", Integer.valueOf(o[0]));
        values.put("android:changeBounds:windowY", Integer.valueOf(o[1]));
      }
      if (p) {
        values.put("android:changeBounds:clip", ViewCompat.getClipBounds(localView));
      }
    }
  }
  
  public void captureEndValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  @Nullable
  public Animator createAnimator(@NonNull final ViewGroup paramViewGroup, @Nullable final TransitionValues paramTransitionValues1, @Nullable TransitionValues paramTransitionValues2)
  {
    if ((paramTransitionValues1 != null) && (paramTransitionValues2 != null))
    {
      Object localObject2 = values;
      Object localObject1 = values;
      localObject2 = (ViewGroup)((Map)localObject2).get("android:changeBounds:parent");
      Object localObject3 = (ViewGroup)((Map)localObject1).get("android:changeBounds:parent");
      if ((localObject2 != null) && (localObject3 != null))
      {
        localObject1 = view;
        int i3;
        final int i4;
        int i2;
        int i1;
        if (a((View)localObject2, (View)localObject3))
        {
          paramViewGroup = (Rect)values.get("android:changeBounds:bounds");
          localObject2 = (Rect)values.get("android:changeBounds:bounds");
          i3 = left;
          i4 = left;
          int i5 = top;
          final int i6 = top;
          int i7 = right;
          final int i8 = right;
          int i9 = bottom;
          final int i10 = bottom;
          int i11 = i7 - i3;
          int i12 = i9 - i5;
          int i13 = i8 - i4;
          int i14 = i10 - i6;
          paramTransitionValues1 = (Rect)values.get("android:changeBounds:clip");
          localObject2 = (Rect)values.get("android:changeBounds:clip");
          if (((i11 != 0) && (i12 != 0)) || ((i13 != 0) && (i14 != 0)))
          {
            if ((i3 == i4) && (i5 == i6)) {
              i2 = 0;
            } else {
              i2 = 1;
            }
            if (i7 == i8)
            {
              i1 = i2;
              if (i9 == i10) {}
            }
            else
            {
              i1 = i2 + 1;
            }
          }
          else
          {
            i1 = 0;
          }
          if ((paramTransitionValues1 == null) || (paramTransitionValues1.equals(localObject2)))
          {
            i2 = i1;
            if (paramTransitionValues1 == null)
            {
              i2 = i1;
              if (localObject2 == null) {}
            }
          }
          else
          {
            i2 = i1 + 1;
          }
          if (i2 > 0)
          {
            if (!p)
            {
              paramViewGroup = (ViewGroup)localObject1;
              aa.a(paramViewGroup, i3, i5, i7, i9);
              if (i2 == 2)
              {
                if ((i11 == i13) && (i12 == i14))
                {
                  paramTransitionValues1 = getPathMotion().getPath(i3, i5, i4, i6);
                  paramViewGroup = i.a(paramViewGroup, n, paramTransitionValues1);
                }
                else
                {
                  paramTransitionValues1 = new a(paramViewGroup);
                  paramViewGroup = getPathMotion().getPath(i3, i5, i4, i6);
                  paramTransitionValues2 = i.a(paramTransitionValues1, j, paramViewGroup);
                  paramViewGroup = getPathMotion().getPath(i7, i9, i8, i10);
                  localObject2 = i.a(paramTransitionValues1, k, paramViewGroup);
                  paramViewGroup = new AnimatorSet();
                  paramViewGroup.playTogether(new Animator[] { paramTransitionValues2, localObject2 });
                  paramViewGroup.addListener(new AnimatorListenerAdapter()
                  {
                    private ChangeBounds.a mViewBounds = paramTransitionValues1;
                  });
                }
              }
              else if ((i3 == i4) && (i5 == i6))
              {
                paramTransitionValues1 = getPathMotion().getPath(i7, i9, i8, i10);
                paramViewGroup = i.a(paramViewGroup, l, paramTransitionValues1);
              }
              else
              {
                paramTransitionValues1 = getPathMotion().getPath(i3, i5, i4, i6);
                paramViewGroup = i.a(paramViewGroup, m, paramTransitionValues1);
              }
            }
            else
            {
              localObject3 = localObject1;
              aa.a((View)localObject3, i3, i5, Math.max(i11, i13) + i3, Math.max(i12, i14) + i5);
              if ((i3 == i4) && (i5 == i6))
              {
                paramViewGroup = null;
              }
              else
              {
                paramViewGroup = getPathMotion().getPath(i3, i5, i4, i6);
                paramViewGroup = i.a(localObject3, n, paramViewGroup);
              }
              if (paramTransitionValues1 == null) {
                paramTransitionValues1 = new Rect(0, 0, i11, i12);
              }
              if (localObject2 == null) {
                paramTransitionValues2 = new Rect(0, 0, i13, i14);
              } else {
                paramTransitionValues2 = (TransitionValues)localObject2;
              }
              if (!paramTransitionValues1.equals(paramTransitionValues2))
              {
                ViewCompat.setClipBounds((View)localObject3, paramTransitionValues1);
                paramTransitionValues1 = ObjectAnimator.ofObject(localObject3, "clipBounds", r, new Object[] { paramTransitionValues1, paramTransitionValues2 });
                paramTransitionValues1.addListener(new AnimatorListenerAdapter()
                {
                  private boolean h;
                  
                  public void onAnimationCancel(Animator paramAnonymousAnimator)
                  {
                    h = true;
                  }
                  
                  public void onAnimationEnd(Animator paramAnonymousAnimator)
                  {
                    if (!h)
                    {
                      ViewCompat.setClipBounds(a, b);
                      aa.a(a, i4, i6, i8, i10);
                    }
                  }
                });
              }
              else
              {
                paramTransitionValues1 = null;
              }
              paramViewGroup = n.a(paramViewGroup, paramTransitionValues1);
            }
            if ((((View)localObject1).getParent() instanceof ViewGroup))
            {
              paramTransitionValues1 = (ViewGroup)((View)localObject1).getParent();
              u.a(paramTransitionValues1, true);
              addListener(new TransitionListenerAdapter()
              {
                boolean a = false;
                
                public void onTransitionCancel(@NonNull Transition paramAnonymousTransition)
                {
                  u.a(paramTransitionValues1, false);
                  a = true;
                }
                
                public void onTransitionEnd(@NonNull Transition paramAnonymousTransition)
                {
                  if (!a) {
                    u.a(paramTransitionValues1, false);
                  }
                  paramAnonymousTransition.removeListener(this);
                }
                
                public void onTransitionPause(@NonNull Transition paramAnonymousTransition)
                {
                  u.a(paramTransitionValues1, false);
                }
                
                public void onTransitionResume(@NonNull Transition paramAnonymousTransition)
                {
                  u.a(paramTransitionValues1, true);
                }
              });
            }
            return paramViewGroup;
          }
        }
        else
        {
          i1 = ((Integer)values.get("android:changeBounds:windowX")).intValue();
          i2 = ((Integer)values.get("android:changeBounds:windowY")).intValue();
          i3 = ((Integer)values.get("android:changeBounds:windowX")).intValue();
          i4 = ((Integer)values.get("android:changeBounds:windowY")).intValue();
          if ((i1 != i3) || (i2 != i4)) {
            break label944;
          }
        }
        return null;
        label944:
        paramViewGroup.getLocationInWindow(o);
        paramTransitionValues1 = Bitmap.createBitmap(((View)localObject1).getWidth(), ((View)localObject1).getHeight(), Bitmap.Config.ARGB_8888);
        ((View)localObject1).draw(new Canvas(paramTransitionValues1));
        paramTransitionValues1 = new BitmapDrawable(paramTransitionValues1);
        final float f = aa.c((View)localObject1);
        aa.a((View)localObject1, 0.0F);
        aa.a(paramViewGroup).a(paramTransitionValues1);
        paramTransitionValues2 = getPathMotion().getPath(i1 - o[0], i2 - o[1], i3 - o[0], i4 - o[1]);
        paramTransitionValues2 = ObjectAnimator.ofPropertyValuesHolder(paramTransitionValues1, new PropertyValuesHolder[] { k.a(i, paramTransitionValues2) });
        paramTransitionValues2.addListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            aa.a(paramViewGroup).b(paramTransitionValues1);
            aa.a(c, f);
          }
        });
        return paramTransitionValues2;
      }
      return null;
    }
    return null;
  }
  
  public boolean getResizeClip()
  {
    return p;
  }
  
  @Nullable
  public String[] getTransitionProperties()
  {
    return a;
  }
  
  public void setResizeClip(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  private static class a
  {
    private int a;
    private int b;
    private int c;
    private int d;
    private View e;
    private int f;
    private int g;
    
    a(View paramView)
    {
      e = paramView;
    }
    
    private void a()
    {
      aa.a(e, a, b, c, d);
      f = 0;
      g = 0;
    }
    
    void a(PointF paramPointF)
    {
      a = Math.round(x);
      b = Math.round(y);
      f += 1;
      if (f == g) {
        a();
      }
    }
    
    void b(PointF paramPointF)
    {
      c = Math.round(x);
      d = Math.round(y);
      g += 1;
      if (f == g) {
        a();
      }
    }
  }
}
