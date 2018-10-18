package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v7.content.res.AppCompatResources;

public final class DrawableDecoderCompat
{
  private static volatile boolean a = true;
  
  private DrawableDecoderCompat() {}
  
  private static Drawable a(Context paramContext, @DrawableRes int paramInt)
  {
    return AppCompatResources.getDrawable(paramContext, paramInt);
  }
  
  private static Drawable a(Context paramContext, @DrawableRes int paramInt, @Nullable Resources.Theme paramTheme)
  {
    return ResourcesCompat.getDrawable(paramContext.getResources(), paramInt, paramTheme);
  }
  
  public static Drawable getDrawable(Context paramContext, @DrawableRes int paramInt)
  {
    return getDrawable(paramContext, paramInt, null);
  }
  
  public static Drawable getDrawable(Context paramContext, @DrawableRes int paramInt, @Nullable Resources.Theme paramTheme)
  {
    try
    {
      if (!a) {
        break label18;
      }
      Drawable localDrawable = a(paramContext, paramInt);
      return localDrawable;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      for (;;) {}
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      label18:
      for (;;) {}
    }
    a = false;
    if (paramTheme == null) {
      paramTheme = paramContext.getTheme();
    }
    return a(paramContext, paramInt, paramTheme);
  }
}
