package android.support.v7.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v14.preference.SwitchPreference;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

class b
{
  private static final Class<?>[] a = { Context.class, AttributeSet.class };
  private static final HashMap<String, Constructor> b = new HashMap();
  private final Context c;
  private final Object[] d = new Object[2];
  private PreferenceManager e;
  private String[] f;
  
  public b(Context paramContext, PreferenceManager paramPreferenceManager)
  {
    c = paramContext;
    a(paramPreferenceManager);
  }
  
  private Preference a(@NonNull String paramString, @Nullable String[] paramArrayOfString, AttributeSet paramAttributeSet)
    throws ClassNotFoundException, InflateException
  {
    Constructor localConstructor = (Constructor)b.get(paramString);
    Object localObject1 = localConstructor;
    if (localConstructor == null) {}
    try
    {
      ClassLoader localClassLoader = c.getClassLoader();
      if ((paramArrayOfString != null) && (paramArrayOfString.length != 0))
      {
        int j = paramArrayOfString.length;
        int i = 0;
        Object localObject2 = null;
        localConstructor = null;
        for (;;)
        {
          localObject1 = localObject2;
          if (i >= j) {
            break;
          }
          localObject1 = paramArrayOfString[i];
          try
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append((String)localObject1);
            localStringBuilder.append(paramString);
            localObject1 = localClassLoader.loadClass(localStringBuilder.toString());
          }
          catch (ClassNotFoundException localClassNotFoundException)
          {
            i += 1;
          }
        }
        paramArrayOfString = (String[])localObject1;
        if (localObject1 == null)
        {
          if (localClassNotFoundException == null)
          {
            paramArrayOfString = new StringBuilder();
            paramArrayOfString.append(paramAttributeSet.getPositionDescription());
            paramArrayOfString.append(": Error inflating class ");
            paramArrayOfString.append(paramString);
            throw new InflateException(paramArrayOfString.toString());
          }
          throw localClassNotFoundException;
        }
      }
      else
      {
        paramArrayOfString = localClassLoader.loadClass(paramString);
      }
      localObject1 = paramArrayOfString.getConstructor(a);
      ((Constructor)localObject1).setAccessible(true);
      b.put(paramString, localObject1);
      paramArrayOfString = d;
      paramArrayOfString[1] = paramAttributeSet;
      paramArrayOfString = (Preference)((Constructor)localObject1).newInstance(paramArrayOfString);
      return paramArrayOfString;
    }
    catch (Exception paramArrayOfString)
    {
      for (;;) {}
    }
    catch (ClassNotFoundException paramString)
    {
      for (;;) {}
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(paramAttributeSet.getPositionDescription());
    ((StringBuilder)localObject1).append(": Error inflating class ");
    ((StringBuilder)localObject1).append(paramString);
    paramString = new InflateException(((StringBuilder)localObject1).toString());
    paramString.initCause(paramArrayOfString);
    throw paramString;
    throw paramString;
  }
  
  @NonNull
  private PreferenceGroup a(PreferenceGroup paramPreferenceGroup1, @NonNull PreferenceGroup paramPreferenceGroup2)
  {
    if (paramPreferenceGroup1 == null)
    {
      paramPreferenceGroup2.onAttachedToHierarchy(e);
      return paramPreferenceGroup2;
    }
    return paramPreferenceGroup1;
  }
  
  private void a(PreferenceManager paramPreferenceManager)
  {
    e = paramPreferenceManager;
    paramPreferenceManager = new StringBuilder();
    paramPreferenceManager.append(Preference.class.getPackage().getName());
    paramPreferenceManager.append(".");
    paramPreferenceManager = paramPreferenceManager.toString();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(SwitchPreference.class.getPackage().getName());
    localStringBuilder.append(".");
    a(new String[] { paramPreferenceManager, localStringBuilder.toString() });
  }
  
  private static void a(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth();
    int j;
    do
    {
      j = paramXmlPullParser.next();
    } while ((j != 1) && ((j != 3) || (paramXmlPullParser.getDepth() > i)));
  }
  
