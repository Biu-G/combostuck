package android.support.constraint;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class ConstraintSet
{
  public static final int BASELINE = 5;
  public static final int BOTTOM = 4;
  public static final int CHAIN_PACKED = 2;
  public static final int CHAIN_SPREAD = 0;
  public static final int CHAIN_SPREAD_INSIDE = 1;
  public static final int END = 7;
  public static final int GONE = 8;
  public static final int HORIZONTAL = 0;
  public static final int HORIZONTAL_GUIDELINE = 0;
  public static final int INVISIBLE = 4;
  public static final int LEFT = 1;
  public static final int MATCH_CONSTRAINT = 0;
  public static final int MATCH_CONSTRAINT_SPREAD = 0;
  public static final int MATCH_CONSTRAINT_WRAP = 1;
  public static final int PARENT_ID = 0;
  public static final int RIGHT = 2;
  public static final int START = 6;
  public static final int TOP = 3;
  public static final int UNSET = -1;
  public static final int VERTICAL = 1;
  public static final int VERTICAL_GUIDELINE = 1;
  public static final int VISIBLE = 0;
  public static final int WRAP_CONTENT = -2;
  private static final int[] a = { 0, 4, 8 };
  private static SparseIntArray c = new SparseIntArray();
  private HashMap<Integer, a> b = new HashMap();
  
  static
  {
    c.append(R.styleable.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
    c.append(R.styleable.ConstraintSet_layout_constraintLeft_toRightOf, 26);
    c.append(R.styleable.ConstraintSet_layout_constraintRight_toLeftOf, 29);
    c.append(R.styleable.ConstraintSet_layout_constraintRight_toRightOf, 30);
    c.append(R.styleable.ConstraintSet_layout_constraintTop_toTopOf, 36);
    c.append(R.styleable.ConstraintSet_layout_constraintTop_toBottomOf, 35);
    c.append(R.styleable.ConstraintSet_layout_constraintBottom_toTopOf, 4);
    c.append(R.styleable.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
    c.append(R.styleable.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
    c.append(R.styleable.ConstraintSet_layout_editor_absoluteX, 6);
    c.append(R.styleable.ConstraintSet_layout_editor_absoluteY, 7);
    c.append(R.styleable.ConstraintSet_layout_constraintGuide_begin, 17);
    c.append(R.styleable.ConstraintSet_layout_constraintGuide_end, 18);
    c.append(R.styleable.ConstraintSet_layout_constraintGuide_percent, 19);
    c.append(R.styleable.ConstraintSet_android_orientation, 27);
    c.append(R.styleable.ConstraintSet_layout_constraintStart_toEndOf, 32);
    c.append(R.styleable.ConstraintSet_layout_constraintStart_toStartOf, 33);
    c.append(R.styleable.ConstraintSet_layout_constraintEnd_toStartOf, 10);
    c.append(R.styleable.ConstraintSet_layout_constraintEnd_toEndOf, 9);
    c.append(R.styleable.ConstraintSet_layout_goneMarginLeft, 13);
    c.append(R.styleable.ConstraintSet_layout_goneMarginTop, 16);
    c.append(R.styleable.ConstraintSet_layout_goneMarginRight, 14);
    c.append(R.styleable.ConstraintSet_layout_goneMarginBottom, 11);
    c.append(R.styleable.ConstraintSet_layout_goneMarginStart, 15);
    c.append(R.styleable.ConstraintSet_layout_goneMarginEnd, 12);
    c.append(R.styleable.ConstraintSet_layout_constraintVertical_weight, 40);
    c.append(R.styleable.ConstraintSet_layout_constraintHorizontal_weight, 39);
    c.append(R.styleable.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
    c.append(R.styleable.ConstraintSet_layout_constraintVertical_chainStyle, 42);
    c.append(R.styleable.ConstraintSet_layout_constraintHorizontal_bias, 20);
    c.append(R.styleable.ConstraintSet_layout_constraintVertical_bias, 37);
    c.append(R.styleable.ConstraintSet_layout_constraintDimensionRatio, 5);
    c.append(R.styleable.ConstraintSet_layout_constraintLeft_creator, 75);
    c.append(R.styleable.ConstraintSet_layout_constraintTop_creator, 75);
    c.append(R.styleable.ConstraintSet_layout_constraintRight_creator, 75);
    c.append(R.styleable.ConstraintSet_layout_constraintBottom_creator, 75);
    c.append(R.styleable.ConstraintSet_layout_constraintBaseline_creator, 75);
    c.append(R.styleable.ConstraintSet_android_layout_marginLeft, 24);
    c.append(R.styleable.ConstraintSet_android_layout_marginRight, 28);
    c.append(R.styleable.ConstraintSet_android_layout_marginStart, 31);
    c.append(R.styleable.ConstraintSet_android_layout_marginEnd, 8);
    c.append(R.styleable.ConstraintSet_android_layout_marginTop, 34);
    c.append(R.styleable.ConstraintSet_android_layout_marginBottom, 2);
    c.append(R.styleable.ConstraintSet_android_layout_width, 23);
    c.append(R.styleable.ConstraintSet_android_layout_height, 21);
    c.append(R.styleable.ConstraintSet_android_visibility, 22);
    c.append(R.styleable.ConstraintSet_android_alpha, 43);
    c.append(R.styleable.ConstraintSet_android_elevation, 44);
    c.append(R.styleable.ConstraintSet_android_rotationX, 45);
    c.append(R.styleable.ConstraintSet_android_rotationY, 46);
    c.append(R.styleable.ConstraintSet_android_rotation, 60);
    c.append(R.styleable.ConstraintSet_android_scaleX, 47);
    c.append(R.styleable.ConstraintSet_android_scaleY, 48);
    c.append(R.styleable.ConstraintSet_android_transformPivotX, 49);
    c.append(R.styleable.ConstraintSet_android_transformPivotY, 50);
    c.append(R.styleable.ConstraintSet_android_translationX, 51);
    c.append(R.styleable.ConstraintSet_android_translationY, 52);
    c.append(R.styleable.ConstraintSet_android_translationZ, 53);
    c.append(R.styleable.ConstraintSet_layout_constraintWidth_default, 54);
    c.append(R.styleable.ConstraintSet_layout_constraintHeight_default, 55);
    c.append(R.styleable.ConstraintSet_layout_constraintWidth_max, 56);
    c.append(R.styleable.ConstraintSet_layout_constraintHeight_max, 57);
    c.append(R.styleable.ConstraintSet_layout_constraintWidth_min, 58);
    c.append(R.styleable.ConstraintSet_layout_constraintHeight_min, 59);
    c.append(R.styleable.ConstraintSet_layout_constraintCircle, 61);
    c.append(R.styleable.ConstraintSet_layout_constraintCircleRadius, 62);
    c.append(R.styleable.ConstraintSet_layout_constraintCircleAngle, 63);
    c.append(R.styleable.ConstraintSet_android_id, 38);
    c.append(R.styleable.ConstraintSet_layout_constraintWidth_percent, 69);
    c.append(R.styleable.ConstraintSet_layout_constraintHeight_percent, 70);
    c.append(R.styleable.ConstraintSet_chainUseRtl, 71);
    c.append(R.styleable.ConstraintSet_barrierDirection, 72);
    c.append(R.styleable.ConstraintSet_constraint_referenced_ids, 73);
    c.append(R.styleable.ConstraintSet_barrierAllowsGoneWidgets, 74);
  }
  
  public ConstraintSet() {}
  
  private static int a(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    int i = paramTypedArray.getResourceId(paramInt1, paramInt2);
    paramInt2 = i;
    if (i == -1) {
      paramInt2 = paramTypedArray.getInt(paramInt1, -1);
    }
    return paramInt2;
  }
  
  private a a(int paramInt)
  {
    if (!b.containsKey(Integer.valueOf(paramInt))) {
      b.put(Integer.valueOf(paramInt), new a(null));
    }
    return (a)b.get(Integer.valueOf(paramInt));
  }
  
  private a a(Context paramContext, AttributeSet paramAttributeSet)
  {
    a localA = new a(null);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ConstraintSet);
    a(localA, paramContext);
    paramContext.recycle();
    return localA;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, float[] paramArrayOfFloat, int paramInt5, int paramInt6, int paramInt7)
  {
    if (paramArrayOfInt.length >= 2)
    {
      if ((paramArrayOfFloat != null) && (paramArrayOfFloat.length != paramArrayOfInt.length)) {
        throw new IllegalArgumentException("must have 2 or more widgets in a chain");
      }
      if (paramArrayOfFloat != null) {
        a0R = paramArrayOfFloat[0];
      }
      a0S = paramInt5;
      connect(paramArrayOfInt[0], paramInt6, paramInt1, paramInt2, -1);
      paramInt1 = 1;
      while (paramInt1 < paramArrayOfInt.length)
      {
        paramInt2 = paramArrayOfInt[paramInt1];
        paramInt2 = paramArrayOfInt[paramInt1];
        paramInt5 = paramInt1 - 1;
        connect(paramInt2, paramInt6, paramArrayOfInt[paramInt5], paramInt7, -1);
        connect(paramArrayOfInt[paramInt5], paramInt7, paramArrayOfInt[paramInt1], paramInt6, -1);
        if (paramArrayOfFloat != null) {
          aR = paramArrayOfFloat[paramInt1];
        }
        paramInt1 += 1;
      }
      connect(paramArrayOfInt[(paramArrayOfInt.length - 1)], paramInt7, paramInt3, paramInt4, -1);
      return;
    }
    throw new IllegalArgumentException("must have 2 or more widgets in a chain");
  }
  
  private void a(a paramA, TypedArray paramTypedArray)
  {
    int j = paramTypedArray.getIndexCount();
    int i = 0;
    while (i < j)
    {
      int k = paramTypedArray.getIndex(i);
      int m = c.get(k);
      switch (m)
      {
      default: 
        switch (m)
        {
        default: 
          StringBuilder localStringBuilder;
          switch (m)
          {
          default: 
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("Unknown attribute 0x");
            localStringBuilder.append(Integer.toHexString(k));
            localStringBuilder.append("   ");
            localStringBuilder.append(c.get(k));
            Log.w("ConstraintSet", localStringBuilder.toString());
            break;
          case 75: 
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("unused attribute 0x");
            localStringBuilder.append(Integer.toHexString(k));
            localStringBuilder.append("   ");
            localStringBuilder.append(c.get(k));
            Log.w("ConstraintSet", localStringBuilder.toString());
            break;
          case 74: 
            ar = paramTypedArray.getBoolean(k, ar);
            break;
          case 73: 
            av = paramTypedArray.getString(k);
            break;
          case 72: 
            as = paramTypedArray.getInt(k, as);
            break;
          case 71: 
            Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
            break;
          case 70: 
            aq = paramTypedArray.getFloat(k, 1.0F);
            break;
          case 69: 
            ap = paramTypedArray.getFloat(k, 1.0F);
          }
          break;
        case 63: 
          z = paramTypedArray.getFloat(k, z);
          break;
        case 62: 
          y = paramTypedArray.getDimensionPixelSize(k, y);
          break;
        case 61: 
          x = a(paramTypedArray, k, x);
          break;
        case 60: 
          X = paramTypedArray.getFloat(k, X);
        }
        break;
      case 53: 
        ag = paramTypedArray.getDimension(k, ag);
        break;
      case 52: 
        af = paramTypedArray.getDimension(k, af);
        break;
      case 51: 
        ae = paramTypedArray.getDimension(k, ae);
        break;
      case 50: 
        ad = paramTypedArray.getFloat(k, ad);
        break;
      case 49: 
        ac = paramTypedArray.getFloat(k, ac);
        break;
      case 48: 
        ab = paramTypedArray.getFloat(k, ab);
        break;
      case 47: 
        aa = paramTypedArray.getFloat(k, aa);
        break;
      case 46: 
        Z = paramTypedArray.getFloat(k, Z);
        break;
      case 45: 
        Y = paramTypedArray.getFloat(k, Y);
        break;
      case 44: 
        V = true;
        W = paramTypedArray.getDimension(k, W);
        break;
      case 43: 
        U = paramTypedArray.getFloat(k, U);
        break;
      case 42: 
        T = paramTypedArray.getInt(k, T);
        break;
      case 41: 
        S = paramTypedArray.getInt(k, S);
        break;
      case 40: 
        Q = paramTypedArray.getFloat(k, Q);
        break;
      case 39: 
        R = paramTypedArray.getFloat(k, R);
        break;
      case 38: 
        d = paramTypedArray.getResourceId(k, d);
        break;
      case 37: 
        v = paramTypedArray.getFloat(k, v);
        break;
      case 36: 
        l = a(paramTypedArray, k, l);
        break;
      case 35: 
        m = a(paramTypedArray, k, m);
        break;
      case 34: 
        F = paramTypedArray.getDimensionPixelSize(k, F);
        break;
      case 33: 
        r = a(paramTypedArray, k, r);
        break;
      case 32: 
        q = a(paramTypedArray, k, q);
        break;
      case 31: 
        I = paramTypedArray.getDimensionPixelSize(k, I);
        break;
      case 30: 
        k = a(paramTypedArray, k, k);
        break;
      case 29: 
        j = a(paramTypedArray, k, j);
        break;
      case 28: 
        E = paramTypedArray.getDimensionPixelSize(k, E);
        break;
      case 27: 
        C = paramTypedArray.getInt(k, C);
        break;
      case 26: 
        i = a(paramTypedArray, k, i);
        break;
      case 25: 
        h = a(paramTypedArray, k, h);
        break;
      case 24: 
        D = paramTypedArray.getDimensionPixelSize(k, D);
        break;
      case 23: 
        b = paramTypedArray.getLayoutDimension(k, b);
        break;
      case 22: 
        J = paramTypedArray.getInt(k, J);
        J = a[J];
        break;
      case 21: 
        c = paramTypedArray.getLayoutDimension(k, c);
        break;
      case 20: 
        u = paramTypedArray.getFloat(k, u);
        break;
      case 19: 
        g = paramTypedArray.getFloat(k, g);
        break;
      case 18: 
        f = paramTypedArray.getDimensionPixelOffset(k, f);
        break;
      case 17: 
        e = paramTypedArray.getDimensionPixelOffset(k, e);
        break;
      case 16: 
        L = paramTypedArray.getDimensionPixelSize(k, L);
        break;
      case 15: 
        P = paramTypedArray.getDimensionPixelSize(k, P);
        break;
      case 14: 
        M = paramTypedArray.getDimensionPixelSize(k, M);
        break;
      case 13: 
        K = paramTypedArray.getDimensionPixelSize(k, K);
        break;
      case 12: 
        O = paramTypedArray.getDimensionPixelSize(k, O);
        break;
      case 11: 
        N = paramTypedArray.getDimensionPixelSize(k, N);
        break;
      case 10: 
        s = a(paramTypedArray, k, s);
        break;
      case 9: 
        t = a(paramTypedArray, k, t);
        break;
      case 8: 
        H = paramTypedArray.getDimensionPixelSize(k, H);
        break;
      case 7: 
        B = paramTypedArray.getDimensionPixelOffset(k, B);
        break;
      case 6: 
        A = paramTypedArray.getDimensionPixelOffset(k, A);
        break;
      case 5: 
        w = paramTypedArray.getString(k);
        break;
      case 4: 
        n = a(paramTypedArray, k, n);
        break;
      case 3: 
        o = a(paramTypedArray, k, o);
        break;
      case 2: 
        G = paramTypedArray.getDimensionPixelSize(k, G);
        break;
      case 1: 
        p = a(paramTypedArray, k, p);
      }
      i += 1;
    }
  }
  
  private int[] a(View paramView, String paramString)
  {
    String[] arrayOfString = paramString.split(",");
    Context localContext = paramView.getContext();
    paramString = new int[arrayOfString.length];
    int m = 0;
    int k = 0;
    while (m < arrayOfString.length)
    {
      Object localObject = arrayOfString[m].trim();
      try
      {
        j = R.id.class.getField((String)localObject).getInt(null);
      }
      catch (Exception localException)
      {
        int j;
        int i;
        for (;;) {}
      }
      j = 0;
      i = j;
      if (j == 0) {
        i = localContext.getResources().getIdentifier((String)localObject, "id", localContext.getPackageName());
      }
      j = i;
      if (i == 0)
      {
        j = i;
        if (paramView.isInEditMode())
        {
          j = i;
          if ((paramView.getParent() instanceof ConstraintLayout))
          {
            localObject = ((ConstraintLayout)paramView.getParent()).getDesignInformation(0, localObject);
            j = i;
            if (localObject != null)
            {
              j = i;
              if ((localObject instanceof Integer)) {
                j = ((Integer)localObject).intValue();
              }
            }
          }
        }
      }
      paramString[k] = j;
      m += 1;
      k += 1;
    }
    paramView = paramString;
    if (k != arrayOfString.length) {
      paramView = Arrays.copyOf(paramString, k);
    }
    return paramView;
  }
  
  private String b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "undefined";
    case 7: 
      return "end";
    case 6: 
      return "start";
    case 5: 
      return "baseline";
    case 4: 
      return "bottom";
    case 3: 
      return "top";
    case 2: 
      return "right";
    }
    return "left";
  }
  
  void a(ConstraintLayout paramConstraintLayout)
  {
    int j = paramConstraintLayout.getChildCount();
    Object localObject1 = new HashSet(b.keySet());
    int i = 0;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    while (i < j)
    {
      localObject2 = paramConstraintLayout.getChildAt(i);
      int k = ((View)localObject2).getId();
      if (k != -1)
      {
        if (b.containsKey(Integer.valueOf(k)))
        {
          ((HashSet)localObject1).remove(Integer.valueOf(k));
          localObject3 = (a)b.get(Integer.valueOf(k));
          if ((localObject2 instanceof Barrier)) {
            at = 1;
          }
          if ((at != -1) && (at == 1))
          {
            localObject4 = (Barrier)localObject2;
            ((Barrier)localObject4).setId(k);
            ((Barrier)localObject4).setType(as);
            ((Barrier)localObject4).setAllowsGoneWidget(ar);
            if (au != null)
            {
              ((Barrier)localObject4).setReferencedIds(au);
            }
            else if (av != null)
            {
              au = a((View)localObject4, av);
              ((Barrier)localObject4).setReferencedIds(au);
            }
          }
          localObject4 = (ConstraintLayout.LayoutParams)((View)localObject2).getLayoutParams();
          ((a)localObject3).a((ConstraintLayout.LayoutParams)localObject4);
          ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject4);
          ((View)localObject2).setVisibility(J);
          if (Build.VERSION.SDK_INT >= 17)
          {
            ((View)localObject2).setAlpha(U);
            ((View)localObject2).setRotation(X);
            ((View)localObject2).setRotationX(Y);
            ((View)localObject2).setRotationY(Z);
            ((View)localObject2).setScaleX(aa);
            ((View)localObject2).setScaleY(ab);
            if (!Float.isNaN(ac)) {
              ((View)localObject2).setPivotX(ac);
            }
            if (!Float.isNaN(ad)) {
              ((View)localObject2).setPivotY(ad);
            }
            ((View)localObject2).setTranslationX(ae);
            ((View)localObject2).setTranslationY(af);
            if (Build.VERSION.SDK_INT >= 21)
            {
              ((View)localObject2).setTranslationZ(ag);
              if (V) {
                ((View)localObject2).setElevation(W);
              }
            }
          }
        }
        i += 1;
      }
      else
      {
        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
      }
    }
    localObject1 = ((HashSet)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (Integer)((Iterator)localObject1).next();
      localObject2 = (a)b.get(localObject3);
      if ((at != -1) && (at == 1))
      {
        localObject4 = new Barrier(paramConstraintLayout.getContext());
        ((Barrier)localObject4).setId(((Integer)localObject3).intValue());
        if (au != null)
        {
          ((Barrier)localObject4).setReferencedIds(au);
        }
        else if (av != null)
        {
          au = a((View)localObject4, av);
          ((Barrier)localObject4).setReferencedIds(au);
        }
        ((Barrier)localObject4).setType(as);
        ConstraintLayout.LayoutParams localLayoutParams = paramConstraintLayout.generateDefaultLayoutParams();
        ((Barrier)localObject4).validateParams();
        ((a)localObject2).a(localLayoutParams);
        paramConstraintLayout.addView((View)localObject4, localLayoutParams);
      }
      if (a)
      {
        localObject4 = new Guideline(paramConstraintLayout.getContext());
        ((Guideline)localObject4).setId(((Integer)localObject3).intValue());
        localObject3 = paramConstraintLayout.generateDefaultLayoutParams();
        ((a)localObject2).a((ConstraintLayout.LayoutParams)localObject3);
        paramConstraintLayout.addView((View)localObject4, (ViewGroup.LayoutParams)localObject3);
      }
    }
  }
  
  public void addToHorizontalChain(int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if (paramInt2 == 0) {
      i = 1;
    } else {
      i = 2;
    }
    connect(paramInt1, 1, paramInt2, i, 0);
    if (paramInt3 == 0) {
      i = 2;
    } else {
      i = 1;
    }
    connect(paramInt1, 2, paramInt3, i, 0);
    if (paramInt2 != 0) {
      connect(paramInt2, 2, paramInt1, 1, 0);
    }
    if (paramInt3 != 0) {
      connect(paramInt3, 1, paramInt1, 2, 0);
    }
  }
  
  public void addToHorizontalChainRTL(int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if (paramInt2 == 0) {
      i = 6;
    } else {
      i = 7;
    }
    connect(paramInt1, 6, paramInt2, i, 0);
    if (paramInt3 == 0) {
      i = 7;
    } else {
      i = 6;
    }
    connect(paramInt1, 7, paramInt3, i, 0);
    if (paramInt2 != 0) {
      connect(paramInt2, 7, paramInt1, 6, 0);
    }
    if (paramInt3 != 0) {
      connect(paramInt3, 6, paramInt1, 7, 0);
    }
  }
  
  public void addToVerticalChain(int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if (paramInt2 == 0) {
      i = 3;
    } else {
      i = 4;
    }
    connect(paramInt1, 3, paramInt2, i, 0);
    if (paramInt3 == 0) {
      i = 4;
    } else {
      i = 3;
    }
    connect(paramInt1, 4, paramInt3, i, 0);
    if (paramInt2 != 0) {
      connect(paramInt2, 4, paramInt1, 3, 0);
    }
    if (paramInt2 != 0) {
      connect(paramInt3, 3, paramInt1, 4, 0);
    }
  }
  
  public void applyTo(ConstraintLayout paramConstraintLayout)
  {
    a(paramConstraintLayout);
    paramConstraintLayout.setConstraintSet(null);
  }
  
  public void center(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, float paramFloat)
  {
    if (paramInt4 >= 0)
    {
      if (paramInt7 >= 0)
      {
        if ((paramFloat > 0.0F) && (paramFloat <= 1.0F))
        {
          if ((paramInt3 != 1) && (paramInt3 != 2))
          {
            if ((paramInt3 != 6) && (paramInt3 != 7))
            {
              connect(paramInt1, 3, paramInt2, paramInt3, paramInt4);
              connect(paramInt1, 4, paramInt5, paramInt6, paramInt7);
              b.get(Integer.valueOf(paramInt1))).v = paramFloat;
              return;
            }
            connect(paramInt1, 6, paramInt2, paramInt3, paramInt4);
            connect(paramInt1, 7, paramInt5, paramInt6, paramInt7);
            b.get(Integer.valueOf(paramInt1))).u = paramFloat;
            return;
          }
          connect(paramInt1, 1, paramInt2, paramInt3, paramInt4);
          connect(paramInt1, 2, paramInt5, paramInt6, paramInt7);
          b.get(Integer.valueOf(paramInt1))).u = paramFloat;
          return;
        }
        throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
      }
      throw new IllegalArgumentException("margin must be > 0");
    }
    throw new IllegalArgumentException("margin must be > 0");
  }
  
  public void centerHorizontally(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      center(paramInt1, 0, 1, 0, 0, 2, 0, 0.5F);
      return;
    }
    center(paramInt1, paramInt2, 2, 0, paramInt2, 1, 0, 0.5F);
  }
  
  public void centerHorizontally(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, float paramFloat)
  {
    connect(paramInt1, 1, paramInt2, paramInt3, paramInt4);
    connect(paramInt1, 2, paramInt5, paramInt6, paramInt7);
    b.get(Integer.valueOf(paramInt1))).u = paramFloat;
  }
  
  public void centerHorizontallyRtl(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      center(paramInt1, 0, 6, 0, 0, 7, 0, 0.5F);
      return;
    }
    center(paramInt1, paramInt2, 7, 0, paramInt2, 6, 0, 0.5F);
  }
  
  public void centerHorizontallyRtl(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, float paramFloat)
  {
    connect(paramInt1, 6, paramInt2, paramInt3, paramInt4);
    connect(paramInt1, 7, paramInt5, paramInt6, paramInt7);
    b.get(Integer.valueOf(paramInt1))).u = paramFloat;
  }
  
  public void centerVertically(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      center(paramInt1, 0, 3, 0, 0, 4, 0, 0.5F);
      return;
    }
    center(paramInt1, paramInt2, 4, 0, paramInt2, 3, 0, 0.5F);
  }
  
  public void centerVertically(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, float paramFloat)
  {
    connect(paramInt1, 3, paramInt2, paramInt3, paramInt4);
    connect(paramInt1, 4, paramInt5, paramInt6, paramInt7);
    b.get(Integer.valueOf(paramInt1))).v = paramFloat;
  }
  
  public void clear(int paramInt)
  {
    b.remove(Integer.valueOf(paramInt));
  }
  
  public void clear(int paramInt1, int paramInt2)
  {
    if (b.containsKey(Integer.valueOf(paramInt1)))
    {
      a localA = (a)b.get(Integer.valueOf(paramInt1));
      switch (paramInt2)
      {
      default: 
        throw new IllegalArgumentException("unknown constraint");
      case 7: 
        s = -1;
        t = -1;
        H = -1;
        O = -1;
        return;
      case 6: 
        q = -1;
        r = -1;
        I = -1;
        P = -1;
        return;
      case 5: 
        p = -1;
        return;
      case 4: 
        n = -1;
        o = -1;
        G = -1;
        N = -1;
        return;
      case 3: 
        m = -1;
        l = -1;
        F = -1;
        L = -1;
        return;
      case 2: 
        k = -1;
        j = -1;
        E = -1;
        M = -1;
        return;
      }
      i = -1;
      h = -1;
      D = -1;
      K = -1;
    }
  }
  
  public void clone(Context paramContext, int paramInt)
  {
    clone((ConstraintLayout)LayoutInflater.from(paramContext).inflate(paramInt, null));
  }
  
  public void clone(ConstraintLayout paramConstraintLayout)
  {
    int j = paramConstraintLayout.getChildCount();
    b.clear();
    int i = 0;
    while (i < j)
    {
      Object localObject = paramConstraintLayout.getChildAt(i);
      ConstraintLayout.LayoutParams localLayoutParams = (ConstraintLayout.LayoutParams)((View)localObject).getLayoutParams();
      int k = ((View)localObject).getId();
      if (k != -1)
      {
        if (!b.containsKey(Integer.valueOf(k))) {
          b.put(Integer.valueOf(k), new a(null));
        }
        a localA = (a)b.get(Integer.valueOf(k));
        a.a(localA, k, localLayoutParams);
        J = ((View)localObject).getVisibility();
        if (Build.VERSION.SDK_INT >= 17)
        {
          U = ((View)localObject).getAlpha();
          X = ((View)localObject).getRotation();
          Y = ((View)localObject).getRotationX();
          Z = ((View)localObject).getRotationY();
          aa = ((View)localObject).getScaleX();
          ab = ((View)localObject).getScaleY();
          float f1 = ((View)localObject).getPivotX();
          float f2 = ((View)localObject).getPivotY();
          if ((f1 != 0.0D) || (f2 != 0.0D))
          {
            ac = f1;
            ad = f2;
          }
          ae = ((View)localObject).getTranslationX();
          af = ((View)localObject).getTranslationY();
          if (Build.VERSION.SDK_INT >= 21)
          {
            ag = ((View)localObject).getTranslationZ();
            if (V) {
              W = ((View)localObject).getElevation();
            }
          }
        }
        if ((localObject instanceof Barrier))
        {
          localObject = (Barrier)localObject;
          ar = ((Barrier)localObject).allowsGoneWidget();
          au = ((Barrier)localObject).getReferencedIds();
          as = ((Barrier)localObject).getType();
        }
        i += 1;
      }
      else
      {
        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
      }
    }
  }
  
  public void clone(ConstraintSet paramConstraintSet)
  {
    b.clear();
    Iterator localIterator = b.keySet().iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      b.put(localInteger, ((a)b.get(localInteger)).a());
    }
  }
  
  public void clone(Constraints paramConstraints)
  {
    int j = paramConstraints.getChildCount();
    b.clear();
    int i = 0;
    while (i < j)
    {
      View localView = paramConstraints.getChildAt(i);
      Constraints.LayoutParams localLayoutParams = (Constraints.LayoutParams)localView.getLayoutParams();
      int k = localView.getId();
      if (k != -1)
      {
        if (!b.containsKey(Integer.valueOf(k))) {
          b.put(Integer.valueOf(k), new a(null));
        }
        a localA = (a)b.get(Integer.valueOf(k));
        if ((localView instanceof ConstraintHelper)) {
          a.a(localA, (ConstraintHelper)localView, k, localLayoutParams);
        }
        a.a(localA, k, localLayoutParams);
        i += 1;
      }
      else
      {
        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
      }
    }
  }
  
  public void connect(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!b.containsKey(Integer.valueOf(paramInt1))) {
      b.put(Integer.valueOf(paramInt1), new a(null));
    }
    Object localObject = (a)b.get(Integer.valueOf(paramInt1));
    switch (paramInt2)
    {
    default: 
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(b(paramInt2));
      ((StringBuilder)localObject).append(" to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" unknown");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 7: 
      if (paramInt4 == 7)
      {
        t = paramInt3;
        s = -1;
        return;
      }
      if (paramInt4 == 6)
      {
        s = paramInt3;
        t = -1;
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 6: 
      if (paramInt4 == 6)
      {
        r = paramInt3;
        q = -1;
        return;
      }
      if (paramInt4 == 7)
      {
        q = paramInt3;
        r = -1;
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 5: 
      if (paramInt4 == 5)
      {
        p = paramInt3;
        o = -1;
        n = -1;
        l = -1;
        m = -1;
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 4: 
      if (paramInt4 == 4)
      {
        o = paramInt3;
        n = -1;
        p = -1;
        return;
      }
      if (paramInt4 == 3)
      {
        n = paramInt3;
        o = -1;
        p = -1;
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 3: 
      if (paramInt4 == 3)
      {
        l = paramInt3;
        m = -1;
        p = -1;
        return;
      }
      if (paramInt4 == 4)
      {
        m = paramInt3;
        l = -1;
        p = -1;
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 2: 
      if (paramInt4 == 1)
      {
        j = paramInt3;
        k = -1;
        return;
      }
      if (paramInt4 == 2)
      {
        k = paramInt3;
        j = -1;
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    if (paramInt4 == 1)
    {
      h = paramInt3;
      i = -1;
      return;
    }
    if (paramInt4 == 2)
    {
      i = paramInt3;
      h = -1;
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("left to ");
    ((StringBuilder)localObject).append(b(paramInt4));
    ((StringBuilder)localObject).append(" undefined");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void connect(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (!b.containsKey(Integer.valueOf(paramInt1))) {
      b.put(Integer.valueOf(paramInt1), new a(null));
    }
    Object localObject = (a)b.get(Integer.valueOf(paramInt1));
    switch (paramInt2)
    {
    default: 
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(b(paramInt2));
      ((StringBuilder)localObject).append(" to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" unknown");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 7: 
      if (paramInt4 == 7)
      {
        t = paramInt3;
        s = -1;
      }
      else
      {
        if (paramInt4 != 6) {
          break label204;
        }
        s = paramInt3;
        t = -1;
      }
      H = paramInt5;
      return;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 6: 
      if (paramInt4 == 6)
      {
        r = paramInt3;
        q = -1;
      }
      else
      {
        if (paramInt4 != 7) {
          break label305;
        }
        q = paramInt3;
        r = -1;
      }
      I = paramInt5;
      return;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 5: 
      if (paramInt4 == 5)
      {
        p = paramInt3;
        o = -1;
        n = -1;
        l = -1;
        m = -1;
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 4: 
      if (paramInt4 == 4)
      {
        o = paramInt3;
        n = -1;
        p = -1;
      }
      else
      {
        if (paramInt4 != 3) {
          break label505;
        }
        n = paramInt3;
        o = -1;
        p = -1;
      }
      G = paramInt5;
      return;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 3: 
      if (paramInt4 == 3)
      {
        l = paramInt3;
        m = -1;
        p = -1;
      }
      else
      {
        if (paramInt4 != 4) {
          break label616;
        }
        m = paramInt3;
        l = -1;
        p = -1;
      }
      F = paramInt5;
      return;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    case 2: 
      label204:
      label305:
      label505:
      label616:
      if (paramInt4 == 1)
      {
        j = paramInt3;
        k = -1;
      }
      else
      {
        if (paramInt4 != 2) {
          break label715;
        }
        k = paramInt3;
        j = -1;
      }
      E = paramInt5;
      return;
      label715:
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("right to ");
      ((StringBuilder)localObject).append(b(paramInt4));
      ((StringBuilder)localObject).append(" undefined");
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    if (paramInt4 == 1)
    {
      h = paramInt3;
      i = -1;
    }
    else
    {
      if (paramInt4 != 2) {
        break label814;
      }
      i = paramInt3;
      h = -1;
    }
    D = paramInt5;
    return;
    label814:
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Left to ");
    ((StringBuilder)localObject).append(b(paramInt4));
    ((StringBuilder)localObject).append(" undefined");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void constrainCircle(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    a localA = a(paramInt1);
    x = paramInt2;
    y = paramInt3;
    z = paramFloat;
  }
  
  public void constrainDefaultHeight(int paramInt1, int paramInt2)
  {
    aak = paramInt2;
  }
  
  public void constrainDefaultWidth(int paramInt1, int paramInt2)
  {
    aaj = paramInt2;
  }
  
  public void constrainHeight(int paramInt1, int paramInt2)
  {
    ac = paramInt2;
  }
  
  public void constrainMaxHeight(int paramInt1, int paramInt2)
  {
    aam = paramInt2;
  }
  
  public void constrainMaxWidth(int paramInt1, int paramInt2)
  {
    aal = paramInt2;
  }
  
  public void constrainMinHeight(int paramInt1, int paramInt2)
  {
    aao = paramInt2;
  }
  
  public void constrainMinWidth(int paramInt1, int paramInt2)
  {
    aan = paramInt2;
  }
  
  public void constrainPercentHeight(int paramInt, float paramFloat)
  {
    aaq = paramFloat;
  }
  
  public void constrainPercentWidth(int paramInt, float paramFloat)
  {
    aap = paramFloat;
  }
  
  public void constrainWidth(int paramInt1, int paramInt2)
  {
    ab = paramInt2;
  }
  
  public void create(int paramInt1, int paramInt2)
  {
    a localA = a(paramInt1);
    a = true;
    C = paramInt2;
  }
  
  public void createBarrier(int paramInt1, int paramInt2, int... paramVarArgs)
  {
    a localA = a(paramInt1);
    at = 1;
    as = paramInt2;
    a = false;
    au = paramVarArgs;
  }
  
  public void createHorizontalChain(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, float[] paramArrayOfFloat, int paramInt5)
  {
    a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramArrayOfFloat, paramInt5, 1, 2);
  }
  
  public void createHorizontalChainRtl(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, float[] paramArrayOfFloat, int paramInt5)
  {
    a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramArrayOfFloat, paramInt5, 6, 7);
  }
  
  public void createVerticalChain(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, float[] paramArrayOfFloat, int paramInt5)
  {
    if (paramArrayOfInt.length >= 2)
    {
      if ((paramArrayOfFloat != null) && (paramArrayOfFloat.length != paramArrayOfInt.length)) {
        throw new IllegalArgumentException("must have 2 or more widgets in a chain");
      }
      if (paramArrayOfFloat != null) {
        a0Q = paramArrayOfFloat[0];
      }
      a0T = paramInt5;
      connect(paramArrayOfInt[0], 3, paramInt1, paramInt2, 0);
      paramInt1 = 1;
      while (paramInt1 < paramArrayOfInt.length)
      {
        paramInt2 = paramArrayOfInt[paramInt1];
        paramInt2 = paramArrayOfInt[paramInt1];
        paramInt5 = paramInt1 - 1;
        connect(paramInt2, 3, paramArrayOfInt[paramInt5], 4, 0);
        connect(paramArrayOfInt[paramInt5], 4, paramArrayOfInt[paramInt1], 3, 0);
        if (paramArrayOfFloat != null) {
          aQ = paramArrayOfFloat[paramInt1];
        }
        paramInt1 += 1;
      }
      connect(paramArrayOfInt[(paramArrayOfInt.length - 1)], 4, paramInt3, paramInt4, 0);
      return;
    }
    throw new IllegalArgumentException("must have 2 or more widgets in a chain");
  }
  
  public boolean getApplyElevation(int paramInt)
  {
    return aV;
  }
  
  public a getParameters(int paramInt)
  {
    return a(paramInt);
  }
  
  public void load(Context paramContext, int paramInt)
  {
    XmlResourceParser localXmlResourceParser = paramContext.getResources().getXml(paramInt);
    try
    {
      paramInt = localXmlResourceParser.getEventType();
    }
    catch (IOException paramContext)
    {
      String str;
      a localA;
      paramContext.printStackTrace();
      return;
    }
    catch (XmlPullParserException paramContext)
    {
      paramContext.printStackTrace();
    }
    str = localXmlResourceParser.getName();
    localA = a(paramContext, Xml.asAttributeSet(localXmlResourceParser));
    if (str.equalsIgnoreCase("Guideline")) {
      a = true;
    }
    b.put(Integer.valueOf(d), localA);
    break label83;
    localXmlResourceParser.getName();
    for (;;)
    {
      label83:
      paramInt = localXmlResourceParser.next();
      while (paramInt == 1) {
        return;
      }
      if (paramInt == 0) {
        break;
      }
      switch (paramInt)
      {
      }
    }
  }
  
  public void removeFromHorizontalChain(int paramInt)
  {
    if (b.containsKey(Integer.valueOf(paramInt)))
    {
      a localA = (a)b.get(Integer.valueOf(paramInt));
      int i = i;
      int j = j;
      if ((i == -1) && (j == -1))
      {
        j = q;
        int k = s;
        if ((j != -1) || (k != -1)) {
          if ((j != -1) && (k != -1))
          {
            connect(j, 7, k, 6, 0);
            connect(k, 6, i, 7, 0);
          }
          else if ((i != -1) || (k != -1))
          {
            if (k != -1) {
              connect(i, 7, k, 7, 0);
            } else if (h != -1) {
              connect(k, 6, h, 6, 0);
            }
          }
        }
        clear(paramInt, 6);
        clear(paramInt, 7);
        return;
      }
      if ((i != -1) && (j != -1))
      {
        connect(i, 2, j, 1, 0);
        connect(j, 1, i, 2, 0);
      }
      else if ((i != -1) || (j != -1))
      {
        if (k != -1) {
          connect(i, 2, k, 2, 0);
        } else if (h != -1) {
          connect(j, 1, h, 1, 0);
        }
      }
      clear(paramInt, 1);
      clear(paramInt, 2);
    }
  }
  
  public void removeFromVerticalChain(int paramInt)
  {
    if (b.containsKey(Integer.valueOf(paramInt)))
    {
      a localA = (a)b.get(Integer.valueOf(paramInt));
      int i = m;
      int j = n;
      if ((i != -1) || (j != -1)) {
        if ((i != -1) && (j != -1))
        {
          connect(i, 4, j, 3, 0);
          connect(j, 3, i, 4, 0);
        }
        else if ((i != -1) || (j != -1))
        {
          if (o != -1) {
            connect(i, 4, o, 4, 0);
          } else if (l != -1) {
            connect(j, 3, l, 3, 0);
          }
        }
      }
    }
    clear(paramInt, 3);
    clear(paramInt, 4);
  }
  
  public void setAlpha(int paramInt, float paramFloat)
  {
    aU = paramFloat;
  }
  
  public void setApplyElevation(int paramInt, boolean paramBoolean)
  {
    aV = paramBoolean;
  }
  
  public void setBarrierType(int paramInt1, int paramInt2) {}
  
  public void setDimensionRatio(int paramInt, String paramString)
  {
    aw = paramString;
  }
  
  public void setElevation(int paramInt, float paramFloat)
  {
    aW = paramFloat;
    aV = true;
  }
  
  public void setGoneMargin(int paramInt1, int paramInt2, int paramInt3)
  {
    a localA = a(paramInt1);
    switch (paramInt2)
    {
    default: 
      throw new IllegalArgumentException("unknown constraint");
    case 7: 
      O = paramInt3;
      return;
    case 6: 
      P = paramInt3;
      return;
    case 5: 
      throw new IllegalArgumentException("baseline does not support margins");
    case 4: 
      N = paramInt3;
      return;
    case 3: 
      L = paramInt3;
      return;
    case 2: 
      M = paramInt3;
      return;
    }
    K = paramInt3;
  }
  
  public void setGuidelineBegin(int paramInt1, int paramInt2)
  {
    ae = paramInt2;
    af = -1;
    ag = -1.0F;
  }
  
  public void setGuidelineEnd(int paramInt1, int paramInt2)
  {
    af = paramInt2;
    ae = -1;
    ag = -1.0F;
  }
  
  public void setGuidelinePercent(int paramInt, float paramFloat)
  {
    ag = paramFloat;
    af = -1;
    ae = -1;
  }
  
  public void setHorizontalBias(int paramInt, float paramFloat)
  {
    au = paramFloat;
  }
  
  public void setHorizontalChainStyle(int paramInt1, int paramInt2)
  {
    aS = paramInt2;
  }
  
  public void setHorizontalWeight(int paramInt, float paramFloat)
  {
    aR = paramFloat;
  }
  
  public void setMargin(int paramInt1, int paramInt2, int paramInt3)
  {
    a localA = a(paramInt1);
    switch (paramInt2)
    {
    default: 
      throw new IllegalArgumentException("unknown constraint");
    case 7: 
      H = paramInt3;
      return;
    case 6: 
      I = paramInt3;
      return;
    case 5: 
      throw new IllegalArgumentException("baseline does not support margins");
    case 4: 
      G = paramInt3;
      return;
    case 3: 
      F = paramInt3;
      return;
    case 2: 
      E = paramInt3;
      return;
    }
    D = paramInt3;
  }
  
  public void setRotation(int paramInt, float paramFloat)
  {
    aX = paramFloat;
  }
  
  public void setRotationX(int paramInt, float paramFloat)
  {
    aY = paramFloat;
  }
  
  public void setRotationY(int paramInt, float paramFloat)
  {
    aZ = paramFloat;
  }
  
  public void setScaleX(int paramInt, float paramFloat)
  {
    aaa = paramFloat;
  }
  
  public void setScaleY(int paramInt, float paramFloat)
  {
    aab = paramFloat;
  }
  
  public void setTransformPivot(int paramInt, float paramFloat1, float paramFloat2)
  {
    a localA = a(paramInt);
    ad = paramFloat2;
    ac = paramFloat1;
  }
  
  public void setTransformPivotX(int paramInt, float paramFloat)
  {
    aac = paramFloat;
  }
  
  public void setTransformPivotY(int paramInt, float paramFloat)
  {
    aad = paramFloat;
  }
  
  public void setTranslation(int paramInt, float paramFloat1, float paramFloat2)
  {
    a localA = a(paramInt);
    ae = paramFloat1;
    af = paramFloat2;
  }
  
  public void setTranslationX(int paramInt, float paramFloat)
  {
    aae = paramFloat;
  }
  
  public void setTranslationY(int paramInt, float paramFloat)
  {
    aaf = paramFloat;
  }
  
  public void setTranslationZ(int paramInt, float paramFloat)
  {
    aag = paramFloat;
  }
  
  public void setVerticalBias(int paramInt, float paramFloat)
  {
    av = paramFloat;
  }
  
  public void setVerticalChainStyle(int paramInt1, int paramInt2)
  {
    aT = paramInt2;
  }
  
  public void setVerticalWeight(int paramInt, float paramFloat)
  {
    aQ = paramFloat;
  }
  
  public void setVisibility(int paramInt1, int paramInt2)
  {
    aJ = paramInt2;
  }
  
  private static class a
  {
    public int A = -1;
    public int B = -1;
    public int C = -1;
    public int D = -1;
    public int E = -1;
    public int F = -1;
    public int G = -1;
    public int H = -1;
    public int I = -1;
    public int J = 0;
    public int K = -1;
    public int L = -1;
    public int M = -1;
    public int N = -1;
    public int O = -1;
    public int P = -1;
    public float Q = 0.0F;
    public float R = 0.0F;
    public int S = 0;
    public int T = 0;
    public float U = 1.0F;
    public boolean V = false;
    public float W = 0.0F;
    public float X = 0.0F;
    public float Y = 0.0F;
    public float Z = 0.0F;
    boolean a = false;
    public float aa = 1.0F;
    public float ab = 1.0F;
    public float ac = NaN.0F;
    public float ad = NaN.0F;
    public float ae = 0.0F;
    public float af = 0.0F;
    public float ag = 0.0F;
    public boolean ah = false;
    public boolean ai = false;
    public int aj = 0;
    public int ak = 0;
    public int al = -1;
    public int am = -1;
    public int an = -1;
    public int ao = -1;
    public float ap = 1.0F;
    public float aq = 1.0F;
    public boolean ar = false;
    public int as = -1;
    public int at = -1;
    public int[] au;
    public String av;
    public int b;
    public int c;
    int d;
    public int e = -1;
    public int f = -1;
    public float g = -1.0F;
    public int h = -1;
    public int i = -1;
    public int j = -1;
    public int k = -1;
    public int l = -1;
    public int m = -1;
    public int n = -1;
    public int o = -1;
    public int p = -1;
    public int q = -1;
    public int r = -1;
    public int s = -1;
    public int t = -1;
    public float u = 0.5F;
    public float v = 0.5F;
    public String w = null;
    public int x = -1;
    public int y = 0;
    public float z = 0.0F;
    
    private a() {}
    
    private void a(int paramInt, ConstraintLayout.LayoutParams paramLayoutParams)
    {
      d = paramInt;
      h = leftToLeft;
      i = leftToRight;
      j = rightToLeft;
      k = rightToRight;
      l = topToTop;
      m = topToBottom;
      n = bottomToTop;
      o = bottomToBottom;
      p = baselineToBaseline;
      q = startToEnd;
      r = startToStart;
      s = endToStart;
      t = endToEnd;
      u = horizontalBias;
      v = verticalBias;
      w = dimensionRatio;
      x = circleConstraint;
      y = circleRadius;
      z = circleAngle;
      A = editorAbsoluteX;
      B = editorAbsoluteY;
      C = orientation;
      g = guidePercent;
      e = guideBegin;
      f = guideEnd;
      b = width;
      c = height;
      D = leftMargin;
      E = rightMargin;
      F = topMargin;
      G = bottomMargin;
      Q = verticalWeight;
      R = horizontalWeight;
      T = verticalChainStyle;
      S = horizontalChainStyle;
      ah = constrainedWidth;
      ai = constrainedHeight;
      aj = matchConstraintDefaultWidth;
      ak = matchConstraintDefaultHeight;
      ah = constrainedWidth;
      al = matchConstraintMaxWidth;
      am = matchConstraintMaxHeight;
      an = matchConstraintMinWidth;
      ao = matchConstraintMinHeight;
      ap = matchConstraintPercentWidth;
      aq = matchConstraintPercentHeight;
      if (Build.VERSION.SDK_INT >= 17)
      {
        H = paramLayoutParams.getMarginEnd();
        I = paramLayoutParams.getMarginStart();
      }
    }
    
    private void a(int paramInt, Constraints.LayoutParams paramLayoutParams)
    {
      a(paramInt, paramLayoutParams);
      U = alpha;
      X = rotation;
      Y = rotationX;
      Z = rotationY;
      aa = scaleX;
      ab = scaleY;
      ac = transformPivotX;
      ad = transformPivotY;
      ae = translationX;
      af = translationY;
      ag = translationZ;
      W = elevation;
      V = applyElevation;
    }
    
    private void a(ConstraintHelper paramConstraintHelper, int paramInt, Constraints.LayoutParams paramLayoutParams)
    {
      a(paramInt, paramLayoutParams);
      if ((paramConstraintHelper instanceof Barrier))
      {
        at = 1;
        paramConstraintHelper = (Barrier)paramConstraintHelper;
        as = paramConstraintHelper.getType();
        au = paramConstraintHelper.getReferencedIds();
      }
    }
    
    public a a()
    {
      a localA = new a();
      a = a;
      b = b;
      c = c;
      e = e;
      f = f;
      g = g;
      h = h;
      i = i;
      j = j;
      k = k;
      l = l;
      m = m;
      n = n;
      o = o;
      p = p;
      q = q;
      r = r;
      s = s;
      t = t;
      u = u;
      v = v;
      w = w;
      A = A;
      B = B;
      u = u;
      u = u;
      u = u;
      u = u;
      u = u;
      C = C;
      D = D;
      E = E;
      F = F;
      G = G;
      H = H;
      I = I;
      J = J;
      K = K;
      L = L;
      M = M;
      N = N;
      O = O;
      P = P;
      Q = Q;
      R = R;
      S = S;
      T = T;
      U = U;
      V = V;
      W = W;
      X = X;
      Y = Y;
      Z = Z;
      aa = aa;
      ab = ab;
      ac = ac;
      ad = ad;
      ae = ae;
      af = af;
      ag = ag;
      ah = ah;
      ai = ai;
      aj = aj;
      ak = ak;
      al = al;
      am = am;
      an = an;
      ao = ao;
      ap = ap;
      aq = aq;
      as = as;
      at = at;
      if (au != null) {
        au = Arrays.copyOf(au, au.length);
      }
      x = x;
      y = y;
      z = z;
      ar = ar;
      return localA;
    }
    
    public void a(ConstraintLayout.LayoutParams paramLayoutParams)
    {
      leftToLeft = h;
      leftToRight = i;
      rightToLeft = j;
      rightToRight = k;
      topToTop = l;
      topToBottom = m;
      bottomToTop = n;
      bottomToBottom = o;
      baselineToBaseline = p;
      startToEnd = q;
      startToStart = r;
      endToStart = s;
      endToEnd = t;
      leftMargin = D;
      rightMargin = E;
      topMargin = F;
      bottomMargin = G;
      goneStartMargin = P;
      goneEndMargin = O;
      horizontalBias = u;
      verticalBias = v;
      circleConstraint = x;
      circleRadius = y;
      circleAngle = z;
      dimensionRatio = w;
      editorAbsoluteX = A;
      editorAbsoluteY = B;
      verticalWeight = Q;
      horizontalWeight = R;
      verticalChainStyle = T;
      horizontalChainStyle = S;
      constrainedWidth = ah;
      constrainedHeight = ai;
      matchConstraintDefaultWidth = aj;
      matchConstraintDefaultHeight = ak;
      matchConstraintMaxWidth = al;
      matchConstraintMaxHeight = am;
      matchConstraintMinWidth = an;
      matchConstraintMinHeight = ao;
      matchConstraintPercentWidth = ap;
      matchConstraintPercentHeight = aq;
      orientation = C;
      guidePercent = g;
      guideBegin = e;
      guideEnd = f;
      width = b;
      height = c;
      if (Build.VERSION.SDK_INT >= 17)
      {
        paramLayoutParams.setMarginStart(I);
        paramLayoutParams.setMarginEnd(H);
      }
      paramLayoutParams.validate();
    }
  }
}
