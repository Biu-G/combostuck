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

class CreateSharedLinkArg
{
  protected final String a;
  protected final boolean b;
  protected final PendingUploadMode c;
  
  public CreateSharedLinkArg(String paramString)
  {
    this(paramString, false, null);
  }
  
  public CreateSharedLinkArg(String paramString, boolean paramBoolean, PendingUploadMode paramPendingUploadMode)
  {
    if (paramString != null)
    {
      a = paramString;
      b = paramBoolean;
      c = paramPendingUploadMode;
      return;
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
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
      paramObject = (CreateSharedLinkArg)paramObject;
      if (((a == a) || (a.equals(a))) && (b == b))
      {
        if (c == c) {
          break label106;
        }
        if ((c != null) && (c.equals(c))) {
          return true;
        }
      }
      bool = false;
      label106:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Boolean.valueOf(b), c });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected final String path;
    protected PendingUploadMode pendingUpload;
    protected boolean shortUrl;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        path = paramString;
        shortUrl = false;
        pendingUpload = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public CreateSharedLinkArg build()
    {
      return new CreateSharedLinkArg(path, shortUrl, pendingUpload);
    }
    
    public Builder withPendingUpload(PendingUploadMode paramPendingUploadMode)
    {
      pendingUpload = paramPendingUploadMode;
      return this;
    }
    
    public Builder withShortUrl(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        shortUrl = paramBoolean.booleanValue();
        return this;
      }
      shortUrl = false;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<CreateSharedLinkArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateSharedLinkArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = Boolean.valueOf(false);
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("short_url".equals(str2)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("pending_upload".equals(str2)) {
            localObject1 = (PendingUploadMode)StoneSerializers.nullable(PendingUploadMode.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new CreateSharedLinkArg(str1, ((Boolean)localObject2).booleanValue(), (PendingUploadMode)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(CreateSharedLinkArg paramCreateSharedLinkArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("short_url");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("pending_upload");
        StoneSerializers.nullable(PendingUploadMode.a.a).serialize(c, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