  private void a(XmlPullParser paramXmlPullParser, Preference paramPreference, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth();
    for (;;)
    {
      int j = paramXmlPullParser.next();
      if (((j == 3) && (paramXmlPullParser.getDepth() <= i)) || (j == 1)) {
        break;
      }
      if (j == 2)
      {
        Object localObject = paramXmlPullParser.getName();
        if ("intent".equals(localObject))
        {
          try
          {
            localObject = Intent.parseIntent(a().getResources(), paramXmlPullParser, paramAttributeSet);
            paramPreference.setIntent((Intent)localObject);
          }
          catch (IOException paramXmlPullParser)
          {
            paramPreference = new XmlPullParserException("Error parsing preference");
            paramPreference.initCause(paramXmlPullParser);
            throw paramPreference;
          }
        }
        else if ("extra".equals(localObject))
        {
          a().getResources().parseBundleExtra("extra", paramAttributeSet, paramPreference.getExtras());
          try
          {
            a(paramXmlPullParser);
          }
          catch (IOException paramXmlPullParser)
          {
            paramPreference = new XmlPullParserException("Error parsing preference");
            paramPreference.initCause(paramXmlPullParser);
            throw paramPreference;
          }
        }
        else
        {
          localObject = b((String)localObject, paramAttributeSet);
          ((PreferenceGroup)paramPreference).addItemFromInflater((Preference)localObject);
          a(paramXmlPullParser, (Preference)localObject, paramAttributeSet);
        }
      }
    }
  }
  
  private Preference b(String paramString, AttributeSet paramAttributeSet)
  {
    try
    {
      if (-1 == paramString.indexOf('.')) {
        return a(paramString, paramAttributeSet);
      }
      Preference localPreference = a(paramString, null, paramAttributeSet);
      return localPreference;
    }
    catch (Exception localException)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramAttributeSet.getPositionDescription());
      localStringBuilder.append(": Error inflating class ");
      localStringBuilder.append(paramString);
      paramString = new InflateException(localStringBuilder.toString());
      paramString.initCause(localException);
      throw paramString;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramAttributeSet.getPositionDescription());
      localStringBuilder.append(": Error inflating class (not found)");
      localStringBuilder.append(paramString);
      paramString = new InflateException(localStringBuilder.toString());
      paramString.initCause(localClassNotFoundException);
      throw paramString;
    }
    catch (InflateException paramString)
    {
      throw paramString;
    }
  }
  
  public Context a()
  {
    return c;
  }
  
  public Preference a(int paramInt, @Nullable PreferenceGroup paramPreferenceGroup)
  {
    XmlResourceParser localXmlResourceParser = a().getResources().getXml(paramInt);
    try
    {
      paramPreferenceGroup = a(localXmlResourceParser, paramPreferenceGroup);
      return paramPreferenceGroup;
    }
    finally
    {
      localXmlResourceParser.close();
    }
  }
  
  protected Preference a(String paramString, AttributeSet paramAttributeSet)
    throws ClassNotFoundException
  {
    return a(paramString, f, paramAttributeSet);
  }
  
  public Preference a(XmlPullParser paramXmlPullParser, @Nullable PreferenceGroup paramPreferenceGroup)
  {
    synchronized (d)
    {
      Object localObject = Xml.asAttributeSet(paramXmlPullParser);
      d[0] = c;
      try
      {
        int i;
        do
        {
          i = paramXmlPullParser.next();
        } while ((i != 2) && (i != 1));
        if (i == 2)
        {
          paramPreferenceGroup = a(paramPreferenceGroup, (PreferenceGroup)b(paramXmlPullParser.getName(), (AttributeSet)localObject));
          a(paramXmlPullParser, paramPreferenceGroup, (AttributeSet)localObject);
          return paramPreferenceGroup;
        }
        paramPreferenceGroup = new StringBuilder();
        paramPreferenceGroup.append(paramXmlPullParser.getPositionDescription());
        paramPreferenceGroup.append(": No start tag found!");
        throw new InflateException(paramPreferenceGroup.toString());
      }
      catch (IOException paramPreferenceGroup)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramXmlPullParser.getPositionDescription());
        ((StringBuilder)localObject).append(": ");
        ((StringBuilder)localObject).append(paramPreferenceGroup.getMessage());
        paramXmlPullParser = new InflateException(((StringBuilder)localObject).toString());
        paramXmlPullParser.initCause(paramPreferenceGroup);
        throw paramXmlPullParser;
      }
      catch (XmlPullParserException paramXmlPullParser)
      {
        paramPreferenceGroup = new InflateException(paramXmlPullParser.getMessage());
        paramPreferenceGroup.initCause(paramXmlPullParser);
        throw paramPreferenceGroup;
      }
      catch (InflateException paramXmlPullParser)
      {
        throw paramXmlPullParser;
      }
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    f = paramArrayOfString;
  }
}
