package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public final class DbxAuthFinish
{
  public static final JsonReader<String> AccessTokenReader = new JsonReader()
  {
    public String a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      try
      {
        String str1 = paramAnonymousJsonParser.getText();
        String str2 = DbxAppInfo.getTokenPartError(str1);
        if (str2 == null)
        {
          paramAnonymousJsonParser.nextToken();
          return str1;
        }
        throw new JsonReadException(str2, paramAnonymousJsonParser.getTokenLocation());
      }
      catch (JsonParseException paramAnonymousJsonParser)
      {
        throw JsonReadException.fromJackson(paramAnonymousJsonParser);
      }
    }
  };
  public static final JsonReader<String> BearerTokenTypeReader;
  public static final JsonReader<DbxAuthFinish> Reader = new JsonReader()
  {
    public DbxAuthFinish a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
      Object localObject5 = null;
      Object localObject4 = null;
      Object localObject1 = localObject4;
      Object localObject2 = localObject1;
      Object localObject3 = localObject2;
      while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramAnonymousJsonParser.getCurrentName();
        JsonReader.nextToken(paramAnonymousJsonParser);
        try
        {
          if (str.equals("token_type")) {
            localObject5 = (String)DbxAuthFinish.BearerTokenTypeReader.readField(paramAnonymousJsonParser, str, localObject5);
          } else if (str.equals("access_token")) {
            localObject4 = (String)DbxAuthFinish.AccessTokenReader.readField(paramAnonymousJsonParser, str, localObject4);
          } else if (str.equals("uid")) {
            localObject1 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject1);
          } else if (str.equals("account_id")) {
            localObject2 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject2);
          } else if (str.equals("state")) {
            localObject3 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject3);
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
      if (localObject5 != null)
      {
        if (localObject4 != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null) {
              return new DbxAuthFinish((String)localObject4, (String)localObject1, (String)localObject2, (String)localObject3);
            }
            throw new JsonReadException("missing field \"account_id\"", localJsonLocation);
          }
          throw new JsonReadException("missing field \"uid\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"access_token\"", localJsonLocation);
      }
      throw new JsonReadException("missing field \"token_type\"", localJsonLocation);
    }
  };
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  
  static
  {
    BearerTokenTypeReader = new JsonReader()
    {
      public String a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        try
        {
          String str = paramAnonymousJsonParser.getText();
          if ((!str.equals("Bearer")) && (!str.equals("bearer")))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("expecting \"Bearer\": got ");
            localStringBuilder.append(StringUtil.jq(str));
            throw new JsonReadException(localStringBuilder.toString(), paramAnonymousJsonParser.getTokenLocation());
          }
          paramAnonymousJsonParser.nextToken();
          return str;
        }
        catch (JsonParseException paramAnonymousJsonParser)
        {
          throw JsonReadException.fromJackson(paramAnonymousJsonParser);
        }
      }
    };
  }
  
  public DbxAuthFinish(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
  }
  
  DbxAuthFinish a(String paramString)
  {
    if (d == null) {
      return new DbxAuthFinish(a, b, c, paramString);
    }
    throw new IllegalStateException("Already have URL state.");
  }
  
  public String getAccessToken()
  {
    return a;
  }
  
  public String getAccountId()
  {
    return c;
  }
  
  public String getUrlState()
  {
    return d;
  }
  
  public String getUserId()
  {
    return b;
  }
}
