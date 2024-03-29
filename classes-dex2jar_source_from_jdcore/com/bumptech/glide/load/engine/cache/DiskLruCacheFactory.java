package com.bumptech.glide.load.engine.cache;

import java.io.File;

public class DiskLruCacheFactory
  implements DiskCache.Factory
{
  private final long a;
  private final CacheDirectoryGetter b;
  
  public DiskLruCacheFactory(CacheDirectoryGetter paramCacheDirectoryGetter, long paramLong)
  {
    a = paramLong;
    b = paramCacheDirectoryGetter;
  }
  
  public DiskLruCacheFactory(String paramString, long paramLong)
  {
    this(new CacheDirectoryGetter()
    {
      public File getCacheDirectory()
      {
        return new File(DiskLruCacheFactory.this);
      }
    }, paramLong);
  }
  
  public DiskLruCacheFactory(String paramString1, final String paramString2, long paramLong)
  {
    this(new CacheDirectoryGetter()
    {
      public File getCacheDirectory()
      {
        return new File(DiskLruCacheFactory.this, paramString2);
      }
    }, paramLong);
  }
  
  public DiskCache build()
  {
    File localFile = b.getCacheDirectory();
    if (localFile == null) {
      return null;
    }
    if ((!localFile.mkdirs()) && ((!localFile.exists()) || (!localFile.isDirectory()))) {
      return null;
    }
    return DiskLruCacheWrapper.create(localFile, a);
  }
  
  public static abstract interface CacheDirectoryGetter
  {
    public abstract File getCacheDirectory();
  }
}
