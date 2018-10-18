package com.dropbox.core.v2.common;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class PathRootError
{
  public static final PathRootError NO_PERMISSION = new PathRootError().a(Tag.NO_PERMISSION);
  public static final PathRootError OTHER = new PathRootError().a(Tag.OTHER);
  private Tag a;
  private RootInfo b;
  
  private PathRootError() {}
  
  private PathRootError a(Tag paramTag)
  {
    PathRootError localPathRootError = new PathRootError();
    a = paramTag;
    return localPathRootError;
  }
  
  private PathRootError a(Tag paramTag, RootInfo paramRootInfo)
  {
    PathRootError localPathRootError = new PathRootError();
    a = paramTag;
    b = paramRootInfo;
    return localPathRootError;
  }
  
  public static PathRootError invalidRoot(RootInfo paramRootInfo)
  {
    if (paramRootInfo != null) {
      return new PathRootError().a(Tag.INVALID_ROOT, paramRootInfo);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof PathRootError))
    {
      paramObject = (PathRootError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public RootInfo getInvalidRootValue()
  {
    if (a == Tag.INVALID_ROOT) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INVALID_ROOT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isInvalidRoot()
  {
    return a == Tag.INVALID_ROOT;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends UnionSerializer<PathRootError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public PathRootError deserialize(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("invalid_root".equals(localObject))
        {
          expectField("invalid_root", paramJsonParser);
          localObject = PathRootError.invalidRoot((RootInfo)RootInfo.Serializer.INSTANCE.deserialize(paramJsonParser));
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = PathRootError.NO_PERMISSION;
        }
        else
        {
          localObject = PathRootError.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(PathRootError paramPathRootError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PathRootError.1.a[paramPathRootError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("no_permission");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("invalid_root", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("invalid_root");
      RootInfo.Serializer.INSTANCE.serialize(PathRootError.a(paramPathRootError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
