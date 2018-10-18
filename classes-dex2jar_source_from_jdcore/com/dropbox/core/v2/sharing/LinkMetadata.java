package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

public class LinkMetadata
{
  protected final Date expires;
  protected final String url;
  protected final Visibility visibility;
  
  public LinkMetadata(String paramString, Visibility paramVisibility)
  {
    this(paramString, paramVisibility, null);
  }
  
  public LinkMetadata(String paramString, Visibility paramVisibility, Date paramDate)
  {
    if (paramString != null)
    {
      url = paramString;
      if (paramVisibility != null)
      {
        visibility = paramVisibility;
        expires = LangUtil.truncateMillis(paramDate);
        return;
      }
      throw new IllegalArgumentException("Required value for 'visibility' is null");
    }
    throw new IllegalArgumentException("Required value for 'url' is null");
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
      paramObject = (LinkMetadata)paramObject;
      if (((url == url) || (url.equals(url))) && ((visibility == visibility) || (visibility.equals(visibility))))
      {
        if (expires == expires) {
          break label120;
        }
        if ((expires != null) && (expires.equals(expires))) {
          return true;
        }
      }
      bool = false;
      label120:
      return bool;
    }
    return false;
  }
  
  public Date getExpires()
  {
    return expires;
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
    return Arrays.hashCode(new Object[] { url, visibility, expires });
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
    extends StructSerializer<LinkMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public LinkMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"".equals(localObject2)) {}
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
          } else if ("visibility".equals(str2)) {
            localObject2 = Visibility.a.a.a(paramJsonParser);
          } else if ("expires".equals(str2)) {
            localObject1 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null) {
            localObject1 = new LinkMetadata(str1, (Visibility)localObject2, (Date)localObject1);
          } else {
            throw new JsonParseException(paramJsonParser, "Required field \"visibility\" missing.");
          }
        }
        else {
          throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
        }
      }
      else if ("".equals(localObject1))
      {
        localObject1 = a.a(paramJsonParser, true);
      }
      else if ("path".equals(localObject1))
      {
        localObject1 = PathLinkMetadata.a.a.a(paramJsonParser, true);
      }
      else
      {
        if (!"collection".equals(localObject1)) {
          break label262;
        }
        localObject1 = CollectionLinkMetadata.a.a.a(paramJsonParser, true);
      }
      if (!paramBoolean) {
        expectEndObject(paramJsonParser);
      }
      return localObject1;
      label262:
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(LinkMetadata paramLinkMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if ((paramLinkMetadata instanceof PathLinkMetadata))
      {
        PathLinkMetadata.a.a.a((PathLinkMetadata)paramLinkMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if ((paramLinkMetadata instanceof CollectionLinkMetadata))
      {
        CollectionLinkMetadata.a.a.a((CollectionLinkMetadata)paramLinkMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(url, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("visibility");
      Visibility.a.a.a(visibility, paramJsonGenerator);
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
