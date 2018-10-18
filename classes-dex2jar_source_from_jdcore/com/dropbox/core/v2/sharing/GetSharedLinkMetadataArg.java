package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

class GetSharedLinkMetadataArg
{
  protected final String a;
  protected final String b;
  protected final String c;
  
  public GetSharedLinkMetadataArg(String paramString)
  {
    this(paramString, null, null);
  }
  
  public GetSharedLinkMetadataArg(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 != null)
    {
      a = paramString1;
      if ((paramString2 != null) && (!Pattern.matches("/(.|[\\r\\n])*", paramString2))) {
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      b = paramString2;
      c = paramString3;
      return;
    }
    throw new IllegalArgumentException("Required value for 'url' is null");
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
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
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (GetSharedLinkMetadataArg)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))))
      {
        if (c == c) {
          break label127;
        }
        if ((c != null) && (c.equals(c))) {
          return true;
        }
      }
      bool = false;
      label127:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected String linkPassword;
    protected String path;
    protected final String url;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        url = paramString;
        path = null;
        linkPassword = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'url' is null");
    }
    
    public GetSharedLinkMetadataArg build()
    {
      return new GetSharedLinkMetadataArg(url, path, linkPassword);
    }
    
    public Builder withLinkPassword(String paramString)
    {
      linkPassword = paramString;
      return this;
    }
    
    public Builder withPath(String paramString)
    {
      if ((paramString != null) && (!Pattern.matches("/(.|[\\r\\n])*", paramString))) {
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      path = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<GetSharedLinkMetadataArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetSharedLinkMetadataArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject1 = readTag(paramJsonParser);
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("url".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("path".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("link_password".equals(str2)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new GetSharedLinkMetadataArg(str1, (String)localObject2, (String)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetSharedLinkMetadataArg paramGetSharedLinkMetadataArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("path");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(b, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("link_password");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(c, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
