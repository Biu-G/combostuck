package com.bumptech.glide.load.model.stream;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class BaseGlideUrlLoader<Model>
  implements ModelLoader<Model, InputStream>
{
  private final ModelLoader<GlideUrl, InputStream> a;
  @Nullable
  private final ModelCache<Model, GlideUrl> b;
  
  protected BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> paramModelLoader)
  {
    this(paramModelLoader, null);
  }
  
  protected BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> paramModelLoader, @Nullable ModelCache<Model, GlideUrl> paramModelCache)
  {
    a = paramModelLoader;
    b = paramModelCache;
  }
  
  private static List<Key> a(Collection<String> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(new GlideUrl((String)paramCollection.next()));
    }
    return localArrayList;
  }
  
  @Nullable
  public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull Model paramModel, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    Object localObject1;
    if (b != null) {
      localObject1 = (GlideUrl)b.get(paramModel, paramInt1, paramInt2);
    } else {
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject1 = getUrl(paramModel, paramInt1, paramInt2, paramOptions);
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        return null;
      }
      localObject2 = new GlideUrl((String)localObject1, getHeaders(paramModel, paramInt1, paramInt2, paramOptions));
      if (b != null) {
        b.put(paramModel, paramInt1, paramInt2, localObject2);
      }
    }
    paramModel = getAlternateUrls(paramModel, paramInt1, paramInt2, paramOptions);
    paramOptions = a.buildLoadData(localObject2, paramInt1, paramInt2, paramOptions);
    if (paramOptions != null)
    {
      if (paramModel.isEmpty()) {
        return paramOptions;
      }
      return new ModelLoader.LoadData(sourceKey, a(paramModel), fetcher);
    }
    return paramOptions;
  }
  
  protected List<String> getAlternateUrls(Model paramModel, int paramInt1, int paramInt2, Options paramOptions)
  {
    return Collections.emptyList();
  }
  
  @Nullable
  protected Headers getHeaders(Model paramModel, int paramInt1, int paramInt2, Options paramOptions)
  {
    return Headers.DEFAULT;
  }
  
  protected abstract String getUrl(Model paramModel, int paramInt1, int paramInt2, Options paramOptions);
}
