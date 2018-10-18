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
import java.util.Date;

public class PathLinkMetadata
  extends LinkMetadata
{
  protected final String path;
  
  public PathLinkMetadata(String paramString1, Visibility paramVisibility, String paramString2)
  {
    this(paramString1, paramVisibility, paramString2, null);
  }
  
  public PathLinkMetadata(String paramString1, Visibility paramVisibility, String paramString2, Date paramDate)
  {
    super(paramString1, paramVisibility, paramDate);
    if (paramString2 != null)
    {
      path = paramString2;
      return;
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
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
      paramObject = (PathLinkMetadata)paramObject;
      if (((url == url) || (url.equals(url))) && ((visibility == visibility) || (visibility.equals(visibility))) && ((path == path) || (path.equals(path))))
      {
        if (expires == expires) {
          break label145;
        }
        if ((expires != null) && (expires.equals(expires))) {
          return true;
        }
      }
      bool = false;
      label145:
      return bool;
    }
    return false;
  }
  
  public Date getExpires()
  {
    return expires;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public Visibility getVisibility()
  {
    return visibility;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { path });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<PathLinkMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public PathLinkMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"path".equals(localObject2)) {}
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        Visibility localVisibility = null;
        localObject1 = localVisibility;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("url".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("visibility".equals(str2)) {
            localVisibility = Visibility.a.a.a(paramJsonParser);
          } else if ("path".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("expires".equals(str2)) {
            localObject2 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localVisibility != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new PathLinkMetadata(str1, localVisibility, (String)localObject1, (Date)localObject2);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"visibility\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(PathLinkMetadata paramPathLinkMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("path", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(url, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("visibility");
      Visibility.a.a.a(visibility, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(path, paramJsonGenerator);
      if (expires != null)
      {
        paramJsonGenerator.writeFieldName("expires");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(expires, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
