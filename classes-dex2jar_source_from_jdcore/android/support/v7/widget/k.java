package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R.styleable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.StaticLayout.Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

class k
{
  private static final RectF a = new RectF();
  private static ConcurrentHashMap<String, Method> b = new ConcurrentHashMap();
  private int c = 0;
  private boolean d = false;
  private float e = -1.0F;
  private float f = -1.0F;
  private float g = -1.0F;
  private int[] h = new int[0];
  private boolean i = false;
  private TextPaint j;
  private final TextView k;
  private final Context l;
  
  k(TextView paramTextView)
  {
    k = paramTextView;
    l = k.getContext();
  }
  
  private int a(RectF paramRectF)
  {
    int m = h.length;
    if (m != 0)
    {
      int i1 = m - 1;
      m = 1;
      int n = 0;
      while (m <= i1)
      {
        int i2 = (m + i1) / 2;
        if (a(h[i2], paramRectF))
        {
          n = m;
          m = i2 + 1;
        }
        else
        {
          n = i2 - 1;
          i1 = n;
        }
      }
      return h[n];
    }
    throw new IllegalStateException("No available text sizes to choose from.");
  }
  
  private StaticLayout a(CharSequence paramCharSequence, Layout.Alignment paramAlignment, int paramInt)
  {
    float f1;
    float f2;
    if (Build.VERSION.SDK_INT >= 16)
    {
      f1 = k.getLineSpacingMultiplier();
      f2 = k.getLineSpacingExtra();
    }
    for (boolean bool = k.getIncludeFontPadding();; bool = ((Boolean)a(k, "getIncludeFontPadding", Boolean.valueOf(true))).booleanValue())
    {
      break;
      f1 = ((Float)a(k, "getLineSpacingMultiplier", Float.valueOf(1.0F))).floatValue();
      f2 = ((Float)a(k, "getLineSpacingExtra", Float.valueOf(0.0F))).floatValue();
    }
    return new StaticLayout(paramCharSequence, j, paramInt, paramAlignment, f1, f2, bool);
  }
  
  @RequiresApi(23)
  private StaticLayout a(CharSequence paramCharSequence, Layout.Alignment paramAlignment, int paramInt1, int paramInt2)
  {
    TextDirectionHeuristic localTextDirectionHeuristic = (TextDirectionHeuristic)a(k, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
    paramCharSequence = StaticLayout.Builder.obtain(paramCharSequence, 0, paramCharSequence.length(), j, paramInt1).setAlignment(paramAlignment).setLineSpacing(k.getLineSpacingExtra(), k.getLineSpacingMultiplier()).setIncludePad(k.getIncludeFontPadding()).setBreakStrategy(k.getBreakStrategy()).setHyphenationFrequency(k.getHyphenationFrequency());
    paramInt1 = paramInt2;
    if (paramInt2 == -1) {
      paramInt1 = Integer.MAX_VALUE;
    }
    return paramCharSequence.setMaxLines(paramInt1).setTextDirection(localTextDirectionHeuristic).build();
  }
  
  /* Error */
  private <T> T a(@NonNull Object paramObject, @NonNull String paramString, @NonNull T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokespecial 196	android/support/v7/widget/k:a	(Ljava/lang/String;)Ljava/lang/reflect/Method;
    //   5: aload_1
    //   6: iconst_0
    //   7: anewarray 4	java/lang/Object
    //   10: invokevirtual 202	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   13: astore_1
    //   14: aload_1
    //   15: areturn
    //   16: astore_1
    //   17: goto +50 -> 67
    //   20: astore_1
    //   21: new 204	java/lang/StringBuilder
    //   24: dup
    //   25: invokespecial 205	java/lang/StringBuilder:<init>	()V
    //   28: astore 4
    //   30: aload 4
    //   32: ldc -49
    //   34: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: pop
    //   38: aload 4
    //   40: aload_2
    //   41: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload 4
    //   47: ldc -43
    //   49: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: pop
    //   53: ldc -41
    //   55: aload 4
    //   57: invokevirtual 219	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: aload_1
    //   61: invokestatic 225	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   64: pop
    //   65: aload_3
    //   66: areturn
    //   67: aload_1
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	k
    //   0	69	1	paramObject	Object
    //   0	69	2	paramString	String
    //   0	69	3	paramT	T
    //   28	28	4	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   0	14	16	finally
    //   21	65	16	finally
    //   0	14	20	java/lang/Exception
  }
  
  @Nullable
  private Method a(@NonNull String paramString)
  {
    try
    {
      localObject2 = (Method)b.get(paramString);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = TextView.class.getDeclaredMethod(paramString, new Class[0]);
        localObject1 = localObject2;
        if (localObject2 != null)
        {
          ((Method)localObject2).setAccessible(true);
          b.put(paramString, localObject2);
          localObject1 = localObject2;
        }
      }
      return localObject1;
    }
    catch (Exception localException)
    {
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("Failed to retrieve TextView#");
      ((StringBuilder)localObject2).append(paramString);
      ((StringBuilder)localObject2).append("() method");
      Log.w("ACTVAutoSizeHelper", ((StringBuilder)localObject2).toString(), localException);
    }
    return null;
  }
  
