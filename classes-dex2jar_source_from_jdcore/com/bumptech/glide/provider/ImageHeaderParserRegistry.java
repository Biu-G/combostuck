package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

public final class ImageHeaderParserRegistry
{
  private final List<ImageHeaderParser> a = new ArrayList();
  
  public ImageHeaderParserRegistry() {}
  
  public void add(@NonNull ImageHeaderParser paramImageHeaderParser)
  {
    try
    {
      a.add(paramImageHeaderParser);
      return;
    }
    finally
    {
      paramImageHeaderParser = finally;
      throw paramImageHeaderParser;
    }
  }
  
  @NonNull
  public List<ImageHeaderParser> getParsers()
  {
    try
    {
      List localList = a;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}
