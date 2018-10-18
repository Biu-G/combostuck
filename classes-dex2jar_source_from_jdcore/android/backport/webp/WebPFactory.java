package android.backport.webp;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.io.ByteArrayOutputStream;

public final class WebPFactory
{
  private static boolean a = true;
  
  static
  {
    try
    {
      System.loadLibrary("webpbackport");
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  private WebPFactory() {}
  
  public static boolean available()
  {
    return a ^ true;
  }
  
  public static Bitmap decodeByteArray(byte[] paramArrayOfByte, BitmapFactory.Options paramOptions)
  {
    if (available()) {
      return nativeDecodeByteArray(paramArrayOfByte, paramOptions);
    }
    return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
  }
  
  public static Bitmap decodeFile(String paramString, BitmapFactory.Options paramOptions)
  {
    if (available()) {
      return nativeDecodeFile(paramString, paramOptions);
    }
    return BitmapFactory.decodeFile(paramString, paramOptions);
  }
  
  public static byte[] encodeBitmap(Bitmap paramBitmap, int paramInt)
  {
    if (available()) {
      return nativeEncodeBitmap(paramBitmap, paramInt);
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.WEBP, paramInt, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  private static native Bitmap nativeDecodeByteArray(byte[] paramArrayOfByte, BitmapFactory.Options paramOptions);
  
  private static native Bitmap nativeDecodeFile(String paramString, BitmapFactory.Options paramOptions);
  
  private static native byte[] nativeEncodeBitmap(Bitmap paramBitmap, int paramInt);
}
