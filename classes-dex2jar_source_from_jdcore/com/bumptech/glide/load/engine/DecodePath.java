package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools.Pool;
import android.util.Log;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DecodePath<DataType, ResourceType, Transcode>
{
  private final Class<DataType> a;
  private final List<? extends ResourceDecoder<DataType, ResourceType>> b;
  private final ResourceTranscoder<ResourceType, Transcode> c;
  private final Pools.Pool<List<Throwable>> d;
  private final String e;
  
  public DecodePath(Class<DataType> paramClass, Class<ResourceType> paramClass1, Class<Transcode> paramClass2, List<? extends ResourceDecoder<DataType, ResourceType>> paramList, ResourceTranscoder<ResourceType, Transcode> paramResourceTranscoder, Pools.Pool<List<Throwable>> paramPool)
  {
    a = paramClass;
    b = paramList;
    c = paramResourceTranscoder;
    d = paramPool;
    paramList = new StringBuilder();
    paramList.append("Failed DecodePath{");
    paramList.append(paramClass.getSimpleName());
    paramList.append("->");
    paramList.append(paramClass1.getSimpleName());
    paramList.append("->");
    paramList.append(paramClass2.getSimpleName());
    paramList.append("}");
    e = paramList.toString();
  }
  
  @NonNull
  private Resource<ResourceType> a(DataRewinder<DataType> paramDataRewinder, int paramInt1, int paramInt2, @NonNull Options paramOptions)
    throws GlideException
  {
    List localList = (List)Preconditions.checkNotNull(d.acquire());
    try
    {
      paramDataRewinder = a(paramDataRewinder, paramInt1, paramInt2, paramOptions, localList);
      return paramDataRewinder;
    }
    finally
    {
      d.release(localList);
    }
  }
  
  @NonNull
  private Resource<ResourceType> a(DataRewinder<DataType> paramDataRewinder, int paramInt1, int paramInt2, @NonNull Options paramOptions, List<Throwable> paramList)
    throws GlideException
  {
    int j = b.size();
    Object localObject1 = null;
    int i = 0;
    Object localObject3;
    for (;;)
    {
      Object localObject2 = localObject1;
      if (i >= j) {
        break;
      }
      ResourceDecoder localResourceDecoder = (ResourceDecoder)b.get(i);
      localObject2 = localObject1;
      try
      {
        if (localResourceDecoder.handles(paramDataRewinder.rewindAndGet(), paramOptions)) {
          localObject2 = localResourceDecoder.decode(paramDataRewinder.rewindAndGet(), paramInt1, paramInt2, paramOptions);
        }
      }
      catch (IOException|RuntimeException|OutOfMemoryError localIOException)
      {
        if (Log.isLoggable("DecodePath", 2))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Failed to decode data for ");
          localStringBuilder.append(localResourceDecoder);
          Log.v("DecodePath", localStringBuilder.toString(), localIOException);
        }
        paramList.add(localIOException);
        localObject3 = localObject1;
      }
      if (localObject3 != null) {
        break;
      }
      i += 1;
      localObject1 = localObject3;
    }
    if (localObject3 != null) {
      return localObject3;
    }
    throw new GlideException(e, new ArrayList(paramList));
  }
  
  public Resource<Transcode> decode(DataRewinder<DataType> paramDataRewinder, int paramInt1, int paramInt2, @NonNull Options paramOptions, a<ResourceType> paramA)
    throws GlideException
  {
    paramDataRewinder = paramA.a(a(paramDataRewinder, paramInt1, paramInt2, paramOptions));
    return c.transcode(paramDataRewinder, paramOptions);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DecodePath{ dataClass=");
    localStringBuilder.append(a);
    localStringBuilder.append(", decoders=");
    localStringBuilder.append(b);
    localStringBuilder.append(", transcoder=");
    localStringBuilder.append(c);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  static abstract interface a<ResourceType>
  {
    @NonNull
    public abstract Resource<ResourceType> a(@NonNull Resource<ResourceType> paramResource);
  }
}
