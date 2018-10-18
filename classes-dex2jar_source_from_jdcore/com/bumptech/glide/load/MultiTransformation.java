package com.bumptech.glide.load;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class MultiTransformation<T>
  implements Transformation<T>
{
  private final Collection<? extends Transformation<T>> a;
  
  public MultiTransformation(@NonNull Collection<? extends Transformation<T>> paramCollection)
  {
    if (!paramCollection.isEmpty())
    {
      a = paramCollection;
      return;
    }
    throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
  }
  
  @SafeVarargs
  public MultiTransformation(@NonNull Transformation<T>... paramVarArgs)
  {
    if (paramVarArgs.length != 0)
    {
      a = Arrays.asList(paramVarArgs);
      return;
    }
    throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof MultiTransformation))
    {
      paramObject = (MultiTransformation)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  @NonNull
  public Resource<T> transform(@NonNull Context paramContext, @NonNull Resource<T> paramResource, int paramInt1, int paramInt2)
  {
    Iterator localIterator = a.iterator();
    Resource localResource;
    for (Object localObject = paramResource; localIterator.hasNext(); localObject = localResource)
    {
      localResource = ((Transformation)localIterator.next()).transform(paramContext, (Resource)localObject, paramInt1, paramInt2);
      if ((localObject != null) && (!localObject.equals(paramResource)) && (!localObject.equals(localResource))) {
        ((Resource)localObject).recycle();
      }
    }
    return localObject;
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((Transformation)localIterator.next()).updateDiskCacheKey(paramMessageDigest);
    }
  }
}
