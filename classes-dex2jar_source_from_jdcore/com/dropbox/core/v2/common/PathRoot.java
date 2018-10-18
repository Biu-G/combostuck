package com.dropbox.core.v2.common;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

public final class PathRoot
{
  public static final PathRoot HOME = new PathRoot().a(Tag.HOME);
  public static final PathRoot OTHER = new PathRoot().a(Tag.OTHER);
  private Tag a;
  private String b;
  private String c;
  
  private PathRoot() {}
  
  private PathRoot a(Tag paramTag)
  {
    PathRoot localPathRoot = new PathRoot();
    a = paramTag;
    return localPathRoot;
  }
  
  private PathRoot a(Tag paramTag, String paramString)
  {
    PathRoot localPathRoot = new PathRoot();
    a = paramTag;
    b = paramString;
    return localPathRoot;
  }
  
  private PathRoot b(Tag paramTag, String paramString)
  {
    PathRoot localPathRoot = new PathRoot();
    a = paramTag;
    c = paramString;
    return localPathRoot;
  }
  
  public static PathRoot namespaceId(String paramString)
  {
    if (paramString != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString)) {
        return new PathRoot().b(Tag.NAMESPACE_ID, paramString);
      }
      throw new IllegalArgumentException("String does not match pattern");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static PathRoot root(String paramString)
  {
    if (paramString != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString)) {
        return new PathRoot().a(Tag.ROOT, paramString);
      }
      throw new IllegalArgumentException("String does not match pattern");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof PathRoot))
    {
      paramObject = (PathRoot)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 4: 
        return true;
      case 3: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool2;
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      return true;
    }
    return false;
  }
  
  public String getNamespaceIdValue()
  {
    if (a == Tag.NAMESPACE_ID) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.NAMESPACE_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getRootValue()
  {
    if (a == Tag.ROOT) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ROOT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isHome()
  {
    return a == Tag.HOME;
  }
  
  public boolean isNamespaceId()
  {
    return a == Tag.NAMESPACE_ID;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isRoot()
  {
    return a == Tag.ROOT;
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
    extends UnionSerializer<PathRoot>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public PathRoot deserialize(JsonParser paramJsonParser)
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
        if ("home".equals(localObject))
        {
          localObject = PathRoot.HOME;
        }
        else if ("root".equals(localObject))
        {
          expectField("root", paramJsonParser);
          localObject = PathRoot.root((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("namespace_id".equals(localObject))
        {
          expectField("namespace_id", paramJsonParser);
          localObject = PathRoot.namespaceId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else
        {
          localObject = PathRoot.OTHER;
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
    
    public void serialize(PathRoot paramPathRoot, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PathRoot.1.a[paramPathRoot.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("namespace_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("namespace_id");
        StoneSerializers.string().serialize(PathRoot.b(paramPathRoot), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("root", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("root");
        StoneSerializers.string().serialize(PathRoot.a(paramPathRoot), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("home");
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
