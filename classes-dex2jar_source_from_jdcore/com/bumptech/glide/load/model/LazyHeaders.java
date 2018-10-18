package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class LazyHeaders
  implements Headers
{
  private final Map<String, List<LazyHeaderFactory>> a;
  private volatile Map<String, String> b;
  
  LazyHeaders(Map<String, List<LazyHeaderFactory>> paramMap)
  {
    a = Collections.unmodifiableMap(paramMap);
  }
  
  @NonNull
  private String a(@NonNull List<LazyHeaderFactory> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      String str = ((LazyHeaderFactory)paramList.get(i)).buildHeader();
      if (!TextUtils.isEmpty(str))
      {
        localStringBuilder.append(str);
        if (i != paramList.size() - 1) {
          localStringBuilder.append(',');
        }
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  private Map<String, String> a()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = a((List)localEntry.getValue());
      if (!TextUtils.isEmpty(str)) {
        localHashMap.put(localEntry.getKey(), str);
      }
    }
    return localHashMap;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof LazyHeaders))
    {
      paramObject = (LazyHeaders)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public Map<String, String> getHeaders()
  {
    if (b == null) {
      try
      {
        if (b == null) {
          b = Collections.unmodifiableMap(a());
        }
      }
      finally {}
    }
    return b;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LazyHeaders{headers=");
    localStringBuilder.append(a);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static final class Builder
  {
    private static final String a = ;
    private static final Map<String, List<LazyHeaderFactory>> b;
    private boolean c = true;
    private Map<String, List<LazyHeaderFactory>> d = b;
    private boolean e = true;
    
    static
    {
      HashMap localHashMap = new HashMap(2);
      if (!TextUtils.isEmpty(a)) {
        localHashMap.put("User-Agent", Collections.singletonList(new LazyHeaders.a(a)));
      }
      b = Collections.unmodifiableMap(localHashMap);
    }
    
    public Builder() {}
    
    @VisibleForTesting
    static String a()
    {
      String str = System.getProperty("http.agent");
      if (TextUtils.isEmpty(str)) {
        return str;
      }
      int j = str.length();
      StringBuilder localStringBuilder = new StringBuilder(str.length());
      int i = 0;
      while (i < j)
      {
        char c1 = str.charAt(i);
        if (((c1 > '\037') || (c1 == '\t')) && (c1 < '')) {
          localStringBuilder.append(c1);
        } else {
          localStringBuilder.append('?');
        }
        i += 1;
      }
      return localStringBuilder.toString();
    }
    
    private List<LazyHeaderFactory> a(String paramString)
    {
      List localList = (List)d.get(paramString);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        d.put(paramString, localObject);
      }
      return localObject;
    }
    
    private void b()
    {
      if (c)
      {
        c = false;
        d = c();
      }
    }
    
    private Map<String, List<LazyHeaderFactory>> c()
    {
      HashMap localHashMap = new HashMap(d.size());
      Iterator localIterator = d.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ArrayList localArrayList = new ArrayList((Collection)localEntry.getValue());
        localHashMap.put(localEntry.getKey(), localArrayList);
      }
      return localHashMap;
    }
    
    public Builder addHeader(String paramString, LazyHeaderFactory paramLazyHeaderFactory)
    {
      if ((e) && ("User-Agent".equalsIgnoreCase(paramString))) {
        return setHeader(paramString, paramLazyHeaderFactory);
      }
      b();
      a(paramString).add(paramLazyHeaderFactory);
      return this;
    }
    
    public Builder addHeader(String paramString1, String paramString2)
    {
      return addHeader(paramString1, new LazyHeaders.a(paramString2));
    }
    
    public LazyHeaders build()
    {
      c = true;
      return new LazyHeaders(d);
    }
    
    public Builder setHeader(String paramString, LazyHeaderFactory paramLazyHeaderFactory)
    {
      b();
      if (paramLazyHeaderFactory == null)
      {
        d.remove(paramString);
      }
      else
      {
        List localList = a(paramString);
        localList.clear();
        localList.add(paramLazyHeaderFactory);
      }
      if ((e) && ("User-Agent".equalsIgnoreCase(paramString))) {
        e = false;
      }
      return this;
    }
    
    public Builder setHeader(String paramString1, String paramString2)
    {
      if (paramString2 == null) {
        paramString2 = null;
      } else {
        paramString2 = new LazyHeaders.a(paramString2);
      }
      return setHeader(paramString1, paramString2);
    }
  }
  
  static final class a
    implements LazyHeaderFactory
  {
    private final String a;
    
    a(String paramString)
    {
      a = paramString;
    }
    
    public String buildHeader()
    {
      return a;
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
        return a.equals(a);
      }
      return false;
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("StringHeaderFactory{value='");
      localStringBuilder.append(a);
      localStringBuilder.append('\'');
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
}
