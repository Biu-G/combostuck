package com.amap.api.maps2d.model;

import com.amap.api.mapcore2d.ck;
import com.amap.api.mapcore2d.cm;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public abstract class UrlTileProvider
  implements TileProvider
{
  private final int a;
  private final int b;
  
  public UrlTileProvider(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  private static long a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte['က'];
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return l;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public final Tile getTile(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = getTileUrl(paramInt1, paramInt2, paramInt3);
    if (localObject == null) {
      return NO_TILE;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("url: ");
    localStringBuilder.append(((URL)localObject).toString());
    ck.a("UrlTileProvider", localStringBuilder.toString(), 111);
    try
    {
      localObject = new Tile(a, b, a(((URL)localObject).openStream()));
      return localObject;
    }
    catch (IOException localIOException)
    {
      cm.a(localIOException, "UrlTileProvider", "getTile");
    }
    return NO_TILE;
  }
  
  public int getTileHeight()
  {
    return b;
  }
  
  public abstract URL getTileUrl(int paramInt1, int paramInt2, int paramInt3);
  
  public int getTileWidth()
  {
    return a;
  }
}
