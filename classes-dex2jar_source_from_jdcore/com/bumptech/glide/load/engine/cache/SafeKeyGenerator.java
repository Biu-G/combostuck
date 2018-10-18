package com.bumptech.glide.load.engine.cache;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.FactoryPools.Factory;
import com.bumptech.glide.util.pool.FactoryPools.Poolable;
import com.bumptech.glide.util.pool.StateVerifier;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SafeKeyGenerator
{
  private final LruCache<Key, String> a = new LruCache(1000L);
  private final Pools.Pool<a> b = FactoryPools.threadSafe(10, new FactoryPools.Factory()
  {
    public SafeKeyGenerator.a a()
    {
      try
      {
        SafeKeyGenerator.a localA = new SafeKeyGenerator.a(MessageDigest.getInstance("SHA-256"));
        return localA;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new RuntimeException(localNoSuchAlgorithmException);
      }
    }
  });
  
  public SafeKeyGenerator() {}
  
  private String a(Key paramKey)
  {
    a localA = (a)Preconditions.checkNotNull(b.acquire());
    try
    {
      paramKey.updateDiskCacheKey(a);
      paramKey = Util.sha256BytesToHex(a.digest());
      return paramKey;
    }
    finally
    {
      b.release(localA);
    }
  }
  
  public String getSafeKey(Key paramKey)
  {
    synchronized (a)
    {
      ??? = (String)a.get(paramKey);
      ??? = ???;
      if (??? == null) {
        ??? = a(paramKey);
      }
      synchronized (a)
      {
        a.put(paramKey, ???);
        return ???;
      }
    }
  }
  
  private static final class a
    implements FactoryPools.Poolable
  {
    final MessageDigest a;
    private final StateVerifier b = StateVerifier.newInstance();
    
    a(MessageDigest paramMessageDigest)
    {
      a = paramMessageDigest;
    }
    
    @NonNull
    public StateVerifier getVerifier()
    {
      return b;
    }
  }
}
