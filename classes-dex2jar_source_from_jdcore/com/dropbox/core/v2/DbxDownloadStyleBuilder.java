package com.dropbox.core.v2;

import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.http.HttpRequestor.Header;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class DbxDownloadStyleBuilder<R>
{
  private Long a = null;
  private Long b = null;
  
  protected DbxDownloadStyleBuilder() {}
  
  public R download(OutputStream paramOutputStream)
    throws DbxException, IOException
  {
    return start().download(paramOutputStream);
  }
  
  protected List<HttpRequestor.Header> getHeaders()
  {
    if (a == null) {
      return Collections.emptyList();
    }
    ArrayList localArrayList = new ArrayList();
    String str = String.format("bytes=%d-", new Object[] { Long.valueOf(a.longValue()) });
    Object localObject = str;
    if (b != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(str);
      ((StringBuilder)localObject).append(Long.toString(a.longValue() + b.longValue() - 1L));
      localObject = ((StringBuilder)localObject).toString();
    }
    localArrayList.add(new HttpRequestor.Header("Range", (String)localObject));
    return localArrayList;
  }
  
  public DbxDownloadStyleBuilder<R> range(long paramLong)
  {
    if (paramLong >= 0L)
    {
      a = Long.valueOf(paramLong);
      b = null;
      return this;
    }
    throw new IllegalArgumentException("start must be non-negative");
  }
  
  public DbxDownloadStyleBuilder<R> range(long paramLong1, long paramLong2)
  {
    if (paramLong1 >= 0L)
    {
      if (paramLong2 >= 1L)
      {
        a = Long.valueOf(paramLong1);
        b = Long.valueOf(paramLong2);
        return this;
      }
      throw new IllegalArgumentException("length must be positive");
    }
    throw new IllegalArgumentException("start must be non-negative");
  }
  
  public abstract DbxDownloader<R> start()
    throws DbxException;
}
