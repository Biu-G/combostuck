package android.support.v7.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuItemWrapperICS;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class SupportMenuInflater
  extends MenuInflater
{
  static final Class<?>[] a = { Context.class };
  static final Class<?>[] b = a;
  final Object[] c;
  final Object[] d;
  Context e;
  private Object f;
  
  public SupportMenuInflater(Context paramContext)
  {
    super(paramContext);
    e = paramContext;
    c = new Object[] { paramContext };
    d = c;
  }
  
  private Object a(Object paramObject)
  {
    if ((paramObject instanceof Activity)) {
      return paramObject;
    }
    if ((paramObject instanceof ContextWrapper)) {
      return a(((ContextWrapper)paramObject).getBaseContext());
    }
    return paramObject;
  }
  
  private void a(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
    throws XmlPullParserException, IOException
  {
    b localB = new b(paramMenu);
    int i = paramXmlPullParser.getEventType();
    do
    {
      if (i == 2)
      {
        paramMenu = paramXmlPullParser.getName();
        if (paramMenu.equals("menu"))
        {
          i = paramXmlPullParser.next();
          break;
        }
        paramXmlPullParser = new StringBuilder();
        paramXmlPullParser.append("Expecting menu, got ");
        paramXmlPullParser.append(paramMenu);
        throw new RuntimeException(paramXmlPullParser.toString());
      }
      j = paramXmlPullParser.next();
      i = j;
    } while (j != 1);
    i = j;
    Object localObject = null;
    int j = 0;
    int k = 0;
    int n = i;
    while (j == 0)
    {
      int m;
      switch (n)
      {
      default: 
        i = k;
        paramMenu = (Menu)localObject;
        m = j;
        break;
      case 3: 
        String str = paramXmlPullParser.getName();
        if ((k != 0) && (str.equals(localObject)))
        {
          paramMenu = null;
          i = 0;
          m = j;
        }
        else if (str.equals("group"))
        {
          localB.a();
          i = k;
          paramMenu = (Menu)localObject;
          m = j;
        }
        else if (str.equals("item"))
        {
          i = k;
          paramMenu = (Menu)localObject;
          m = j;
          if (!localB.d()) {
            if ((a != null) && (a.hasSubMenu()))
            {
              localB.c();
              i = k;
              paramMenu = (Menu)localObject;
              m = j;
            }
            else
            {
              localB.b();
              i = k;
              paramMenu = (Menu)localObject;
              m = j;
            }
          }
        }
        else
        {
          i = k;
          paramMenu = (Menu)localObject;
          m = j;
          if (str.equals("menu"))
          {
            m = 1;
            i = k;
            paramMenu = (Menu)localObject;
          }
        }
        break;
      case 2: 
        if (k != 0)
        {
          i = k;
          paramMenu = (Menu)localObject;
          m = j;
        }
        else
        {
          paramMenu = paramXmlPullParser.getName();
          if (paramMenu.equals("group"))
          {
            localB.a(paramAttributeSet);
            i = k;
            paramMenu = (Menu)localObject;
            m = j;
          }
          else if (paramMenu.equals("item"))
          {
            localB.b(paramAttributeSet);
            i = k;
            paramMenu = (Menu)localObject;
            m = j;
          }
          else if (paramMenu.equals("menu"))
          {
            a(paramXmlPullParser, paramAttributeSet, localB.c());
            i = k;
            paramMenu = (Menu)localObject;
            m = j;
          }
          else
          {
            i = 1;
            m = j;
          }
        }
        break;
      case 1: 
        throw new RuntimeException("Unexpected end of document");
      }
      n = paramXmlPullParser.next();
      k = i;
      localObject = paramMenu;
      j = m;
    }
  }
  
  Object a()
  {
    if (f == null) {
      f = a(e);
    }
    return f;
  }
  
  /* Error */
  public void inflate(@android.support.annotation.LayoutRes int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 144
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: iload_1
    //   9: aload_2
    //   10: invokespecial 146	android/view/MenuInflater:inflate	(ILandroid/view/Menu;)V
    //   13: return
    //   14: aconst_null
    //   15: astore 5
    //   17: aconst_null
    //   18: astore 6
    //   20: aconst_null
    //   21: astore_3
    //   22: aload_0
    //   23: getfield 40	android/support/v7/view/SupportMenuInflater:e	Landroid/content/Context;
    //   26: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   29: iload_1
    //   30: invokevirtual 156	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   33: astore 4
    //   35: aload_0
    //   36: aload 4
    //   38: aload 4
    //   40: invokestatic 162	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   43: aload_2
    //   44: invokespecial 133	android/support/v7/view/SupportMenuInflater:a	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    //   47: aload 4
    //   49: ifnull +10 -> 59
    //   52: aload 4
    //   54: invokeinterface 167 1 0
    //   59: return
    //   60: astore_2
    //   61: aload 4
    //   63: astore_3
    //   64: goto +47 -> 111
    //   67: astore_2
    //   68: aload 4
    //   70: astore_3
    //   71: goto +18 -> 89
    //   74: astore_2
    //   75: aload 4
    //   77: astore_3
    //   78: goto +22 -> 100
    //   81: astore_2
    //   82: goto +29 -> 111
    //   85: astore_2
    //   86: aload 5
    //   88: astore_3
    //   89: new 169	android/view/InflateException
    //   92: dup
    //   93: ldc -85
    //   95: aload_2
    //   96: invokespecial 174	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   99: athrow
    //   100: new 169	android/view/InflateException
    //   103: dup
    //   104: ldc -85
    //   106: aload_2
    //   107: invokespecial 174	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   110: athrow
    //   111: aload_3
    //   112: ifnull +9 -> 121
    //   115: aload_3
    //   116: invokeinterface 167 1 0
    //   121: aload_2
    //   122: athrow
    //   123: astore_2
    //   124: aload 6
    //   126: astore_3
    //   127: goto -27 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	this	SupportMenuInflater
    //   0	130	1	paramInt	int
    //   0	130	2	paramMenu	Menu
    //   21	106	3	localObject1	Object
    //   33	43	4	localXmlResourceParser	android.content.res.XmlResourceParser
    //   15	72	5	localObject2	Object
    //   18	107	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   35	47	60	finally
    //   35	47	67	java/io/IOException
    //   35	47	74	org/xmlpull/v1/XmlPullParserException
    //   22	35	81	finally
    //   89	100	81	finally
    //   100	111	81	finally
    //   22	35	85	java/io/IOException
    //   22	35	123	org/xmlpull/v1/XmlPullParserException
  }
  
  private static class a
    implements MenuItem.OnMenuItemClickListener
  {
    private static final Class<?>[] a = { MenuItem.class };
    private Object b;
    private Method c;
    
    public a(Object paramObject, String paramString)
    {
      b = paramObject;
      Class localClass = paramObject.getClass();
      try
      {
        c = localClass.getMethod(paramString, a);
        return;
      }
      catch (Exception paramObject)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Couldn't resolve menu item onClick handler ");
        localStringBuilder.append(paramString);
        localStringBuilder.append(" in class ");
        localStringBuilder.append(localClass.getName());
        paramString = new InflateException(localStringBuilder.toString());
        paramString.initCause(paramObject);
        throw paramString;
      }
    }
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      try
      {
        if (c.getReturnType() == Boolean.TYPE) {
          return ((Boolean)c.invoke(b, new Object[] { paramMenuItem })).booleanValue();
        }
        c.invoke(b, new Object[] { paramMenuItem });
        return true;
      }
      catch (Exception paramMenuItem)
      {
        throw new RuntimeException(paramMenuItem);
      }
    }
  }
  
  private class b
  {
    private String A;
    private String B;
    private CharSequence C;
    private CharSequence D;
    private ColorStateList E = null;
    private PorterDuff.Mode F = null;
    ActionProvider a;
    private Menu c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;
    private CharSequence m;
    private CharSequence n;
    private int o;
    private char p;
    private int q;
    private char r;
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private int y;
    private String z;
    
    public b(Menu paramMenu)
    {
      c = paramMenu;
      a();
    }
    
    private char a(String paramString)
    {
      if (paramString == null) {
        return '\000';
      }
      return paramString.charAt(0);
    }
    
    private <T> T a(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
    {
      try
      {
        paramArrayOfClass = e.getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass);
        paramArrayOfClass.setAccessible(true);
        paramArrayOfClass = paramArrayOfClass.newInstance(paramArrayOfObject);
        return paramArrayOfClass;
      }
      catch (Exception paramArrayOfClass)
      {
        paramArrayOfObject = new StringBuilder();
        paramArrayOfObject.append("Cannot instantiate class: ");
        paramArrayOfObject.append(paramString);
        Log.w("SupportMenuInflater", paramArrayOfObject.toString(), paramArrayOfClass);
      }
      return null;
    }
    
    private void a(MenuItem paramMenuItem)
    {
      Object localObject = paramMenuItem.setChecked(u).setVisible(v).setEnabled(w);
      int i2 = t;
      int i1 = 0;
      if (i2 >= 1) {
        bool = true;
      } else {
        bool = false;
      }
      ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(n).setIcon(o);
      if (x >= 0) {
        paramMenuItem.setShowAsAction(x);
      }
      if (B != null) {
        if (!e.isRestricted()) {
          paramMenuItem.setOnMenuItemClickListener(new SupportMenuInflater.a(a(), B));
        } else {
          throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
        }
      }
      boolean bool = paramMenuItem instanceof MenuItemImpl;
      if (bool) {
        localObject = (MenuItemImpl)paramMenuItem;
      }
      if (t >= 2) {
        if (bool) {
          ((MenuItemImpl)paramMenuItem).setExclusiveCheckable(true);
        } else if ((paramMenuItem instanceof MenuItemWrapperICS)) {
          ((MenuItemWrapperICS)paramMenuItem).setExclusiveCheckable(true);
        }
      }
      if (z != null)
      {
        paramMenuItem.setActionView((View)a(z, SupportMenuInflater.a, c));
        i1 = 1;
      }
      if (y > 0) {
        if (i1 == 0) {
          paramMenuItem.setActionView(y);
        } else {
          Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
        }
      }
      if (a != null) {
        MenuItemCompat.setActionProvider(paramMenuItem, a);
      }
      MenuItemCompat.setContentDescription(paramMenuItem, C);
      MenuItemCompat.setTooltipText(paramMenuItem, D);
      MenuItemCompat.setAlphabeticShortcut(paramMenuItem, p, q);
      MenuItemCompat.setNumericShortcut(paramMenuItem, r, s);
      if (F != null) {
        MenuItemCompat.setIconTintMode(paramMenuItem, F);
      }
      if (E != null) {
        MenuItemCompat.setIconTintList(paramMenuItem, E);
      }
    }
    
    public void a()
    {
      d = 0;
      e = 0;
      f = 0;
      g = 0;
      h = true;
      i = true;
    }
    
    public void a(AttributeSet paramAttributeSet)
    {
      paramAttributeSet = e.obtainStyledAttributes(paramAttributeSet, R.styleable.MenuGroup);
      d = paramAttributeSet.getResourceId(R.styleable.MenuGroup_android_id, 0);
      e = paramAttributeSet.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
      f = paramAttributeSet.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
      g = paramAttributeSet.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
      h = paramAttributeSet.getBoolean(R.styleable.MenuGroup_android_visible, true);
      i = paramAttributeSet.getBoolean(R.styleable.MenuGroup_android_enabled, true);
      paramAttributeSet.recycle();
    }
    
    public void b()
    {
      j = true;
      a(c.add(d, k, l, m));
    }
    
    public void b(AttributeSet paramAttributeSet)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
    
    public SubMenu c()
    {
      j = true;
      SubMenu localSubMenu = c.addSubMenu(d, k, l, m);
      a(localSubMenu.getItem());
      return localSubMenu;
    }
    
    public boolean d()
    {
      return j;
    }
  }
}
