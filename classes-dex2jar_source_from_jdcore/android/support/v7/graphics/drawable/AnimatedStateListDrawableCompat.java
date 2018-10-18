package android.support.v7.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class AnimatedStateListDrawableCompat
  extends b
{
  private static final String a = "AnimatedStateListDrawableCompat";
  private b b;
  private f c;
  private int d = -1;
  private int e = -1;
  private boolean f;
  
  public AnimatedStateListDrawableCompat()
  {
    this(null, null);
  }
  
  AnimatedStateListDrawableCompat(@Nullable b paramB, @Nullable Resources paramResources)
  {
    super(null);
    setConstantState(new b(paramB, this, paramResources));
    onStateChange(getState());
    jumpToCurrentState();
  }
  
  private void a(@NonNull Context paramContext, @NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth() + 1;
    for (;;)
    {
      int j = paramXmlPullParser.next();
      if (j == 1) {
        break;
      }
      int k = paramXmlPullParser.getDepth();
      if ((k < i) && (j == 3)) {
        break;
      }
      if ((j == 2) && (k <= i)) {
        if (paramXmlPullParser.getName().equals("item")) {
          c(paramContext, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
        } else if (paramXmlPullParser.getName().equals("transition")) {
          b(paramContext, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
        }
      }
    }
  }
  
  private void a(TypedArray paramTypedArray)
  {
    b localB = b;
    if (Build.VERSION.SDK_INT >= 21) {
      f |= paramTypedArray.getChangingConfigurations();
    }
    localB.a(paramTypedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_variablePadding, k));
    localB.b(paramTypedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_constantSize, n));
    localB.c(paramTypedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, C));
    localB.d(paramTypedArray.getInt(R.styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, D));
    setDither(paramTypedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_dither, z));
  }
  
  private int b(@NonNull Context paramContext, @NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    Object localObject = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, R.styleable.AnimatedStateListDrawableTransition);
    int i = ((TypedArray)localObject).getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
    int j = ((TypedArray)localObject).getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_toId, -1);
    int k = ((TypedArray)localObject).getResourceId(R.styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
    Drawable localDrawable;
    if (k > 0) {
      localDrawable = AppCompatResources.getDrawable(paramContext, k);
    } else {
      localDrawable = null;
    }
    boolean bool = ((TypedArray)localObject).getBoolean(R.styleable.AnimatedStateListDrawableTransition_android_reversible, false);
    ((TypedArray)localObject).recycle();
    localObject = localDrawable;
    if (localDrawable == null)
    {
      do
      {
        k = paramXmlPullParser.next();
      } while (k == 4);
      if (k == 2)
      {
        if (paramXmlPullParser.getName().equals("animated-vector")) {
          localObject = AnimatedVectorDrawableCompat.createFromXmlInner(paramContext, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
        } else if (Build.VERSION.SDK_INT >= 21) {
          localObject = Drawable.createFromXmlInner(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
        } else {
          localObject = Drawable.createFromXmlInner(paramResources, paramXmlPullParser, paramAttributeSet);
        }
      }
      else
      {
        paramContext = new StringBuilder();
        paramContext.append(paramXmlPullParser.getPositionDescription());
        paramContext.append(": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        throw new XmlPullParserException(paramContext.toString());
      }
    }
    if (localObject != null)
    {
      if ((i != -1) && (j != -1)) {
        return b.a(i, j, (Drawable)localObject, bool);
      }
      paramContext = new StringBuilder();
      paramContext.append(paramXmlPullParser.getPositionDescription());
      paramContext.append(": <transition> tag requires 'fromId' & 'toId' attributes");
      throw new XmlPullParserException(paramContext.toString());
    }
    paramContext = new StringBuilder();
    paramContext.append(paramXmlPullParser.getPositionDescription());
    paramContext.append(": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
    throw new XmlPullParserException(paramContext.toString());
  }
  
  private boolean b(int paramInt)
  {
    Object localObject = c;
    int i;
    if (localObject != null)
    {
      if (paramInt == d) {
        return true;
      }
      if ((paramInt == e) && (((f)localObject).c()))
      {
        ((f)localObject).d();
        d = e;
        e = paramInt;
        return true;
      }
      i = d;
      ((f)localObject).b();
    }
    else
    {
      i = d();
    }
    c = null;
    e = -1;
    d = -1;
    localObject = b;
    int j = ((b)localObject).a(i);
    int k = ((b)localObject).a(paramInt);
    if (k != 0)
    {
      if (j == 0) {
        return false;
      }
      int m = ((b)localObject).a(j, k);
      if (m < 0) {
        return false;
      }
      boolean bool1 = ((b)localObject).c(j, k);
      a(m);
      Drawable localDrawable = getCurrent();
      if ((localDrawable instanceof AnimationDrawable))
      {
        boolean bool2 = ((b)localObject).b(j, k);
        localObject = new d((AnimationDrawable)localDrawable, bool2, bool1);
      }
      else if ((localDrawable instanceof AnimatedVectorDrawableCompat))
      {
        localObject = new c((AnimatedVectorDrawableCompat)localDrawable);
      }
      else
      {
        if (!(localDrawable instanceof Animatable)) {
          break label271;
        }
        localObject = new a((Animatable)localDrawable);
      }
      ((f)localObject).a();
      c = ((f)localObject);
      e = i;
      d = paramInt;
      return true;
      label271:
      return false;
    }
    return false;
  }
  
  private int c(@NonNull Context paramContext, @NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    Object localObject = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, R.styleable.AnimatedStateListDrawableItem);
    int i = ((TypedArray)localObject).getResourceId(R.styleable.AnimatedStateListDrawableItem_android_id, 0);
    int j = ((TypedArray)localObject).getResourceId(R.styleable.AnimatedStateListDrawableItem_android_drawable, -1);
    Drawable localDrawable;
    if (j > 0) {
      localDrawable = AppCompatResources.getDrawable(paramContext, j);
    } else {
      localDrawable = null;
    }
    ((TypedArray)localObject).recycle();
    localObject = a(paramAttributeSet);
    paramContext = localDrawable;
    if (localDrawable == null)
    {
      do
      {
        j = paramXmlPullParser.next();
      } while (j == 4);
      if (j == 2)
      {
        if (paramXmlPullParser.getName().equals("vector")) {
          paramContext = VectorDrawableCompat.createFromXmlInner(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
        } else if (Build.VERSION.SDK_INT >= 21) {
          paramContext = Drawable.createFromXmlInner(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
        } else {
          paramContext = Drawable.createFromXmlInner(paramResources, paramXmlPullParser, paramAttributeSet);
        }
      }
      else
      {
        paramContext = new StringBuilder();
        paramContext.append(paramXmlPullParser.getPositionDescription());
        paramContext.append(": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
        throw new XmlPullParserException(paramContext.toString());
      }
    }
    if (paramContext != null) {
      return b.a((int[])localObject, paramContext, i);
    }
    paramContext = new StringBuilder();
    paramContext.append(paramXmlPullParser.getPositionDescription());
    paramContext.append(": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    throw new XmlPullParserException(paramContext.toString());
  }
  
  @Nullable
  public static AnimatedStateListDrawableCompat create(@NonNull Context paramContext, @DrawableRes int paramInt, @Nullable Resources.Theme paramTheme)
  {
    try
    {
      Resources localResources = paramContext.getResources();
      XmlResourceParser localXmlResourceParser = localResources.getXml(paramInt);
      AttributeSet localAttributeSet = Xml.asAttributeSet(localXmlResourceParser);
      do
      {
        paramInt = localXmlResourceParser.next();
      } while ((paramInt != 2) && (paramInt != 1));
      if (paramInt == 2) {
        return createFromXmlInner(paramContext, localResources, localXmlResourceParser, localAttributeSet, paramTheme);
      }
      throw new XmlPullParserException("No start tag found");
    }
    catch (IOException paramContext)
    {
      Log.e(a, "parser error", paramContext);
    }
    catch (XmlPullParserException paramContext)
    {
      Log.e(a, "parser error", paramContext);
    }
    return null;
  }
  
  public static AnimatedStateListDrawableCompat createFromXmlInner(@NonNull Context paramContext, @NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws IOException, XmlPullParserException
  {
    Object localObject = paramXmlPullParser.getName();
    if (((String)localObject).equals("animated-selector"))
    {
      localObject = new AnimatedStateListDrawableCompat();
      ((AnimatedStateListDrawableCompat)localObject).inflate(paramContext, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return localObject;
    }
    paramContext = new StringBuilder();
    paramContext.append(paramXmlPullParser.getPositionDescription());
    paramContext.append(": invalid animated-selector tag ");
    paramContext.append((String)localObject);
    throw new XmlPullParserException(paramContext.toString());
  }
  
  private void e()
  {
    onStateChange(getState());
  }
  
  b a()
  {
    return new b(b, this, null);
  }
  
  public void addState(@NonNull int[] paramArrayOfInt, @NonNull Drawable paramDrawable, int paramInt)
  {
    if (paramDrawable != null)
    {
      b.a(paramArrayOfInt, paramDrawable, paramInt);
      onStateChange(getState());
      return;
    }
    throw new IllegalArgumentException("Drawable must not be null");
  }
  
  public <T extends Drawable,  extends Animatable> void addTransition(int paramInt1, int paramInt2, @NonNull T paramT, boolean paramBoolean)
  {
    if (paramT != null)
    {
      b.a(paramInt1, paramInt2, paramT, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Transition drawable must not be null");
  }
  
  public void inflate(@NonNull Context paramContext, @NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    TypedArray localTypedArray = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, R.styleable.AnimatedStateListDrawableCompat);
    setVisible(localTypedArray.getBoolean(R.styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
    a(localTypedArray);
    a(paramResources);
    localTypedArray.recycle();
    a(paramContext, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    e();
  }
  
  public boolean isStateful()
  {
    return true;
  }
  
  public void jumpToCurrentState()
  {
    super.jumpToCurrentState();
    if (c != null)
    {
      c.b();
      c = null;
      a(d);
      d = -1;
      e = -1;
    }
  }
  
  public Drawable mutate()
  {
    if ((!f) && (super.mutate() == this))
    {
      b.a();
      f = true;
    }
    return this;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    int i = b.a(paramArrayOfInt);
    boolean bool1;
    if ((i != d()) && ((b(i)) || (a(i)))) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    Drawable localDrawable = getCurrent();
    boolean bool2 = bool1;
    if (localDrawable != null) {
      bool2 = bool1 | localDrawable.setState(paramArrayOfInt);
    }
    return bool2;
  }
  
  protected void setConstantState(@NonNull a.b paramB)
  {
    super.setConstantState(paramB);
    if ((paramB instanceof b)) {
      b = ((b)paramB);
    }
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = super.setVisible(paramBoolean1, paramBoolean2);
    if ((c != null) && ((bool) || (paramBoolean2)))
    {
      if (paramBoolean1)
      {
        c.a();
        return bool;
      }
      jumpToCurrentState();
    }
    return bool;
  }
  
  private static class a
    extends AnimatedStateListDrawableCompat.f
  {
    private final Animatable a;
    
    a(Animatable paramAnimatable)
    {
      super();
      a = paramAnimatable;
    }
    
    public void a()
    {
      a.start();
    }
    
    public void b()
    {
      a.stop();
    }
  }
  
  static class b
    extends b.a
  {
    LongSparseArray<Long> a;
    SparseArrayCompat<Integer> b;
    
    b(@Nullable b paramB, @NonNull AnimatedStateListDrawableCompat paramAnimatedStateListDrawableCompat, @Nullable Resources paramResources)
    {
      super(paramAnimatedStateListDrawableCompat, paramResources);
      if (paramB != null)
      {
        a = a;
        b = b;
        return;
      }
      a = new LongSparseArray();
      b = new SparseArrayCompat();
    }
    
    private static long f(int paramInt1, int paramInt2)
    {
      long l = paramInt1;
      return paramInt2 | l << 32;
    }
    
    int a(int paramInt)
    {
      if (paramInt < 0) {
        return 0;
      }
      return ((Integer)b.get(paramInt, Integer.valueOf(0))).intValue();
    }
    
    int a(int paramInt1, int paramInt2)
    {
      long l = f(paramInt1, paramInt2);
      return (int)((Long)a.get(l, Long.valueOf(-1L))).longValue();
    }
    
    int a(int paramInt1, int paramInt2, @NonNull Drawable paramDrawable, boolean paramBoolean)
    {
      int i = super.a(paramDrawable);
      long l2 = f(paramInt1, paramInt2);
      long l1;
      if (paramBoolean) {
        l1 = 8589934592L;
      } else {
        l1 = 0L;
      }
      paramDrawable = a;
      long l3 = i;
      paramDrawable.append(l2, Long.valueOf(l3 | l1));
      if (paramBoolean)
      {
        l2 = f(paramInt2, paramInt1);
        a.append(l2, Long.valueOf(0x100000000 | l3 | l1));
      }
      return i;
    }
    
    int a(@NonNull int[] paramArrayOfInt)
    {
      int i = super.b(paramArrayOfInt);
      if (i >= 0) {
        return i;
      }
      return super.b(StateSet.WILD_CARD);
    }
    
    int a(@NonNull int[] paramArrayOfInt, @NonNull Drawable paramDrawable, int paramInt)
    {
      int i = super.a(paramArrayOfInt, paramDrawable);
      b.put(i, Integer.valueOf(paramInt));
      return i;
    }
    
    void a()
    {
      a = a.clone();
      b = b.clone();
    }
    
    boolean b(int paramInt1, int paramInt2)
    {
      long l = f(paramInt1, paramInt2);
      return (((Long)a.get(l, Long.valueOf(-1L))).longValue() & 0x100000000) != 0L;
    }
    
    boolean c(int paramInt1, int paramInt2)
    {
      long l = f(paramInt1, paramInt2);
      return (((Long)a.get(l, Long.valueOf(-1L))).longValue() & 0x200000000) != 0L;
    }
    
    @NonNull
    public Drawable newDrawable()
    {
      return new AnimatedStateListDrawableCompat(this, null);
    }
    
    @NonNull
    public Drawable newDrawable(Resources paramResources)
    {
      return new AnimatedStateListDrawableCompat(this, paramResources);
    }
  }
  
  private static class c
    extends AnimatedStateListDrawableCompat.f
  {
    private final AnimatedVectorDrawableCompat a;
    
    c(AnimatedVectorDrawableCompat paramAnimatedVectorDrawableCompat)
    {
      super();
      a = paramAnimatedVectorDrawableCompat;
    }
    
    public void a()
    {
      a.start();
    }
    
    public void b()
    {
      a.stop();
    }
  }
  
  private static class d
    extends AnimatedStateListDrawableCompat.f
  {
    private final ObjectAnimator a;
    private final boolean b;
    
    d(AnimationDrawable paramAnimationDrawable, boolean paramBoolean1, boolean paramBoolean2)
    {
      super();
      int j = paramAnimationDrawable.getNumberOfFrames();
      int i;
      if (paramBoolean1) {
        i = j - 1;
      } else {
        i = 0;
      }
      if (paramBoolean1) {
        j = 0;
      } else {
        j -= 1;
      }
      AnimatedStateListDrawableCompat.e localE = new AnimatedStateListDrawableCompat.e(paramAnimationDrawable, paramBoolean1);
      paramAnimationDrawable = ObjectAnimator.ofInt(paramAnimationDrawable, "currentIndex", new int[] { i, j });
      if (Build.VERSION.SDK_INT >= 18) {
        paramAnimationDrawable.setAutoCancel(true);
      }
      paramAnimationDrawable.setDuration(localE.a());
      paramAnimationDrawable.setInterpolator(localE);
      b = paramBoolean2;
      a = paramAnimationDrawable;
    }
    
    public void a()
    {
      a.start();
    }
    
    public void b()
    {
      a.cancel();
    }
    
    public boolean c()
    {
      return b;
    }
    
    public void d()
    {
      a.reverse();
    }
  }
  
  private static class e
    implements TimeInterpolator
  {
    private int[] a;
    private int b;
    private int c;
    
    e(AnimationDrawable paramAnimationDrawable, boolean paramBoolean)
    {
      a(paramAnimationDrawable, paramBoolean);
    }
    
    int a()
    {
      return c;
    }
    
    int a(AnimationDrawable paramAnimationDrawable, boolean paramBoolean)
    {
      int m = paramAnimationDrawable.getNumberOfFrames();
      b = m;
      if ((a == null) || (a.length < m)) {
        a = new int[m];
      }
      int[] arrayOfInt = a;
      int i = 0;
      int j = 0;
      while (i < m)
      {
        if (paramBoolean) {
          k = m - i - 1;
        } else {
          k = i;
        }
        int k = paramAnimationDrawable.getDuration(k);
        arrayOfInt[i] = k;
        j += k;
        i += 1;
      }
      c = j;
      return j;
    }
    
    public float getInterpolation(float paramFloat)
    {
      int j = (int)(paramFloat * c + 0.5F);
      int k = b;
      int[] arrayOfInt = a;
      int i = 0;
      while ((i < k) && (j >= arrayOfInt[i]))
      {
        j -= arrayOfInt[i];
        i += 1;
      }
      if (i < k) {
        paramFloat = j / c;
      } else {
        paramFloat = 0.0F;
      }
      return i / k + paramFloat;
    }
  }
  
  private static abstract class f
  {
    private f() {}
    
    public abstract void a();
    
    public abstract void b();
    
    public boolean c()
    {
      return false;
    }
    
    public void d() {}
  }
}
