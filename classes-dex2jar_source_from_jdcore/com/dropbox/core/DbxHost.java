package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonWriter;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class DbxHost
{
  public static final DbxHost DEFAULT = new DbxHost("api.dropboxapi.com", "content.dropboxapi.com", "www.dropbox.com", "notify.dropboxapi.com");
  public static final JsonReader<DbxHost> Reader = new JsonReader()
  {
    public DbxHost a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      Object localObject1 = paramAnonymousJsonParser.getCurrentToken();
      if (localObject1 == JsonToken.VALUE_STRING)
      {
        localObject1 = paramAnonymousJsonParser.getText();
        JsonReader.nextToken(paramAnonymousJsonParser);
        return DbxHost.a((String)localObject1);
      }
      if (localObject1 == JsonToken.START_OBJECT)
      {
        JsonLocation localJsonLocation = paramAnonymousJsonParser.getTokenLocation();
        nextToken(paramAnonymousJsonParser);
        Object localObject4 = null;
        Object localObject3 = null;
        localObject1 = localObject3;
        Object localObject2 = localObject1;
        while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramAnonymousJsonParser.getCurrentName();
          paramAnonymousJsonParser.nextToken();
          try
          {
            if (str.equals("api")) {
              localObject4 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject4);
            } else if (str.equals("content")) {
              localObject3 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject3);
            } else if (str.equals("web")) {
              localObject1 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject1);
            } else if (str.equals("notify")) {
              localObject2 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject2);
            } else {
              throw new JsonReadException("unknown field", paramAnonymousJsonParser.getCurrentLocation());
            }
          }
          catch (JsonReadException paramAnonymousJsonParser)
          {
            throw paramAnonymousJsonParser.addFieldContext(str);
          }
        }
        JsonReader.expectObjectEnd(paramAnonymousJsonParser);
        if (localObject4 != null)
        {
          if (localObject3 != null)
          {
            if (localObject1 != null)
            {
              if (localObject2 != null) {
                return new DbxHost((String)localObject4, (String)localObject3, (String)localObject1, (String)localObject2);
              }
              throw new JsonReadException("missing field \"notify\"", localJsonLocation);
            }
            throw new JsonReadException("missing field \"web\"", localJsonLocation);
          }
          throw new JsonReadException("missing field \"content\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"api\"", localJsonLocation);
      }
      throw new JsonReadException("expecting a string or an object", paramAnonymousJsonParser.getTokenLocation());
    }
  };
  public static final JsonWriter<DbxHost> Writer = new JsonWriter()
  {
    public void a(DbxHost paramAnonymousDbxHost, JsonGenerator paramAnonymousJsonGenerator)
      throws IOException
    {
      String str = DbxHost.a(paramAnonymousDbxHost);
      if (str != null)
      {
        paramAnonymousJsonGenerator.writeString(str);
        return;
      }
      paramAnonymousJsonGenerator.writeStartObject();
      paramAnonymousJsonGenerator.writeStringField("api", DbxHost.b(paramAnonymousDbxHost));
      paramAnonymousJsonGenerator.writeStringField("content", DbxHost.c(paramAnonymousDbxHost));
      paramAnonymousJsonGenerator.writeStringField("web", DbxHost.d(paramAnonymousDbxHost));
      paramAnonymousJsonGenerator.writeStringField("notify", DbxHost.e(paramAnonymousDbxHost));
      paramAnonymousJsonGenerator.writeEndObject();
    }
  };
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  
  public DbxHost(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
  }
  
  private String a()
  {
    if ((c.startsWith("meta-")) && (a.startsWith("api-")) && (b.startsWith("api-content-")) && (d.startsWith("api-notify-")))
    {
      String str1 = c.substring("meta-".length());
      String str2 = a.substring("api-".length());
      String str3 = b.substring("api-content-".length());
      String str4 = d.substring("api-notify-".length());
      if ((str1.equals(str2)) && (str1.equals(str3)) && (str1.equals(str4))) {
        return str1;
      }
    }
    return null;
  }
  
  private static DbxHost b(String paramString)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("api-");
    ((StringBuilder)localObject1).append(paramString);
    localObject1 = ((StringBuilder)localObject1).toString();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("api-content-");
    ((StringBuilder)localObject2).append(paramString);
    localObject2 = ((StringBuilder)localObject2).toString();
    Object localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append("meta-");
    ((StringBuilder)localObject3).append(paramString);
    localObject3 = ((StringBuilder)localObject3).toString();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("api-notify-");
    localStringBuilder.append(paramString);
    return new DbxHost((String)localObject1, (String)localObject2, (String)localObject3, localStringBuilder.toString());
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof DbxHost))
    {
      paramObject = (DbxHost)paramObject;
      return (a.equals(a)) && (b.equals(b)) && (c.equals(c)) && (d.equals(d));
    }
    return false;
  }
  
  public String getApi()
  {
    return a;
  }
  
  public String getContent()
  {
    return b;
  }
  
  public String getNotify()
  {
    return d;
  }
  
  public String getWeb()
  {
    return c;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new String[] { a, b, c, d });
  }
}
