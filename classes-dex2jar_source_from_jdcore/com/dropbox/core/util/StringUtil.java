package com.dropbox.core.util;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;

public class StringUtil
{
  public static final String Base64Digits = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  public static final Charset UTF8;
  public static final String UrlSafeBase64Digits = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
  private static final char[] b;
  
  static
  {
    UTF8 = Charset.forName("UTF-8");
    b = new char[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
    if ((!a) && ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".length() != 64)) {
      throw new AssertionError("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".length());
    }
    if (!a)
    {
      if ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".length() == 64) {
        return;
      }
      throw new AssertionError("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".length());
    }
  }
  
  public StringUtil() {}
  
  public static String base64Encode(byte[] paramArrayOfByte)
  {
    return base64EncodeGeneric("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", paramArrayOfByte);
  }
  
  public static String base64EncodeGeneric(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      if (paramString != null)
      {
        if (paramString.length() == 64)
        {
          StringBuilder localStringBuilder = new StringBuilder((paramArrayOfByte.length + 2) / 3 * 4);
          for (int i = 0; i + 3 <= paramArrayOfByte.length; i = j + 1)
          {
            int k = i + 1;
            i = paramArrayOfByte[i] & 0xFF;
            j = k + 1;
            k = paramArrayOfByte[k] & 0xFF;
            int m = paramArrayOfByte[j] & 0xFF;
            localStringBuilder.append(paramString.charAt(i >>> 2));
            localStringBuilder.append(paramString.charAt((i & 0x3) << 4 | k >>> 4));
            localStringBuilder.append(paramString.charAt((k & 0xF) << 2 | m >>> 6));
            localStringBuilder.append(paramString.charAt(m & 0x3F));
          }
          int j = paramArrayOfByte.length - i;
          if (j != 0) {
            if (j == 1)
            {
              i = paramArrayOfByte[i] & 0xFF;
              localStringBuilder.append(paramString.charAt(i >>> 2));
              localStringBuilder.append(paramString.charAt((i & 0x3) << 4));
              localStringBuilder.append("==");
            }
            else
            {
              if (j != 2) {
                break label308;
              }
              j = paramArrayOfByte[i] & 0xFF;
              i = paramArrayOfByte[(i + 1)] & 0xFF;
              localStringBuilder.append(paramString.charAt(j >>> 2));
              localStringBuilder.append(paramString.charAt((j & 0x3) << 4 | i >>> 4));
              localStringBuilder.append(paramString.charAt((i & 0xF) << 2));
              localStringBuilder.append('=');
            }
          }
          return localStringBuilder.toString();
          label308:
          paramString = new StringBuilder();
          paramString.append("data.length: ");
          paramString.append(paramArrayOfByte.length);
          paramString.append(", i: ");
          paramString.append(i);
          throw new AssertionError(paramString.toString());
        }
        paramArrayOfByte = new StringBuilder();
        paramArrayOfByte.append("'digits' must be 64 characters long: ");
        paramArrayOfByte.append(jq(paramString));
        throw new IllegalArgumentException(paramArrayOfByte.toString());
      }
      throw new IllegalArgumentException("'digits' can't be null");
    }
    throw new IllegalArgumentException("'data' can't be null");
  }
  
  public static String binaryToHex(byte[] paramArrayOfByte)
  {
    return binaryToHex(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static String binaryToHex(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((!a) && ((paramInt1 >= paramArrayOfByte.length) || (paramInt1 < 0)))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramInt1);
      ((StringBuilder)localObject).append(", ");
      ((StringBuilder)localObject).append(paramArrayOfByte.length);
      throw new AssertionError(((StringBuilder)localObject).toString());
    }
    int i = paramInt1 + paramInt2;
    if ((!a) && ((i > paramArrayOfByte.length) || (i < 0)))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramInt1);
      ((StringBuilder)localObject).append(", ");
      ((StringBuilder)localObject).append(paramInt2);
      ((StringBuilder)localObject).append(", ");
      ((StringBuilder)localObject).append(paramArrayOfByte.length);
      throw new AssertionError(((StringBuilder)localObject).toString());
    }
    Object localObject = new char[paramInt2 * 2];
    paramInt2 = 0;
    while (paramInt1 < i)
    {
      int j = paramArrayOfByte[paramInt1];
      int k = paramInt2 + 1;
      localObject[paramInt2] = hexDigit(j >>> 4 & 0xF);
      paramInt2 = k + 1;
      localObject[k] = hexDigit(j & 0xF);
      paramInt1 += 1;
    }
    return new String((char[])localObject);
  }
  
  public static char hexDigit(int paramInt)
  {
    return b[paramInt];
  }
  
  public static String javaQuotedLiteral(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() * 2);
    localStringBuilder.append('"');
    int i = 0;
    while (i < paramString.length())
    {
      char c = paramString.charAt(i);
      if (c != 0)
      {
        if (c != '\r')
        {
          if (c != '"')
          {
            if (c != '\\') {
              switch (c)
              {
              default: 
                if ((c >= ' ') && (c <= '~'))
                {
                  localStringBuilder.append(c);
                }
                else
                {
                  localStringBuilder.append("\\u");
                  localStringBuilder.append(hexDigit(c >> '\f' & 0xF));
                  localStringBuilder.append(hexDigit(c >> '\b' & 0xF));
                  localStringBuilder.append(hexDigit(c >> '\004' & 0xF));
                  localStringBuilder.append(hexDigit(c & 0xF));
                }
                break;
              case '\n': 
                localStringBuilder.append("\\n");
                break;
              case '\t': 
                localStringBuilder.append("\\r");
                break;
              }
            } else {
              localStringBuilder.append("\\\\");
            }
          }
          else {
            localStringBuilder.append("\\\"");
          }
        }
        else {
          localStringBuilder.append("\\t");
        }
      }
      else {
        localStringBuilder.append("\\000");
      }
      i += 1;
    }
    localStringBuilder.append('"');
    return localStringBuilder.toString();
  }
  
  public static String jq(String paramString)
  {
    return javaQuotedLiteral(paramString);
  }
  
  public static boolean secureStringEquals(String paramString1, String paramString2)
  {
    int i = paramString1.length();
    int j = paramString2.length();
    boolean bool = false;
    if (i != j) {
      return false;
    }
    i = 0;
    j = 0;
    while (i < paramString1.length())
    {
      j |= paramString1.charAt(i) ^ paramString2.charAt(i);
      i += 1;
    }
    if (j == 0) {
      bool = true;
    }
    return bool;
  }
  
  public static byte[] stringToUtf8(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw LangUtil.mkAssert("UTF-8 should always be supported", paramString);
    }
  }
  
  public static String urlSafeBase64Encode(byte[] paramArrayOfByte)
  {
    return base64EncodeGeneric("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", paramArrayOfByte);
  }
  
  public static String utf8ToString(byte[] paramArrayOfByte)
    throws CharacterCodingException
  {
    return utf8ToString(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static String utf8ToString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws CharacterCodingException
  {
    return UTF8.newDecoder().decode(ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2)).toString();
  }
}
