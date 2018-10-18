package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class AnimatedVectorDrawableCompat
  extends b
  implements Animatable2Compat
{
  b a;
  ArrayList<Animatable2Compat.AnimationCallback> b = null;
  final Drawable.Callback c = new Drawable.Callback()
  {
    public void invalidateDrawable(Drawable paramAnonymousDrawable)
    {
      invalidateSelf();
    }
    
    public void scheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable, long paramAnonymousLong)
    {
      scheduleSelf(paramAnonymousRunnable, paramAnonymousLong);
    }
    
    public void unscheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable)
    {
      unscheduleSelf(paramAnonymousRunnable);
    }
  };
  private a e;
  private Context f;
  private ArgbEvaluator g = null;
  private Animator.AnimatorListener h = null;
  
  AnimatedVectorDrawableCompat()
  {
    this(null, null, null);
  }
  
  private AnimatedVectorDrawableCompat(@Nullable Context paramContext)
  {
    this(paramContext, null, null);
  }
  
  private AnimatedVectorDrawableCompat(@Nullable Context paramContext, @Nullable a paramA, @Nullable Resources paramResources)
  {
    f = paramContext;
    if (paramA != null)
    {
      e = paramA;
      return;
    }
    e = new a(paramContext, paramA, c, paramResources);
  }
  
  private void a()
  {
    if (h != null)
    {
      e.c.removeListener(h);
      h = null;
    }
  }
  
  private void a(Animator paramAnimator)
  {
    Object localObject;
    if ((paramAnimator instanceof AnimatorSet))
    {
      localObject = ((AnimatorSet)paramAnimator).getChildAnimations();
      if (localObject != null)
      {
        int i = 0;
        while (i < ((List)localObject).size())
        {
          a((Animator)((List)localObject).get(i));
          i += 1;
        }
      }
    }
    if ((paramAnimator instanceof ObjectAnimator))
    {
      paramAnimator = (ObjectAnimator)paramAnimator;
      localObject = paramAnimator.getPropertyName();
      if (("fillColor".equals(localObject)) || ("strokeColor".equals(localObject)))
      {
        if (g == null) {
          g = new ArgbEvaluator();
        }
        paramAnimator.setEvaluator(g);
      }
    }
  }
  
  private void a(String paramString, Animator paramAnimator)
  {
    paramAnimator.setTarget(e.b.a(paramString));
    if (Build.VERSION.SDK_INT < 21) {
      a(paramAnimator);
    }
    if (e.d == null)
    {
      e.d = new ArrayList();
      e.e = new ArrayMap();
    }
    e.d.add(paramAnimator);
    e.e.put(paramAnimator, paramString);
  }
  
  @RequiresApi(23)
  private static boolean a(AnimatedVectorDrawable paramAnimatedVectorDrawable, Animatable2Compat.AnimationCallback paramAnimationCallback)
  {
    return paramAnimatedVectorDrawable.unregisterAnimationCallback(paramAnimationCallback.a());
  }
  
  @RequiresApi(23)
  private static void b(@NonNull AnimatedVectorDrawable paramAnimatedVectorDrawable, @NonNull Animatable2Compat.AnimationCallback paramAnimationCallback)
  {
    paramAnimatedVectorDrawable.registerAnimationCallback(paramAnimationCallback.a());
  }
  
  public static void clearAnimationCallbacks(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      if (!(paramDrawable instanceof Animatable)) {
        return;
      }
      if (Build.VERSION.SDK_INT >= 24)
      {
        ((AnimatedVectorDrawable)paramDrawable).clearAnimationCallbacks();
        return;
      }
      ((AnimatedVectorDrawableCompat)paramDrawable).clearAnimationCallbacks();
      return;
    }
  }
  
  @Nullable
  public static AnimatedVectorDrawableCompat create(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      localObject = new AnimatedVectorDrawableCompat(paramContext);
      d = ResourcesCompat.getDrawable(paramContext.getResources(), paramInt, paramContext.getTheme());
      d.setCallback(c);
      a = new b(d.getConstantState());
      return localObject;
    }
    Object localObject = paramContext.getResources();
    try
    {
      localObject = ((Resources)localObject).getXml(paramInt);
      AttributeSet localAttributeSet = Xml.asAttributeSet((XmlPullParser)localObject);
      do
      {
        paramInt = ((XmlPullParser)localObject).next();
      } while ((paramInt != 2) && (paramInt != 1));
      if (paramInt == 2) {
        return createFromXmlInner(paramContext, paramContext.getResources(), (XmlPullParser)localObject, localAttributeSet, paramContext.getTheme());
      }
      throw new XmlPullParserException("No start tag found");
    }
    catch (IOException paramContext)
    {
      Log.e("AnimatedVDCompat", "parser error", paramContext);
    }
    catch (XmlPullParserException paramContext)
    {
      Log.e("AnimatedVDCompat", "parser error", paramContext);
    }
    return null;
  }
  
  public static AnimatedVectorDrawableCompat createFromXmlInner(Context paramContext, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    paramContext = new AnimatedVectorDrawableCompat(paramContext);
    paramContext.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return paramContext;
  }
  
  public static void registerAnimationCallback(Drawable paramDrawable, Animatable2Compat.AnimationCallback paramAnimationCallback)
  {
    if (paramDrawable != null)
    {
      if (paramAnimationCallback == null) {
        return;
      }
      if (!(paramDrawable instanceof Animatable)) {
        return;
      }
      if (Build.VERSION.SDK_INT >= 24)
      {
        b((AnimatedVectorDrawable)paramDrawable, paramAnimationCallback);
        return;
      }
      ((AnimatedVectorDrawableCompat)paramDrawable).registerAnimationCallback(paramAnimationCallback);
      return;
    }
  }
  
  public static boolean unregisterAnimationCallback(Drawable paramDrawable, Animatable2Compat.AnimationCallback paramAnimationCallback)
  {
    if (paramDrawable != null)
    {
      if (paramAnimationCallback == null) {
        return false;
      }
      if (!(paramDrawable instanceof Animatable)) {
        return false;
      }
      if (Build.VERSION.SDK_INT >= 24) {
        return a((AnimatedVectorDrawable)paramDrawable, paramAnimationCallback);
      }
      return ((AnimatedVectorDrawableCompat)paramDrawable).unregisterAnimationCallback(paramAnimationCallback);
    }
    return false;
  }
  
  public void applyTheme(Resources.Theme paramTheme)
  {
    if (d != null)
    {
      DrawableCompat.applyTheme(d, paramTheme);
      return;
    }
  }
  
  public boolean canApplyTheme()
  {
    if (d != null) {
      return DrawableCompat.canApplyTheme(d);
    }
    return false;
  }
  
  public void clearAnimationCallbacks()
  {
    if (d != null)
    {
      ((AnimatedVectorDrawable)d).clearAnimationCallbacks();
      return;
    }
    a();
    if (b == null) {
      return;
    }
    b.clear();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (d != null)
    {
      d.draw(paramCanvas);
      return;
    }
    e.b.draw(paramCanvas);
    if (e.c.isStarted()) {
      invalidateSelf();
    }
  }
  
  public int getAlpha()
  {
    if (d != null) {
      return DrawableCompat.getAlpha(d);
    }
    return e.b.getAlpha();
  }
  
  public int getChangingConfigurations()
  {
    if (d != null) {
      return d.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | e.a;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if ((d != null) && (Build.VERSION.SDK_INT >= 24)) {
      return new b(d.getConstantState());
    }
    return null;
  }
  
  public int getIntrinsicHeight()
  {
    if (d != null) {
      return d.getIntrinsicHeight();
    }
    return e.b.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    if (d != null) {
      return d.getIntrinsicWidth();
    }
    return e.b.getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    if (d != null) {
      return d.getOpacity();
    }
    return e.b.getOpacity();
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    if (d != null)
    {
      DrawableCompat.inflate(d, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    int i = paramXmlPullParser.getEventType();
    int j = paramXmlPullParser.getDepth();
    while ((i != 1) && ((paramXmlPullParser.getDepth() >= j + 1) || (i != 3)))
    {
      if (i == 2)
      {
        Object localObject1 = paramXmlPullParser.getName();
        Object localObject2;
        if ("animated-vector".equals(localObject1))
        {
          localObject1 = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, a.e);
          i = ((TypedArray)localObject1).getResourceId(0, 0);
          if (i != 0)
          {
            localObject2 = VectorDrawableCompat.create(paramResources, i, paramTheme);
            ((VectorDrawableCompat)localObject2).a(false);
            ((VectorDrawableCompat)localObject2).setCallback(c);
            if (e.b != null) {
              e.b.setCallback(null);
            }
            e.b = ((VectorDrawableCompat)localObject2);
          }
          ((TypedArray)localObject1).recycle();
        }
        else if ("target".equals(localObject1))
        {
          localObject1 = paramResources.obtainAttributes(paramAttributeSet, a.f);
          localObject2 = ((TypedArray)localObject1).getString(0);
          i = ((TypedArray)localObject1).getResourceId(1, 0);
          if (i != 0) {
            if (f != null)
            {
              a((String)localObject2, AnimatorInflaterCompat.loadAnimator(f, i));
            }
            else
            {
              ((TypedArray)localObject1).recycle();
              throw new IllegalStateException("Context can't be null when inflating animators");
            }
          }
          ((TypedArray)localObject1).recycle();
        }
      }
      i = paramXmlPullParser.next();
    }
    e.a();
  }
  
  public boolean isAutoMirrored()
  {
    if (d != null) {
      return DrawableCompat.isAutoMirrored(d);
    }
    return e.b.isAutoMirrored();
  }
  
  public boolean isRunning()
  {
    if (d != null) {
      return ((AnimatedVectorDrawable)d).isRunning();
    }
    return e.c.isRunning();
  }
  
  public boolean isStateful()
  {
    if (d != null) {
      return d.isStateful();
    }
    return e.b.isStateful();
  }
  
  public Drawable mutate()
  {
    if (d != null) {
      d.mutate();
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (d != null)
    {
      d.setBounds(paramRect);
      return;
    }
    e.b.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    if (d != null) {
      return d.setLevel(paramInt);
    }
    return e.b.setLevel(paramInt);
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (d != null) {
      return d.setState(paramArrayOfInt);
    }
    return e.b.setState(paramArrayOfInt);
  }
  
  public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback paramAnimationCallback)
  {
    if (d != null)
    {
      b((AnimatedVectorDrawable)d, paramAnimationCallback);
      return;
    }
    if (paramAnimationCallback == null) {
      return;
    }
    if (b == null) {
      b = new ArrayList();
    }
    if (b.contains(paramAnimationCallback)) {
      return;
    }
    b.add(paramAnimationCallback);
    if (h == null) {
      h = new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          paramAnonymousAnimator = new ArrayList(b);
          int j = paramAnonymousAnimator.size();
          int i = 0;
          while (i < j)
          {
            ((Animatable2Compat.AnimationCallback)paramAnonymousAnimator.get(i)).onAnimationEnd(AnimatedVectorDrawableCompat.this);
            i += 1;
          }
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          paramAnonymousAnimator = new ArrayList(b);
          int j = paramAnonymousAnimator.size();
          int i = 0;
          while (i < j)
          {
            ((Animatable2Compat.AnimationCallback)paramAnonymousAnimator.get(i)).onAnimationStart(AnimatedVectorDrawableCompat.this);
            i += 1;
          }
        }
      };
    }
    e.c.addListener(h);
  }
  
  public void setAlpha(int paramInt)
  {
    if (d != null)
    {
      d.setAlpha(paramInt);
      return;
    }
    e.b.setAlpha(paramInt);
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    if (d != null)
    {
      DrawableCompat.setAutoMirrored(d, paramBoolean);
      return;
    }
    e.b.setAutoMirrored(paramBoolean);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (d != null)
    {
      d.setColorFilter(paramColorFilter);
      return;
    }
    e.b.setColorFilter(paramColorFilter);
  }
  
  public void setTint(int paramInt)
  {
    if (d != null)
    {
      DrawableCompat.setTint(d, paramInt);
      return;
    }
    e.b.setTint(paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    if (d != null)
    {
      DrawableCompat.setTintList(d, paramColorStateList);
      return;
    }
    e.b.setTintList(paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    if (d != null)
    {
      DrawableCompat.setTintMode(d, paramMode);
      return;
    }
    e.b.setTintMode(paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (d != null) {
      return d.setVisible(paramBoolean1, paramBoolean2);
    }
    e.b.setVisible(paramBoolean1, paramBoolean2);
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    if (d != null)
    {
      ((AnimatedVectorDrawable)d).start();
      return;
    }
    if (e.c.isStarted()) {
      return;
    }
    e.c.start();
    invalidateSelf();
  }
  
  public void stop()
  {
    if (d != null)
    {
      ((AnimatedVectorDrawable)d).stop();
      return;
    }
    e.c.end();
  }
  
  public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback paramAnimationCallback)
  {
    if (d != null) {
      a((AnimatedVectorDrawable)d, paramAnimationCallback);
    }
    if ((b != null) && (paramAnimationCallback != null))
    {
      boolean bool = b.remove(paramAnimationCallback);
      if (b.size() == 0) {
        a();
      }
      return bool;
    }
    return false;
  }
  
  private static class a
    extends Drawable.ConstantState
  {
    int a;
    VectorDrawableCompat b;
    AnimatorSet c;
    ArrayList<Animator> d;
    ArrayMap<Animator, String> e;
    
    public a(Context paramContext, a paramA, Drawable.Callback paramCallback, Resources paramResources)
    {
      if (paramA != null)
      {
        a = a;
        paramContext = b;
        int i = 0;
        if (paramContext != null)
        {
          paramContext = b.getConstantState();
          if (paramResources != null) {
            b = ((VectorDrawableCompat)paramContext.newDrawable(paramResources));
          } else {
            b = ((VectorDrawableCompat)paramContext.newDrawable());
          }
          b = ((VectorDrawableCompat)b.mutate());
          b.setCallback(paramCallback);
          b.setBounds(b.getBounds());
          b.a(false);
        }
        if (d != null)
        {
          int j = d.size();
          d = new ArrayList(j);
          e = new ArrayMap(j);
          while (i < j)
          {
            paramCallback = (Animator)d.get(i);
            paramContext = paramCallback.clone();
            paramCallback = (String)e.get(paramCallback);
            paramContext.setTarget(b.a(paramCallback));
            d.add(paramContext);
            e.put(paramContext, paramCallback);
            i += 1;
          }
          a();
        }
      }
    }
    
    public void a()
    {
      if (c == null) {
        c = new AnimatorSet();
      }
      c.playTogether(d);
    }
    
    public int getChangingConfigurations()
    {
      return a;
    }
    
    public Drawable newDrawable()
    {
      throw new IllegalStateException("No constant state support for SDK < 24.");
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      throw new IllegalStateException("No constant state support for SDK < 24.");
    }
  }
  
  @RequiresApi(24)
  private static class b
    extends Drawable.ConstantState
  {
    private final Drawable.ConstantState a;
    
    public b(Drawable.ConstantState paramConstantState)
    {
      a = paramConstantState;
    }
    
    public boolean canApplyTheme()
    {
      return a.canApplyTheme();
    }
    
    public int getChangingConfigurations()
    {
      return a.getChangingConfigurations();
    }
    
    public Drawable newDrawable()
    {
      AnimatedVectorDrawableCompat localAnimatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
      d = a.newDrawable();
      d.setCallback(c);
      return localAnimatedVectorDrawableCompat;
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      AnimatedVectorDrawableCompat localAnimatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
      d = a.newDrawable(paramResources);
      d.setCallback(c);
      return localAnimatedVectorDrawableCompat;
    }
    
    public Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
    {
      AnimatedVectorDrawableCompat localAnimatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
      d = a.newDrawable(paramResources, paramTheme);
      d.setCallback(c);
      return localAnimatedVectorDrawableCompat;
    }
  }
}
