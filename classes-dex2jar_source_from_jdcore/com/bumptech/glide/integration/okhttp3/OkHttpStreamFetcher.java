package com.bumptech.glide.integration.okhttp3;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import okhttp3.Call;
import okhttp3.Call.Factory;
import okhttp3.Callback;
import okhttp3.Request.Builder;
import okhttp3.Response;
import okhttp3.ResponseBody;

public class OkHttpStreamFetcher
  implements DataFetcher<InputStream>, Callback
{
  private final Call.Factory a;
  private final GlideUrl b;
  private InputStream c;
  private ResponseBody d;
  private DataFetcher.DataCallback<? super InputStream> e;
  private volatile Call f;
  
  public OkHttpStreamFetcher(Call.Factory paramFactory, GlideUrl paramGlideUrl)
  {
    a = paramFactory;
    b = paramGlideUrl;
  }
  
  public void cancel()
  {
    Call localCall = f;
    if (localCall != null) {
      localCall.cancel();
    }
  }
  
  public void cleanup()
  {
    try
    {
      if (c != null) {
        c.close();
      }
      if (d != null) {
        d.close();
      }
      e = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  @NonNull
  public Class<InputStream> getDataClass()
  {
    return InputStream.class;
  }
  
  @NonNull
  public DataSource getDataSource()
  {
    return DataSource.REMOTE;
  }
  
  public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super InputStream> paramDataCallback)
  {
    paramPriority = new Request.Builder().url(b.toStringUrl());
    Iterator localIterator = b.getHeaders().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramPriority.addHeader((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    paramPriority = paramPriority.build();
    e = paramDataCallback;
    f = a.newCall(paramPriority);
    f.enqueue(this);
  }
  
  public void onFailure(@NonNull Call paramCall, @NonNull IOException paramIOException)
  {
    if (Log.isLoggable("OkHttpFetcher", 3)) {
      Log.d("OkHttpFetcher", "OkHttp failed to obtain result", paramIOException);
    }
    e.onLoadFailed(paramIOException);
  }
  
  public void onResponse(@NonNull Call paramCall, @NonNull Response paramResponse)
  {
    d = paramResponse.body();
    if (paramResponse.isSuccessful())
    {
      long l = ((ResponseBody)Preconditions.checkNotNull(d)).contentLength();
      c = ContentLengthInputStream.obtain(d.byteStream(), l);
      e.onDataReady(c);
      return;
    }
    e.onLoadFailed(new HttpException(paramResponse.message(), paramResponse.code()));
  }
}
