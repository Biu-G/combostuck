package com.dropbox.core;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public class DbxAppInfo
  extends Dumpable
{
  public static final JsonReader<String> KeyReader = new JsonReader()
  {
    public String a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      try
      {
        Object localObject = paramAnonymousJsonParser.getText();
        String str = DbxAppInfo.getKeyFormatError((String)localObject);
        if (str == null)
        {
          paramAnonymousJsonParser.nextToken();
          return localObject;
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("bad format for app key: ");
        ((StringBuilder)localObject).append(str);
        throw new JsonReadException(((StringBuilder)localObject).toString(), paramAnonymousJsonParser.getTokenLocation());
      }
      catch (JsonParseException paramAnonymousJsonParser)
      {
        throw JsonReadException.fromJackson(paramAnonymousJsonParser);
      }
    }
  };
  public static final JsonReader<DbxAppInfo> Reader = new JsonReader()
  {
    public final DbxAppInfo a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
      Object localObject3 = null;
      Object localObject2 = null;
      Object localObject1 = localObject2;
      while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramAnonymousJsonParser.getCurrentName();
        paramAnonymousJsonParser.nextToken();
        try
        {
          if (str.equals("key")) {
            localObject3 = (String)DbxAppInfo.KeyReader.readField(paramAnonymousJsonParser, str, localObject3);
          } else if (str.equals("secret")) {
            localObject2 = (String)DbxAppInfo.SecretReader.readField(paramAnonymousJsonParser, str, localObject2);
          } else if (str.equals("host")) {
            localObject1 = (DbxHost)DbxHost.Reader.readField(paramAnonymousJsonParser, str, localObject1);
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
      if (localObject3 != null)
      {
        if (localObject2 != null)
        {
          paramAnonymousJsonParser = (JsonParser)localObject1;
          if (localObject1 == null) {
            paramAnonymousJsonParser = DbxHost.DEFAULT;
          }
          return new DbxAppInfo((String)localObject3, (String)localObject2, paramAnonymousJsonParser);
        }
        throw new JsonReadException("missing field \"secret\"", localJsonLocation);
      }
      throw new JsonReadException("missing field \"key\"", localJsonLocation);
    }
  };
  public static final JsonReader<String> SecretReader = new JsonReader()
  {
    public String a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      try
      {
        Object localObject = paramAnonymousJsonParser.getText();
        String str = DbxAppInfo.getKeyFormatError((String)localObject);
        if (str == null)
        {
          paramAnonymousJsonParser.nextToken();
          return localObject;
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("bad format for app secret: ");
        ((StringBuilder)localObject).append(str);
        throw new JsonReadException(((StringBuilder)localObject).toString(), paramAnonymousJsonParser.getTokenLocation());
      }
      catch (JsonParseException paramAnonymousJsonParser)
      {
        throw JsonReadException.fromJackson(paramAnonymousJsonParser);
      }
    }
  };
  private final String a;
  private final String b;
  private final DbxHost c;
  
  public DbxAppInfo(String paramString1, String paramString2)
  {
    checkKeyArg(paramString1);
    checkSecretArg(paramString2);
    a = paramString1;
    b = paramString2;
    c = DbxHost.DEFAULT;
  }
  
  public DbxAppInfo(String paramString1, String paramString2, DbxHost paramDbxHost)
  {
    checkKeyArg(paramString1);
    checkSecretArg(paramString2);
    a = paramString1;
    b = paramString2;
    c = paramDbxHost;
  }
  
  public static void checkKeyArg(String paramString)
  {
    paramString = getTokenPartError(paramString);
    if (paramString == null) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Bad 'key': ");
    localStringBuilder.append(paramString);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public static void checkSecretArg(String paramString)
  {
    paramString = getTokenPartError(paramString);
    if (paramString == null) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Bad 'secret': ");
    localStringBuilder.append(paramString);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public static String getKeyFormatError(String paramString)
  {
    return getTokenPartError(paramString);
  }
  
  public static String getSecretFormatError(String paramString)
  {
    return getTokenPartError(paramString);
  }
  
  public static String getTokenPartError(String paramString)
  {
    if (paramString == null) {
      return "can't be null";
    }
    if (paramString.length() == 0) {
      return "can't be empty";
    }
    int i = 0;
    while (i < paramString.length())
    {
      char c1 = paramString.charAt(i);
      if ((c1 >= '!') && (c1 <= '~'))
      {
        i += 1;
      }
      else
      {
        paramString = new StringBuilder();
        paramString.append("invalid character at index ");
        paramString.append(i);
        paramString.append(": ");
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("");
        localStringBuilder.append(c1);
        paramString.append(StringUtil.jq(localStringBuilder.toString()));
        return paramString.toString();
      }
    }
    return null;
  }
  
  protected void dumpFields(DumpWriter paramDumpWriter)
  {
    paramDumpWriter.f("key").v(a);
    paramDumpWriter.f("secret").v(b);
  }
  
  public DbxHost getHost()
  {
    return c;
  }
  
  public String getKey()
  {
    return a;
  }
  
  public String getSecret()
  {
    return b;
  }
}
