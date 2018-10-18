package com.amap.api.maps2d.model;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import com.amap.api.mapcore2d.ai.a;
import com.amap.api.mapcore2d.ar;
import com.amap.api.mapcore2d.cm;
import java.io.FileInputStream;

public final class BitmapDescriptorFactory
{
  public static final float HUE_AZURE = 210.0F;
  public static final float HUE_BLUE = 240.0F;
  public static final float HUE_CYAN = 180.0F;
  public static final float HUE_GREEN = 120.0F;
  public static final float HUE_MAGENTA = 300.0F;
  public static final float HUE_ORANGE = 30.0F;
  public static final float HUE_RED = 0.0F;
  public static final float HUE_ROSE = 330.0F;
  public static final float HUE_VIOLET = 270.0F;
  public static final float HUE_YELLOW = 60.0F;
  
  public BitmapDescriptorFactory() {}
  
  private static Bitmap a(View paramView)
  {
    try
    {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
      paramView.layout(0, 0, paramView.getMeasuredWidth(), paramView.getMeasuredHeight());
      paramView.buildDrawingCache();
      paramView = paramView.getDrawingCache().copy(Bitmap.Config.ARGB_8888, false);
      return paramView;
    }
    catch (Throwable paramView)
    {
      cm.a(paramView, "BitmapDescriptorFactory", "getViewBitmap");
    }
    return null;
  }
  
