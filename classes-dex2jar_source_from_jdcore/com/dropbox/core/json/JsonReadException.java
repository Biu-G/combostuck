package com.dropbox.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.File;

public final class JsonReadException
  extends Exception
{
  public static final long serialVersionUID = 0L;
  private PathPart a;
  public final String error;
  public final JsonLocation location;
  
  public JsonReadException(String paramString, JsonLocation paramJsonLocation)
  {
    error = paramString;
    location = paramJsonLocation;
    a = null;
  }
  
  public JsonReadException(String paramString, JsonLocation paramJsonLocation, Throwable paramThrowable)
  {
    super(paramThrowable);
    error = paramString;
    location = paramJsonLocation;
    a = null;
  }
  
  public static JsonReadException fromJackson(JsonProcessingException paramJsonProcessingException)
  {
    String str2 = paramJsonProcessingException.getMessage();
    int i = str2.lastIndexOf(" at [Source");
    String str1 = str2;
    if (i >= 0) {
      str1 = str2.substring(0, i);
    }
    return new JsonReadException(str1, paramJsonProcessingException.getLocation());
  }
  
  public static void toStringLocation(StringBuilder paramStringBuilder, JsonLocation paramJsonLocation)
  {
    Object localObject = paramJsonLocation.getSourceRef();
    if ((localObject instanceof File))
    {
      paramStringBuilder.append(((File)localObject).getPath());
      paramStringBuilder.append(": ");
    }
    paramStringBuilder.append(paramJsonLocation.getLineNr());
    paramStringBuilder.append(".");
    paramStringBuilder.append(paramJsonLocation.getColumnNr());
  }
  
  public JsonReadException addArrayContext(int paramInt)
  {
    a = new PathPart(Integer.toString(paramInt), a);
    return this;
  }
  
  public JsonReadException addFieldContext(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('"');
    localStringBuilder.append(paramString);
    localStringBuilder.append('"');
    a = new PathPart(localStringBuilder.toString(), a);
    return this;
  }
  
  public String getMessage()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    toStringLocation(localStringBuilder, location);
    localStringBuilder.append(": ");
    if (a != null)
    {
      PathPart localPathPart = a;
      localStringBuilder.append(description);
      while (next != null)
      {
        localPathPart = next;
        localStringBuilder.append(".");
        localStringBuilder.append(description);
      }
      localStringBuilder.append(": ");
    }
    localStringBuilder.append(error);
    return localStringBuilder.toString();
  }
  
  public static final class PathPart
  {
    public final String description;
    public final PathPart next;
    
    public PathPart(String paramString, PathPart paramPathPart)
    {
      description = paramString;
      next = paramPathPart;
    }
  }
}
