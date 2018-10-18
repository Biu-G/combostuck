package android.support.v4.graphics.drawable;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.util.Preconditions;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;

public class IconCompat
  extends CustomVersionedParcelable
{
  public static final int TYPE_UNKNOWN = -1;
  static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
  Object a;
  PorterDuff.Mode c = b;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public byte[] mData;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public int mInt1;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public int mInt2;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public Parcelable mParcelable;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public ColorStateList mTintList = null;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public String mTintModeStr;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public int mType;
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public IconCompat() {}
  
  private IconCompat(int paramInt)
  {
    mType = paramInt;
  }
  
  @RequiresApi(23)
  private static int a(@NonNull Icon paramIcon)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return paramIcon.getType();
    }
    try
    {
      int i = ((Integer)paramIcon.getClass().getMethod("getType", new Class[0]).invoke(paramIcon, new Object[0])).intValue();
      return i;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unable to get icon type ");
      localStringBuilder.append(paramIcon);
      Log.e("IconCompat", localStringBuilder.toString(), localNoSuchMethodException);
      return -1;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unable to get icon type ");
      localStringBuilder.append(paramIcon);
      Log.e("IconCompat", localStringBuilder.toString(), localInvocationTargetException);
      return -1;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unable to get icon type ");
      localStringBuilder.append(paramIcon);
      Log.e("IconCompat", localStringBuilder.toString(), localIllegalAccessException);
    }
    return -1;
  }
  
  private static Resources a(Context paramContext, String paramString)
  {
    if ("android".equals(paramString)) {
      return Resources.getSystem();
    }
    paramContext = paramContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getApplicationInfo(paramString, 8192);
      if (localApplicationInfo != null)
      {
        paramContext = paramContext.getResourcesForApplication(localApplicationInfo);
        return paramContext;
      }
      return null;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", new Object[] { paramString }), paramContext);
    }
    return null;
  }
  
  @VisibleForTesting
  static Bitmap a(Bitmap paramBitmap, boolean paramBoolean)
  {
    int i = (int)(Math.min(paramBitmap.getWidth(), paramBitmap.getHeight()) * 0.6666667F);
    Bitmap localBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint(3);
    float f1 = i;
    float f2 = 0.5F * f1;
    float f3 = 0.9166667F * f2;
    if (paramBoolean)
    {
      float f4 = 0.010416667F * f1;
      localPaint.setColor(0);
      localPaint.setShadowLayer(f4, 0.0F, f1 * 0.020833334F, 1023410176);
      localCanvas.drawCircle(f2, f2, f3, localPaint);
      localPaint.setShadowLayer(f4, 0.0F, 0.0F, 503316480);
      localCanvas.drawCircle(f2, f2, f3, localPaint);
      localPaint.clearShadowLayer();
    }
    localPaint.setColor(-16777216);
    BitmapShader localBitmapShader = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    Matrix localMatrix = new Matrix();
    localMatrix.setTranslate(-(paramBitmap.getWidth() - i) / 2, -(paramBitmap.getHeight() - i) / 2);
    localBitmapShader.setLocalMatrix(localMatrix);
    localPaint.setShader(localBitmapShader);
    localCanvas.drawCircle(f2, f2, f3, localPaint);
    localCanvas.setBitmap(null);
    return localBitmap;
  }
  
  private Drawable a(Context paramContext)
  {
    Object localObject3;
    label220:
    Object localObject2;
    switch (mType)
    {
    default: 
      return null;
    case 5: 
      return new BitmapDrawable(paramContext.getResources(), a((Bitmap)a, false));
    case 4: 
      localObject3 = Uri.parse((String)a);
      Object localObject1 = ((Uri)localObject3).getScheme();
      StringBuilder localStringBuilder;
      if ((!"content".equals(localObject1)) && (!"file".equals(localObject1))) {
        try
        {
          localObject1 = new FileInputStream(new File((String)a));
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unable to load image from path: ");
          localStringBuilder.append(localObject3);
          Log.w("IconCompat", localStringBuilder.toString(), localFileNotFoundException);
          break label220;
        }
      } else {
        try
        {
          InputStream localInputStream = paramContext.getContentResolver().openInputStream((Uri)localObject3);
        }
        catch (Exception localException)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unable to load image from URI: ");
          localStringBuilder.append(localObject3);
          Log.w("IconCompat", localStringBuilder.toString(), localException);
        }
      }
      localObject2 = null;
      if (localObject2 == null) {
        break label368;
      }
      return new BitmapDrawable(paramContext.getResources(), BitmapFactory.decodeStream((InputStream)localObject2));
    case 3: 
      return new BitmapDrawable(paramContext.getResources(), BitmapFactory.decodeByteArray((byte[])a, mInt1, mInt2));
    case 2: 
      localObject3 = getResPackage();
      localObject2 = localObject3;
      if (TextUtils.isEmpty((CharSequence)localObject3)) {
        localObject2 = paramContext.getPackageName();
      }
      localObject2 = a(paramContext, (String)localObject2);
      try
      {
        paramContext = ResourcesCompat.getDrawable((Resources)localObject2, mInt1, paramContext.getTheme());
        return paramContext;
      }
      catch (RuntimeException paramContext)
      {
        Log.e("IconCompat", String.format("Unable to load resource 0x%08x from pkg=%s", new Object[] { Integer.valueOf(mInt1), a }), paramContext);
        return null;
      }
    }
    return new BitmapDrawable(paramContext.getResources(), (Bitmap)a);
    label368:
    return null;
  }
  
  private static String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 5: 
      return "BITMAP_MASKABLE";
    case 4: 
      return "URI";
    case 3: 
      return "DATA";
    case 2: 
      return "RESOURCE";
    }
    return "BITMAP";
  }
  
  @Nullable
  @RequiresApi(23)
  private static String b(@NonNull Icon paramIcon)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return paramIcon.getResPackage();
    }
    try
    {
      paramIcon = (String)paramIcon.getClass().getMethod("getResPackage", new Class[0]).invoke(paramIcon, new Object[0]);
      return paramIcon;
    }
    catch (NoSuchMethodException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon package", paramIcon);
      return null;
    }
    catch (InvocationTargetException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon package", paramIcon);
      return null;
    }
    catch (IllegalAccessException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon package", paramIcon);
    }
    return null;
  }
  
  @DrawableRes
  @IdRes
  @RequiresApi(23)
  private static int c(@NonNull Icon paramIcon)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return paramIcon.getResId();
    }
    try
    {
      int i = ((Integer)paramIcon.getClass().getMethod("getResId", new Class[0]).invoke(paramIcon, new Object[0])).intValue();
      return i;
    }
    catch (NoSuchMethodException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon resource", paramIcon);
      return 0;
    }
    catch (InvocationTargetException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon resource", paramIcon);
      return 0;
    }
    catch (IllegalAccessException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon resource", paramIcon);
    }
    return 0;
  }
  
  @Nullable
  public static IconCompat createFromBundle(@NonNull Bundle paramBundle)
  {
    int i = paramBundle.getInt("type");
    IconCompat localIconCompat = new IconCompat(i);
    mInt1 = paramBundle.getInt("int1");
    mInt2 = paramBundle.getInt("int2");
    if (paramBundle.containsKey("tint_list")) {
      mTintList = ((ColorStateList)paramBundle.getParcelable("tint_list"));
    }
    if (paramBundle.containsKey("tint_mode")) {
      c = PorterDuff.Mode.valueOf(paramBundle.getString("tint_mode"));
    }
    if (i != -1) {
      switch (i)
      {
      default: 
        paramBundle = new StringBuilder();
        paramBundle.append("Unknown type ");
        paramBundle.append(i);
        Log.w("IconCompat", paramBundle.toString());
        return null;
      case 3: 
        a = paramBundle.getByteArray("obj");
        return localIconCompat;
      case 2: 
      case 4: 
        a = paramBundle.getString("obj");
        return localIconCompat;
      }
    }
    a = paramBundle.getParcelable("obj");
    return localIconCompat;
  }
  
  @Nullable
  @RequiresApi(23)
  public static IconCompat createFromIcon(@NonNull Context paramContext, @NonNull Icon paramIcon)
  {
    Preconditions.checkNotNull(paramIcon);
    int i = a(paramIcon);
    if (i != 2)
    {
      if (i != 4)
      {
        paramContext = new IconCompat(-1);
        a = paramIcon;
        return paramContext;
      }
      return createWithContentUri(d(paramIcon));
    }
    String str = b(paramIcon);
    try
    {
      paramContext = createWithResource(a(paramContext, str), str, c(paramIcon));
      return paramContext;
    }
    catch (Resources.NotFoundException paramContext)
    {
      for (;;) {}
    }
    throw new IllegalArgumentException("Icon resource cannot be found");
  }
  
  @Nullable
  @RequiresApi(23)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static IconCompat createFromIcon(@NonNull Icon paramIcon)
  {
    Preconditions.checkNotNull(paramIcon);
    int i = a(paramIcon);
    if (i != 2)
    {
      if (i != 4)
      {
        IconCompat localIconCompat = new IconCompat(-1);
        a = paramIcon;
        return localIconCompat;
      }
      return createWithContentUri(d(paramIcon));
    }
    return createWithResource(null, b(paramIcon), c(paramIcon));
  }
  
  public static IconCompat createWithAdaptiveBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      IconCompat localIconCompat = new IconCompat(5);
      a = paramBitmap;
      return localIconCompat;
    }
    throw new IllegalArgumentException("Bitmap must not be null.");
  }
  
  public static IconCompat createWithBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      IconCompat localIconCompat = new IconCompat(1);
      a = paramBitmap;
      return localIconCompat;
    }
    throw new IllegalArgumentException("Bitmap must not be null.");
  }
  
  public static IconCompat createWithContentUri(Uri paramUri)
  {
    if (paramUri != null) {
      return createWithContentUri(paramUri.toString());
    }
    throw new IllegalArgumentException("Uri must not be null.");
  }
  
  public static IconCompat createWithContentUri(String paramString)
  {
    if (paramString != null)
    {
      IconCompat localIconCompat = new IconCompat(4);
      a = paramString;
      return localIconCompat;
    }
    throw new IllegalArgumentException("Uri must not be null.");
  }
  
  public static IconCompat createWithData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte != null)
    {
      IconCompat localIconCompat = new IconCompat(3);
      a = paramArrayOfByte;
      mInt1 = paramInt1;
      mInt2 = paramInt2;
      return localIconCompat;
    }
    throw new IllegalArgumentException("Data must not be null.");
  }
  
  public static IconCompat createWithResource(Context paramContext, @DrawableRes int paramInt)
  {
    if (paramContext != null) {
      return createWithResource(paramContext.getResources(), paramContext.getPackageName(), paramInt);
    }
    throw new IllegalArgumentException("Context must not be null.");
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static IconCompat createWithResource(Resources paramResources, String paramString, @DrawableRes int paramInt)
  {
    IconCompat localIconCompat;
    if (paramString != null) {
      if (paramInt != 0)
      {
        localIconCompat = new IconCompat(2);
        mInt1 = paramInt;
        if (paramResources == null) {}
      }
    }
    try
    {
      a = paramResources.getResourceName(paramInt);
      return localIconCompat;
    }
    catch (Resources.NotFoundException paramResources)
    {
      for (;;) {}
    }
    throw new IllegalArgumentException("Icon resource cannot be found");
    a = paramString;
    return localIconCompat;
    throw new IllegalArgumentException("Drawable resource ID must not be 0");
    throw new IllegalArgumentException("Package must not be null.");
  }
  
  @Nullable
  @RequiresApi(23)
  private static Uri d(@NonNull Icon paramIcon)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return paramIcon.getUri();
    }
    try
    {
      paramIcon = (Uri)paramIcon.getClass().getMethod("getUri", new Class[0]).invoke(paramIcon, new Object[0]);
      return paramIcon;
    }
    catch (NoSuchMethodException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon uri", paramIcon);
      return null;
    }
    catch (InvocationTargetException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon uri", paramIcon);
      return null;
    }
    catch (IllegalAccessException paramIcon)
    {
      Log.e("IconCompat", "Unable to get icon uri", paramIcon);
    }
    return null;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void addToShortcutIntent(@NonNull Intent paramIntent, @Nullable Drawable paramDrawable, @NonNull Context paramContext)
  {
    checkResource(paramContext);
    int i = mType;
    if (i != 5)
    {
      switch (i)
      {
      default: 
        throw new IllegalArgumentException("Icon type not supported for intent shortcuts");
      case 2: 
        try
        {
          paramContext = paramContext.createPackageContext(getResPackage(), 0);
          if (paramDrawable == null)
          {
            paramIntent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, mInt1));
            return;
          }
          localObject = ContextCompat.getDrawable(paramContext, mInt1);
          if ((((Drawable)localObject).getIntrinsicWidth() > 0) && (((Drawable)localObject).getIntrinsicHeight() > 0))
          {
            paramContext = Bitmap.createBitmap(((Drawable)localObject).getIntrinsicWidth(), ((Drawable)localObject).getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
          }
          else
          {
            i = ((ActivityManager)paramContext.getSystemService("activity")).getLauncherLargeIconSize();
            paramContext = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
          }
          ((Drawable)localObject).setBounds(0, 0, paramContext.getWidth(), paramContext.getHeight());
          ((Drawable)localObject).draw(new Canvas(paramContext));
        }
        catch (PackageManager.NameNotFoundException paramIntent)
        {
          paramDrawable = new StringBuilder();
          paramDrawable.append("Can't find package ");
          paramDrawable.append(a);
          throw new IllegalArgumentException(paramDrawable.toString(), paramIntent);
        }
      }
      Object localObject = (Bitmap)a;
      paramContext = (Context)localObject;
      if (paramDrawable != null) {
        paramContext = ((Bitmap)localObject).copy(((Bitmap)localObject).getConfig(), true);
      }
    }
    else
    {
      paramContext = a((Bitmap)a, true);
    }
    if (paramDrawable != null)
    {
      i = paramContext.getWidth();
      int j = paramContext.getHeight();
      paramDrawable.setBounds(i / 2, j / 2, i, j);
      paramDrawable.draw(new Canvas(paramContext));
    }
    paramIntent.putExtra("android.intent.extra.shortcut.ICON", paramContext);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void checkResource(Context paramContext)
  {
    if (mType == 2)
    {
      String str3 = (String)a;
      if (!str3.contains(":")) {
        return;
      }
      String str2 = str3.split(":", -1)[1];
      String str1 = str2.split("/", -1)[0];
      str2 = str2.split("/", -1)[1];
      str3 = str3.split(":", -1)[0];
      int i = a(paramContext, str3).getIdentifier(str2, str1, str3);
      if (mInt1 != i)
      {
        paramContext = new StringBuilder();
        paramContext.append("Id has changed for ");
        paramContext.append(str3);
        paramContext.append("/");
        paramContext.append(str2);
        Log.i("IconCompat", paramContext.toString());
        mInt1 = i;
      }
    }
  }
  
  @IdRes
  public int getResId()
  {
    if ((mType == -1) && (Build.VERSION.SDK_INT >= 23)) {
      return c((Icon)a);
    }
    if (mType == 2) {
      return mInt1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("called getResId() on ");
    localStringBuilder.append(this);
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  @NonNull
  public String getResPackage()
  {
    if ((mType == -1) && (Build.VERSION.SDK_INT >= 23)) {
      return b((Icon)a);
    }
    if (mType == 2) {
      return ((String)a).split(":", -1)[0];
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("called getResPackage() on ");
    localStringBuilder.append(this);
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int getType()
  {
    if ((mType == -1) && (Build.VERSION.SDK_INT >= 23)) {
      return a((Icon)a);
    }
    return mType;
  }
  
  @NonNull
  public Uri getUri()
  {
    if ((mType == -1) && (Build.VERSION.SDK_INT >= 23)) {
      return d((Icon)a);
    }
    return Uri.parse((String)a);
  }
  
  public Drawable loadDrawable(Context paramContext)
  {
    checkResource(paramContext);
    if (Build.VERSION.SDK_INT >= 23) {
      return toIcon().loadDrawable(paramContext);
    }
    paramContext = a(paramContext);
    if ((paramContext != null) && ((mTintList != null) || (c != b)))
    {
      paramContext.mutate();
      DrawableCompat.setTintList(paramContext, mTintList);
      DrawableCompat.setTintMode(paramContext, c);
    }
    return paramContext;
  }
  
  public void onPostParceling()
  {
    c = PorterDuff.Mode.valueOf(mTintModeStr);
    int i = mType;
    if (i != -1)
    {
      switch (i)
      {
      default: 
        return;
      case 3: 
        a = mData;
        return;
      case 2: 
      case 4: 
        a = new String(mData, Charset.forName("UTF-16"));
        return;
      }
      if (mParcelable != null)
      {
        a = mParcelable;
        return;
      }
      a = mData;
      mType = 3;
      mInt1 = 0;
      mInt2 = mData.length;
      return;
    }
    if (mParcelable != null)
    {
      a = mParcelable;
      return;
    }
    throw new IllegalArgumentException("Invalid icon");
  }
  
  public void onPreParceling(boolean paramBoolean)
  {
    mTintModeStr = c.name();
    int i = mType;
    if (i != -1)
    {
      switch (i)
      {
      default: 
        return;
      case 4: 
        mData = a.toString().getBytes(Charset.forName("UTF-16"));
        return;
      case 3: 
        mData = ((byte[])a);
        return;
      case 2: 
        mData = ((String)a).getBytes(Charset.forName("UTF-16"));
        return;
      }
      if (paramBoolean)
      {
        Bitmap localBitmap = (Bitmap)a;
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localBitmap.compress(Bitmap.CompressFormat.PNG, 90, localByteArrayOutputStream);
        mData = localByteArrayOutputStream.toByteArray();
        return;
      }
      mParcelable = ((Parcelable)a);
      return;
    }
    if (!paramBoolean)
    {
      mParcelable = ((Parcelable)a);
      return;
    }
    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
  }
  
  public IconCompat setTint(@ColorInt int paramInt)
  {
    return setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public IconCompat setTintList(ColorStateList paramColorStateList)
  {
    mTintList = paramColorStateList;
    return this;
  }
  
  public IconCompat setTintMode(PorterDuff.Mode paramMode)
  {
    c = paramMode;
    return this;
  }
  
  public Bundle toBundle()
  {
    Bundle localBundle = new Bundle();
    int i = mType;
    if (i != -1) {
      switch (i)
      {
      default: 
        throw new IllegalArgumentException("Invalid icon");
      case 3: 
        localBundle.putByteArray("obj", (byte[])a);
        break;
      case 2: 
      case 4: 
        localBundle.putString("obj", (String)a);
        break;
      case 1: 
      case 5: 
        localBundle.putParcelable("obj", (Bitmap)a);
        break;
      }
    } else {
      localBundle.putParcelable("obj", (Parcelable)a);
    }
    localBundle.putInt("type", mType);
    localBundle.putInt("int1", mInt1);
    localBundle.putInt("int2", mInt2);
    if (mTintList != null) {
      localBundle.putParcelable("tint_list", mTintList);
    }
    if (c != b) {
      localBundle.putString("tint_mode", c.name());
    }
    return localBundle;
  }
  
  @RequiresApi(23)
  public Icon toIcon()
  {
    int i = mType;
    if (i != -1)
    {
      Icon localIcon;
      switch (i)
      {
      default: 
        throw new IllegalArgumentException("Unknown type");
      case 5: 
        if (Build.VERSION.SDK_INT >= 26) {
          localIcon = Icon.createWithAdaptiveBitmap((Bitmap)a);
        } else {
          localIcon = Icon.createWithBitmap(a((Bitmap)a, false));
        }
        break;
      case 4: 
        localIcon = Icon.createWithContentUri((String)a);
        break;
      case 3: 
        localIcon = Icon.createWithData((byte[])a, mInt1, mInt2);
        break;
      case 2: 
        localIcon = Icon.createWithResource(getResPackage(), mInt1);
        break;
      case 1: 
        localIcon = Icon.createWithBitmap((Bitmap)a);
      }
      if (mTintList != null) {
        localIcon.setTintList(mTintList);
      }
      if (c != b) {
        localIcon.setTintMode(c);
      }
      return localIcon;
    }
    return (Icon)a;
  }
  
  public String toString()
  {
    if (mType == -1) {
      return String.valueOf(a);
    }
    StringBuilder localStringBuilder = new StringBuilder("Icon(typ=");
    localStringBuilder.append(a(mType));
    switch (mType)
    {
    default: 
      break;
    case 4: 
      localStringBuilder.append(" uri=");
      localStringBuilder.append(a);
      break;
    case 3: 
      localStringBuilder.append(" len=");
      localStringBuilder.append(mInt1);
      if (mInt2 != 0)
      {
        localStringBuilder.append(" off=");
        localStringBuilder.append(mInt2);
      }
      break;
    case 2: 
      localStringBuilder.append(" pkg=");
      localStringBuilder.append(getResPackage());
      localStringBuilder.append(" id=");
      localStringBuilder.append(String.format("0x%08x", new Object[] { Integer.valueOf(getResId()) }));
      break;
    case 1: 
    case 5: 
      localStringBuilder.append(" size=");
      localStringBuilder.append(((Bitmap)a).getWidth());
      localStringBuilder.append("x");
      localStringBuilder.append(((Bitmap)a).getHeight());
    }
    if (mTintList != null)
    {
      localStringBuilder.append(" tint=");
      localStringBuilder.append(mTintList);
    }
    if (c != b)
    {
      localStringBuilder.append(" mode=");
      localStringBuilder.append(c);
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static @interface IconType {}
}