  public static BitmapDescriptor defaultMarker()
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(ai.a.b.name());
      ((StringBuilder)localObject).append(".png");
      localObject = fromAsset(((StringBuilder)localObject).toString());
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "BitmapDescriptorFactory", "defaultMarker");
    }
    return null;
  }
  
  public static BitmapDescriptor defaultMarker(float paramFloat)
  {
    int i = (int)(paramFloat + 15.0F);
    for (;;)
    {
      float f;
      try
      {
        f = i / 30 * 30;
        if (f <= 330.0F) {
          break label74;
        }
        paramFloat = 330.0F;
      }
      catch (Throwable localThrowable)
      {
        StringBuilder localStringBuilder;
        Object localObject;
        cm.a(localThrowable, "BitmapDescriptorFactory", "defaultMarker");
        return null;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("2d.png");
      localObject = fromAsset(localStringBuilder.toString());
      return localObject;
      label74:
      paramFloat = f;
      if (f < 0.0F) {
        paramFloat = 0.0F;
      }
      String str = "";
      if (paramFloat == 0.0F) {
        str = "RED";
      } else if (paramFloat == 30.0F) {
        str = "ORANGE";
      } else if (paramFloat == 60.0F) {
        str = "YELLOW";
      } else if (paramFloat == 120.0F) {
        str = "GREEN";
      } else if (paramFloat == 180.0F) {
        str = "CYAN";
      } else if (paramFloat == 210.0F) {
        str = "AZURE";
      } else if (paramFloat == 240.0F) {
        str = "BLUE";
      } else if (paramFloat == 270.0F) {
        str = "VIOLET";
      } else if (paramFloat == 300.0F) {
        str = "MAGENTAV";
      } else if (paramFloat == 330.0F) {
        str = "ROSE";
      }
    }
  }
  
  /* Error */
  public static BitmapDescriptor fromAsset(String paramString)
  {
    // Byte code:
    //   0: new 89	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 90	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc -114
    //   11: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: pop
    //   15: aload_1
    //   16: aload_0
    //   17: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: pop
    //   21: ldc 2
    //   23: aload_1
    //   24: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: invokevirtual 148	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   30: astore_1
    //   31: aload_1
    //   32: astore_0
    //   33: aload_1
    //   34: invokestatic 154	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   37: invokestatic 158	com/amap/api/maps2d/model/BitmapDescriptorFactory:fromBitmap	(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    //   40: astore_2
    //   41: aload_1
    //   42: ifnull +20 -> 62
    //   45: aload_1
    //   46: invokevirtual 163	java/io/InputStream:close	()V
    //   49: aload_2
    //   50: areturn
    //   51: astore_0
    //   52: aload_0
    //   53: ldc 78
    //   55: ldc -92
    //   57: invokestatic 85	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   60: aconst_null
    //   61: areturn
    //   62: aload_2
    //   63: areturn
    //   64: astore_2
    //   65: goto +12 -> 77
    //   68: astore_1
    //   69: aconst_null
    //   70: astore_0
    //   71: goto +26 -> 97
    //   74: astore_2
    //   75: aconst_null
    //   76: astore_1
    //   77: aload_1
    //   78: astore_0
    //   79: aload_2
    //   80: ldc 78
    //   82: ldc -92
    //   84: invokestatic 85	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   87: aload_1
    //   88: ifnull +19 -> 107
    //   91: aload_1
    //   92: invokevirtual 163	java/io/InputStream:close	()V
    //   95: aconst_null
    //   96: areturn
    //   97: aload_0
    //   98: ifnull +7 -> 105
    //   101: aload_0
    //   102: invokevirtual 163	java/io/InputStream:close	()V
    //   105: aload_1
    //   106: athrow
    //   107: aconst_null
    //   108: areturn
    //   109: astore_1
    //   110: goto -13 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	paramString	String
    //   7	39	1	localObject1	Object
    //   68	1	1	localObject2	Object
    //   76	30	1	localObject3	Object
    //   109	1	1	localObject4	Object
    //   40	23	2	localBitmapDescriptor	BitmapDescriptor
    //   64	1	2	localThrowable1	Throwable
    //   74	6	2	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   45	49	51	java/lang/Throwable
    //   91	95	51	java/lang/Throwable
    //   101	105	51	java/lang/Throwable
    //   33	41	64	java/lang/Throwable
    //   0	31	68	finally
    //   0	31	74	java/lang/Throwable
    //   33	41	109	finally
    //   79	87	109	finally
  }
  
  public static BitmapDescriptor fromBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return null;
    }
    try
    {
      paramBitmap = new BitmapDescriptor(paramBitmap);
      return paramBitmap;
    }
    catch (Throwable paramBitmap)
    {
      cm.a(paramBitmap, "BitmapDescriptorFactory", "fromBitmap");
    }
    return null;
  }
  
  public static BitmapDescriptor fromFile(String paramString)
  {
    try
    {
      Object localObject = ar.a;
      if (localObject != null)
      {
        paramString = ((Context)localObject).openFileInput(paramString);
        localObject = BitmapFactory.decodeStream(paramString);
        paramString.close();
        paramString = fromBitmap((Bitmap)localObject);
        return paramString;
      }
      return null;
    }
    catch (Throwable paramString)
    {
      cm.a(paramString, "BitmapDescriptorFactory", "fromFile");
    }
    return null;
  }
  
  public static BitmapDescriptor fromPath(String paramString)
  {
    try
    {
      paramString = fromBitmap(BitmapFactory.decodeFile(paramString));
      return paramString;
    }
    catch (Throwable paramString)
    {
      cm.a(paramString, "BitmapDescriptorFactory", "fromPath");
    }
    return null;
  }
  
  public static BitmapDescriptor fromResource(int paramInt)
  {
    try
    {
      Object localObject = ar.a;
      if (localObject != null)
      {
        localObject = fromBitmap(BitmapFactory.decodeStream(((Context)localObject).getResources().openRawResource(paramInt)));
        return localObject;
      }
      return null;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "BitmapDescriptorFactory", "fromResource");
    }
    return null;
  }
  
  public static BitmapDescriptor fromView(View paramView)
  {
    try
    {
      Object localObject = ar.a;
      if (localObject != null)
      {
        localObject = new FrameLayout((Context)localObject);
        ((FrameLayout)localObject).addView(paramView);
        ((FrameLayout)localObject).destroyDrawingCache();
        paramView = fromBitmap(a((View)localObject));
        return paramView;
      }
      return null;
    }
    catch (Throwable paramView)
    {
      cm.a(paramView, "BitmapDescriptorFactory", "fromView");
    }
    return null;
  }
}
