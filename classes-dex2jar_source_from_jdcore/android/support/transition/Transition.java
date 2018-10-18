package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

public abstract class Transition
  implements Cloneable
{
  private static ThreadLocal<ArrayMap<Animator, a>> A = new ThreadLocal();
  public static final int MATCH_ID = 3;
  public static final int MATCH_INSTANCE = 1;
  public static final int MATCH_ITEM_ID = 4;
  public static final int MATCH_NAME = 2;
  private static final int[] a = { 2, 1, 3, 4 };
  private static final PathMotion i = new PathMotion()
  {
    public Path getPath(float paramAnonymousFloat1, float paramAnonymousFloat2, float paramAnonymousFloat3, float paramAnonymousFloat4)
    {
      Path localPath = new Path();
      localPath.moveTo(paramAnonymousFloat1, paramAnonymousFloat2);
      localPath.lineTo(paramAnonymousFloat3, paramAnonymousFloat4);
      return localPath;
    }
  };
  private ViewGroup B = null;
  private int C = 0;
  private boolean D = false;
  private boolean E = false;
  private ArrayList<TransitionListener> F = null;
  private ArrayList<Animator> G = new ArrayList();
  private EpicenterCallback H;
  private ArrayMap<String, String> I;
  private PathMotion J = i;
  long b = -1L;
  ArrayList<Integer> c = new ArrayList();
  ArrayList<View> d = new ArrayList();
  TransitionSet e = null;
  boolean f = false;
  ArrayList<Animator> g = new ArrayList();
  TransitionPropagation h;
  private String j = getClass().getName();
  private long k = -1L;
  private TimeInterpolator l = null;
  private ArrayList<String> m = null;
  private ArrayList<Class> n = null;
  private ArrayList<Integer> o = null;
  private ArrayList<View> p = null;
  private ArrayList<Class> q = null;
  private ArrayList<String> r = null;
  private ArrayList<Integer> s = null;
  private ArrayList<View> t = null;
  private ArrayList<Class> u = null;
  private o v = new o();
  private o w = new o();
  private int[] x = a;
  private ArrayList<TransitionValues> y;
  private ArrayList<TransitionValues> z;
  
  public Transition() {}
  
  public Transition(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, m.c);
    paramAttributeSet = (XmlResourceParser)paramAttributeSet;
    long l1 = TypedArrayUtils.getNamedInt(localTypedArray, paramAttributeSet, "duration", 1, -1);
    if (l1 >= 0L) {
      setDuration(l1);
    }
    l1 = TypedArrayUtils.getNamedInt(localTypedArray, paramAttributeSet, "startDelay", 2, -1);
    if (l1 > 0L) {
      setStartDelay(l1);
    }
    int i1 = TypedArrayUtils.getNamedResourceId(localTypedArray, paramAttributeSet, "interpolator", 0, 0);
    if (i1 > 0) {
      setInterpolator(AnimationUtils.loadInterpolator(paramContext, i1));
    }
    paramContext = TypedArrayUtils.getNamedString(localTypedArray, paramAttributeSet, "matchOrder", 3);
    if (paramContext != null) {
      setMatchOrder(b(paramContext));
    }
    localTypedArray.recycle();
  }
  
  private static ArrayMap<Animator, a> a()
  {
    ArrayMap localArrayMap2 = (ArrayMap)A.get();
    ArrayMap localArrayMap1 = localArrayMap2;
    if (localArrayMap2 == null)
    {
      localArrayMap1 = new ArrayMap();
      A.set(localArrayMap1);
    }
    return localArrayMap1;
  }
  
  private ArrayList<Integer> a(ArrayList<Integer> paramArrayList, int paramInt, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramInt > 0)
    {
      if (paramBoolean) {
        return b.a(paramArrayList, Integer.valueOf(paramInt));
      }
      localObject = b.b(paramArrayList, Integer.valueOf(paramInt));
    }
    return localObject;
  }
  
  private ArrayList<View> a(ArrayList<View> paramArrayList, View paramView, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramView != null)
    {
      if (paramBoolean) {
        return b.a(paramArrayList, paramView);
      }
      localObject = b.b(paramArrayList, paramView);
    }
    return localObject;
  }
  
  private ArrayList<Class> a(ArrayList<Class> paramArrayList, Class paramClass, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramClass != null)
    {
      if (paramBoolean) {
        return b.a(paramArrayList, paramClass);
      }
      localObject = b.b(paramArrayList, paramClass);
    }
    return localObject;
  }
  
  private static <T> ArrayList<T> a(ArrayList<T> paramArrayList, T paramT, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramT != null)
    {
      if (paramBoolean) {
        return b.a(paramArrayList, paramT);
      }
      localObject = b.b(paramArrayList, paramT);
    }
    return localObject;
  }
  
  private void a(Animator paramAnimator, final ArrayMap<Animator, a> paramArrayMap)
  {
    if (paramAnimator != null)
    {
      paramAnimator.addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          paramArrayMap.remove(paramAnonymousAnimator);
          g.remove(paramAnonymousAnimator);
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          g.add(paramAnonymousAnimator);
        }
      });
      animate(paramAnimator);
    }
  }
  
  private void a(o paramO1, o paramO2)
  {
    ArrayMap localArrayMap1 = new ArrayMap(a);
    ArrayMap localArrayMap2 = new ArrayMap(a);
    int i1 = 0;
    while (i1 < x.length)
    {
      switch (x[i1])
      {
      default: 
        break;
      case 4: 
        a(localArrayMap1, localArrayMap2, c, c);
        break;
      case 3: 
        a(localArrayMap1, localArrayMap2, b, b);
        break;
      case 2: 
        a(localArrayMap1, localArrayMap2, d, d);
        break;
      case 1: 
        a(localArrayMap1, localArrayMap2);
      }
      i1 += 1;
    }
    b(localArrayMap1, localArrayMap2);
  }
  
  private static void a(o paramO, View paramView, TransitionValues paramTransitionValues)
  {
    a.put(paramView, paramTransitionValues);
    int i1 = paramView.getId();
    if (i1 >= 0) {
      if (b.indexOfKey(i1) >= 0) {
        b.put(i1, null);
      } else {
        b.put(i1, paramView);
      }
    }
    paramTransitionValues = ViewCompat.getTransitionName(paramView);
    if (paramTransitionValues != null) {
      if (d.containsKey(paramTransitionValues)) {
        d.put(paramTransitionValues, null);
      } else {
        d.put(paramTransitionValues, paramView);
      }
    }
    if ((paramView.getParent() instanceof ListView))
    {
      paramTransitionValues = (ListView)paramView.getParent();
      if (paramTransitionValues.getAdapter().hasStableIds())
      {
        long l1 = paramTransitionValues.getItemIdAtPosition(paramTransitionValues.getPositionForView(paramView));
        if (c.indexOfKey(l1) >= 0)
        {
          paramView = (View)c.get(l1);
          if (paramView != null)
          {
            ViewCompat.setHasTransientState(paramView, false);
            c.put(l1, null);
          }
        }
        else
        {
          ViewCompat.setHasTransientState(paramView, true);
          c.put(l1, paramView);
        }
      }
    }
  }
  
  private void a(ArrayMap<View, TransitionValues> paramArrayMap1, ArrayMap<View, TransitionValues> paramArrayMap2)
  {
    int i1 = paramArrayMap1.size() - 1;
    while (i1 >= 0)
    {
      Object localObject = (View)paramArrayMap1.keyAt(i1);
      if ((localObject != null) && (b((View)localObject)))
      {
        localObject = (TransitionValues)paramArrayMap2.remove(localObject);
        if ((localObject != null) && (view != null) && (b(view)))
        {
          TransitionValues localTransitionValues = (TransitionValues)paramArrayMap1.removeAt(i1);
          y.add(localTransitionValues);
          z.add(localObject);
        }
      }
      i1 -= 1;
    }
  }
  
  private void a(ArrayMap<View, TransitionValues> paramArrayMap1, ArrayMap<View, TransitionValues> paramArrayMap2, ArrayMap<String, View> paramArrayMap3, ArrayMap<String, View> paramArrayMap4)
  {
    int i2 = paramArrayMap3.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView1 = (View)paramArrayMap3.valueAt(i1);
      if ((localView1 != null) && (b(localView1)))
      {
        View localView2 = (View)paramArrayMap4.get(paramArrayMap3.keyAt(i1));
        if ((localView2 != null) && (b(localView2)))
        {
          TransitionValues localTransitionValues1 = (TransitionValues)paramArrayMap1.get(localView1);
          TransitionValues localTransitionValues2 = (TransitionValues)paramArrayMap2.get(localView2);
          if ((localTransitionValues1 != null) && (localTransitionValues2 != null))
          {
            y.add(localTransitionValues1);
            z.add(localTransitionValues2);
            paramArrayMap1.remove(localView1);
            paramArrayMap2.remove(localView2);
          }
        }
      }
      i1 += 1;
    }
  }
  
  private void a(ArrayMap<View, TransitionValues> paramArrayMap1, ArrayMap<View, TransitionValues> paramArrayMap2, LongSparseArray<View> paramLongSparseArray1, LongSparseArray<View> paramLongSparseArray2)
  {
    int i2 = paramLongSparseArray1.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView1 = (View)paramLongSparseArray1.valueAt(i1);
      if ((localView1 != null) && (b(localView1)))
      {
        View localView2 = (View)paramLongSparseArray2.get(paramLongSparseArray1.keyAt(i1));
        if ((localView2 != null) && (b(localView2)))
        {
          TransitionValues localTransitionValues1 = (TransitionValues)paramArrayMap1.get(localView1);
          TransitionValues localTransitionValues2 = (TransitionValues)paramArrayMap2.get(localView2);
          if ((localTransitionValues1 != null) && (localTransitionValues2 != null))
          {
            y.add(localTransitionValues1);
            z.add(localTransitionValues2);
            paramArrayMap1.remove(localView1);
            paramArrayMap2.remove(localView2);
          }
        }
      }
      i1 += 1;
    }
  }
  
  private void a(ArrayMap<View, TransitionValues> paramArrayMap1, ArrayMap<View, TransitionValues> paramArrayMap2, SparseArray<View> paramSparseArray1, SparseArray<View> paramSparseArray2)
  {
    int i2 = paramSparseArray1.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView1 = (View)paramSparseArray1.valueAt(i1);
      if ((localView1 != null) && (b(localView1)))
      {
        View localView2 = (View)paramSparseArray2.get(paramSparseArray1.keyAt(i1));
        if ((localView2 != null) && (b(localView2)))
        {
          TransitionValues localTransitionValues1 = (TransitionValues)paramArrayMap1.get(localView1);
          TransitionValues localTransitionValues2 = (TransitionValues)paramArrayMap2.get(localView2);
          if ((localTransitionValues1 != null) && (localTransitionValues2 != null))
          {
            y.add(localTransitionValues1);
            z.add(localTransitionValues2);
            paramArrayMap1.remove(localView1);
            paramArrayMap2.remove(localView2);
          }
        }
      }
      i1 += 1;
    }
  }
  
  private static boolean a(int paramInt)
  {
    return (paramInt >= 1) && (paramInt <= 4);
  }
  
  private static boolean a(TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2, String paramString)
  {
    paramTransitionValues1 = values.get(paramString);
    paramTransitionValues2 = values.get(paramString);
    boolean bool = true;
    if ((paramTransitionValues1 == null) && (paramTransitionValues2 == null)) {
      return false;
    }
    if (paramTransitionValues1 != null)
    {
      if (paramTransitionValues2 == null) {
        return true;
      }
      bool = true ^ paramTransitionValues1.equals(paramTransitionValues2);
    }
    return bool;
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    int i2 = paramArrayOfInt[paramInt];
    int i1 = 0;
    while (i1 < paramInt)
    {
      if (paramArrayOfInt[i1] == i2) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private void b(ArrayMap<View, TransitionValues> paramArrayMap1, ArrayMap<View, TransitionValues> paramArrayMap2)
  {
    int i3 = 0;
    int i1 = 0;
    int i2;
    for (;;)
    {
      i2 = i3;
      if (i1 >= paramArrayMap1.size()) {
        break;
      }
      TransitionValues localTransitionValues = (TransitionValues)paramArrayMap1.valueAt(i1);
      if (b(view))
      {
        y.add(localTransitionValues);
        z.add(null);
      }
      i1 += 1;
    }
    while (i2 < paramArrayMap2.size())
    {
      paramArrayMap1 = (TransitionValues)paramArrayMap2.valueAt(i2);
      if (b(view))
      {
        z.add(paramArrayMap1);
        y.add(null);
      }
      i2 += 1;
    }
  }
  
  private void b(View paramView, boolean paramBoolean)
  {
    if (paramView == null) {
      return;
    }
    int i3 = paramView.getId();
    if ((o != null) && (o.contains(Integer.valueOf(i3)))) {
      return;
    }
    if ((p != null) && (p.contains(paramView))) {
      return;
    }
    Object localObject = q;
    int i2 = 0;
    int i1;
    if (localObject != null)
    {
      int i4 = q.size();
      i1 = 0;
      while (i1 < i4)
      {
        if (((Class)q.get(i1)).isInstance(paramView)) {
          return;
        }
        i1 += 1;
      }
    }
    if ((paramView.getParent() instanceof ViewGroup))
    {
      localObject = new TransitionValues();
      view = paramView;
      if (paramBoolean) {
        captureStartValues((TransitionValues)localObject);
      } else {
        captureEndValues((TransitionValues)localObject);
      }
      a.add(this);
      a((TransitionValues)localObject);
      if (paramBoolean) {
        a(v, paramView, (TransitionValues)localObject);
      } else {
        a(w, paramView, (TransitionValues)localObject);
      }
    }
    if ((paramView instanceof ViewGroup))
    {
      if ((s != null) && (s.contains(Integer.valueOf(i3)))) {
        return;
      }
      if ((t != null) && (t.contains(paramView))) {
        return;
      }
      if (u != null)
      {
        i3 = u.size();
        i1 = 0;
        while (i1 < i3)
        {
          if (((Class)u.get(i1)).isInstance(paramView)) {
            return;
          }
          i1 += 1;
        }
      }
      paramView = (ViewGroup)paramView;
      i1 = i2;
      while (i1 < paramView.getChildCount())
      {
        b(paramView.getChildAt(i1), paramBoolean);
        i1 += 1;
      }
    }
  }
  
  private static int[] b(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    paramString = new int[localStringTokenizer.countTokens()];
    int i1 = 0;
    while (localStringTokenizer.hasMoreTokens())
    {
      Object localObject = localStringTokenizer.nextToken().trim();
      if ("id".equalsIgnoreCase((String)localObject))
      {
        paramString[i1] = 3;
      }
      else if ("instance".equalsIgnoreCase((String)localObject))
      {
        paramString[i1] = 1;
      }
      else if ("name".equalsIgnoreCase((String)localObject))
      {
        paramString[i1] = 2;
      }
      else if ("itemId".equalsIgnoreCase((String)localObject))
      {
        paramString[i1] = 4;
      }
      else
      {
        if (!((String)localObject).isEmpty()) {
          break label139;
        }
        localObject = new int[paramString.length - 1];
        System.arraycopy(paramString, 0, localObject, 0, i1);
        i1 -= 1;
        paramString = (String)localObject;
      }
      i1 += 1;
      continue;
      label139:
      paramString = new StringBuilder();
      paramString.append("Unknown match type in matchOrder: '");
      paramString.append((String)localObject);
      paramString.append("'");
      throw new InflateException(paramString.toString());
    }
    return paramString;
  }
  
  TransitionValues a(View paramView, boolean paramBoolean)
  {
    if (e != null) {
      return e.a(paramView, paramBoolean);
    }
    ArrayList localArrayList;
    if (paramBoolean) {
      localArrayList = y;
    } else {
      localArrayList = z;
    }
    Object localObject = null;
    if (localArrayList == null) {
      return null;
    }
    int i4 = localArrayList.size();
    int i3 = -1;
    int i1 = 0;
    int i2;
    for (;;)
    {
      i2 = i3;
      if (i1 >= i4) {
        break;
      }
      TransitionValues localTransitionValues = (TransitionValues)localArrayList.get(i1);
      if (localTransitionValues == null) {
        return null;
      }
      if (view == paramView)
      {
        i2 = i1;
        break;
      }
      i1 += 1;
    }
    paramView = localObject;
    if (i2 >= 0)
    {
      if (paramBoolean) {
        paramView = z;
      } else {
        paramView = y;
      }
      paramView = (TransitionValues)paramView.get(i2);
    }
    return paramView;
  }
  
  String a(String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(getClass().getSimpleName());
    ((StringBuilder)localObject).append("@");
    ((StringBuilder)localObject).append(Integer.toHexString(hashCode()));
    ((StringBuilder)localObject).append(": ");
    localObject = ((StringBuilder)localObject).toString();
    paramString = (String)localObject;
    if (b != -1L)
    {
      paramString = new StringBuilder();
      paramString.append((String)localObject);
      paramString.append("dur(");
      paramString.append(b);
      paramString.append(") ");
      paramString = paramString.toString();
    }
    localObject = paramString;
    if (k != -1L)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("dly(");
      ((StringBuilder)localObject).append(k);
      ((StringBuilder)localObject).append(") ");
      localObject = ((StringBuilder)localObject).toString();
    }
    paramString = (String)localObject;
    if (l != null)
    {
      paramString = new StringBuilder();
      paramString.append((String)localObject);
      paramString.append("interp(");
      paramString.append(l);
      paramString.append(") ");
      paramString = paramString.toString();
    }
    if (c.size() <= 0)
    {
      localObject = paramString;
      if (d.size() <= 0) {}
    }
    else
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("tgts(");
      localObject = ((StringBuilder)localObject).toString();
      int i1 = c.size();
      int i2 = 0;
      paramString = (String)localObject;
      if (i1 > 0)
      {
        paramString = (String)localObject;
        i1 = 0;
        while (i1 < c.size())
        {
          localObject = paramString;
          if (i1 > 0)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(paramString);
            ((StringBuilder)localObject).append(", ");
            localObject = ((StringBuilder)localObject).toString();
          }
          paramString = new StringBuilder();
          paramString.append((String)localObject);
          paramString.append(c.get(i1));
          paramString = paramString.toString();
          i1 += 1;
        }
      }
      localObject = paramString;
      if (d.size() > 0)
      {
        i1 = i2;
        for (;;)
        {
          localObject = paramString;
          if (i1 >= d.size()) {
            break;
          }
          localObject = paramString;
          if (i1 > 0)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(paramString);
            ((StringBuilder)localObject).append(", ");
            localObject = ((StringBuilder)localObject).toString();
          }
          paramString = new StringBuilder();
          paramString.append((String)localObject);
          paramString.append(d.get(i1));
          paramString = paramString.toString();
          i1 += 1;
        }
      }
      paramString = new StringBuilder();
      paramString.append((String)localObject);
      paramString.append(")");
      localObject = paramString.toString();
    }
    return localObject;
  }
  
  void a(TransitionValues paramTransitionValues)
  {
    if ((h != null) && (!values.isEmpty()))
    {
      String[] arrayOfString = h.getPropagationProperties();
      if (arrayOfString == null) {
        return;
      }
      int i2 = 0;
      int i1 = 0;
      while (i1 < arrayOfString.length)
      {
        if (!values.containsKey(arrayOfString[i1]))
        {
          i1 = i2;
          break label75;
        }
        i1 += 1;
      }
      i1 = 1;
      label75:
      if (i1 == 0) {
        h.captureValues(paramTransitionValues);
      }
    }
  }
  
  void a(ViewGroup paramViewGroup)
  {
    y = new ArrayList();
    z = new ArrayList();
    a(v, w);
    ArrayMap localArrayMap = a();
    int i1 = localArrayMap.size();
    ah localAh = aa.b(paramViewGroup);
    i1 -= 1;
    while (i1 >= 0)
    {
      Animator localAnimator = (Animator)localArrayMap.keyAt(i1);
      if (localAnimator != null)
      {
        a localA = (a)localArrayMap.get(localAnimator);
        if ((localA != null) && (a != null) && (localAh.equals(d)))
        {
          TransitionValues localTransitionValues1 = c;
          Object localObject = a;
          TransitionValues localTransitionValues2 = getTransitionValues((View)localObject, true);
          localObject = a((View)localObject, true);
          int i2;
          if (((localTransitionValues2 != null) || (localObject != null)) && (e.isTransitionRequired(localTransitionValues1, (TransitionValues)localObject))) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          if (i2 != 0) {
            if ((!localAnimator.isRunning()) && (!localAnimator.isStarted())) {
              localArrayMap.remove(localAnimator);
            } else {
              localAnimator.cancel();
            }
          }
        }
      }
      i1 -= 1;
    }
    createAnimators(paramViewGroup, v, w, y, z);
    runAnimators();
  }
  
  void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a(paramBoolean);
    int i1 = c.size();
    int i3 = 0;
    Object localObject1;
    Object localObject2;
    if (((i1 <= 0) && (d.size() <= 0)) || ((m != null) && (!m.isEmpty())) || ((n != null) && (!n.isEmpty())))
    {
      b(paramViewGroup, paramBoolean);
    }
    else
    {
      i1 = 0;
      while (i1 < c.size())
      {
        localObject1 = paramViewGroup.findViewById(((Integer)c.get(i1)).intValue());
        if (localObject1 != null)
        {
          localObject2 = new TransitionValues();
          view = ((View)localObject1);
          if (paramBoolean) {
            captureStartValues((TransitionValues)localObject2);
          } else {
            captureEndValues((TransitionValues)localObject2);
          }
          a.add(this);
          a((TransitionValues)localObject2);
          if (paramBoolean) {
            a(v, (View)localObject1, (TransitionValues)localObject2);
          } else {
            a(w, (View)localObject1, (TransitionValues)localObject2);
          }
        }
        i1 += 1;
      }
      i1 = 0;
      while (i1 < d.size())
      {
        paramViewGroup = (View)d.get(i1);
        localObject1 = new TransitionValues();
        view = paramViewGroup;
        if (paramBoolean) {
          captureStartValues((TransitionValues)localObject1);
        } else {
          captureEndValues((TransitionValues)localObject1);
        }
        a.add(this);
        a((TransitionValues)localObject1);
        if (paramBoolean) {
          a(v, paramViewGroup, (TransitionValues)localObject1);
        } else {
          a(w, paramViewGroup, (TransitionValues)localObject1);
        }
        i1 += 1;
      }
    }
    if ((!paramBoolean) && (I != null))
    {
      int i4 = I.size();
      paramViewGroup = new ArrayList(i4);
      i1 = 0;
      int i2;
      for (;;)
      {
        i2 = i3;
        if (i1 >= i4) {
          break;
        }
        localObject1 = (String)I.keyAt(i1);
        paramViewGroup.add(v.d.remove(localObject1));
        i1 += 1;
      }
      while (i2 < i4)
      {
        localObject1 = (View)paramViewGroup.get(i2);
        if (localObject1 != null)
        {
          localObject2 = (String)I.valueAt(i2);
          v.d.put(localObject2, localObject1);
        }
        i2 += 1;
      }
    }
  }
  
  void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      v.a.clear();
      v.b.clear();
      v.c.clear();
      return;
    }
    w.a.clear();
    w.b.clear();
    w.c.clear();
  }
  
  @NonNull
  public Transition addListener(@NonNull TransitionListener paramTransitionListener)
  {
    if (F == null) {
      F = new ArrayList();
    }
    F.add(paramTransitionListener);
    return this;
  }
  
  @NonNull
  public Transition addTarget(@IdRes int paramInt)
  {
    if (paramInt != 0) {
      c.add(Integer.valueOf(paramInt));
    }
    return this;
  }
  
  @NonNull
  public Transition addTarget(@NonNull View paramView)
  {
    d.add(paramView);
    return this;
  }
  
  @NonNull
  public Transition addTarget(@NonNull Class paramClass)
  {
    if (n == null) {
      n = new ArrayList();
    }
    n.add(paramClass);
    return this;
  }
  
  @NonNull
  public Transition addTarget(@NonNull String paramString)
  {
    if (m == null) {
      m = new ArrayList();
    }
    m.add(paramString);
    return this;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void animate(Animator paramAnimator)
  {
    if (paramAnimator == null)
    {
      end();
      return;
    }
    if (getDuration() >= 0L) {
      paramAnimator.setDuration(getDuration());
    }
    if (getStartDelay() >= 0L) {
      paramAnimator.setStartDelay(getStartDelay());
    }
    if (getInterpolator() != null) {
      paramAnimator.setInterpolator(getInterpolator());
    }
    paramAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        end();
        paramAnonymousAnimator.removeListener(this);
      }
    });
    paramAnimator.start();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  void b(ViewGroup paramViewGroup)
  {
    ArrayMap localArrayMap = a();
    int i1 = localArrayMap.size();
    if (paramViewGroup != null)
    {
      paramViewGroup = aa.b(paramViewGroup);
      i1 -= 1;
      while (i1 >= 0)
      {
        a localA = (a)localArrayMap.valueAt(i1);
        if ((a != null) && (paramViewGroup != null) && (paramViewGroup.equals(d))) {
          ((Animator)localArrayMap.keyAt(i1)).end();
        }
        i1 -= 1;
      }
    }
  }
  
  void b(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  boolean b(View paramView)
  {
    int i2 = paramView.getId();
    if ((o != null) && (o.contains(Integer.valueOf(i2)))) {
      return false;
    }
    if ((p != null) && (p.contains(paramView))) {
      return false;
    }
    int i1;
    if (q != null)
    {
      int i3 = q.size();
      i1 = 0;
      while (i1 < i3)
      {
        if (((Class)q.get(i1)).isInstance(paramView)) {
          return false;
        }
        i1 += 1;
      }
    }
    if ((r != null) && (ViewCompat.getTransitionName(paramView) != null) && (r.contains(ViewCompat.getTransitionName(paramView)))) {
      return false;
    }
    if ((c.size() == 0) && (d.size() == 0) && ((n == null) || (n.isEmpty())) && ((m == null) || (m.isEmpty()))) {
      return true;
    }
    if (!c.contains(Integer.valueOf(i2)))
    {
      if (d.contains(paramView)) {
        return true;
      }
      if ((m != null) && (m.contains(ViewCompat.getTransitionName(paramView)))) {
        return true;
      }
      if (n != null)
      {
        i1 = 0;
        while (i1 < n.size())
        {
          if (((Class)n.get(i1)).isInstance(paramView)) {
            return true;
          }
          i1 += 1;
        }
      }
      return false;
    }
    return true;
  }
  
  Transition c(ViewGroup paramViewGroup)
  {
    B = paramViewGroup;
    return this;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void cancel()
  {
    int i1 = g.size() - 1;
    while (i1 >= 0)
    {
      ((Animator)g.get(i1)).cancel();
      i1 -= 1;
    }
    if ((F != null) && (F.size() > 0))
    {
      ArrayList localArrayList = (ArrayList)F.clone();
      int i2 = localArrayList.size();
      i1 = 0;
      while (i1 < i2)
      {
        ((TransitionListener)localArrayList.get(i1)).onTransitionCancel(this);
        i1 += 1;
      }
    }
  }
  
  public abstract void captureEndValues(@NonNull TransitionValues paramTransitionValues);
  
  public abstract void captureStartValues(@NonNull TransitionValues paramTransitionValues);
  
  public Transition clone()
  {
    try
    {
      Transition localTransition = (Transition)super.clone();
      G = new ArrayList();
      v = new o();
      w = new o();
      y = null;
      z = null;
      return localTransition;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  @Nullable
  public Animator createAnimator(@NonNull ViewGroup paramViewGroup, @Nullable TransitionValues paramTransitionValues1, @Nullable TransitionValues paramTransitionValues2)
  {
    return null;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void createAnimators(ViewGroup paramViewGroup, o paramO1, o paramO2, ArrayList<TransitionValues> paramArrayList1, ArrayList<TransitionValues> paramArrayList2)
  {
    ArrayMap localArrayMap = a();
    SparseIntArray localSparseIntArray = new SparseIntArray();
    int i3 = paramArrayList1.size();
    long l1 = Long.MAX_VALUE;
    int i1 = 0;
    int i2;
    while (i1 < i3)
    {
      Object localObject1 = (TransitionValues)paramArrayList1.get(i1);
      paramO1 = (TransitionValues)paramArrayList2.get(i1);
      Object localObject2 = localObject1;
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (!a.contains(this)) {
          localObject2 = null;
        }
      }
      o localO = paramO1;
      if (paramO1 != null)
      {
        localO = paramO1;
        if (!a.contains(this)) {
          localO = null;
        }
      }
      if ((localObject2 == null) && (localO == null)) {}
      do
      {
        do
        {
          l2 = l1;
          i2 = i1;
          break;
          if ((localObject2 != null) && (localO != null) && (!isTransitionRequired(localObject2, localO))) {
            i2 = 0;
          } else {
            i2 = 1;
          }
        } while (i2 == 0);
        paramO1 = createAnimator(paramViewGroup, localObject2, localO);
      } while (paramO1 == null);
      View localView;
      if (localO != null)
      {
        localView = view;
        String[] arrayOfString = getTransitionProperties();
        if ((localView != null) && (arrayOfString != null) && (arrayOfString.length > 0))
        {
          TransitionValues localTransitionValues = new TransitionValues();
          view = localView;
          localObject1 = (TransitionValues)a.get(localView);
          i2 = i1;
          if (localObject1 != null)
          {
            i4 = 0;
            for (;;)
            {
              i2 = i1;
              if (i4 >= arrayOfString.length) {
                break;
              }
              values.put(arrayOfString[i4], values.get(arrayOfString[i4]));
              i4 += 1;
            }
          }
          i1 = i2;
          int i4 = localArrayMap.size();
          i2 = 0;
          while (i2 < i4)
          {
            localObject1 = (a)localArrayMap.get((Animator)localArrayMap.keyAt(i2));
            if ((c != null) && (a == localView) && (b.equals(getName())) && (c.equals(localTransitionValues)))
            {
              paramO1 = null;
              localObject1 = localTransitionValues;
              break label427;
            }
            i2 += 1;
          }
          localObject1 = localTransitionValues;
        }
        else
        {
          localObject1 = null;
        }
      }
      else
      {
        label427:
        localView = view;
        localObject1 = null;
      }
      long l2 = l1;
      i2 = i1;
      if (paramO1 != null)
      {
        l2 = l1;
        if (h != null)
        {
          l2 = h.getStartDelay(paramViewGroup, this, localObject2, localO);
          localSparseIntArray.put(G.size(), (int)l2);
          l2 = Math.min(l2, l1);
        }
        localArrayMap.put(paramO1, new a(localView, getName(), this, aa.b(paramViewGroup), (TransitionValues)localObject1));
        G.add(paramO1);
        i2 = i1;
      }
      i1 = i2 + 1;
      l1 = l2;
    }
    if (l1 != 0L)
    {
      i1 = 0;
      while (i1 < localSparseIntArray.size())
      {
        i2 = localSparseIntArray.keyAt(i1);
        paramViewGroup = (Animator)G.get(i2);
        paramViewGroup.setStartDelay(localSparseIntArray.valueAt(i1) - l1 + paramViewGroup.getStartDelay());
        i1 += 1;
      }
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void end()
  {
    C -= 1;
    if (C == 0)
    {
      Object localObject;
      if ((F != null) && (F.size() > 0))
      {
        localObject = (ArrayList)F.clone();
        int i2 = ((ArrayList)localObject).size();
        i1 = 0;
        while (i1 < i2)
        {
          ((TransitionListener)((ArrayList)localObject).get(i1)).onTransitionEnd(this);
          i1 += 1;
        }
      }
      int i1 = 0;
      while (i1 < v.c.size())
      {
        localObject = (View)v.c.valueAt(i1);
        if (localObject != null) {
          ViewCompat.setHasTransientState((View)localObject, false);
        }
        i1 += 1;
      }
      i1 = 0;
      while (i1 < w.c.size())
      {
        localObject = (View)w.c.valueAt(i1);
        if (localObject != null) {
          ViewCompat.setHasTransientState((View)localObject, false);
        }
        i1 += 1;
      }
      E = true;
    }
  }
  
  @NonNull
  public Transition excludeChildren(@IdRes int paramInt, boolean paramBoolean)
  {
    s = a(s, paramInt, paramBoolean);
    return this;
  }
  
  @NonNull
  public Transition excludeChildren(@NonNull View paramView, boolean paramBoolean)
  {
    t = a(t, paramView, paramBoolean);
    return this;
  }
  
  @NonNull
  public Transition excludeChildren(@NonNull Class paramClass, boolean paramBoolean)
  {
    u = a(u, paramClass, paramBoolean);
    return this;
  }
  
  @NonNull
  public Transition excludeTarget(@IdRes int paramInt, boolean paramBoolean)
  {
    o = a(o, paramInt, paramBoolean);
    return this;
  }
  
  @NonNull
  public Transition excludeTarget(@NonNull View paramView, boolean paramBoolean)
  {
    p = a(p, paramView, paramBoolean);
    return this;
  }
  
  @NonNull
  public Transition excludeTarget(@NonNull Class paramClass, boolean paramBoolean)
  {
    q = a(q, paramClass, paramBoolean);
    return this;
  }
  
  @NonNull
  public Transition excludeTarget(@NonNull String paramString, boolean paramBoolean)
  {
    r = a(r, paramString, paramBoolean);
    return this;
  }
  
  public long getDuration()
  {
    return b;
  }
  
  @Nullable
  public Rect getEpicenter()
  {
    if (H == null) {
      return null;
    }
    return H.onGetEpicenter(this);
  }
  
  @Nullable
  public EpicenterCallback getEpicenterCallback()
  {
    return H;
  }
  
  @Nullable
  public TimeInterpolator getInterpolator()
  {
    return l;
  }
  
  @NonNull
  public String getName()
  {
    return j;
  }
  
  @NonNull
  public PathMotion getPathMotion()
  {
    return J;
  }
  
  @Nullable
  public TransitionPropagation getPropagation()
  {
    return h;
  }
  
  public long getStartDelay()
  {
    return k;
  }
  
  @NonNull
  public List<Integer> getTargetIds()
  {
    return c;
  }
  
  @Nullable
  public List<String> getTargetNames()
  {
    return m;
  }
  
  @Nullable
  public List<Class> getTargetTypes()
  {
    return n;
  }
  
  @NonNull
  public List<View> getTargets()
  {
    return d;
  }
  
  @Nullable
  public String[] getTransitionProperties()
  {
    return null;
  }
  
  @Nullable
  public TransitionValues getTransitionValues(@NonNull View paramView, boolean paramBoolean)
  {
    if (e != null) {
      return e.getTransitionValues(paramView, paramBoolean);
    }
    o localO;
    if (paramBoolean) {
      localO = v;
    } else {
      localO = w;
    }
    return (TransitionValues)a.get(paramView);
  }
  
  public boolean isTransitionRequired(@Nullable TransitionValues paramTransitionValues1, @Nullable TransitionValues paramTransitionValues2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramTransitionValues1 != null)
    {
      bool1 = bool2;
      if (paramTransitionValues2 != null)
      {
        Object localObject = getTransitionProperties();
        if (localObject != null)
        {
          int i2 = localObject.length;
          int i1 = 0;
          for (;;)
          {
            bool1 = bool2;
            if (i1 >= i2) {
              break label120;
            }
            if (a(paramTransitionValues1, paramTransitionValues2, localObject[i1])) {
              break;
            }
            i1 += 1;
          }
        }
        localObject = values.keySet().iterator();
        do
        {
          bool1 = bool2;
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
        } while (!a(paramTransitionValues1, paramTransitionValues2, (String)((Iterator)localObject).next()));
        bool1 = true;
      }
    }
    label120:
    return bool1;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void pause(View paramView)
  {
    if (!E)
    {
      ArrayMap localArrayMap = a();
      int i1 = localArrayMap.size();
      paramView = aa.b(paramView);
      i1 -= 1;
      while (i1 >= 0)
      {
        a localA = (a)localArrayMap.valueAt(i1);
        if ((a != null) && (paramView.equals(d))) {
          a.a((Animator)localArrayMap.keyAt(i1));
        }
        i1 -= 1;
      }
      if ((F != null) && (F.size() > 0))
      {
        paramView = (ArrayList)F.clone();
        int i2 = paramView.size();
        i1 = 0;
        while (i1 < i2)
        {
          ((TransitionListener)paramView.get(i1)).onTransitionPause(this);
          i1 += 1;
        }
      }
      D = true;
    }
  }
  
  @NonNull
  public Transition removeListener(@NonNull TransitionListener paramTransitionListener)
  {
    if (F == null) {
      return this;
    }
    F.remove(paramTransitionListener);
    if (F.size() == 0) {
      F = null;
    }
    return this;
  }
  
  @NonNull
  public Transition removeTarget(@IdRes int paramInt)
  {
    if (paramInt != 0) {
      c.remove(Integer.valueOf(paramInt));
    }
    return this;
  }
  
  @NonNull
  public Transition removeTarget(@NonNull View paramView)
  {
    d.remove(paramView);
    return this;
  }
  
  @NonNull
  public Transition removeTarget(@NonNull Class paramClass)
  {
    if (n != null) {
      n.remove(paramClass);
    }
    return this;
  }
  
  @NonNull
  public Transition removeTarget(@NonNull String paramString)
  {
    if (m != null) {
      m.remove(paramString);
    }
    return this;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void resume(View paramView)
  {
    if (D)
    {
      if (!E)
      {
        ArrayMap localArrayMap = a();
        int i1 = localArrayMap.size();
        paramView = aa.b(paramView);
        i1 -= 1;
        while (i1 >= 0)
        {
          a localA = (a)localArrayMap.valueAt(i1);
          if ((a != null) && (paramView.equals(d))) {
            a.b((Animator)localArrayMap.keyAt(i1));
          }
          i1 -= 1;
        }
        if ((F != null) && (F.size() > 0))
        {
          paramView = (ArrayList)F.clone();
          int i2 = paramView.size();
          i1 = 0;
          while (i1 < i2)
          {
            ((TransitionListener)paramView.get(i1)).onTransitionResume(this);
            i1 += 1;
          }
        }
      }
      D = false;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void runAnimators()
  {
    start();
    ArrayMap localArrayMap = a();
    Iterator localIterator = G.iterator();
    while (localIterator.hasNext())
    {
      Animator localAnimator = (Animator)localIterator.next();
      if (localArrayMap.containsKey(localAnimator))
      {
        start();
        a(localAnimator, localArrayMap);
      }
    }
    G.clear();
    end();
  }
  
  @NonNull
  public Transition setDuration(long paramLong)
  {
    b = paramLong;
    return this;
  }
  
  public void setEpicenterCallback(@Nullable EpicenterCallback paramEpicenterCallback)
  {
    H = paramEpicenterCallback;
  }
  
  @NonNull
  public Transition setInterpolator(@Nullable TimeInterpolator paramTimeInterpolator)
  {
    l = paramTimeInterpolator;
    return this;
  }
  
  public void setMatchOrder(int... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length != 0))
    {
      int i1 = 0;
      while (i1 < paramVarArgs.length) {
        if (a(paramVarArgs[i1]))
        {
          if (!a(paramVarArgs, i1)) {
            i1 += 1;
          } else {
            throw new IllegalArgumentException("matches contains a duplicate value");
          }
        }
        else {
          throw new IllegalArgumentException("matches contains invalid value");
        }
      }
      x = ((int[])paramVarArgs.clone());
      return;
    }
    x = a;
  }
  
  public void setPathMotion(@Nullable PathMotion paramPathMotion)
  {
    if (paramPathMotion == null)
    {
      J = i;
      return;
    }
    J = paramPathMotion;
  }
  
  public void setPropagation(@Nullable TransitionPropagation paramTransitionPropagation)
  {
    h = paramTransitionPropagation;
  }
  
  @NonNull
  public Transition setStartDelay(long paramLong)
  {
    k = paramLong;
    return this;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void start()
  {
    if (C == 0)
    {
      if ((F != null) && (F.size() > 0))
      {
        ArrayList localArrayList = (ArrayList)F.clone();
        int i2 = localArrayList.size();
        int i1 = 0;
        while (i1 < i2)
        {
          ((TransitionListener)localArrayList.get(i1)).onTransitionStart(this);
          i1 += 1;
        }
      }
      E = false;
    }
    C += 1;
  }
  
  public String toString()
  {
    return a("");
  }
  
  public static abstract class EpicenterCallback
  {
    public EpicenterCallback() {}
    
    public abstract Rect onGetEpicenter(@NonNull Transition paramTransition);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface MatchOrder {}
  
  public static abstract interface TransitionListener
  {
    public abstract void onTransitionCancel(@NonNull Transition paramTransition);
    
    public abstract void onTransitionEnd(@NonNull Transition paramTransition);
    
    public abstract void onTransitionPause(@NonNull Transition paramTransition);
    
    public abstract void onTransitionResume(@NonNull Transition paramTransition);
    
    public abstract void onTransitionStart(@NonNull Transition paramTransition);
  }
  
  private static class a
  {
    View a;
    String b;
    TransitionValues c;
    ah d;
    Transition e;
    
    a(View paramView, String paramString, Transition paramTransition, ah paramAh, TransitionValues paramTransitionValues)
    {
      a = paramView;
      b = paramString;
      c = paramTransitionValues;
      d = paramAh;
      e = paramTransition;
    }
  }
  
  private static class b
  {
    static <T> ArrayList<T> a(ArrayList<T> paramArrayList, T paramT)
    {
      Object localObject = paramArrayList;
      if (paramArrayList == null) {
        localObject = new ArrayList();
      }
      if (!((ArrayList)localObject).contains(paramT)) {
        ((ArrayList)localObject).add(paramT);
      }
      return localObject;
    }
    
    static <T> ArrayList<T> b(ArrayList<T> paramArrayList, T paramT)
    {
      ArrayList<T> localArrayList = paramArrayList;
      if (paramArrayList != null)
      {
        paramArrayList.remove(paramT);
        localArrayList = paramArrayList;
        if (paramArrayList.isEmpty()) {
          localArrayList = null;
        }
      }
      return localArrayList;
    }
  }
}
