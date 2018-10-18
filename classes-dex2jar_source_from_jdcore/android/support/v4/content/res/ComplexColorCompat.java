package android.support.v4.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public final class ComplexColorCompat
{
  private final Shader a;
  private final ColorStateList b;
  private int c;
  
  private ComplexColorCompat(Shader paramShader, ColorStateList paramColorStateList, @ColorInt int paramInt)
  {
    a = paramShader;
    b = paramColorStateList;
    c = paramInt;
  }
  
  static ComplexColorCompat a(@ColorInt int paramInt)
  {
    return new ComplexColorCompat(null, null, paramInt);
  }
  
  static ComplexColorCompat a(@NonNull ColorStateList paramColorStateList)
  {
    return new ComplexColorCompat(null, paramColorStateList, paramColorStateList.getDefaultColor());
  }
  
  @NonNull
  private static ComplexColorCompat a(@NonNull Resources paramResources, @ColorRes int paramInt, @Nullable Resources.Theme paramTheme)
    throws IOException, XmlPullParserException
  {
    XmlResourceParser localXmlResourceParser = paramResources.getXml(paramInt);
    AttributeSet localAttributeSet = Xml.asAttributeSet(localXmlResourceParser);
    int i;
    do
    {
      i = localXmlResourceParser.next();
      paramInt = 1;
    } while ((i != 2) && (i != 1));
    if (i == 2)
    {
      String str = localXmlResourceParser.getName();
      i = str.hashCode();
      if (i != 89650992)
      {
        if ((i == 1191572447) && (str.equals("selector")))
        {
          paramInt = 0;
          break label102;
        }
      }
      else {
        if (str.equals("gradient")) {
          break label102;
        }
      }
      paramInt = -1;
      switch (paramInt)
      {
      default: 
        paramResources = new StringBuilder();
        paramResources.append(localXmlResourceParser.getPositionDescription());
        paramResources.append(": unsupported complex color tag ");
        paramResources.append(str);
        throw new XmlPullParserException(paramResources.toString());
      case 1: 
        label102:
        return a(a.a(paramResources, localXmlResourceParser, localAttributeSet, paramTheme));
      }
      return a(ColorStateListInflaterCompat.createFromXmlInner(paramResources, localXmlResourceParser, localAttributeSet, paramTheme));
    }
    throw new XmlPullParserException("No start tag found");
  }
  
  static ComplexColorCompat a(@NonNull Shader paramShader)
  {
    return new ComplexColorCompat(paramShader, null, 0);
  }
  
  @Nullable
  public static ComplexColorCompat inflate(@NonNull Resources paramResources, @ColorRes int paramInt, @Nullable Resources.Theme paramTheme)
  {
    try
    {
      paramResources = a(paramResources, paramInt, paramTheme);
      return paramResources;
    }
    catch (Exception paramResources)
    {
      Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", paramResources);
    }
    return null;
  }
  
  @ColorInt
  public int getColor()
  {
    return c;
  }
  
  @Nullable
  public Shader getShader()
  {
    return a;
  }
  
  public boolean isGradient()
  {
    return a != null;
  }
  
  public boolean isStateful()
  {
    return (a == null) && (b != null) && (b.isStateful());
  }
  
  public boolean onStateChanged(int[] paramArrayOfInt)
  {
    if (isStateful())
    {
      int i = b.getColorForState(paramArrayOfInt, b.getDefaultColor());
      if (i != c)
      {
        c = i;
        return true;
      }
    }
    return false;
  }
  
  public void setColor(@ColorInt int paramInt)
  {
    c = paramInt;
  }
  
  public boolean willDraw()
  {
    return (isGradient()) || (c != 0);
  }
}
