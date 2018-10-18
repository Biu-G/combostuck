package com.dropbox.core;

import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.http.HttpRequestor.Response;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

public final class DbxOAuth1Upgrader
{
  public static final JsonReader<String> ResponseReader = new JsonReader()
  {
    public String a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
      Object localObject2 = null;
      Object localObject1 = null;
      while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramAnonymousJsonParser.getCurrentName();
        JsonReader.nextToken(paramAnonymousJsonParser);
        try
        {
          if (str.equals("token_type")) {
            localObject2 = (String)DbxAuthFinish.BearerTokenTypeReader.readField(paramAnonymousJsonParser, str, localObject2);
          } else if (str.equals("access_token")) {
            localObject1 = (String)DbxAuthFinish.AccessTokenReader.readField(paramAnonymousJsonParser, str, localObject1);
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
        if (localObject1 != null) {
          return localObject1;
        }
        throw new JsonReadException("missing field \"access_token\"", localJsonLocation);
      }
      throw new JsonReadException("missing field \"token_type\"", localJsonLocation);
    }
  };
  private final DbxRequestConfig a;
  private final DbxAppInfo b;
  
  public DbxOAuth1Upgrader(DbxRequestConfig paramDbxRequestConfig, DbxAppInfo paramDbxAppInfo)
  {
    if (paramDbxRequestConfig != null)
    {
      if (paramDbxAppInfo != null)
      {
        a = paramDbxRequestConfig;
        b = paramDbxAppInfo;
        return;
      }
      throw new IllegalArgumentException("'appInfo' is null");
    }
    throw new IllegalArgumentException("'requestConfig' is null");
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw LangUtil.mkAssert("UTF-8 should always be supported", paramString);
    }
  }
  
  private ArrayList<HttpRequestor.Header> a(DbxOAuth1AccessToken paramDbxOAuth1AccessToken)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(new HttpRequestor.Header("Authorization", b(paramDbxOAuth1AccessToken)));
    return localArrayList;
  }
  
  private String b(DbxOAuth1AccessToken paramDbxOAuth1AccessToken)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("OAuth oauth_version=\"1.0\", oauth_signature_method=\"PLAINTEXT\"");
    localStringBuilder.append(", oauth_consumer_key=\"");
    localStringBuilder.append(a(b.getKey()));
    localStringBuilder.append("\"");
    localStringBuilder.append(", oauth_token=\"");
    localStringBuilder.append(a(paramDbxOAuth1AccessToken.getKey()));
    localStringBuilder.append("\"");
    localStringBuilder.append(", oauth_signature=\"");
    localStringBuilder.append(a(b.getSecret()));
    localStringBuilder.append("&");
    localStringBuilder.append(a(paramDbxOAuth1AccessToken.getSecret()));
    localStringBuilder.append("\"");
    return localStringBuilder.toString();
  }
  
  public String createOAuth2AccessToken(DbxOAuth1AccessToken paramDbxOAuth1AccessToken)
    throws DbxException
  {
    if (paramDbxOAuth1AccessToken != null) {
      (String)DbxRequestUtil.doPostNoAuth(a, "Dropbox-Java-SDK", b.getHost().getApi(), "1/oauth2/token_from_oauth1", null, a(paramDbxOAuth1AccessToken), new DbxRequestUtil.ResponseHandler()
      {
        public String a(HttpRequestor.Response paramAnonymousResponse)
          throws DbxException
        {
          if (paramAnonymousResponse.getStatusCode() == 200) {
            return (String)DbxRequestUtil.readJsonFromResponse(DbxOAuth1Upgrader.ResponseReader, paramAnonymousResponse);
          }
          throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
        }
      });
    }
    throw new IllegalArgumentException("'token' can't be null");
  }
  
  public void disableOAuth1AccessToken(DbxOAuth1AccessToken paramDbxOAuth1AccessToken)
    throws DbxException
  {
    if (paramDbxOAuth1AccessToken != null)
    {
      DbxRequestUtil.doPostNoAuth(a, "Dropbox-Java-SDK", b.getHost().getApi(), "1/disable_access_token", null, a(paramDbxOAuth1AccessToken), new DbxRequestUtil.ResponseHandler()
      {
        public Void a(HttpRequestor.Response paramAnonymousResponse)
          throws DbxException
        {
          if (paramAnonymousResponse.getStatusCode() == 200) {
            return null;
          }
          throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
        }
      });
      return;
    }
    throw new IllegalArgumentException("'token' can't be null");
  }
}
