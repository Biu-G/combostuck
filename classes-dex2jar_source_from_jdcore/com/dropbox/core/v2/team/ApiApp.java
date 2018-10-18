package com.dropbox.core.v2.team;

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

public class ApiApp
{
  protected final String appId;
  protected final String appName;
  protected final boolean isAppFolder;
  protected final Date linked;
  protected final String publisher;
  protected final String publisherUrl;
  
  public ApiApp(String paramString1, String paramString2, boolean paramBoolean)
  {
    this(paramString1, paramString2, paramBoolean, null, null, null);
  }
  
  public ApiApp(String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4, Date paramDate)
  {
    if (paramString1 != null)
    {
      appId = paramString1;
      if (paramString2 != null)
      {
        appName = paramString2;
        publisher = paramString3;
        publisherUrl = paramString4;
        linked = LangUtil.truncateMillis(paramDate);
        isAppFolder = paramBoolean;
        return;
      }
      throw new IllegalArgumentException("Required value for 'appName' is null");
    }
    throw new IllegalArgumentException("Required value for 'appId' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, boolean paramBoolean)
  {
    return new Builder(paramString1, paramString2, paramBoolean);
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
      paramObject = (ApiApp)paramObject;
      if (((appId == appId) || (appId.equals(appId))) && ((appName == appName) || (appName.equals(appName))) && (isAppFolder == isAppFolder) && ((publisher == publisher) || ((publisher != null) && (publisher.equals(publisher)))) && ((publisherUrl == publisherUrl) || ((publisherUrl != null) && (publisherUrl.equals(publisherUrl)))))
      {
        if (linked == linked) {
          break label195;
        }
        if ((linked != null) && (linked.equals(linked))) {
          return true;
        }
      }
      bool = false;
      label195:
      return bool;
    }
    return false;
  }
  
  public String getAppId()
  {
    return appId;
  }
  
  public String getAppName()
  {
    return appName;
  }
  
  public boolean getIsAppFolder()
  {
    return isAppFolder;
  }
  
  public Date getLinked()
  {
    return linked;
  }
  
  public String getPublisher()
  {
    return publisher;
  }
  
  public String getPublisherUrl()
  {
    return publisherUrl;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { appId, appName, publisher, publisherUrl, linked, Boolean.valueOf(isAppFolder) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected final String appId;
    protected final String appName;
    protected final boolean isAppFolder;
    protected Date linked;
    protected String publisher;
    protected String publisherUrl;
    
    protected Builder(String paramString1, String paramString2, boolean paramBoolean)
    {
      if (paramString1 != null)
      {
        appId = paramString1;
        if (paramString2 != null)
        {
          appName = paramString2;
          isAppFolder = paramBoolean;
          publisher = null;
          publisherUrl = null;
          linked = null;
          return;
        }
        throw new IllegalArgumentException("Required value for 'appName' is null");
      }
      throw new IllegalArgumentException("Required value for 'appId' is null");
    }
    
    public ApiApp build()
    {
      return new ApiApp(appId, appName, isAppFolder, publisher, publisherUrl, linked);
    }
    
    public Builder withLinked(Date paramDate)
    {
      linked = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withPublisher(String paramString)
    {
      publisher = paramString;
      return this;
    }
    
    public Builder withPublisherUrl(String paramString)
    {
      publisherUrl = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ApiApp>
  {
    public static final a a = new a();
    
    a() {}
    
    public ApiApp a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean = null;
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
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("app_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("app_name".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("is_app_folder".equals(str2)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("publisher".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("publisher_url".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("linked".equals(str2)) {
            localObject4 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localBoolean != null)
            {
              localObject1 = new ApiApp(str1, (String)localObject1, localBoolean.booleanValue(), (String)localObject2, (String)localObject3, (Date)localObject4);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"is_app_folder\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"app_name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"app_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ApiApp paramApiApp, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("app_id");
      StoneSerializers.string().serialize(appId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("app_name");
      StoneSerializers.string().serialize(appName, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_app_folder");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isAppFolder), paramJsonGenerator);
      if (publisher != null)
      {
        paramJsonGenerator.writeFieldName("publisher");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(publisher, paramJsonGenerator);
      }
      if (publisherUrl != null)
      {
        paramJsonGenerator.writeFieldName("publisher_url");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(publisherUrl, paramJsonGenerator);
      }
      if (linked != null)
      {
        paramJsonGenerator.writeFieldName("linked");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(linked, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
