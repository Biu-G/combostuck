package com.amap.api.mapcore2d;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class fy
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final byte[] b = { 0, 1, 1, 2, 3, 5, 8, 13, 8, 7, 6, 5, 4, 3, 2, 1 };
  private static final IvParameterSpec c = new IvParameterSpec(b);
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    int i = 0;
    try
    {
      Object localObject = new byte[16];
      byte[] arrayOfByte = new byte[paramArrayOfByte.length - 16];
      System.arraycopy(paramArrayOfByte, 0, localObject, 0, 16);
      System.arraycopy(paramArrayOfByte, 16, arrayOfByte, 0, paramArrayOfByte.length - 16);
      localObject = new SecretKeySpec((byte[])localObject, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(2, (Key)localObject, new IvParameterSpec(cz.b()));
      arrayOfByte = localCipher.doFinal(arrayOfByte);
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      if (paramArrayOfByte != null) {
        i = paramArrayOfByte.length;
      }
      paramArrayOfByte = new StringBuilder("decryptRsponse length = ");
      paramArrayOfByte.append(i);
      gc.a(localThrowable, "Encrypt", paramArrayOfByte.toString());
    }
    return null;
  }
}