  private void a(float paramFloat)
  {
    if (paramFloat != k.getPaint().getTextSize())
    {
      k.getPaint().setTextSize(paramFloat);
      boolean bool;
      if (Build.VERSION.SDK_INT >= 18) {
        bool = k.isInLayout();
      } else {
        bool = false;
      }
      if (k.getLayout() != null)
      {
        d = false;
        try
        {
          Method localMethod = a("nullLayouts");
          if (localMethod != null) {
            localMethod.invoke(k, new Object[0]);
          }
        }
        catch (Exception localException)
        {
          Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", localException);
        }
        if (!bool) {
          k.requestLayout();
        } else {
          k.forceLayout();
        }
        k.invalidate();
      }
    }
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3)
    throws IllegalArgumentException
  {
    if (paramFloat1 > 0.0F)
    {
      if (paramFloat2 > paramFloat1)
      {
        if (paramFloat3 > 0.0F)
        {
          c = 1;
          f = paramFloat1;
          g = paramFloat2;
          e = paramFloat3;
          i = false;
          return;
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("The auto-size step granularity (");
        localStringBuilder.append(paramFloat3);
        localStringBuilder.append("px) is less or equal to (0px)");
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Maximum auto-size text size (");
      localStringBuilder.append(paramFloat2);
      localStringBuilder.append("px) is less or equal to minimum auto-size ");
      localStringBuilder.append("text size (");
      localStringBuilder.append(paramFloat1);
      localStringBuilder.append("px)");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Minimum auto-size text size (");
    localStringBuilder.append(paramFloat1);
    localStringBuilder.append("px) is less or equal to (0px)");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private void a(TypedArray paramTypedArray)
  {
    int n = paramTypedArray.length();
    int[] arrayOfInt = new int[n];
    if (n > 0)
    {
      int m = 0;
      while (m < n)
      {
        arrayOfInt[m] = paramTypedArray.getDimensionPixelSize(m, -1);
        m += 1;
      }
      h = a(arrayOfInt);
      h();
    }
  }
  
  private boolean a(int paramInt, RectF paramRectF)
  {
    Object localObject2 = k.getText();
    Object localObject3 = k.getTransformationMethod();
    Object localObject1 = localObject2;
    if (localObject3 != null)
    {
      localObject3 = ((TransformationMethod)localObject3).getTransformation((CharSequence)localObject2, k);
      localObject1 = localObject2;
      if (localObject3 != null) {
        localObject1 = localObject3;
      }
    }
    int m;
    if (Build.VERSION.SDK_INT >= 16) {
      m = k.getMaxLines();
    } else {
      m = -1;
    }
    if (j == null) {
      j = new TextPaint();
    } else {
      j.reset();
    }
    j.set(k.getPaint());
    j.setTextSize(paramInt);
    localObject2 = (Layout.Alignment)a(k, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
    if (Build.VERSION.SDK_INT >= 23) {
      localObject2 = a(localObject1, (Layout.Alignment)localObject2, Math.round(right), m);
    } else {
      localObject2 = a(localObject1, (Layout.Alignment)localObject2, Math.round(right));
    }
    if ((m != -1) && ((((StaticLayout)localObject2).getLineCount() > m) || (((StaticLayout)localObject2).getLineEnd(((StaticLayout)localObject2).getLineCount() - 1) != localObject1.length()))) {
      return false;
    }
    return ((StaticLayout)localObject2).getHeight() <= bottom;
  }
  
  private int[] a(int[] paramArrayOfInt)
  {
    int i1 = paramArrayOfInt.length;
    if (i1 == 0) {
      return paramArrayOfInt;
    }
    Arrays.sort(paramArrayOfInt);
    ArrayList localArrayList = new ArrayList();
    int n = 0;
    int m = 0;
    while (m < i1)
    {
      int i2 = paramArrayOfInt[m];
      if ((i2 > 0) && (Collections.binarySearch(localArrayList, Integer.valueOf(i2)) < 0)) {
        localArrayList.add(Integer.valueOf(i2));
      }
      m += 1;
    }
    if (i1 == localArrayList.size()) {
      return paramArrayOfInt;
    }
    i1 = localArrayList.size();
    paramArrayOfInt = new int[i1];
    m = n;
    while (m < i1)
    {
      paramArrayOfInt[m] = ((Integer)localArrayList.get(m)).intValue();
      m += 1;
    }
    return paramArrayOfInt;
  }
  
  private boolean h()
  {
    int m = h.length;
    boolean bool;
    if (m > 0) {
      bool = true;
    } else {
      bool = false;
    }
    i = bool;
    if (i)
    {
      c = 1;
      f = h[0];
      g = h[(m - 1)];
      e = -1.0F;
    }
    return i;
  }
  
  private boolean i()
  {
    boolean bool = k();
    int n = 0;
    if ((bool) && (c == 1))
    {
      if ((!i) || (h.length == 0))
      {
        float f1 = Math.round(f);
        int m = 1;
        while (Math.round(e + f1) <= Math.round(g))
        {
          m += 1;
          f1 += e;
        }
        int[] arrayOfInt = new int[m];
        f1 = f;
        while (n < m)
        {
          arrayOfInt[n] = Math.round(f1);
          f1 += e;
          n += 1;
        }
        h = a(arrayOfInt);
      }
      d = true;
    }
    else
    {
      d = false;
    }
    return d;
  }
  
  private void j()
  {
    c = 0;
    f = -1.0F;
    g = -1.0F;
    e = -1.0F;
    h = new int[0];
    d = false;
  }
  
  private boolean k()
  {
    return !(k instanceof AppCompatEditText);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  int a()
  {
    return c;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void a(int paramInt)
  {
    if (k())
    {
      Object localObject;
      switch (paramInt)
      {
      default: 
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Unknown auto-size text type: ");
        ((StringBuilder)localObject).append(paramInt);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      case 1: 
        localObject = l.getResources().getDisplayMetrics();
        a(TypedValue.applyDimension(2, 12.0F, (DisplayMetrics)localObject), TypedValue.applyDimension(2, 112.0F, (DisplayMetrics)localObject), 1.0F);
        if (i())
        {
          f();
          return;
        }
        break;
      case 0: 
        j();
      }
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void a(int paramInt, float paramFloat)
  {
    Resources localResources;
    if (l == null) {
      localResources = Resources.getSystem();
    } else {
      localResources = l.getResources();
    }
    a(TypedValue.applyDimension(paramInt, paramFloat, localResources.getDisplayMetrics()));
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    if (k())
    {
      DisplayMetrics localDisplayMetrics = l.getResources().getDisplayMetrics();
      a(TypedValue.applyDimension(paramInt4, paramInt1, localDisplayMetrics), TypedValue.applyDimension(paramInt4, paramInt2, localDisplayMetrics), TypedValue.applyDimension(paramInt4, paramInt3, localDisplayMetrics));
      if (i()) {
        f();
      }
    }
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = l.obtainStyledAttributes(paramAttributeSet, R.styleable.AppCompatTextView, paramInt, 0);
    if (paramAttributeSet.hasValue(R.styleable.AppCompatTextView_autoSizeTextType)) {
      c = paramAttributeSet.getInt(R.styleable.AppCompatTextView_autoSizeTextType, 0);
    }
    float f1;
    if (paramAttributeSet.hasValue(R.styleable.AppCompatTextView_autoSizeStepGranularity)) {
      f1 = paramAttributeSet.getDimension(R.styleable.AppCompatTextView_autoSizeStepGranularity, -1.0F);
    } else {
      f1 = -1.0F;
    }
    float f2;
    if (paramAttributeSet.hasValue(R.styleable.AppCompatTextView_autoSizeMinTextSize)) {
      f2 = paramAttributeSet.getDimension(R.styleable.AppCompatTextView_autoSizeMinTextSize, -1.0F);
    } else {
      f2 = -1.0F;
    }
    float f3;
    if (paramAttributeSet.hasValue(R.styleable.AppCompatTextView_autoSizeMaxTextSize)) {
      f3 = paramAttributeSet.getDimension(R.styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0F);
    } else {
      f3 = -1.0F;
    }
    if (paramAttributeSet.hasValue(R.styleable.AppCompatTextView_autoSizePresetSizes))
    {
      paramInt = paramAttributeSet.getResourceId(R.styleable.AppCompatTextView_autoSizePresetSizes, 0);
      if (paramInt > 0)
      {
        TypedArray localTypedArray = paramAttributeSet.getResources().obtainTypedArray(paramInt);
        a(localTypedArray);
        localTypedArray.recycle();
      }
    }
    paramAttributeSet.recycle();
    if (k())
    {
      if (c == 1)
      {
        if (!i)
        {
          paramAttributeSet = l.getResources().getDisplayMetrics();
          float f4 = f2;
          if (f2 == -1.0F) {
            f4 = TypedValue.applyDimension(2, 12.0F, paramAttributeSet);
          }
          f2 = f3;
          if (f3 == -1.0F) {
            f2 = TypedValue.applyDimension(2, 112.0F, paramAttributeSet);
          }
          f3 = f1;
          if (f1 == -1.0F) {
            f3 = 1.0F;
          }
          a(f4, f2, f3);
        }
        i();
      }
    }
    else {
      c = 0;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void a(@NonNull int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    if (k())
    {
      int n = paramArrayOfInt.length;
      int m = 0;
      if (n > 0)
      {
        int[] arrayOfInt = new int[n];
        Object localObject;
        if (paramInt == 0)
        {
          localObject = Arrays.copyOf(paramArrayOfInt, n);
        }
        else
        {
          DisplayMetrics localDisplayMetrics = l.getResources().getDisplayMetrics();
          for (;;)
          {
            localObject = arrayOfInt;
            if (m >= n) {
              break;
            }
            arrayOfInt[m] = Math.round(TypedValue.applyDimension(paramInt, paramArrayOfInt[m], localDisplayMetrics));
            m += 1;
          }
        }
        h = a((int[])localObject);
        if (!h())
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("None of the preset sizes is valid: ");
          ((StringBuilder)localObject).append(Arrays.toString(paramArrayOfInt));
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      else
      {
        i = false;
      }
      if (i()) {
        f();
      }
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  int b()
  {
    return Math.round(e);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  int c()
  {
    return Math.round(f);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  int d()
  {
    return Math.round(g);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  int[] e()
  {
    return h;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void f()
  {
    if (!g()) {
      return;
    }
    if (d)
    {
      if (k.getMeasuredHeight() > 0)
      {
        if (k.getMeasuredWidth() <= 0) {
          return;
        }
        int m;
        if (((Boolean)a(k, "getHorizontallyScrolling", Boolean.valueOf(false))).booleanValue()) {
          m = 1048576;
        } else {
          m = k.getMeasuredWidth() - k.getTotalPaddingLeft() - k.getTotalPaddingRight();
        }
        int n = k.getHeight() - k.getCompoundPaddingBottom() - k.getCompoundPaddingTop();
        if (m > 0)
        {
          if (n <= 0) {
            return;
          }
          synchronized (a)
          {
            a.setEmpty();
            aright = m;
            abottom = n;
            float f1 = a(a);
            if (f1 != k.getTextSize()) {
              a(0, f1);
            }
          }
        }
        return;
      }
      return;
    }
    d = true;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  boolean g()
  {
    return (k()) && (c != 0);
  }
}
