package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public final class DbxAuthInfo
{
  public static final JsonReader<DbxAuthInfo> Reader = new JsonReader()
  {
    public final DbxAuthInfo a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
      Object localObject2 = null;
      Object localObject1 = null;
      while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramAnonymousJsonParser.getCurrentName();
        paramAnonymousJsonParser.nextToken();
        try
        {
          if (str.equals("host")) {
            localObject1 = (DbxHost)DbxHost.Reader.readField(paramAnonymousJsonParser, str, localObject1);
          } else if (str.equals("access_token")) {
            localObject2 = (String)StringReader.readField(paramAnonymousJsonParser, str, localObject2);
          } else {
            JsonReader.skipValue(paramAnonymousJsonParser);
          }
        }
        catch (JsonReadException paramAnonymousJsonParser)
        {
          throw paramAnonymousJsonParser.addFieldContext(str);
        }
      }
      JsonReader.expectObjectEnd(paramAnonymousJsonParser);
      if (localObject2 != null)
      {
        paramAnonymousJsonParser = (JsonParser)localObject1;
        if (localObject1 == null) {
          paramAnonymousJsonParser = DbxHost.DEFAULT;
        }
        return new DbxAuthInfo((String)localObject2, paramAnonymousJsonParser);
      }
      throw new JsonReadException("missing field \"access_token\"", localJsonLocation);
    }
  };
  public static final JsonWriter<DbxAuthInfo> Writer = new JsonWriter()
  {
    public void a(DbxAuthInfo paramAnonymousDbxAuthInfo, JsonGenerator paramAnonymousJsonGenerator)
      throws IOException
    {
      paramAnonymousJsonGenerator.writeStartObject();
      paramAnonymousJsonGenerator.writeStringField("access_token", DbxAuthInfo.a(paramAnonymousDbxAuthInfo));
      if (!DbxAuthInfo.b(paramAnonymousDbxAuthInfo).equals(DbxHost.DEFAULT))
      {
        paramAnonymousJsonGenerator.writeFieldName("host");
        DbxHost.Writer.write(DbxAuthInfo.b(paramAnonymousDbxAuthInfo), paramAnonymousJsonGenerator);
      }
      paramAnonymousJsonGenerator.writeEndObject();
    }
  };
  private final String a;
  private final DbxHost b;
  
  public DbxAuthInfo(String paramString, DbxHost paramDbxHost)
  {
    if (paramString != null)
    {
      if (paramDbxHost != null)
      {
        a = paramString;
        b = paramDbxHost;
        return;
      }
      throw new IllegalArgumentException("'host' can't be null");
    }
    throw new IllegalArgumentException("'accessToken' can't be null");
  }
  
  public String getAccessToken()
  {
    return a;
  }
  
  public DbxHost getHost()
  {
    return b;
  }
}
