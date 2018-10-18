package com.dropbox.core;

import com.dropbox.core.v2.common.PathRootError;

public class PathRootErrorException
  extends DbxException
{
  private static final long serialVersionUID = 0L;
  private final PathRootError a;
  
  public PathRootErrorException(String paramString1, String paramString2, PathRootError paramPathRootError)
  {
    super(paramString1, paramString2);
    a = paramPathRootError;
  }
  
  public PathRootError getPathRootError()
  {
    return a;
  }
}
