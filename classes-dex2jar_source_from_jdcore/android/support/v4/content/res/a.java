package android.support.v4.content.res;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.SweepGradient;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.compat.R.styleable;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
final class a
{
  private static Shader.TileMode a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return Shader.TileMode.CLAMP;
    case 2: 
      return Shader.TileMode.MIRROR;
    }
    return Shader.TileMode.REPEAT;
  }
  
  static Shader a(@NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws IOException, XmlPullParserException
  {
    Object localObject = paramXmlPullParser.getName();
    if (((String)localObject).equals("gradient"))
    {
      localObject = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, R.styleable.GradientColor);
      float f1 = TypedArrayUtils.getNamedFloat((TypedArray)localObject, paramXmlPullParser, "startX", R.styleable.GradientColor_android_startX, 0.0F);
      float f2 = TypedArrayUtils.getNamedFloat((TypedArray)localObject, paramXmlPullParser, "startY", R.styleable.GradientColor_android_startY, 0.0F);
      float f3 = TypedArrayUtils.getNamedFloat((TypedArray)localObject, paramXmlPullParser, "endX", R.styleable.GradientColor_android_endX, 0.0F);
      float f4 = TypedArrayUtils.getNamedFloat((TypedArray)localObject, paramXmlPullParser, "endY", R.styleable.GradientColor_android_endY, 0.0F);
      float f5 = TypedArrayUtils.getNamedFloat((TypedArray)localObject, paramXmlPullParser, "centerX", R.styleable.GradientColor_android_centerX, 0.0F);
      float f6 = TypedArrayUtils.getNamedFloat((TypedArray)localObject, paramXmlPullParser, "centerY", R.styleable.GradientColor_android_centerY, 0.0F);
      int i = TypedArrayUtils.getNamedInt((TypedArray)localObject, paramXmlPullParser, "type", R.styleable.GradientColor_android_type, 0);
      int j = TypedArrayUtils.getNamedColor((TypedArray)localObject, paramXmlPullParser, "startColor", R.styleable.GradientColor_android_startColor, 0);
      boolean bool = TypedArrayUtils.hasAttribute(paramXmlPullParser, "centerColor");
      int k = TypedArrayUtils.getNamedColor((TypedArray)localObject, paramXmlPullParser, "centerColor", R.styleable.GradientColor_android_centerColor, 0);
      int m = TypedArrayUtils.getNamedColor((TypedArray)localObject, paramXmlPullParser, "endColor", R.styleable.GradientColor_android_endColor, 0);
      int n = TypedArrayUtils.getNamedInt((TypedArray)localObject, paramXmlPullParser, "tileMode", R.styleable.GradientColor_android_tileMode, 0);
      float f7 = TypedArrayUtils.getNamedFloat((TypedArray)localObject, paramXmlPullParser, "gradientRadius", R.styleable.GradientColor_android_gradientRadius, 0.0F);
      ((TypedArray)localObject).recycle();
      paramResources = a(b(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme), j, m, bool, k);
      switch (i)
      {
      default: 
        return new LinearGradient(f1, f2, f3, f4, a, b, a(n));
      case 2: 
        return new SweepGradient(f5, f6, a, b);
      }
      if (f7 > 0.0F) {
        return new RadialGradient(f5, f6, f7, a, b, a(n));
      }
      throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }
    paramResources = new StringBuilder();
    paramResources.append(paramXmlPullParser.getPositionDescription());
    paramResources.append(": invalid gradient color tag ");
    paramResources.append((String)localObject);
    throw new XmlPullParserException(paramResources.toString());
  }
  
  private static a a(@Nullable a paramA, @ColorInt int paramInt1, @ColorInt int paramInt2, boolean paramBoolean, @ColorInt int paramInt3)
  {
    if (paramA != null) {
      return paramA;
    }
    if (paramBoolean) {
      return new a(paramInt1, paramInt3, paramInt2);
    }
    return new a(paramInt1, paramInt2);
  }
  
  private static a b(@NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth() + 1;
    ArrayList localArrayList1 = new ArrayList(20);
    ArrayList localArrayList2 = new ArrayList(20);
    for (;;)
    {
      int j = paramXmlPullParser.next();
      if (j == 1) {
        break label242;
      }
      int k = paramXmlPullParser.getDepth();
      if ((k < i) && (j == 3)) {
        break label242;
      }
      if ((j == 2) && (k <= i) && (paramXmlPullParser.getName().equals("item")))
      {
        TypedArray localTypedArray = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, R.styleable.GradientColorItem);
        boolean bool1 = localTypedArray.hasValue(R.styleable.GradientColorItem_android_color);
        boolean bool2 = localTypedArray.hasValue(R.styleable.GradientColorItem_android_offset);
        if ((!bool1) || (!bool2)) {
          break;
        }
        j = localTypedArray.getColor(R.styleable.GradientColorItem_android_color, 0);
        float f = localTypedArray.getFloat(R.styleable.GradientColorItem_android_offset, 0.0F);
        localTypedArray.recycle();
        localArrayList2.add(Integer.valueOf(j));
        localArrayList1.add(Float.valueOf(f));
      }
    }
    paramResources = new StringBuilder();
    paramResources.append(paramXmlPullParser.getPositionDescription());
    paramResources.append(": <item> tag requires a 'color' attribute and a 'offset' ");
    paramResources.append("attribute!");
    throw new XmlPullParserException(paramResources.toString());
    label242:
    if (localArrayList2.size() > 0) {
      return new a(localArrayList2, localArrayList1);
    }
    return null;
  }
  
  static final class a
  {
    final int[] a;
    final float[] b;
    
    a(@ColorInt int paramInt1, @ColorInt int paramInt2)
    {
      a = new int[] { paramInt1, paramInt2 };
      b = new float[] { 0.0F, 1.0F };
    }
    
    a(@ColorInt int paramInt1, @ColorInt int paramInt2, @ColorInt int paramInt3)
    {
      a = new int[] { paramInt1, paramInt2, paramInt3 };
      b = new float[] { 0.0F, 0.5F, 1.0F };
    }
    
    a(@NonNull List<Integer> paramList, @NonNull List<Float> paramList1)
    {
      int j = paramList.size();
      a = new int[j];
      b = new float[j];
      int i = 0;
      while (i < j)
      {
        a[i] = ((Integer)paramList.get(i)).intValue();
        b[i] = ((Float)paramList1.get(i)).floatValue();
        i += 1;
      }
    }
  }
}