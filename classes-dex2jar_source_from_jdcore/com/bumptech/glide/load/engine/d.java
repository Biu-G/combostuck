package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.DiskCache.Writer;
import java.io.File;

class d<DataType>
  implements DiskCache.Writer
{
  private final Encoder<DataType> a;
  private final DataType b;
  private final Options c;
  
  d(Encoder<DataType> paramEncoder, DataType paramDataType, Options paramOptions)
  {
    a = paramEncoder;
    b = paramDataType;
    c = paramOptions;
  }
  
  public boolean write(@NonNull File paramFile)
  {
    return a.encode(b, paramFile, c);
  }
}
