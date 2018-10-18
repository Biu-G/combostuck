package com.bumptech.glide.load.model;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

public class GlideUrl
  implements Key
{
  private final Headers a;
  @Nullable
  private final URL b;
  @Nullable
  private final String c;
  @Nullable
  private String d;
  @Nullable
  private URL e;
  @Nullable
  private volatile byte[] f;
  private int g;
  
  public GlideUrl(String paramString)
  {
    this(paramString, Headers.DEFAULT);
  }
  
  public GlideUrl(String paramString, Headers paramHeaders)
  {
    b = null;
    c = Preconditions.checkNotEmpty(paramString);
    a = ((Headers)Preconditions.checkNotNull(paramHeaders));
  }
  
  public GlideUrl(URL paramURL)
  {
    this(paramURL, Headers.DEFAULT);
  }
  
  public GlideUrl(URL paramURL, Headers paramHeaders)
  {
    b = ((URL)Preconditions.checkNotNull(paramURL));
    c = null;
    a = ((Headers)Preconditions.checkNotNull(paramHeaders));
  }
  
  private URL a()
    throws MalformedURLException
  {
    if (e == null) {
      e = new URL(b());
    }
    return e;
  }
  
  private String b()
  {
    if (TextUtils.isEmpty(d))
    {
      String str2 = c;
      String str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = ((URL)Preconditions.checkNotNull(b)).toString();
      }
      d = Uri.encode(str1, "@#&=*+-_.,:!?()/~'%;$");
    }
    return d;
  }
  
  private byte[] c()
  {
    if (f == null) {
      f = getCacheKey().getBytes(CHARSET);
    }
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof GlideUrl;
    boolean bool2 = false;
    if (bool1)
    {
      paramObject = (GlideUrl)paramObject;
      bool1 = bool2;
      if (getCacheKey().equals(paramObject.getCacheKey()))
      {
        bool1 = bool2;
        if (a.equals(a)) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  public String getCacheKey()
  {
    if (c != null) {
      return c;
    }
    return ((URL)Preconditions.checkNotNull(b)).toString();
  }
  
  public Map<String, String> getHeaders()
  {
    return a.getHeaders();
  }
  
  public int hashCode()
  {
    if (g == 0)
    {
      g = getCacheKey().hashCode();
      g = (g * 31 + a.hashCode());
    }
    return g;
  }
  
  public String toString()
  {
    return getCacheKey();
  }
  
  public String toStringUrl()
  {
    return b();
  }
  
  public URL toURL()
    throws MalformedURLException
  {
    return a();
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(c());
  }
}
