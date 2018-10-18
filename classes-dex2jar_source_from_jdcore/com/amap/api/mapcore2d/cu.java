package com.amap.api.mapcore2d;

import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class cu
{
  private static final char[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] b = new byte[''];
  
  static
  {
    int i = 0;
    while (i < 128)
    {
      b[i] = -1;
      i += 1;
    }
    i = 65;
    while (i <= 90)
    {
      b[i] = ((byte)(i - 65));
      i += 1;
    }
    i = 97;
    while (i <= 122)
    {
      b[i] = ((byte)(i - 97 + 26));
      i += 1;
    }
    i = 48;
    while (i <= 57)
    {
      b[i] = ((byte)(i - 48 + 52));
      i += 1;
    }
    b[43] = 62;
    b[47] = 63;
  }
  
  public static String a(String paramString)
  {
    return cz.a(b(paramString));
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = c(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      dd.a(paramArrayOfByte, "Encrypt", "encodeBase64");
    }
    return null;
  }
  
  static byte[] a(byte[] paramArrayOfByte, Key paramKey)
    throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      paramArrayOfByte1 = b(paramArrayOfByte1, paramArrayOfByte2);
      return paramArrayOfByte1;
    }
    catch (Throwable paramArrayOfByte1)
    {
      dd.a(paramArrayOfByte1, "Encrypt", "aesEncrypt");
    }
    return null;
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = c(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  public static byte[] b(String paramString)
  {
    int i = 0;
    if (paramString == null) {
      return new byte[0];
    }
    paramString = cz.a(paramString);
    int k = paramString.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(k);
    while (i < k)
    {
      byte[] arrayOfByte;
      int n;
      for (int j = i;; j = i)
      {
        arrayOfByte = b;
        i = j + 1;
        n = arrayOfByte[paramString[j]];
        if ((i >= k) || (n != -1)) {
          break;
        }
      }
      j = i;
      if (n == -1) {
        break;
      }
      int m;
      for (;;)
      {
        arrayOfByte = b;
        i = j + 1;
        m = arrayOfByte[paramString[j]];
        if ((i >= k) || (m != -1)) {
          break;
        }
        j = i;
      }
      if (m == -1) {
        break;
      }
      localByteArrayOutputStream.write(n << 2 | (m & 0x30) >>> 4);
      for (j = i;; j = i)
      {
        i = j + 1;
        j = paramString[j];
        if (j == 61) {
          return localByteArrayOutputStream.toByteArray();
        }
        n = b[j];
        if ((i >= k) || (n != -1)) {
          break;
        }
      }
      if (n == -1) {
        break;
      }
      localByteArrayOutputStream.write((m & 0xF) << 4 | (n & 0x3C) >>> 2);
      for (j = i;; j = i)
      {
        i = j + 1;
        j = paramString[j];
        if (j == 61) {
          return localByteArrayOutputStream.toByteArray();
        }
        j = b[j];
        if ((i >= k) || (j != -1)) {
          break;
        }
      }
      if (j == -1) {
        break;
      }
      localByteArrayOutputStream.write(j | (n & 0x3) << 6);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  private static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
  {
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(cz.b());
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    paramArrayOfByte1 = Cipher.getInstance("AES/CBC/PKCS5Padding");
    try
    {
      paramArrayOfByte1.init(1, localSecretKeySpec, localIvParameterSpec);
    }
    catch (InvalidAlgorithmParameterException localInvalidAlgorithmParameterException)
    {
      localInvalidAlgorithmParameterException.printStackTrace();
    }
    return paramArrayOfByte1.doFinal(paramArrayOfByte2);
  }
  
  private static String c(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int j = paramArrayOfByte.length;
    int k;
    for (int i = 0; i < j; i = k + 1)
    {
      int m = i + 1;
      i = paramArrayOfByte[i] & 0xFF;
      if (m == j)
      {
        localStringBuffer.append(a[(i >>> 2)]);
        localStringBuffer.append(a[((i & 0x3) << 4)]);
        localStringBuffer.append("==");
        break;
      }
      k = m + 1;
      m = paramArrayOfByte[m] & 0xFF;
      if (k == j)
      {
        localStringBuffer.append(a[(i >>> 2)]);
        localStringBuffer.append(a[((i & 0x3) << 4 | (m & 0xF0) >>> 4)]);
        localStringBuffer.append(a[((m & 0xF) << 2)]);
        localStringBuffer.append("=");
        break;
      }
      int n = paramArrayOfByte[k] & 0xFF;
      localStringBuffer.append(a[(i >>> 2)]);
      localStringBuffer.append(a[((i & 0x3) << 4 | (m & 0xF0) >>> 4)]);
      localStringBuffer.append(a[((m & 0xF) << 2 | (n & 0xC0) >>> 6)]);
      localStringBuffer.append(a[(n & 0x3F)]);
    }
    return localStringBuffer.toString();
  }
}
