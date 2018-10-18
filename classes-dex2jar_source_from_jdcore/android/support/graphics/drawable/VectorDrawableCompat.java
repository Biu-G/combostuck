package android.support.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.VectorDrawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ComplexColorCompat;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.PathParser;
import android.support.v4.graphics.PathParser.PathDataNode;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class VectorDrawableCompat
  extends b
{
  static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
  private g b;
  private PorterDuffColorFilter c;
  private ColorFilter e;
  private boolean f;
  private boolean g = true;
  private Drawable.ConstantState h;
  private final float[] i = new float[9];
  private final Matrix j = new Matrix();
  private final Rect k = new Rect();
  
  VectorDrawableCompat()
  {
    b = new g();
  }
  
  VectorDrawableCompat(@NonNull g paramG)
  {
    b = paramG;
    c = a(c, c, d);
  }
  
  static int a(int paramInt, float paramFloat)
  {
    return paramInt & 0xFFFFFF | (int)(Color.alpha(paramInt) * paramFloat) << 24;
  }
  
  private static PorterDuff.Mode a(int paramInt, PorterDuff.Mode paramMode)
  {
    if (paramInt != 3)
    {
      if (paramInt != 5)
      {
        if (paramInt != 9)
        {
          switch (paramInt)
          {
          default: 
            return paramMode;
          case 16: 
            return PorterDuff.Mode.ADD;
          case 15: 
            return PorterDuff.Mode.SCREEN;
          }
          return PorterDuff.Mode.MULTIPLY;
        }
        return PorterDuff.Mode.SRC_ATOP;
      }
      return PorterDuff.Mode.SRC_IN;
    }
    return PorterDuff.Mode.SRC_OVER;
  }
  
  private void a(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    g localG = b;
    f localF = b;
    ArrayDeque localArrayDeque = new ArrayDeque();
    localArrayDeque.push(c);
    int i1 = paramXmlPullParser.getEventType();
    int i2 = paramXmlPullParser.getDepth();
    int n;
    for (int m = 1; (i1 != 1) && ((paramXmlPullParser.getDepth() >= i2 + 1) || (i1 != 3)); m = n)
    {
      if (i1 == 2)
      {
        Object localObject = paramXmlPullParser.getName();
        c localC = (c)localArrayDeque.peek();
        if ("path".equals(localObject))
        {
          localObject = new b();
          ((b)localObject).a(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          b.add(localObject);
          if (((b)localObject).getPathName() != null) {
            k.put(((b)localObject).getPathName(), localObject);
          }
          n = 0;
          m = a;
          a = (o | m);
        }
        else if ("clip-path".equals(localObject))
        {
          localObject = new a();
          ((a)localObject).a(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          b.add(localObject);
          if (((a)localObject).getPathName() != null) {
            k.put(((a)localObject).getPathName(), localObject);
          }
          n = a;
          a = (o | n);
          n = m;
        }
        else
        {
          n = m;
          if ("group".equals(localObject))
          {
            localObject = new c();
            ((c)localObject).a(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
            b.add(localObject);
            localArrayDeque.push(localObject);
            if (((c)localObject).getGroupName() != null) {
              k.put(((c)localObject).getGroupName(), localObject);
            }
            n = a;
            a = (e | n);
            n = m;
          }
        }
      }
      else
      {
        n = m;
        if (i1 == 3)
        {
          n = m;
          if ("group".equals(paramXmlPullParser.getName()))
          {
            localArrayDeque.pop();
            n = m;
          }
        }
      }
      i1 = paramXmlPullParser.next();
    }
    if (m == 0) {
      return;
    }
    throw new XmlPullParserException("no path defined");
  }
  
  private void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
    throws XmlPullParserException
  {
    g localG = b;
    f localF = b;
    d = a(TypedArrayUtils.getNamedInt(paramTypedArray, paramXmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
    ColorStateList localColorStateList = paramTypedArray.getColorStateList(1);
    if (localColorStateList != null) {
      c = localColorStateList;
    }
    e = TypedArrayUtils.getNamedBoolean(paramTypedArray, paramXmlPullParser, "autoMirrored", 5, e);
    f = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "viewportWidth", 7, f);
    g = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "viewportHeight", 8, g);
    if (f > 0.0F)
    {
      if (g > 0.0F)
      {
        d = paramTypedArray.getDimension(3, d);
        e = paramTypedArray.getDimension(2, e);
        if (d > 0.0F)
        {
          if (e > 0.0F)
          {
            localF.setAlpha(TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "alpha", 4, localF.getAlpha()));
            paramTypedArray = paramTypedArray.getString(0);
            if (paramTypedArray != null)
            {
              i = paramTypedArray;
              k.put(paramTypedArray, localF);
            }
            return;
          }
          paramXmlPullParser = new StringBuilder();
          paramXmlPullParser.append(paramTypedArray.getPositionDescription());
          paramXmlPullParser.append("<vector> tag requires height > 0");
          throw new XmlPullParserException(paramXmlPullParser.toString());
        }
        paramXmlPullParser = new StringBuilder();
        paramXmlPullParser.append(paramTypedArray.getPositionDescription());
        paramXmlPullParser.append("<vector> tag requires width > 0");
        throw new XmlPullParserException(paramXmlPullParser.toString());
      }
      paramXmlPullParser = new StringBuilder();
      paramXmlPullParser.append(paramTypedArray.getPositionDescription());
      paramXmlPullParser.append("<vector> tag requires viewportHeight > 0");
      throw new XmlPullParserException(paramXmlPullParser.toString());
    }
    paramXmlPullParser = new StringBuilder();
    paramXmlPullParser.append(paramTypedArray.getPositionDescription());
    paramXmlPullParser.append("<vector> tag requires viewportWidth > 0");
    throw new XmlPullParserException(paramXmlPullParser.toString());
  }
  
  private boolean a()
  {
    int m = Build.VERSION.SDK_INT;
    boolean bool2 = false;
    if (m >= 17)
    {
      boolean bool1 = bool2;
      if (isAutoMirrored())
      {
        bool1 = bool2;
        if (DrawableCompat.getLayoutDirection(this) == 1) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  @Nullable
  public static VectorDrawableCompat create(@NonNull Resources paramResources, @DrawableRes int paramInt, @Nullable Resources.Theme paramTheme)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 24)
    {
      localObject = new VectorDrawableCompat();
      d = ResourcesCompat.getDrawable(paramResources, paramInt, paramTheme);
      h = new h(d.getConstantState());
      return localObject;
    }
    try
    {
      localObject = paramResources.getXml(paramInt);
      AttributeSet localAttributeSet = Xml.asAttributeSet((XmlPullParser)localObject);
      do
      {
        paramInt = ((XmlPullParser)localObject).next();
      } while ((paramInt != 2) && (paramInt != 1));
      if (paramInt == 2) {
        return createFromXmlInner(paramResources, (XmlPullParser)localObject, localAttributeSet, paramTheme);
      }
      throw new XmlPullParserException("No start tag found");
    }
    catch (IOException paramResources)
    {
      Log.e("VectorDrawableCompat", "parser error", paramResources);
    }
    catch (XmlPullParserException paramResources)
    {
      Log.e("VectorDrawableCompat", "parser error", paramResources);
    }
    return null;
  }
  
  public static VectorDrawableCompat createFromXmlInner(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    VectorDrawableCompat localVectorDrawableCompat = new VectorDrawableCompat();
    localVectorDrawableCompat.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return localVectorDrawableCompat;
  }
  
  PorterDuffColorFilter a(PorterDuffColorFilter paramPorterDuffColorFilter, ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList != null) && (paramMode != null)) {
      return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
    }
    return null;
  }
  
  Object a(String paramString)
  {
    return b.b.k.get(paramString);
  }
  
  void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public boolean canApplyTheme()
  {
    if (d != null) {
      DrawableCompat.canApplyTheme(d);
    }
    return false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (d != null)
    {
      d.draw(paramCanvas);
      return;
    }
    copyBounds(k);
    if (k.width() > 0)
    {
      if (k.height() <= 0) {
        return;
      }
      Object localObject;
      if (e == null) {
        localObject = c;
      } else {
        localObject = e;
      }
      paramCanvas.getMatrix(j);
      j.getValues(i);
      float f1 = Math.abs(i[0]);
      float f2 = Math.abs(i[4]);
      float f4 = Math.abs(i[1]);
      float f3 = Math.abs(i[3]);
      if ((f4 != 0.0F) || (f3 != 0.0F))
      {
        f1 = 1.0F;
        f2 = 1.0F;
      }
      int m = (int)(k.width() * f1);
      int n = (int)(k.height() * f2);
      m = Math.min(2048, m);
      n = Math.min(2048, n);
      if (m > 0)
      {
        if (n <= 0) {
          return;
        }
        int i1 = paramCanvas.save();
        paramCanvas.translate(k.left, k.top);
        if (a())
        {
          paramCanvas.translate(k.width(), 0.0F);
          paramCanvas.scale(-1.0F, 1.0F);
        }
        k.offsetTo(0, 0);
        b.b(m, n);
        if (!g)
        {
          b.a(m, n);
        }
        else if (!b.b())
        {
          b.a(m, n);
          b.c();
        }
        b.a(paramCanvas, (ColorFilter)localObject, k);
        paramCanvas.restoreToCount(i1);
        return;
      }
      return;
    }
  }
  
  public int getAlpha()
  {
    if (d != null) {
      return DrawableCompat.getAlpha(d);
    }
    return b.b.getRootAlpha();
  }
  
  public int getChangingConfigurations()
  {
    if (d != null) {
      return d.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | b.getChangingConfigurations();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if ((d != null) && (Build.VERSION.SDK_INT >= 24)) {
      return new h(d.getConstantState());
    }
    b.a = getChangingConfigurations();
    return b;
  }
  
  public int getIntrinsicHeight()
  {
    if (d != null) {
      return d.getIntrinsicHeight();
    }
    return (int)b.b.e;
  }
  
  public int getIntrinsicWidth()
  {
    if (d != null) {
      return d.getIntrinsicWidth();
    }
    return (int)b.b.d;
  }
  
  public int getOpacity()
  {
    if (d != null) {
      return d.getOpacity();
    }
    return -3;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public float getPixelSize()
  {
    if ((b != null) && (b.b != null) && (b.b.d != 0.0F) && (b.b.e != 0.0F) && (b.b.g != 0.0F) && (b.b.f != 0.0F))
    {
      float f1 = b.b.d;
      float f2 = b.b.e;
      float f3 = b.b.f;
      float f4 = b.b.g;
      return Math.min(f3 / f1, f4 / f2);
    }
    return 1.0F;
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    if (d != null)
    {
      d.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
      return;
    }
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
    g localG = b;
    b = new f();
    TypedArray localTypedArray = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, a.a);
    a(localTypedArray, paramXmlPullParser);
    localTypedArray.recycle();
    a = getChangingConfigurations();
    k = true;
    a(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    c = a(c, c, d);
  }
  
  public void invalidateSelf()
  {
    if (d != null)
    {
      d.invalidateSelf();
      return;
    }
    super.invalidateSelf();
  }
  
  public boolean isAutoMirrored()
  {
    if (d != null) {
      return DrawableCompat.isAutoMirrored(d);
    }
    return b.e;
  }
  
  public boolean isStateful()
  {
    if (d != null) {
      return d.isStateful();
    }
    return (super.isStateful()) || ((b != null) && ((b.d()) || ((b.c != null) && (b.c.isStateful()))));
  }
  
  public Drawable mutate()
  {
    if (d != null)
    {
      d.mutate();
      return this;
    }
    if ((!f) && (super.mutate() == this))
    {
      b = new g(b);
      f = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (d != null) {
      d.setBounds(paramRect);
    }
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (d != null) {
      return d.setState(paramArrayOfInt);
    }
    boolean bool2 = false;
    g localG = b;
    boolean bool1 = bool2;
    if (c != null)
    {
      bool1 = bool2;
      if (d != null)
      {
        c = a(c, c, d);
        invalidateSelf();
        bool1 = true;
      }
    }
    bool2 = bool1;
    if (localG.d())
    {
      bool2 = bool1;
      if (localG.a(paramArrayOfInt))
      {
        invalidateSelf();
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    if (d != null)
    {
      d.scheduleSelf(paramRunnable, paramLong);
      return;
    }
    super.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    if (d != null)
    {
      d.setAlpha(paramInt);
      return;
    }
    if (b.b.getRootAlpha() != paramInt)
    {
      b.b.setRootAlpha(paramInt);
      invalidateSelf();
    }
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    if (d != null)
    {
      DrawableCompat.setAutoMirrored(d, paramBoolean);
      return;
    }
    b.e = paramBoolean;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (d != null)
    {
      d.setColorFilter(paramColorFilter);
      return;
    }
    e = paramColorFilter;
    invalidateSelf();
  }
  
  public void setTint(int paramInt)
  {
    if (d != null)
    {
      DrawableCompat.setTint(d, paramInt);
      return;
    }
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    if (d != null)
    {
      DrawableCompat.setTintList(d, paramColorStateList);
      return;
    }
    g localG = b;
    if (c != paramColorStateList)
    {
      c = paramColorStateList;
      c = a(c, paramColorStateList, d);
      invalidateSelf();
    }
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    if (d != null)
    {
      DrawableCompat.setTintMode(d, paramMode);
      return;
    }
    g localG = b;
    if (d != paramMode)
    {
      d = paramMode;
      c = a(c, c, paramMode);
      invalidateSelf();
    }
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (d != null) {
      return d.setVisible(paramBoolean1, paramBoolean2);
    }
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void unscheduleSelf(Runnable paramRunnable)
  {
    if (d != null)
    {
      d.unscheduleSelf(paramRunnable);
      return;
    }
    super.unscheduleSelf(paramRunnable);
  }
  
  private static class a
    extends VectorDrawableCompat.e
  {
    public a() {}
    
    public a(a paramA)
    {
      super();
    }
    
    private void a(TypedArray paramTypedArray)
    {
      String str = paramTypedArray.getString(0);
      if (str != null) {
        n = str;
      }
      paramTypedArray = paramTypedArray.getString(1);
      if (paramTypedArray != null) {
        m = PathParser.createNodesFromPathData(paramTypedArray);
      }
    }
    
    public void a(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
    {
      if (!TypedArrayUtils.hasAttribute(paramXmlPullParser, "pathData")) {
        return;
      }
      paramResources = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, a.d);
      a(paramResources);
      paramResources.recycle();
    }
    
    public boolean a()
    {
      return true;
    }
  }
  
  private static class b
    extends VectorDrawableCompat.e
  {
    ComplexColorCompat a;
    float b = 0.0F;
    ComplexColorCompat c;
    float d = 1.0F;
    int e = 0;
    float f = 1.0F;
    float g = 0.0F;
    float h = 1.0F;
    float i = 0.0F;
    Paint.Cap j = Paint.Cap.BUTT;
    Paint.Join k = Paint.Join.MITER;
    float l = 4.0F;
    private int[] p;
    
    public b() {}
    
    public b(b paramB)
    {
      super();
      p = p;
      a = a;
      b = b;
      d = d;
      c = c;
      e = e;
      f = f;
      g = g;
      h = h;
      i = i;
      j = j;
      k = k;
      l = l;
    }
    
    private Paint.Cap a(int paramInt, Paint.Cap paramCap)
    {
      switch (paramInt)
      {
      default: 
        return paramCap;
      case 2: 
        return Paint.Cap.SQUARE;
      case 1: 
        return Paint.Cap.ROUND;
      }
      return Paint.Cap.BUTT;
    }
    
    private Paint.Join a(int paramInt, Paint.Join paramJoin)
    {
      switch (paramInt)
      {
      default: 
        return paramJoin;
      case 2: 
        return Paint.Join.BEVEL;
      case 1: 
        return Paint.Join.ROUND;
      }
      return Paint.Join.MITER;
    }
    
    private void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, Resources.Theme paramTheme)
    {
      p = null;
      if (!TypedArrayUtils.hasAttribute(paramXmlPullParser, "pathData")) {
        return;
      }
      String str = paramTypedArray.getString(0);
      if (str != null) {
        n = str;
      }
      str = paramTypedArray.getString(2);
      if (str != null) {
        m = PathParser.createNodesFromPathData(str);
      }
      c = TypedArrayUtils.getNamedComplexColor(paramTypedArray, paramXmlPullParser, paramTheme, "fillColor", 1, 0);
      f = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "fillAlpha", 12, f);
      j = a(TypedArrayUtils.getNamedInt(paramTypedArray, paramXmlPullParser, "strokeLineCap", 8, -1), j);
      k = a(TypedArrayUtils.getNamedInt(paramTypedArray, paramXmlPullParser, "strokeLineJoin", 9, -1), k);
      l = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "strokeMiterLimit", 10, l);
      a = TypedArrayUtils.getNamedComplexColor(paramTypedArray, paramXmlPullParser, paramTheme, "strokeColor", 3, 0);
      d = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "strokeAlpha", 11, d);
      b = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "strokeWidth", 4, b);
      h = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "trimPathEnd", 6, h);
      i = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "trimPathOffset", 7, i);
      g = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "trimPathStart", 5, g);
      e = TypedArrayUtils.getNamedInt(paramTypedArray, paramXmlPullParser, "fillType", 13, e);
    }
    
    public void a(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
    {
      paramResources = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, a.c);
      a(paramResources, paramXmlPullParser, paramTheme);
      paramResources.recycle();
    }
    
    public boolean a(int[] paramArrayOfInt)
    {
      boolean bool = c.onStateChanged(paramArrayOfInt);
      return a.onStateChanged(paramArrayOfInt) | bool;
    }
    
    public boolean b()
    {
      return (c.isStateful()) || (a.isStateful());
    }
    
    float getFillAlpha()
    {
      return f;
    }
    
    @ColorInt
    int getFillColor()
    {
      return c.getColor();
    }
    
    float getStrokeAlpha()
    {
      return d;
    }
    
    @ColorInt
    int getStrokeColor()
    {
      return a.getColor();
    }
    
    float getStrokeWidth()
    {
      return b;
    }
    
    float getTrimPathEnd()
    {
      return h;
    }
    
    float getTrimPathOffset()
    {
      return i;
    }
    
    float getTrimPathStart()
    {
      return g;
    }
    
    void setFillAlpha(float paramFloat)
    {
      f = paramFloat;
    }
    
    void setFillColor(int paramInt)
    {
      c.setColor(paramInt);
    }
    
    void setStrokeAlpha(float paramFloat)
    {
      d = paramFloat;
    }
    
    void setStrokeColor(int paramInt)
    {
      a.setColor(paramInt);
    }
    
    void setStrokeWidth(float paramFloat)
    {
      b = paramFloat;
    }
    
    void setTrimPathEnd(float paramFloat)
    {
      h = paramFloat;
    }
    
    void setTrimPathOffset(float paramFloat)
    {
      i = paramFloat;
    }
    
    void setTrimPathStart(float paramFloat)
    {
      g = paramFloat;
    }
  }
  
  private static class c
    extends VectorDrawableCompat.d
  {
    final Matrix a = new Matrix();
    final ArrayList<VectorDrawableCompat.d> b = new ArrayList();
    float c = 0.0F;
    final Matrix d = new Matrix();
    int e;
    private float f = 0.0F;
    private float g = 0.0F;
    private float h = 1.0F;
    private float i = 1.0F;
    private float j = 0.0F;
    private float k = 0.0F;
    private int[] l;
    private String m = null;
    
    public c()
    {
      super();
    }
    
    public c(c paramC, ArrayMap<String, Object> paramArrayMap)
    {
      super();
      c = c;
      f = f;
      g = g;
      h = h;
      i = i;
      j = j;
      k = k;
      l = l;
      m = m;
      e = e;
      if (m != null) {
        paramArrayMap.put(m, this);
      }
      d.set(d);
      ArrayList localArrayList = b;
      int n = 0;
      while (n < localArrayList.size())
      {
        paramC = localArrayList.get(n);
        if ((paramC instanceof c))
        {
          paramC = (c)paramC;
          b.add(new c(paramC, paramArrayMap));
        }
        else
        {
          if ((paramC instanceof VectorDrawableCompat.b))
          {
            paramC = new VectorDrawableCompat.b((VectorDrawableCompat.b)paramC);
          }
          else
          {
            if (!(paramC instanceof VectorDrawableCompat.a)) {
              break label316;
            }
            paramC = new VectorDrawableCompat.a((VectorDrawableCompat.a)paramC);
          }
          b.add(paramC);
          if (n != null) {
            paramArrayMap.put(n, paramC);
          }
        }
        n += 1;
        continue;
        label316:
        throw new IllegalStateException("Unknown object in the tree!");
      }
    }
    
    private void a()
    {
      d.reset();
      d.postTranslate(-f, -g);
      d.postScale(h, i);
      d.postRotate(c, 0.0F, 0.0F);
      d.postTranslate(j + f, k + g);
    }
    
    private void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
    {
      l = null;
      c = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "rotation", 5, c);
      f = paramTypedArray.getFloat(1, f);
      g = paramTypedArray.getFloat(2, g);
      h = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "scaleX", 3, h);
      i = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "scaleY", 4, i);
      j = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "translateX", 6, j);
      k = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "translateY", 7, k);
      paramTypedArray = paramTypedArray.getString(0);
      if (paramTypedArray != null) {
        m = paramTypedArray;
      }
      a();
    }
    
    public void a(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
    {
      paramResources = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, a.b);
      a(paramResources, paramXmlPullParser);
      paramResources.recycle();
    }
    
    public boolean a(int[] paramArrayOfInt)
    {
      int n = 0;
      boolean bool = false;
      while (n < b.size())
      {
        bool |= ((VectorDrawableCompat.d)b.get(n)).a(paramArrayOfInt);
        n += 1;
      }
      return bool;
    }
    
    public boolean b()
    {
      int n = 0;
      while (n < b.size())
      {
        if (((VectorDrawableCompat.d)b.get(n)).b()) {
          return true;
        }
        n += 1;
      }
      return false;
    }
    
    public String getGroupName()
    {
      return m;
    }
    
    public Matrix getLocalMatrix()
    {
      return d;
    }
    
    public float getPivotX()
    {
      return f;
    }
    
    public float getPivotY()
    {
      return g;
    }
    
    public float getRotation()
    {
      return c;
    }
    
    public float getScaleX()
    {
      return h;
    }
    
    public float getScaleY()
    {
      return i;
    }
    
    public float getTranslateX()
    {
      return j;
    }
    
    public float getTranslateY()
    {
      return k;
    }
    
    public void setPivotX(float paramFloat)
    {
      if (paramFloat != f)
      {
        f = paramFloat;
        a();
      }
    }
    
    public void setPivotY(float paramFloat)
    {
      if (paramFloat != g)
      {
        g = paramFloat;
        a();
      }
    }
    
    public void setRotation(float paramFloat)
    {
      if (paramFloat != c)
      {
        c = paramFloat;
        a();
      }
    }
    
    public void setScaleX(float paramFloat)
    {
      if (paramFloat != h)
      {
        h = paramFloat;
        a();
      }
    }
    
    public void setScaleY(float paramFloat)
    {
      if (paramFloat != i)
      {
        i = paramFloat;
        a();
      }
    }
    
    public void setTranslateX(float paramFloat)
    {
      if (paramFloat != j)
      {
        j = paramFloat;
        a();
      }
    }
    
    public void setTranslateY(float paramFloat)
    {
      if (paramFloat != k)
      {
        k = paramFloat;
        a();
      }
    }
  }
  
  private static abstract class d
  {
    private d() {}
    
    public boolean a(int[] paramArrayOfInt)
    {
      return false;
    }
    
    public boolean b()
    {
      return false;
    }
  }
  
  private static abstract class e
    extends VectorDrawableCompat.d
  {
    protected PathParser.PathDataNode[] m = null;
    String n;
    int o;
    
    public e()
    {
      super();
    }
    
    public e(e paramE)
    {
      super();
      n = n;
      o = o;
      m = PathParser.deepCopyNodes(m);
    }
    
    public void a(Path paramPath)
    {
      paramPath.reset();
      if (m != null) {
        PathParser.PathDataNode.nodesToPath(m, paramPath);
      }
    }
    
    public boolean a()
    {
      return false;
    }
    
    public PathParser.PathDataNode[] getPathData()
    {
      return m;
    }
    
    public String getPathName()
    {
      return n;
    }
    
    public void setPathData(PathParser.PathDataNode[] paramArrayOfPathDataNode)
    {
      if (!PathParser.canMorph(m, paramArrayOfPathDataNode))
      {
        m = PathParser.deepCopyNodes(paramArrayOfPathDataNode);
        return;
      }
      PathParser.updateNodes(m, paramArrayOfPathDataNode);
    }
  }
  
  private static class f
  {
    private static final Matrix n = new Matrix();
    Paint a;
    Paint b;
    final VectorDrawableCompat.c c;
    float d = 0.0F;
    float e = 0.0F;
    float f = 0.0F;
    float g = 0.0F;
    int h = 255;
    String i = null;
    Boolean j = null;
    final ArrayMap<String, Object> k = new ArrayMap();
    private final Path l;
    private final Path m;
    private final Matrix o = new Matrix();
    private PathMeasure p;
    private int q;
    
    public f()
    {
      c = new VectorDrawableCompat.c();
      l = new Path();
      m = new Path();
    }
    
    public f(f paramF)
    {
      c = new VectorDrawableCompat.c(c, k);
      l = new Path(l);
      m = new Path(m);
      d = d;
      e = e;
      f = f;
      g = g;
      q = q;
      h = h;
      i = i;
      if (i != null) {
        k.put(i, this);
      }
      j = j;
    }
    
    private static float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      return paramFloat1 * paramFloat4 - paramFloat2 * paramFloat3;
    }
    
    private float a(Matrix paramMatrix)
    {
      float[] arrayOfFloat = new float[4];
      float[] tmp7_5 = arrayOfFloat;
      tmp7_5[0] = 0.0F;
      float[] tmp11_7 = tmp7_5;
      tmp11_7[1] = 1.0F;
      float[] tmp15_11 = tmp11_7;
      tmp15_11[2] = 1.0F;
      float[] tmp19_15 = tmp15_11;
      tmp19_15[3] = 0.0F;
      tmp19_15;
      paramMatrix.mapVectors(arrayOfFloat);
      float f1 = (float)Math.hypot(arrayOfFloat[0], arrayOfFloat[1]);
      float f3 = (float)Math.hypot(arrayOfFloat[2], arrayOfFloat[3]);
      float f2 = a(arrayOfFloat[0], arrayOfFloat[1], arrayOfFloat[2], arrayOfFloat[3]);
      f3 = Math.max(f1, f3);
      f1 = 0.0F;
      if (f3 > 0.0F) {
        f1 = Math.abs(f2) / f3;
      }
      return f1;
    }
    
    private void a(VectorDrawableCompat.c paramC, Matrix paramMatrix, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
    {
      a.set(paramMatrix);
      a.preConcat(d);
      paramCanvas.save();
      int i1 = 0;
      while (i1 < b.size())
      {
        paramMatrix = (VectorDrawableCompat.d)b.get(i1);
        if ((paramMatrix instanceof VectorDrawableCompat.c)) {
          a((VectorDrawableCompat.c)paramMatrix, a, paramCanvas, paramInt1, paramInt2, paramColorFilter);
        } else if ((paramMatrix instanceof VectorDrawableCompat.e)) {
          a(paramC, (VectorDrawableCompat.e)paramMatrix, paramCanvas, paramInt1, paramInt2, paramColorFilter);
        }
        i1 += 1;
      }
      paramCanvas.restore();
    }
    
    private void a(VectorDrawableCompat.c paramC, VectorDrawableCompat.e paramE, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
    {
      float f2 = paramInt1 / f;
      float f3 = paramInt2 / g;
      float f1 = Math.min(f2, f3);
      paramC = a;
      o.set(paramC);
      o.postScale(f2, f3);
      f2 = a(paramC);
      if (f2 == 0.0F) {
        return;
      }
      paramE.a(l);
      paramC = l;
      m.reset();
      if (paramE.a())
      {
        m.addPath(paramC, o);
        paramCanvas.clipPath(m);
        return;
      }
      paramE = (VectorDrawableCompat.b)paramE;
      if ((g != 0.0F) || (h != 1.0F))
      {
        float f6 = g;
        float f7 = i;
        float f4 = h;
        float f5 = i;
        if (p == null) {
          p = new PathMeasure();
        }
        p.setPath(l, false);
        f3 = p.getLength();
        f6 = (f6 + f7) % 1.0F * f3;
        f4 = (f4 + f5) % 1.0F * f3;
        paramC.reset();
        if (f6 > f4)
        {
          p.getSegment(f6, f3, paramC, true);
          p.getSegment(0.0F, f4, paramC, true);
        }
        else
        {
          p.getSegment(f6, f4, paramC, true);
        }
        paramC.rLineTo(0.0F, 0.0F);
      }
      m.addPath(paramC, o);
      Object localObject;
      if (c.willDraw())
      {
        paramC = c;
        if (b == null)
        {
          b = new Paint(1);
          b.setStyle(Paint.Style.FILL);
        }
        localObject = b;
        if (paramC.isGradient())
        {
          paramC = paramC.getShader();
          paramC.setLocalMatrix(o);
          ((Paint)localObject).setShader(paramC);
          ((Paint)localObject).setAlpha(Math.round(f * 255.0F));
        }
        else
        {
          ((Paint)localObject).setColor(VectorDrawableCompat.a(paramC.getColor(), f));
        }
        ((Paint)localObject).setColorFilter(paramColorFilter);
        Path localPath = m;
        if (e == 0) {
          paramC = Path.FillType.WINDING;
        } else {
          paramC = Path.FillType.EVEN_ODD;
        }
        localPath.setFillType(paramC);
        paramCanvas.drawPath(m, (Paint)localObject);
      }
      if (a.willDraw())
      {
        localObject = a;
        if (a == null)
        {
          a = new Paint(1);
          a.setStyle(Paint.Style.STROKE);
        }
        paramC = a;
        if (k != null) {
          paramC.setStrokeJoin(k);
        }
        if (j != null) {
          paramC.setStrokeCap(j);
        }
        paramC.setStrokeMiter(l);
        if (((ComplexColorCompat)localObject).isGradient())
        {
          localObject = ((ComplexColorCompat)localObject).getShader();
          ((Shader)localObject).setLocalMatrix(o);
          paramC.setShader((Shader)localObject);
          paramC.setAlpha(Math.round(d * 255.0F));
        }
        else
        {
          paramC.setColor(VectorDrawableCompat.a(((ComplexColorCompat)localObject).getColor(), d));
        }
        paramC.setColorFilter(paramColorFilter);
        paramC.setStrokeWidth(b * (f1 * f2));
        paramCanvas.drawPath(m, paramC);
      }
    }
    
    public void a(Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter)
    {
      a(c, n, paramCanvas, paramInt1, paramInt2, paramColorFilter);
    }
    
    public boolean a()
    {
      if (j == null) {
        j = Boolean.valueOf(c.b());
      }
      return j.booleanValue();
    }
    
    public boolean a(int[] paramArrayOfInt)
    {
      return c.a(paramArrayOfInt);
    }
    
    public float getAlpha()
    {
      return getRootAlpha() / 255.0F;
    }
    
    public int getRootAlpha()
    {
      return h;
    }
    
    public void setAlpha(float paramFloat)
    {
      setRootAlpha((int)(paramFloat * 255.0F));
    }
    
    public void setRootAlpha(int paramInt)
    {
      h = paramInt;
    }
  }
  
  private static class g
    extends Drawable.ConstantState
  {
    int a;
    VectorDrawableCompat.f b;
    ColorStateList c = null;
    PorterDuff.Mode d = VectorDrawableCompat.a;
    boolean e;
    Bitmap f;
    ColorStateList g;
    PorterDuff.Mode h;
    int i;
    boolean j;
    boolean k;
    Paint l;
    
    public g()
    {
      b = new VectorDrawableCompat.f();
    }
    
    public g(g paramG)
    {
      if (paramG != null)
      {
        a = a;
        b = new VectorDrawableCompat.f(b);
        if (b.b != null) {
          b.b = new Paint(b.b);
        }
        if (b.a != null) {
          b.a = new Paint(b.a);
        }
        c = c;
        d = d;
        e = e;
      }
    }
    
    public Paint a(ColorFilter paramColorFilter)
    {
      if ((!a()) && (paramColorFilter == null)) {
        return null;
      }
      if (l == null)
      {
        l = new Paint();
        l.setFilterBitmap(true);
      }
      l.setAlpha(b.getRootAlpha());
      l.setColorFilter(paramColorFilter);
      return l;
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      f.eraseColor(0);
      Canvas localCanvas = new Canvas(f);
      b.a(localCanvas, paramInt1, paramInt2, null);
    }
    
    public void a(Canvas paramCanvas, ColorFilter paramColorFilter, Rect paramRect)
    {
      paramColorFilter = a(paramColorFilter);
      paramCanvas.drawBitmap(f, null, paramRect, paramColorFilter);
    }
    
    public boolean a()
    {
      return b.getRootAlpha() < 255;
    }
    
    public boolean a(int[] paramArrayOfInt)
    {
      boolean bool = b.a(paramArrayOfInt);
      k |= bool;
      return bool;
    }
    
    public void b(int paramInt1, int paramInt2)
    {
      if ((f == null) || (!c(paramInt1, paramInt2)))
      {
        f = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
        k = true;
      }
    }
    
    public boolean b()
    {
      return (!k) && (g == c) && (h == d) && (j == e) && (i == b.getRootAlpha());
    }
    
    public void c()
    {
      g = c;
      h = d;
      i = b.getRootAlpha();
      j = e;
      k = false;
    }
    
    public boolean c(int paramInt1, int paramInt2)
    {
      return (paramInt1 == f.getWidth()) && (paramInt2 == f.getHeight());
    }
    
    public boolean d()
    {
      return b.a();
    }
    
    public int getChangingConfigurations()
    {
      return a;
    }
    
    @NonNull
    public Drawable newDrawable()
    {
      return new VectorDrawableCompat(this);
    }
    
    @NonNull
    public Drawable newDrawable(Resources paramResources)
    {
      return new VectorDrawableCompat(this);
    }
  }
  
  @RequiresApi(24)
  private static class h
    extends Drawable.ConstantState
  {
    private final Drawable.ConstantState a;
    
    public h(Drawable.ConstantState paramConstantState)
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
      VectorDrawableCompat localVectorDrawableCompat = new VectorDrawableCompat();
      d = ((VectorDrawable)a.newDrawable());
      return localVectorDrawableCompat;
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      VectorDrawableCompat localVectorDrawableCompat = new VectorDrawableCompat();
      d = ((VectorDrawable)a.newDrawable(paramResources));
      return localVectorDrawableCompat;
    }
    
    public Drawable newDrawable(Resources paramResources, Resources.Theme paramTheme)
    {
      VectorDrawableCompat localVectorDrawableCompat = new VectorDrawableCompat();
      d = ((VectorDrawable)a.newDrawable(paramResources, paramTheme));
      return localVectorDrawableCompat;
    }
  }
}
