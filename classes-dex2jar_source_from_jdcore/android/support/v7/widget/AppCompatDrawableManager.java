package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v4.util.SparseArrayCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.color;
import android.support.v7.appcompat.R.drawable;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public final class AppCompatDrawableManager
{
  private static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
  private static AppCompatDrawableManager b;
  private static final c c = new c(6);
  private static final int[] d = { R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha };
  private static final int[] e = { R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha };
  private static final int[] f = { R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light };
  private static final int[] g = { R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult };
  private static final int[] h = { R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material };
  private static final int[] i = { R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material };
  private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> j;
  private ArrayMap<String, d> k;
  private SparseArrayCompat<String> l;
  private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> m = new WeakHashMap(0);
  private TypedValue n;
  private boolean o;
  
  public AppCompatDrawableManager() {}
  
  private static long a(TypedValue paramTypedValue)
  {
    return assetCookie << 32 | data;
  }
  
  private ColorStateList a(@NonNull Context paramContext)
  {
    return e(paramContext, ac.a(paramContext, R.attr.colorButtonNormal));
  }
  
  static PorterDuff.Mode a(int paramInt)
  {
    if (paramInt == R.drawable.abc_switch_thumb_material) {
      return PorterDuff.Mode.MULTIPLY;
    }
    return null;
  }
  
  private static PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int[] paramArrayOfInt)
  {
    if ((paramColorStateList != null) && (paramMode != null)) {
      return getPorterDuffColorFilter(paramColorStateList.getColorForState(paramArrayOfInt, 0), paramMode);
    }
    return null;
  }
  
  private Drawable a(@NonNull Context paramContext, @DrawableRes int paramInt, boolean paramBoolean, @NonNull Drawable paramDrawable)
  {
    Object localObject = a(paramContext, paramInt);
    if (localObject != null)
    {
      paramContext = paramDrawable;
      if (DrawableUtils.canSafelyMutateDrawable(paramDrawable)) {
        paramContext = paramDrawable.mutate();
      }
      paramContext = DrawableCompat.wrap(paramContext);
      DrawableCompat.setTintList(paramContext, (ColorStateList)localObject);
      paramDrawable = a(paramInt);
      localObject = paramContext;
      if (paramDrawable != null)
      {
        DrawableCompat.setTintMode(paramContext, paramDrawable);
        return paramContext;
      }
    }
    else
    {
      if (paramInt == R.drawable.abc_seekbar_track_material)
      {
        localObject = (LayerDrawable)paramDrawable;
        a(((LayerDrawable)localObject).findDrawableByLayerId(16908288), ac.a(paramContext, R.attr.colorControlNormal), a);
        a(((LayerDrawable)localObject).findDrawableByLayerId(16908303), ac.a(paramContext, R.attr.colorControlNormal), a);
        a(((LayerDrawable)localObject).findDrawableByLayerId(16908301), ac.a(paramContext, R.attr.colorControlActivated), a);
        return paramDrawable;
      }
      if ((paramInt != R.drawable.abc_ratingbar_material) && (paramInt != R.drawable.abc_ratingbar_indicator_material) && (paramInt != R.drawable.abc_ratingbar_small_material))
      {
        localObject = paramDrawable;
        if (!a(paramContext, paramInt, paramDrawable))
        {
          localObject = paramDrawable;
          if (paramBoolean) {
            return null;
          }
        }
      }
      else
      {
        localObject = (LayerDrawable)paramDrawable;
        a(((LayerDrawable)localObject).findDrawableByLayerId(16908288), ac.c(paramContext, R.attr.colorControlNormal), a);
        a(((LayerDrawable)localObject).findDrawableByLayerId(16908303), ac.a(paramContext, R.attr.colorControlActivated), a);
        a(((LayerDrawable)localObject).findDrawableByLayerId(16908301), ac.a(paramContext, R.attr.colorControlActivated), a);
        localObject = paramDrawable;
      }
    }
    return localObject;
  }
  
  private Drawable a(@NonNull Context paramContext, long paramLong)
  {
    try
    {
      LongSparseArray localLongSparseArray = (LongSparseArray)m.get(paramContext);
      if (localLongSparseArray == null) {
        return null;
      }
      Object localObject = (WeakReference)localLongSparseArray.get(paramLong);
      if (localObject != null)
      {
        localObject = (Drawable.ConstantState)((WeakReference)localObject).get();
        if (localObject != null)
        {
          paramContext = ((Drawable.ConstantState)localObject).newDrawable(paramContext.getResources());
          return paramContext;
        }
        localLongSparseArray.delete(paramLong);
      }
      return null;
    }
    finally {}
  }
  
  private void a(@NonNull Context paramContext, @DrawableRes int paramInt, @NonNull ColorStateList paramColorStateList)
  {
    if (j == null) {
      j = new WeakHashMap();
    }
    SparseArrayCompat localSparseArrayCompat2 = (SparseArrayCompat)j.get(paramContext);
    SparseArrayCompat localSparseArrayCompat1 = localSparseArrayCompat2;
    if (localSparseArrayCompat2 == null)
    {
      localSparseArrayCompat1 = new SparseArrayCompat();
      j.put(paramContext, localSparseArrayCompat1);
    }
    localSparseArrayCompat1.append(paramInt, paramColorStateList);
  }
  
  private static void a(Drawable paramDrawable, int paramInt, PorterDuff.Mode paramMode)
  {
    Drawable localDrawable = paramDrawable;
    if (DrawableUtils.canSafelyMutateDrawable(paramDrawable)) {
      localDrawable = paramDrawable.mutate();
    }
    paramDrawable = paramMode;
    if (paramMode == null) {
      paramDrawable = a;
    }
    localDrawable.setColorFilter(getPorterDuffColorFilter(paramInt, paramDrawable));
  }
  
  static void a(Drawable paramDrawable, ad paramAd, int[] paramArrayOfInt)
  {
    if ((DrawableUtils.canSafelyMutateDrawable(paramDrawable)) && (paramDrawable.mutate() != paramDrawable))
    {
      Log.d("AppCompatDrawableManag", "Mutated drawable is not the same instance as the input.");
      return;
    }
    if ((!d) && (!c))
    {
      paramDrawable.clearColorFilter();
    }
    else
    {
      ColorStateList localColorStateList;
      if (d) {
        localColorStateList = a;
      } else {
        localColorStateList = null;
      }
      if (c) {
        paramAd = b;
      } else {
        paramAd = a;
      }
      paramDrawable.setColorFilter(a(localColorStateList, paramAd, paramArrayOfInt));
    }
    if (Build.VERSION.SDK_INT <= 23) {
      paramDrawable.invalidateSelf();
    }
  }
  
  private static void a(@NonNull AppCompatDrawableManager paramAppCompatDrawableManager)
  {
    if (Build.VERSION.SDK_INT < 24)
    {
      paramAppCompatDrawableManager.a("vector", new e());
      paramAppCompatDrawableManager.a("animated-vector", new b());
      paramAppCompatDrawableManager.a("animated-selector", new a());
    }
  }
  
  private void a(@NonNull String paramString, @NonNull d paramD)
  {
    if (k == null) {
      k = new ArrayMap();
    }
    k.put(paramString, paramD);
  }
  
  static boolean a(@NonNull Context paramContext, @DrawableRes int paramInt, @NonNull Drawable paramDrawable)
  {
    PorterDuff.Mode localMode = a;
    boolean bool = a(d, paramInt);
    int i1 = 16842801;
    if (bool) {
      paramInt = R.attr.colorControlNormal;
    }
    for (;;)
    {
      i2 = 1;
      i1 = -1;
      break label115;
      if (a(f, paramInt))
      {
        paramInt = R.attr.colorControlActivated;
      }
      else if (a(g, paramInt))
      {
        localMode = PorterDuff.Mode.MULTIPLY;
        paramInt = i1;
      }
      else
      {
        if (paramInt == R.drawable.abc_list_divider_mtrl_alpha)
        {
          paramInt = 16842800;
          i1 = Math.round(40.8F);
          i2 = 1;
          break label115;
        }
        if (paramInt != R.drawable.abc_dialog_material_background) {
          break;
        }
        paramInt = i1;
      }
    }
    int i2 = 0;
    i1 = -1;
    paramInt = 0;
    label115:
    if (i2 != 0)
    {
      Drawable localDrawable = paramDrawable;
      if (DrawableUtils.canSafelyMutateDrawable(paramDrawable)) {
        localDrawable = paramDrawable.mutate();
      }
      localDrawable.setColorFilter(getPorterDuffColorFilter(ac.a(paramContext, paramInt), localMode));
      if (i1 != -1) {
        localDrawable.setAlpha(i1);
      }
      return true;
    }
    return false;
  }
  
  private boolean a(@NonNull Context paramContext, long paramLong, @NonNull Drawable paramDrawable)
  {
    try
    {
      Drawable.ConstantState localConstantState = paramDrawable.getConstantState();
      if (localConstantState != null)
      {
        LongSparseArray localLongSparseArray = (LongSparseArray)m.get(paramContext);
        paramDrawable = localLongSparseArray;
        if (localLongSparseArray == null)
        {
          paramDrawable = new LongSparseArray();
          m.put(paramContext, paramDrawable);
        }
        paramDrawable.put(paramLong, new WeakReference(localConstantState));
        return true;
      }
      return false;
    }
    finally {}
  }
  
  private static boolean a(@NonNull Drawable paramDrawable)
  {
    return ((paramDrawable instanceof VectorDrawableCompat)) || ("android.graphics.drawable.VectorDrawable".equals(paramDrawable.getClass().getName()));
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    int i2 = paramArrayOfInt.length;
    int i1 = 0;
    while (i1 < i2)
    {
      if (paramArrayOfInt[i1] == paramInt) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  private ColorStateList b(@NonNull Context paramContext)
  {
    return e(paramContext, 0);
  }
  
  private Drawable b(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    if (n == null) {
      n = new TypedValue();
    }
    TypedValue localTypedValue = n;
    paramContext.getResources().getValue(paramInt, localTypedValue, true);
    long l1 = a(localTypedValue);
    Object localObject = a(paramContext, l1);
    if (localObject != null) {
      return localObject;
    }
    if (paramInt == R.drawable.abc_cab_background_top_material) {
      localObject = new LayerDrawable(new Drawable[] { getDrawable(paramContext, R.drawable.abc_cab_background_internal_bg), getDrawable(paramContext, R.drawable.abc_cab_background_top_mtrl_alpha) });
    }
    if (localObject != null)
    {
      ((Drawable)localObject).setChangingConfigurations(changingConfigurations);
      a(paramContext, l1, (Drawable)localObject);
    }
    return localObject;
  }
  
  private ColorStateList c(@NonNull Context paramContext)
  {
    return e(paramContext, ac.a(paramContext, R.attr.colorAccent));
  }
  
  private Drawable c(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    if ((k != null) && (!k.isEmpty()))
    {
      if (l != null)
      {
        localObject1 = (String)l.get(paramInt);
        if (("appcompat_skip_skip".equals(localObject1)) || ((localObject1 != null) && (k.get(localObject1) == null))) {
          return null;
        }
      }
      else
      {
        l = new SparseArrayCompat();
      }
      if (n == null) {
        n = new TypedValue();
      }
      TypedValue localTypedValue = n;
      Object localObject1 = paramContext.getResources();
      ((Resources)localObject1).getValue(paramInt, localTypedValue, true);
      long l1 = a(localTypedValue);
      Drawable localDrawable = a(paramContext, l1);
      if (localDrawable != null) {
        return localDrawable;
      }
      Object localObject2 = localDrawable;
      if (string != null)
      {
        localObject2 = localDrawable;
        if (string.toString().endsWith(".xml"))
        {
          localObject2 = localDrawable;
          try
          {
            XmlResourceParser localXmlResourceParser = ((Resources)localObject1).getXml(paramInt);
            localObject2 = localDrawable;
            AttributeSet localAttributeSet = Xml.asAttributeSet(localXmlResourceParser);
            int i1;
            do
            {
              localObject2 = localDrawable;
              i1 = localXmlResourceParser.next();
            } while ((i1 != 2) && (i1 != 1));
            if (i1 == 2)
            {
              localObject2 = localDrawable;
              localObject1 = localXmlResourceParser.getName();
              localObject2 = localDrawable;
              l.append(paramInt, localObject1);
              localObject2 = localDrawable;
              d localD = (d)k.get(localObject1);
              localObject1 = localDrawable;
              if (localD != null)
              {
                localObject2 = localDrawable;
                localObject1 = localD.a(paramContext, localXmlResourceParser, localAttributeSet, paramContext.getTheme());
              }
              localObject2 = localObject1;
              if (localObject1 != null)
              {
                localObject2 = localObject1;
                ((Drawable)localObject1).setChangingConfigurations(changingConfigurations);
                localObject2 = localObject1;
                a(paramContext, l1, (Drawable)localObject1);
                localObject2 = localObject1;
              }
            }
            else
            {
              localObject2 = localDrawable;
              throw new XmlPullParserException("No start tag found");
            }
          }
          catch (Exception paramContext)
          {
            Log.e("AppCompatDrawableManag", "Exception while inflating drawable", paramContext);
          }
        }
      }
      if (localObject2 == null) {
        l.append(paramInt, "appcompat_skip_skip");
      }
      return localObject2;
    }
    return null;
  }
  
  private ColorStateList d(Context paramContext)
  {
    int[][] arrayOfInt = new int[3][];
    int[] arrayOfInt1 = new int[3];
    ColorStateList localColorStateList = ac.b(paramContext, R.attr.colorSwitchThumbNormal);
    if ((localColorStateList != null) && (localColorStateList.isStateful()))
    {
      arrayOfInt[0] = ac.a;
      arrayOfInt1[0] = localColorStateList.getColorForState(arrayOfInt[0], 0);
      arrayOfInt[1] = ac.e;
      arrayOfInt1[1] = ac.a(paramContext, R.attr.colorControlActivated);
      arrayOfInt[2] = ac.h;
      arrayOfInt1[2] = localColorStateList.getDefaultColor();
    }
    else
    {
      arrayOfInt[0] = ac.a;
      arrayOfInt1[0] = ac.c(paramContext, R.attr.colorSwitchThumbNormal);
      arrayOfInt[1] = ac.e;
      arrayOfInt1[1] = ac.a(paramContext, R.attr.colorControlActivated);
      arrayOfInt[2] = ac.h;
      arrayOfInt1[2] = ac.a(paramContext, R.attr.colorSwitchThumbNormal);
    }
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }
  
  private ColorStateList d(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    Object localObject2 = j;
    Object localObject1 = null;
    if (localObject2 != null)
    {
      localObject2 = (SparseArrayCompat)j.get(paramContext);
      paramContext = localObject1;
      if (localObject2 != null) {
        paramContext = (ColorStateList)((SparseArrayCompat)localObject2).get(paramInt);
      }
      return paramContext;
    }
    return null;
  }
  
  private ColorStateList e(@NonNull Context paramContext, @ColorInt int paramInt)
  {
    int i3 = ac.a(paramContext, R.attr.colorControlHighlight);
    int i1 = ac.c(paramContext, R.attr.colorButtonNormal);
    paramContext = ac.a;
    int[] arrayOfInt1 = ac.d;
    int i2 = ColorUtils.compositeColors(i3, paramInt);
    int[] arrayOfInt2 = ac.b;
    i3 = ColorUtils.compositeColors(i3, paramInt);
    return new ColorStateList(new int[][] { paramContext, arrayOfInt1, arrayOfInt2, ac.h }, new int[] { i1, i2, i3, paramInt });
  }
  
  private void e(@NonNull Context paramContext)
  {
    if (o) {
      return;
    }
    o = true;
    paramContext = getDrawable(paramContext, R.drawable.abc_vector_test);
    if ((paramContext != null) && (a(paramContext))) {
      return;
    }
    o = false;
    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
  }
  
  public static AppCompatDrawableManager get()
  {
    try
    {
      if (b == null)
      {
        b = new AppCompatDrawableManager();
        a(b);
      }
      AppCompatDrawableManager localAppCompatDrawableManager = b;
      return localAppCompatDrawableManager;
    }
    finally {}
  }
  
  public static PorterDuffColorFilter getPorterDuffColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    try
    {
      PorterDuffColorFilter localPorterDuffColorFilter2 = c.a(paramInt, paramMode);
      PorterDuffColorFilter localPorterDuffColorFilter1 = localPorterDuffColorFilter2;
      if (localPorterDuffColorFilter2 == null)
      {
        localPorterDuffColorFilter1 = new PorterDuffColorFilter(paramInt, paramMode);
        c.a(paramInt, paramMode, localPorterDuffColorFilter1);
      }
      return localPorterDuffColorFilter1;
    }
    finally {}
  }
  
  ColorStateList a(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    try
    {
      ColorStateList localColorStateList1 = d(paramContext, paramInt);
      ColorStateList localColorStateList2 = localColorStateList1;
      if (localColorStateList1 == null)
      {
        if (paramInt == R.drawable.abc_edit_text_material) {
          localColorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_edittext);
        } else if (paramInt == R.drawable.abc_switch_track_mtrl_alpha) {
          localColorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_switch_track);
        } else if (paramInt == R.drawable.abc_switch_thumb_material) {
          localColorStateList1 = d(paramContext);
        } else if (paramInt == R.drawable.abc_btn_default_mtrl_shape) {
          localColorStateList1 = a(paramContext);
        } else if (paramInt == R.drawable.abc_btn_borderless_material) {
          localColorStateList1 = b(paramContext);
        } else if (paramInt == R.drawable.abc_btn_colored_material) {
          localColorStateList1 = c(paramContext);
        } else if ((paramInt != R.drawable.abc_spinner_mtrl_am_alpha) && (paramInt != R.drawable.abc_spinner_textfield_background_material))
        {
          if (a(e, paramInt)) {
            localColorStateList1 = ac.b(paramContext, R.attr.colorControlNormal);
          } else if (a(h, paramInt)) {
            localColorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_default);
          } else if (a(i, paramInt)) {
            localColorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_btn_checkable);
          } else if (paramInt == R.drawable.abc_seekbar_thumb_material) {
            localColorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_seek_thumb);
          }
        }
        else {
          localColorStateList1 = AppCompatResources.getColorStateList(paramContext, R.color.abc_tint_spinner);
        }
        localColorStateList2 = localColorStateList1;
        if (localColorStateList1 != null)
        {
          a(paramContext, paramInt, localColorStateList1);
          localColorStateList2 = localColorStateList1;
        }
      }
      return localColorStateList2;
    }
    finally {}
  }
  
  Drawable a(@NonNull Context paramContext, @DrawableRes int paramInt, boolean paramBoolean)
  {
    try
    {
      e(paramContext);
      Object localObject2 = c(paramContext, paramInt);
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = b(paramContext, paramInt);
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = ContextCompat.getDrawable(paramContext, paramInt);
      }
      localObject1 = localObject2;
      if (localObject2 != null) {
        localObject1 = a(paramContext, paramInt, paramBoolean, (Drawable)localObject2);
      }
      if (localObject1 != null) {
        DrawableUtils.a((Drawable)localObject1);
      }
      return localObject1;
    }
    finally {}
  }
  
  Drawable a(@NonNull Context paramContext, @NonNull VectorEnabledTintResources paramVectorEnabledTintResources, @DrawableRes int paramInt)
  {
    try
    {
      Drawable localDrawable2 = c(paramContext, paramInt);
      Drawable localDrawable1 = localDrawable2;
      if (localDrawable2 == null) {
        localDrawable1 = paramVectorEnabledTintResources.a(paramInt);
      }
      if (localDrawable1 != null)
      {
        paramContext = a(paramContext, paramInt, false, localDrawable1);
        return paramContext;
      }
      return null;
    }
    finally {}
  }
  
  public Drawable getDrawable(@NonNull Context paramContext, @DrawableRes int paramInt)
  {
    try
    {
      paramContext = a(paramContext, paramInt, false);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public void onConfigurationChanged(@NonNull Context paramContext)
  {
    try
    {
      paramContext = (LongSparseArray)m.get(paramContext);
      if (paramContext != null) {
        paramContext.clear();
      }
      return;
    }
    finally {}
  }
  
  @RequiresApi(11)
  static class a
    implements AppCompatDrawableManager.d
  {
    a() {}
    
    public Drawable a(@NonNull Context paramContext, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    {
      try
      {
        paramContext = AnimatedStateListDrawableCompat.createFromXmlInner(paramContext, paramContext.getResources(), paramXmlPullParser, paramAttributeSet, paramTheme);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", paramContext);
      }
      return null;
    }
  }
  
  private static class b
    implements AppCompatDrawableManager.d
  {
    b() {}
    
    public Drawable a(@NonNull Context paramContext, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    {
      try
      {
        paramContext = AnimatedVectorDrawableCompat.createFromXmlInner(paramContext, paramContext.getResources(), paramXmlPullParser, paramAttributeSet, paramTheme);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", paramContext);
      }
      return null;
    }
  }
  
  private static class c
    extends LruCache<Integer, PorterDuffColorFilter>
  {
    public c(int paramInt)
    {
      super();
    }
    
    private static int b(int paramInt, PorterDuff.Mode paramMode)
    {
      return (paramInt + 31) * 31 + paramMode.hashCode();
    }
    
    PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
    {
      return (PorterDuffColorFilter)get(Integer.valueOf(b(paramInt, paramMode)));
    }
    
    PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
    {
      return (PorterDuffColorFilter)put(Integer.valueOf(b(paramInt, paramMode)), paramPorterDuffColorFilter);
    }
  }
  
  private static abstract interface d
  {
    public abstract Drawable a(@NonNull Context paramContext, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme);
  }
  
  private static class e
    implements AppCompatDrawableManager.d
  {
    e() {}
    
    public Drawable a(@NonNull Context paramContext, @NonNull XmlPullParser paramXmlPullParser, @NonNull AttributeSet paramAttributeSet, @Nullable Resources.Theme paramTheme)
    {
      try
      {
        paramContext = VectorDrawableCompat.createFromXmlInner(paramContext.getResources(), paramXmlPullParser, paramAttributeSet, paramTheme);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        Log.e("VdcInflateDelegate", "Exception while inflating <vector>", paramContext);
      }
      return null;
    }
  }
}
