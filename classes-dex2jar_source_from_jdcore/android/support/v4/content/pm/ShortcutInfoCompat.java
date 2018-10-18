package android.support.v4.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutInfo.Builder;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.graphics.drawable.IconCompat;
import android.text.TextUtils;
import java.util.Arrays;

public class ShortcutInfoCompat
{
  Context a;
  String b;
  Intent[] c;
  ComponentName d;
  CharSequence e;
  CharSequence f;
  CharSequence g;
  IconCompat h;
  boolean i;
  
  ShortcutInfoCompat() {}
  
  Intent a(Intent paramIntent)
  {
    paramIntent.putExtra("android.intent.extra.shortcut.INTENT", c[(c.length - 1)]).putExtra("android.intent.extra.shortcut.NAME", e.toString());
    Object localObject3;
    Object localObject4;
    PackageManager localPackageManager;
    Object localObject1;
    if (h != null)
    {
      localObject3 = null;
      localObject4 = null;
      if (i)
      {
        localPackageManager = a.getPackageManager();
        localObject1 = localObject4;
        if (d == null) {}
      }
    }
    try
    {
      localObject1 = localPackageManager.getActivityIcon(d);
      localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = a.getApplicationInfo().loadIcon(localPackageManager);
      }
      h.addToShortcutIntent(paramIntent, (Drawable)localObject3, a);
      return paramIntent;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Object localObject2 = localObject4;
      }
    }
  }
  
  @Nullable
  public ComponentName getActivity()
  {
    return d;
  }
  
  @Nullable
  public CharSequence getDisabledMessage()
  {
    return g;
  }
  
  @NonNull
  public String getId()
  {
    return b;
  }
  
  @NonNull
  public Intent getIntent()
  {
    return c[(c.length - 1)];
  }
  
  @NonNull
  public Intent[] getIntents()
  {
    return (Intent[])Arrays.copyOf(c, c.length);
  }
  
  @Nullable
  public CharSequence getLongLabel()
  {
    return f;
  }
  
  @NonNull
  public CharSequence getShortLabel()
  {
    return e;
  }
  
  @RequiresApi(25)
  public ShortcutInfo toShortcutInfo()
  {
    ShortcutInfo.Builder localBuilder = new ShortcutInfo.Builder(a, b).setShortLabel(e).setIntents(c);
    if (h != null) {
      localBuilder.setIcon(h.toIcon());
    }
    if (!TextUtils.isEmpty(f)) {
      localBuilder.setLongLabel(f);
    }
    if (!TextUtils.isEmpty(g)) {
      localBuilder.setDisabledMessage(g);
    }
    if (d != null) {
      localBuilder.setActivity(d);
    }
    return localBuilder.build();
  }
  
  public static class Builder
  {
    private final ShortcutInfoCompat a = new ShortcutInfoCompat();
    
    public Builder(@NonNull Context paramContext, @NonNull String paramString)
    {
      a.a = paramContext;
      a.b = paramString;
    }
    
    @NonNull
    public ShortcutInfoCompat build()
    {
      if (!TextUtils.isEmpty(a.e))
      {
        if ((a.c != null) && (a.c.length != 0)) {
          return a;
        }
        throw new IllegalArgumentException("Shortcut must have an intent");
      }
      throw new IllegalArgumentException("Shortcut must have a non-empty label");
    }
    
    @NonNull
    public Builder setActivity(@NonNull ComponentName paramComponentName)
    {
      a.d = paramComponentName;
      return this;
    }
    
    public Builder setAlwaysBadged()
    {
      a.i = true;
      return this;
    }
    
    @NonNull
    public Builder setDisabledMessage(@NonNull CharSequence paramCharSequence)
    {
      a.g = paramCharSequence;
      return this;
    }
    
    @NonNull
    public Builder setIcon(IconCompat paramIconCompat)
    {
      a.h = paramIconCompat;
      return this;
    }
    
    @NonNull
    public Builder setIntent(@NonNull Intent paramIntent)
    {
      return setIntents(new Intent[] { paramIntent });
    }
    
    @NonNull
    public Builder setIntents(@NonNull Intent[] paramArrayOfIntent)
    {
      a.c = paramArrayOfIntent;
      return this;
    }
    
    @NonNull
    public Builder setLongLabel(@NonNull CharSequence paramCharSequence)
    {
      a.f = paramCharSequence;
      return this;
    }
    
    @NonNull
    public Builder setShortLabel(@NonNull CharSequence paramCharSequence)
    {
      a.e = paramCharSequence;
      return this;
    }
  }
}
