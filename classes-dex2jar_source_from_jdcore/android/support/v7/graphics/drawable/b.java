package android.support.v7.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.util.StateSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class b
  extends a
{
  private a a;
  private boolean b;
  
  b()
  {
    this(null, null);
  }
  
  b(@Nullable a paramA)
  {
    if (paramA != null) {
      setConstantState(paramA);
    }
  }
  
  b(a paramA, Resources paramResources)
  {
    setConstantState(new a(paramA, this, paramResources));
    onStateChange(getState());
  }
  
  private void a(Context paramContext, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    a localA = a;
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
      if ((j == 2) && (k <= i) && (paramXmlPullParser.getName().equals("item")))
      {
        Object localObject = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, R.styleable.StateListDrawableItem);
        Drawable localDrawable = null;
        j = ((TypedArray)localObject).getResourceId(R.styleable.StateListDrawableItem_android_drawable, -1);
        if (j > 0) {
          localDrawable = AppCompatResources.getDrawable(paramContext, j);
        }
        ((TypedArray)localObject).recycle();
        int[] arrayOfInt = a(paramAttributeSet);
        localObject = localDrawable;
        if (localDrawable == null)
        {
          do
          {
            j = paramXmlPullParser.next();
          } while (j == 4);
          if (j == 2)
          {
            if (Build.VERSION.SDK_INT >= 21) {
              localObject = Drawable.createFromXmlInner(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
            } else {
              localObject = Drawable.createFromXmlInner(paramResources, paramXmlPullParser, paramAttributeSet);
            }
          }
          else
          {
            paramContext = new StringBuilder();
            paramContext.append(paramXmlPullParser.getPositionDescription());
            paramContext.append(": <item> tag requires a 'drawable' attribute or ");
            paramContext.append("child tag defining a drawable");
            throw new XmlPullParserException(paramContext.toString());
          }
        }
        localA.a(arrayOfInt, (Drawable)localObject);
      }
    }
  }
  
  private void a(TypedArray paramTypedArray)
  {
    a localA = a;
    if (Build.VERSION.SDK_INT >= 21) {
      f |= paramTypedArray.getChangingConfigurations();
    }
    k = paramTypedArray.getBoolean(R.styleable.StateListDrawable_android_variablePadding, k);
    n = paramTypedArray.getBoolean(R.styleable.StateListDrawable_android_constantSize, n);
    C = paramTypedArray.getInt(R.styleable.StateListDrawable_android_enterFadeDuration, C);
    D = paramTypedArray.getInt(R.styleable.StateListDrawable_android_exitFadeDuration, D);
    z = paramTypedArray.getBoolean(R.styleable.StateListDrawable_android_dither, z);
  }
  
  int[] a(AttributeSet paramAttributeSet)
  {
    int n = paramAttributeSet.getAttributeCount();
    int[] arrayOfInt = new int[n];
    int i = 0;
    int k;
    for (int j = 0; i < n; j = k)
    {
      int m = paramAttributeSet.getAttributeNameResource(i);
      k = j;
      if (m != 0)
      {
        k = j;
        if (m != 16842960)
        {
          k = j;
          if (m != 16843161)
          {
            if (paramAttributeSet.getAttributeBooleanValue(i, false)) {
              k = m;
            } else {
              k = -m;
            }
            arrayOfInt[j] = k;
            k = j + 1;
          }
        }
      }
      i += 1;
    }
    return StateSet.trimStateSet(arrayOfInt, j);
  }
  
  public void addState(int[] paramArrayOfInt, Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      a.a(paramArrayOfInt, paramDrawable);
      onStateChange(getState());
    }
  }
  
  @RequiresApi(21)
  public void applyTheme(@NonNull Resources.Theme paramTheme)
  {
    super.applyTheme(paramTheme);
    onStateChange(getState());
  }
  
  a b()
  {
    return new a(a, this, null);
  }
  
  public void inflate(@NonNull Context paramContext, @NonNull Resources paramResources, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    TypedArray localTypedArray = TypedArrayUtils.obtainAttributes(paramResources, paramTheme, paramAttributeSet, R.styleable.StateListDrawable);
    setVisible(localTypedArray.getBoolean(R.styleable.StateListDrawable_android_visible, true), true);
    a(localTypedArray);
    a(paramResources);
    localTypedArray.recycle();
    a(paramContext, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    onStateChange(getState());
  }
  
  public boolean isStateful()
  {
    return true;
  }
  
  @NonNull
  public Drawable mutate()
  {
    if ((!b) && (super.mutate() == this))
    {
      a.a();
      b = true;
    }
    return this;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    boolean bool = super.onStateChange(paramArrayOfInt);
    int j = a.b(paramArrayOfInt);
    int i = j;
    if (j < 0) {
      i = a.b(StateSet.WILD_CARD);
    }
    return (a(i)) || (bool);
  }
  
  protected void setConstantState(@NonNull a.b paramB)
  {
    super.setConstantState(paramB);
    if ((paramB instanceof a)) {
      a = ((a)paramB);
    }
  }
  
  static class a
    extends a.b
  {
    int[][] L;
    
    a(a paramA, b paramB, Resources paramResources)
    {
      super(paramB, paramResources);
      if (paramA != null)
      {
        L = L;
        return;
      }
      L = new int[c()][];
    }
    
    int a(int[] paramArrayOfInt, Drawable paramDrawable)
    {
      int i = a(paramDrawable);
      L[i] = paramArrayOfInt;
      return i;
    }
    
    void a()
    {
      int[][] arrayOfInt1 = new int[L.length][];
      int i = L.length - 1;
      while (i >= 0)
      {
        int[] arrayOfInt;
        if (L[i] != null) {
          arrayOfInt = (int[])L[i].clone();
        } else {
          arrayOfInt = null;
        }
        arrayOfInt1[i] = arrayOfInt;
        i -= 1;
      }
      L = arrayOfInt1;
    }
    
    int b(int[] paramArrayOfInt)
    {
      int[][] arrayOfInt = L;
      int j = d();
      int i = 0;
      while (i < j)
      {
        if (StateSet.stateSetMatches(arrayOfInt[i], paramArrayOfInt)) {
          return i;
        }
        i += 1;
      }
      return -1;
    }
    
    public void e(int paramInt1, int paramInt2)
    {
      super.e(paramInt1, paramInt2);
      int[][] arrayOfInt = new int[paramInt2][];
      System.arraycopy(L, 0, arrayOfInt, 0, paramInt1);
      L = arrayOfInt;
    }
    
    @NonNull
    public Drawable newDrawable()
    {
      return new b(this, null);
    }
    
    @NonNull
    public Drawable newDrawable(Resources paramResources)
    {
      return new b(this, paramResources);
    }
  }
}
