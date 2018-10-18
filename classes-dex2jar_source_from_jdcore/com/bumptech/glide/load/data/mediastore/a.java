package com.bumptech.glide.load.data.mediastore;

import java.io.File;

class a
{
  a() {}
  
  public File a(String paramString)
  {
    return new File(paramString);
  }
  
  public boolean a(File paramFile)
  {
    return paramFile.exists();
  }
  
  public long b(File paramFile)
  {
    return paramFile.length();
  }
}
