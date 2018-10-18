package android.support.v4.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.text.PrecomputedTextCompat;
import android.support.v4.text.PrecomputedTextCompat.Params;
import android.support.v4.text.PrecomputedTextCompat.Params.Builder;
import android.support.v4.util.Preconditions;
import android.text.Editable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class TextViewCompat
{
  public static final int AUTO_SIZE_TEXT_TYPE_NONE = 0;
  public static final int AUTO_SIZE_TEXT_TYPE_UNIFORM = 1;
  private static Field a;
  private static boolean b;
  private static Field c;
  private static boolean d;
  private static Field e;
  private static boolean f;
  private static Field g;
  private static boolean h;
  
  private TextViewCompat() {}
  
  @RequiresApi(18)
  private static int a(@NonNull TextDirectionHeuristic paramTextDirectionHeuristic)
  {
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
      return 1;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
      return 1;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
      return 2;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.LTR) {
      return 3;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.RTL) {
      return 4;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
      return 5;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
      return 6;
    }
    if (paramTextDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
      return 7;
    }
    return 1;
  }
  
  private static int a(Field paramField, TextView paramTextView)
  {
    try
    {
      int i = paramField.getInt(paramTextView);
      return i;
    }
    catch (IllegalAccessException paramTextView)
    {
      for (;;) {}
    }
    paramTextView = new StringBuilder();
    paramTextView.append("Could not retrieve value of ");
    paramTextView.append(paramField.getName());
    paramTextView.append(" field.");
    Log.d("TextViewCompat", paramTextView.toString());
    return -1;
  }
  
  @RequiresApi(18)
  private static TextDirectionHeuristic a(@NonNull TextView paramTextView)
  {
    if ((paramTextView.getTransformationMethod() instanceof PasswordTransformationMethod)) {
      return TextDirectionHeuristics.LTR;
    }
    int j = Build.VERSION.SDK_INT;
    int i = 0;
    if ((j >= 28) && ((paramTextView.getInputType() & 0xF) == 3))
    {
      i = Character.getDirectionality(android.icu.text.DecimalFormatSymbols.getInstance(paramTextView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
      if ((i != 1) && (i != 2)) {
        return TextDirectionHeuristics.LTR;
      }
      return TextDirectionHeuristics.RTL;
    }
    if (paramTextView.getLayoutDirection() == 1) {
      i = 1;
    }
    switch (paramTextView.getTextDirection())
    {
    default: 
      if (i != 0) {
        return TextDirectionHeuristics.FIRSTSTRONG_RTL;
      }
      break;
    case 7: 
      return TextDirectionHeuristics.FIRSTSTRONG_RTL;
    case 6: 
      return TextDirectionHeuristics.FIRSTSTRONG_LTR;
    case 5: 
      return TextDirectionHeuristics.LOCALE;
    case 4: 
      return TextDirectionHeuristics.RTL;
    case 3: 
      return TextDirectionHeuristics.LTR;
    case 2: 
      return TextDirectionHeuristics.ANYRTL_LTR;
    }
    return TextDirectionHeuristics.FIRSTSTRONG_LTR;
  }
  
  private static Field a(String paramString)
  {
    try
    {
      localField = TextView.class.getDeclaredField(paramString);
    }
    catch (NoSuchFieldException localNoSuchFieldException1)
    {
      Field localField;
      label16:
      StringBuilder localStringBuilder;
      for (;;) {}
    }
    try
    {
      localField.setAccessible(true);
      return localField;
    }
    catch (NoSuchFieldException localNoSuchFieldException2)
    {
      break label16;
    }
    localField = null;
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("Could not retrieve ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(" field.");
    Log.e("TextViewCompat", localStringBuilder.toString());
    return localField;
  }
  
  public static int getAutoSizeMaxTextSize(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 27) {
      return paramTextView.getAutoSizeMaxTextSize();
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      return ((AutoSizeableTextView)paramTextView).getAutoSizeMaxTextSize();
    }
    return -1;
  }
  
  public static int getAutoSizeMinTextSize(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 27) {
      return paramTextView.getAutoSizeMinTextSize();
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      return ((AutoSizeableTextView)paramTextView).getAutoSizeMinTextSize();
    }
    return -1;
  }
  
  public static int getAutoSizeStepGranularity(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 27) {
      return paramTextView.getAutoSizeStepGranularity();
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      return ((AutoSizeableTextView)paramTextView).getAutoSizeStepGranularity();
    }
    return -1;
  }
  
  @NonNull
  public static int[] getAutoSizeTextAvailableSizes(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 27) {
      return paramTextView.getAutoSizeTextAvailableSizes();
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      return ((AutoSizeableTextView)paramTextView).getAutoSizeTextAvailableSizes();
    }
    return new int[0];
  }
  
  public static int getAutoSizeTextType(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 27) {
      return paramTextView.getAutoSizeTextType();
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      return ((AutoSizeableTextView)paramTextView).getAutoSizeTextType();
    }
    return 0;
  }
  
  @NonNull
  public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return paramTextView.getCompoundDrawablesRelative();
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      int j = paramTextView.getLayoutDirection();
      int i = 1;
      if (j != 1) {
        i = 0;
      }
      paramTextView = paramTextView.getCompoundDrawables();
      if (i != 0)
      {
        Object localObject1 = paramTextView[2];
        Object localObject2 = paramTextView[0];
        paramTextView[0] = localObject1;
        paramTextView[2] = localObject2;
      }
      return paramTextView;
    }
    return paramTextView.getCompoundDrawables();
  }
  
  public static int getFirstBaselineToTopHeight(@NonNull TextView paramTextView)
  {
    return paramTextView.getPaddingTop() - getPaintgetFontMetricsInttop;
  }
  
  public static int getLastBaselineToBottomHeight(@NonNull TextView paramTextView)
  {
    return paramTextView.getPaddingBottom() + getPaintgetFontMetricsIntbottom;
  }
  
  public static int getMaxLines(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramTextView.getMaxLines();
    }
    if (!d)
    {
      c = a("mMaxMode");
      d = true;
    }
    if ((c != null) && (a(c, paramTextView) == 1))
    {
      if (!b)
      {
        a = a("mMaximum");
        b = true;
      }
      if (a != null) {
        return a(a, paramTextView);
      }
    }
    return -1;
  }
  
  public static int getMinLines(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramTextView.getMinLines();
    }
    if (!h)
    {
      g = a("mMinMode");
      h = true;
    }
    if ((g != null) && (a(g, paramTextView) == 1))
    {
      if (!f)
      {
        e = a("mMinimum");
        f = true;
      }
      if (e != null) {
        return a(e, paramTextView);
      }
    }
    return -1;
  }
  
  @NonNull
  public static PrecomputedTextCompat.Params getTextMetricsParams(@NonNull TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return new PrecomputedTextCompat.Params(paramTextView.getTextMetricsParams());
    }
    PrecomputedTextCompat.Params.Builder localBuilder = new PrecomputedTextCompat.Params.Builder(new TextPaint(paramTextView.getPaint()));
    if (Build.VERSION.SDK_INT >= 23)
    {
      localBuilder.setBreakStrategy(paramTextView.getBreakStrategy());
      localBuilder.setHyphenationFrequency(paramTextView.getHyphenationFrequency());
    }
    if (Build.VERSION.SDK_INT >= 18) {
      localBuilder.setTextDirection(a(paramTextView));
    }
    return localBuilder.build();
  }
  
  public static void setAutoSizeTextTypeUniformWithConfiguration(@NonNull TextView paramTextView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IllegalArgumentException
  {
    if (Build.VERSION.SDK_INT >= 27)
    {
      paramTextView.setAutoSizeTextTypeUniformWithConfiguration(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      ((AutoSizeableTextView)paramTextView).setAutoSizeTextTypeUniformWithConfiguration(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public static void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull TextView paramTextView, @NonNull int[] paramArrayOfInt, int paramInt)
    throws IllegalArgumentException
  {
    if (Build.VERSION.SDK_INT >= 27)
    {
      paramTextView.setAutoSizeTextTypeUniformWithPresetSizes(paramArrayOfInt, paramInt);
      return;
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      ((AutoSizeableTextView)paramTextView).setAutoSizeTextTypeUniformWithPresetSizes(paramArrayOfInt, paramInt);
    }
  }
  
  public static void setAutoSizeTextTypeWithDefaults(@NonNull TextView paramTextView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 27)
    {
      paramTextView.setAutoSizeTextTypeWithDefaults(paramInt);
      return;
    }
    if ((paramTextView instanceof AutoSizeableTextView)) {
      ((AutoSizeableTextView)paramTextView).setAutoSizeTextTypeWithDefaults(paramInt);
    }
  }
  
  public static void setCompoundDrawablesRelative(@NonNull TextView paramTextView, @Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4)
  {
    if (Build.VERSION.SDK_INT >= 18)
    {
      paramTextView.setCompoundDrawablesRelative(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      int j = paramTextView.getLayoutDirection();
      int i = 1;
      if (j != 1) {
        i = 0;
      }
      Drawable localDrawable;
      if (i != 0) {
        localDrawable = paramDrawable3;
      } else {
        localDrawable = paramDrawable1;
      }
      if (i == 0) {
        paramDrawable1 = paramDrawable3;
      }
      paramTextView.setCompoundDrawables(localDrawable, paramDrawable2, paramDrawable1, paramDrawable4);
      return;
    }
    paramTextView.setCompoundDrawables(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView paramTextView, @DrawableRes int paramInt1, @DrawableRes int paramInt2, @DrawableRes int paramInt3, @DrawableRes int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 18)
    {
      paramTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      int j = paramTextView.getLayoutDirection();
      int i = 1;
      if (j != 1) {
        i = 0;
      }
      if (i != 0) {
        j = paramInt3;
      } else {
        j = paramInt1;
      }
      if (i == 0) {
        paramInt1 = paramInt3;
      }
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(j, paramInt2, paramInt1, paramInt4);
      return;
    }
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView paramTextView, @Nullable Drawable paramDrawable1, @Nullable Drawable paramDrawable2, @Nullable Drawable paramDrawable3, @Nullable Drawable paramDrawable4)
  {
    if (Build.VERSION.SDK_INT >= 18)
    {
      paramTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      int j = paramTextView.getLayoutDirection();
      int i = 1;
      if (j != 1) {
        i = 0;
      }
      Drawable localDrawable;
      if (i != 0) {
        localDrawable = paramDrawable3;
      } else {
        localDrawable = paramDrawable1;
      }
      if (i == 0) {
        paramDrawable1 = paramDrawable3;
      }
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(localDrawable, paramDrawable2, paramDrawable1, paramDrawable4);
      return;
    }
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  public static void setCustomSelectionActionModeCallback(@NonNull TextView paramTextView, @NonNull ActionMode.Callback paramCallback)
  {
    paramTextView.setCustomSelectionActionModeCallback(wrapCustomSelectionActionModeCallback(paramTextView, paramCallback));
  }
  
  public static void setFirstBaselineToTopHeight(@NonNull TextView paramTextView, @IntRange(from=0L) @Px int paramInt)
  {
    Preconditions.checkArgumentNonnegative(paramInt);
    if (Build.VERSION.SDK_INT >= 28)
    {
      paramTextView.setFirstBaselineToTopHeight(paramInt);
      return;
    }
    Paint.FontMetricsInt localFontMetricsInt = paramTextView.getPaint().getFontMetricsInt();
    int i;
    if ((Build.VERSION.SDK_INT >= 16) && (!paramTextView.getIncludeFontPadding())) {
      i = ascent;
    } else {
      i = top;
    }
    if (paramInt > Math.abs(i))
    {
      i = -i;
      paramTextView.setPadding(paramTextView.getPaddingLeft(), paramInt - i, paramTextView.getPaddingRight(), paramTextView.getPaddingBottom());
    }
  }
  
  public static void setLastBaselineToBottomHeight(@NonNull TextView paramTextView, @IntRange(from=0L) @Px int paramInt)
  {
    Preconditions.checkArgumentNonnegative(paramInt);
    Paint.FontMetricsInt localFontMetricsInt = paramTextView.getPaint().getFontMetricsInt();
    int i;
    if ((Build.VERSION.SDK_INT >= 16) && (!paramTextView.getIncludeFontPadding())) {
      i = descent;
    } else {
      i = bottom;
    }
    if (paramInt > Math.abs(i)) {
      paramTextView.setPadding(paramTextView.getPaddingLeft(), paramTextView.getPaddingTop(), paramTextView.getPaddingRight(), paramInt - i);
    }
  }
  
  public static void setLineHeight(@NonNull TextView paramTextView, @IntRange(from=0L) @Px int paramInt)
  {
    Preconditions.checkArgumentNonnegative(paramInt);
    int i = paramTextView.getPaint().getFontMetricsInt(null);
    if (paramInt != i) {
      paramTextView.setLineSpacing(paramInt - i, 1.0F);
    }
  }
  
  public static void setPrecomputedText(@NonNull TextView paramTextView, @NonNull PrecomputedTextCompat paramPrecomputedTextCompat)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      paramTextView.setText(paramPrecomputedTextCompat.getPrecomputedText());
      return;
    }
    if (getTextMetricsParams(paramTextView).equals(paramPrecomputedTextCompat.getParams()))
    {
      paramTextView.setText(paramPrecomputedTextCompat);
      return;
    }
    throw new IllegalArgumentException("Given text can not be applied to TextView.");
  }
  
  public static void setTextAppearance(@NonNull TextView paramTextView, @StyleRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      paramTextView.setTextAppearance(paramInt);
      return;
    }
    paramTextView.setTextAppearance(paramTextView.getContext(), paramInt);
  }
  
  public static void setTextMetricsParams(@NonNull TextView paramTextView, @NonNull PrecomputedTextCompat.Params paramParams)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      paramTextView.setTextDirection(a(paramParams.getTextDirection()));
    }
    if (Build.VERSION.SDK_INT < 23)
    {
      float f1 = paramParams.getTextPaint().getTextScaleX();
      paramTextView.getPaint().set(paramParams.getTextPaint());
      if (f1 == paramTextView.getTextScaleX()) {
        paramTextView.setTextScaleX(f1 / 2.0F + 1.0F);
      }
      paramTextView.setTextScaleX(f1);
      return;
    }
    paramTextView.getPaint().set(paramParams.getTextPaint());
    paramTextView.setBreakStrategy(paramParams.getBreakStrategy());
    paramTextView.setHyphenationFrequency(paramParams.getHyphenationFrequency());
  }
  
  @NonNull
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static ActionMode.Callback wrapCustomSelectionActionModeCallback(@NonNull TextView paramTextView, @NonNull ActionMode.Callback paramCallback)
  {
    if ((Build.VERSION.SDK_INT >= 26) && (Build.VERSION.SDK_INT <= 27))
    {
      if ((paramCallback instanceof a)) {
        return paramCallback;
      }
      return new a(paramCallback, paramTextView);
    }
    return paramCallback;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface AutoSizeTextType {}
  
  @RequiresApi(26)
  private static class a
    implements ActionMode.Callback
  {
    private final ActionMode.Callback a;
    private final TextView b;
    private Class c;
    private Method d;
    private boolean e;
    private boolean f;
    
    a(ActionMode.Callback paramCallback, TextView paramTextView)
    {
      a = paramCallback;
      b = paramTextView;
      f = false;
    }
    
    private Intent a()
    {
      return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
    }
    
    private Intent a(ResolveInfo paramResolveInfo, TextView paramTextView)
    {
      return a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", a(paramTextView) ^ true).setClassName(activityInfo.packageName, activityInfo.name);
    }
    
    private List<ResolveInfo> a(Context paramContext, PackageManager paramPackageManager)
    {
      ArrayList localArrayList = new ArrayList();
      if (!(paramContext instanceof Activity)) {
        return localArrayList;
      }
      paramPackageManager = paramPackageManager.queryIntentActivities(a(), 0).iterator();
      while (paramPackageManager.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)paramPackageManager.next();
        if (a(localResolveInfo, paramContext)) {
          localArrayList.add(localResolveInfo);
        }
      }
      return localArrayList;
    }
    
    private void a(Menu paramMenu)
    {
      Object localObject2 = b.getContext();
      PackageManager localPackageManager = ((Context)localObject2).getPackageManager();
      if (!f) {
        f = true;
      }
      try
      {
        c = Class.forName("com.android.internal.view.menu.MenuBuilder");
        d = c.getDeclaredMethod("removeItemAt", new Class[] { Integer.TYPE });
        e = true;
      }
      catch (ClassNotFoundException|NoSuchMethodException localClassNotFoundException)
      {
        for (;;)
        {
          try
          {
            if ((e) && (c.isInstance(paramMenu))) {
              localObject1 = d;
            } else {
              localObject1 = paramMenu.getClass().getDeclaredMethod("removeItemAt", new Class[] { Integer.TYPE });
            }
            int i = paramMenu.size() - 1;
            if (i >= 0)
            {
              MenuItem localMenuItem = paramMenu.getItem(i);
              if ((localMenuItem.getIntent() != null) && ("android.intent.action.PROCESS_TEXT".equals(localMenuItem.getIntent().getAction()))) {
                ((Method)localObject1).invoke(paramMenu, new Object[] { Integer.valueOf(i) });
              }
              i -= 1;
              continue;
            }
            Object localObject1 = a((Context)localObject2, localPackageManager);
            i = 0;
            if (i < ((List)localObject1).size())
            {
              localObject2 = (ResolveInfo)((List)localObject1).get(i);
              paramMenu.add(0, 0, i + 100, ((ResolveInfo)localObject2).loadLabel(localPackageManager)).setIntent(a((ResolveInfo)localObject2, b)).setShowAsAction(1);
              i += 1;
              continue;
            }
            return;
          }
          catch (NoSuchMethodException|IllegalAccessException|InvocationTargetException paramMenu) {}
          localClassNotFoundException = localClassNotFoundException;
        }
      }
      c = null;
      d = null;
      e = false;
    }
    
    private boolean a(ResolveInfo paramResolveInfo, Context paramContext)
    {
      boolean bool2 = paramContext.getPackageName().equals(activityInfo.packageName);
      boolean bool1 = true;
      if (bool2) {
        return true;
      }
      if (!activityInfo.exported) {
        return false;
      }
      if (activityInfo.permission != null)
      {
        if (paramContext.checkSelfPermission(activityInfo.permission) == 0) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
    }
    
    private boolean a(TextView paramTextView)
    {
      return ((paramTextView instanceof Editable)) && (paramTextView.onCheckIsTextEditor()) && (paramTextView.isEnabled());
    }
    
    public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
    {
      return a.onActionItemClicked(paramActionMode, paramMenuItem);
    }
    
    public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
    {
      return a.onCreateActionMode(paramActionMode, paramMenu);
    }
    
    public void onDestroyActionMode(ActionMode paramActionMode)
    {
      a.onDestroyActionMode(paramActionMode);
    }
    
    public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
    {
      a(paramMenu);
      return a.onPrepareActionMode(paramActionMode, paramMenu);
    }
  }
}
