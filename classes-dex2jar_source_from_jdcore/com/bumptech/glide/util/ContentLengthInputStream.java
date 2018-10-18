package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class ContentLengthInputStream
  extends FilterInputStream
{
  private final long a;
  private int b;
  
  private ContentLengthInputStream(@NonNull InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    a = paramLong;
  }
  
  private int a(int paramInt)
    throws IOException
  {
    if (paramInt >= 0)
    {
      b += paramInt;
      return paramInt;
    }
    if (a - b <= 0L) {
      return paramInt;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Failed to read all expected data, expected: ");
    localStringBuilder.append(a);
    localStringBuilder.append(", but read: ");
    localStringBuilder.append(b);
    throw new IOException(localStringBuilder.toString());
  }
  
  private static int a(@Nullable String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      try
      {
        int i = Integer.parseInt(paramString);
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        if (Log.isLoggable("ContentLengthStream", 3))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("failed to parse content length header: ");
          localStringBuilder.append(paramString);
          Log.d("ContentLengthStream", localStringBuilder.toString(), localNumberFormatException);
        }
      }
    }
    return -1;
  }
  
  @NonNull
  public static InputStream obtain(@NonNull InputStream paramInputStream, long paramLong)
  {
    return new ContentLengthInputStream(paramInputStream, paramLong);
  }
  
  @NonNull
  public static InputStream obtain(@NonNull InputStream paramInputStream, @Nullable String paramString)
  {
    return obtain(paramInputStream, a(paramString));
  }
  
  public int available()
    throws IOException
  {
    try
    {
      long l = Math.max(a - b, in.available());
      int i = (int)l;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int read()
    throws IOException
  {
    for (;;)
    {
      try
      {
        int j = super.read();
        if (j >= 0)
        {
          i = 1;
          a(i);
          return j;
        }
      }
      finally {}
      int i = -1;
    }
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = a(super.read(paramArrayOfByte, paramInt1, paramInt2));
      return paramInt1;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}
