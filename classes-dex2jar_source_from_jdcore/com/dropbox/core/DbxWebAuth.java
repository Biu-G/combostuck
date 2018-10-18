package com.dropbox.core;

import com.dropbox.core.http.HttpRequestor.Response;
import com.dropbox.core.util.StringUtil;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class DbxWebAuth
{
  public static final String ROLE_PERSONAL = "personal";
  public static final String ROLE_WORK = "work";
  private static final SecureRandom a = new SecureRandom();
  private static final int b = StringUtil.urlSafeBase64Encode(new byte[16]).length();
  private final DbxRequestConfig c;
  private final DbxAppInfo d;
  private final Request e;
  
  public DbxWebAuth(DbxRequestConfig paramDbxRequestConfig, DbxAppInfo paramDbxAppInfo)
  {
    if (paramDbxRequestConfig != null)
    {
      if (paramDbxAppInfo != null)
      {
        c = paramDbxRequestConfig;
        d = paramDbxAppInfo;
        e = null;
        return;
      }
      throw new NullPointerException("appInfo");
    }
    throw new NullPointerException("requestConfig");
  }
  
  @Deprecated
  public DbxWebAuth(DbxRequestConfig paramDbxRequestConfig, DbxAppInfo paramDbxAppInfo, String paramString, DbxSessionStore paramDbxSessionStore)
  {
    if (paramDbxRequestConfig != null)
    {
      if (paramDbxAppInfo != null)
      {
        c = paramDbxRequestConfig;
        d = paramDbxAppInfo;
        e = newRequestBuilder().withRedirectUri(paramString, paramDbxSessionStore).build();
        return;
      }
      throw new NullPointerException("appInfo");
    }
    throw new NullPointerException("requestConfig");
  }
  
  private DbxAuthFinish a(String paramString)
    throws DbxException
  {
    return a(paramString, null, null);
  }
  
  private DbxAuthFinish a(String paramString1, String paramString2, final String paramString3)
    throws DbxException
  {
    if (paramString1 != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("grant_type", "authorization_code");
      localHashMap.put("code", paramString1);
      localHashMap.put("locale", c.getUserLocale());
      if (paramString2 != null) {
        localHashMap.put("redirect_uri", paramString2);
      }
      paramString1 = new ArrayList();
      DbxRequestUtil.addBasicAuthHeader(paramString1, d.getKey(), d.getSecret());
      (DbxAuthFinish)DbxRequestUtil.doPostNoAuth(c, "OfficialDropboxJavaSDKv2", d.getHost().getApi(), "oauth2/token", DbxRequestUtil.a(localHashMap), paramString1, new DbxRequestUtil.ResponseHandler()
      {
        public DbxAuthFinish a(HttpRequestor.Response paramAnonymousResponse)
          throws DbxException
        {
          if (paramAnonymousResponse.getStatusCode() == 200) {
            return ((DbxAuthFinish)DbxRequestUtil.readJsonFromResponse(DbxAuthFinish.Reader, paramAnonymousResponse)).a(paramString3);
          }
          throw DbxRequestUtil.unexpectedStatus(paramAnonymousResponse);
        }
      });
    }
    throw new NullPointerException("code");
  }
  
  private String a(Request paramRequest)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("client_id", d.getKey());
    localHashMap.put("response_type", "code");
    if (Request.a(paramRequest) != null)
    {
      localHashMap.put("redirect_uri", Request.a(paramRequest));
      localHashMap.put("state", b(paramRequest));
    }
    if (Request.b(paramRequest) != null) {
      localHashMap.put("require_role", Request.b(paramRequest));
    }
    if (Request.c(paramRequest) != null) {
      localHashMap.put("force_reapprove", Boolean.toString(Request.c(paramRequest).booleanValue()).toLowerCase());
    }
    if (Request.d(paramRequest) != null) {
      localHashMap.put("disable_signup", Boolean.toString(Request.d(paramRequest).booleanValue()).toLowerCase());
    }
    return DbxRequestUtil.buildUrlWithParams(c.getUserLocale(), d.getHost().getWeb(), "oauth2/authorize", DbxRequestUtil.a(localHashMap));
  }
  
  private static String a(String paramString, DbxSessionStore paramDbxSessionStore)
    throws DbxWebAuth.CsrfException, DbxWebAuth.BadStateException
  {
    String str1 = paramDbxSessionStore.get();
    if (str1 != null)
    {
      if (str1.length() >= b)
      {
        if (paramString.length() >= b)
        {
          String str2 = paramString.substring(0, b);
          if (StringUtil.secureStringEquals(str1, str2))
          {
            str1 = paramString.substring(b, paramString.length());
            paramDbxSessionStore.clear();
            paramString = str1;
            if (str1.isEmpty()) {
              paramString = null;
            }
            return paramString;
          }
          paramString = new StringBuilder();
          paramString.append("expecting ");
          paramString.append(StringUtil.jq(str1));
          paramString.append(", got ");
          paramString.append(StringUtil.jq(str2));
          throw new CsrfException(paramString.toString());
        }
        paramDbxSessionStore = new StringBuilder();
        paramDbxSessionStore.append("Token too small: ");
        paramDbxSessionStore.append(paramString);
        throw new CsrfException(paramDbxSessionStore.toString());
      }
      paramString = new StringBuilder();
      paramString.append("Token retrieved from session store is too small: ");
      paramString.append(str1);
      throw new BadStateException(paramString.toString());
    }
    throw new BadStateException("No CSRF Token loaded from session store.");
  }
  
  private static String a(Map<String, String[]> paramMap, String paramString)
    throws DbxWebAuth.BadRequestException
  {
    paramMap = (String[])paramMap.get(paramString);
    if (paramMap == null) {
      return null;
    }
    if (paramMap.length != 0)
    {
      if (paramMap.length == 1) {
        return paramMap[0];
      }
      paramMap = new StringBuilder();
      paramMap.append("multiple occurrences of \"");
      paramMap.append(paramString);
      paramMap.append("\" parameter");
      throw new BadRequestException(paramMap.toString());
    }
    paramMap = new StringBuilder();
    paramMap.append("Parameter \"");
    paramMap.append(paramString);
    paramMap.append("\" missing value.");
    throw new IllegalArgumentException(paramMap.toString());
  }
  
  private static String b(Request paramRequest)
  {
    Object localObject = new byte[16];
    a.nextBytes((byte[])localObject);
    localObject = StringUtil.urlSafeBase64Encode((byte[])localObject);
    if (((String)localObject).length() == b)
    {
      if (Request.e(paramRequest) != null) {
        Request.e(paramRequest).set((String)localObject);
      }
      if (Request.f(paramRequest) == null) {
        return localObject;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(Request.f(paramRequest));
      paramRequest = localStringBuilder.toString();
      if (paramRequest.length() <= 500) {
        return paramRequest;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("unexpected combined state length: ");
      ((StringBuilder)localObject).append(paramRequest.length());
      throw new AssertionError(((StringBuilder)localObject).toString());
    }
    paramRequest = new StringBuilder();
    paramRequest.append("unexpected CSRF token length: ");
    paramRequest.append(((String)localObject).length());
    throw new AssertionError(paramRequest.toString());
  }
  
  public static DbxWebAuth.Request.Builder newRequestBuilder()
  {
    return Request.newBuilder();
  }
  
  public String authorize(Request paramRequest)
  {
    if (e == null) {
      return a(paramRequest);
    }
    throw new IllegalStateException("Must create this instance using DbxWebAuth(DbxRequestConfig,DbxAppInfo) to call this method.");
  }
  
  @Deprecated
  public DbxAuthFinish finish(Map<String, String[]> paramMap)
    throws DbxException, DbxWebAuth.BadRequestException, DbxWebAuth.BadStateException, DbxWebAuth.CsrfException, DbxWebAuth.NotApprovedException, DbxWebAuth.ProviderException
  {
    if (e != null) {
      return finishFromRedirect(Request.a(e), Request.e(e), paramMap);
    }
    throw new IllegalStateException("Must use DbxWebAuth.finishFromRedirect(..) instead.");
  }
  
  public DbxAuthFinish finishFromCode(String paramString)
    throws DbxException
  {
    return a(paramString);
  }
  
  public DbxAuthFinish finishFromCode(String paramString1, String paramString2)
    throws DbxException
  {
    return a(paramString1, paramString2, null);
  }
  
  public DbxAuthFinish finishFromRedirect(String paramString, DbxSessionStore paramDbxSessionStore, Map<String, String[]> paramMap)
    throws DbxException, DbxWebAuth.BadRequestException, DbxWebAuth.BadStateException, DbxWebAuth.CsrfException, DbxWebAuth.NotApprovedException, DbxWebAuth.ProviderException
  {
    if (paramString != null)
    {
      if (paramDbxSessionStore != null)
      {
        if (paramMap != null)
        {
          String str3 = a(paramMap, "state");
          if (str3 != null)
          {
            String str1 = a(paramMap, "error");
            String str2 = a(paramMap, "code");
            paramMap = a(paramMap, "error_description");
            if ((str2 == null) && (str1 == null)) {
              throw new BadRequestException("Missing both \"code\" and \"error\".");
            }
            if ((str2 != null) && (str1 != null)) {
              throw new BadRequestException("Both \"code\" and \"error\" are set.");
            }
            if ((str2 != null) && (paramMap != null)) {
              throw new BadRequestException("Both \"code\" and \"error_description\" are set.");
            }
            paramDbxSessionStore = a(str3, paramDbxSessionStore);
            if (str1 != null)
            {
              if (str1.equals("access_denied"))
              {
                if (paramMap == null)
                {
                  paramString = "No additional description from Dropbox";
                }
                else
                {
                  paramString = new StringBuilder();
                  paramString.append("Additional description from Dropbox: ");
                  paramString.append(paramMap);
                  paramString = paramString.toString();
                }
                throw new NotApprovedException(paramString);
              }
              if (paramMap == null) {
                paramString = str1;
              } else {
                paramString = String.format("%s: %s", new Object[] { str1, paramMap });
              }
              throw new ProviderException(paramString);
            }
            return a(str2, paramString, paramDbxSessionStore);
          }
          throw new BadRequestException("Missing required parameter: \"state\".");
        }
        throw new NullPointerException("params");
      }
      throw new NullPointerException("sessionStore");
    }
    throw new NullPointerException("redirectUri");
  }
  
  @Deprecated
  public String start(String paramString)
  {
    if (e != null) {
      return a(e.copy().withState(paramString).build());
    }
    throw new IllegalStateException("Must use DbxWebAuth.authorize instead.");
  }
  
  public static final class BadRequestException
    extends DbxWebAuth.Exception
  {
    private static final long serialVersionUID = 0L;
    
    public BadRequestException(String paramString)
    {
      super();
    }
  }
  
  public static final class BadStateException
    extends DbxWebAuth.Exception
  {
    private static final long serialVersionUID = 0L;
    
    public BadStateException(String paramString)
    {
      super();
    }
  }
  
  public static final class CsrfException
    extends DbxWebAuth.Exception
  {
    private static final long serialVersionUID = 0L;
    
    public CsrfException(String paramString)
    {
      super();
    }
  }
  
  public static abstract class Exception
    extends Exception
  {
    private static final long serialVersionUID = 0L;
    
    public Exception(String paramString)
    {
      super();
    }
  }
  
  public static final class NotApprovedException
    extends DbxWebAuth.Exception
  {
    private static final long serialVersionUID = 0L;
    
    public NotApprovedException(String paramString)
    {
      super();
    }
  }
  
  public static final class ProviderException
    extends DbxWebAuth.Exception
  {
    private static final long serialVersionUID = 0L;
    
    public ProviderException(String paramString)
    {
      super();
    }
  }
  
  public static final class Request
  {
    private static final Charset a = Charset.forName("UTF-8");
    private final String b;
    private final String c;
    private final String d;
    private final Boolean e;
    private final Boolean f;
    private final DbxSessionStore g;
    
    private Request(String paramString1, String paramString2, String paramString3, Boolean paramBoolean1, Boolean paramBoolean2, DbxSessionStore paramDbxSessionStore)
    {
      b = paramString1;
      c = paramString2;
      d = paramString3;
      e = paramBoolean1;
      f = paramBoolean2;
      g = paramDbxSessionStore;
    }
    
    public static Builder newBuilder()
    {
      return new Builder(null);
    }
    
    public Builder copy()
    {
      return new Builder(b, c, d, e, f, g, null);
    }
    
    public static final class Builder
    {
      private String a;
      private String b;
      private String c;
      private Boolean d;
      private Boolean e;
      private DbxSessionStore f;
      
      private Builder()
      {
        this(null, null, null, null, null, null);
      }
      
      private Builder(String paramString1, String paramString2, String paramString3, Boolean paramBoolean1, Boolean paramBoolean2, DbxSessionStore paramDbxSessionStore)
      {
        a = paramString1;
        b = paramString2;
        c = paramString3;
        d = paramBoolean1;
        e = paramBoolean2;
        f = paramDbxSessionStore;
      }
      
      public DbxWebAuth.Request build()
      {
        if ((a == null) && (b != null)) {
          throw new IllegalStateException("Cannot specify a state without a redirect URI.");
        }
        return new DbxWebAuth.Request(a, b, c, d, e, f, null);
      }
      
      public Builder withDisableSignup(Boolean paramBoolean)
      {
        e = paramBoolean;
        return this;
      }
      
      public Builder withForceReapprove(Boolean paramBoolean)
      {
        d = paramBoolean;
        return this;
      }
      
      public Builder withNoRedirect()
      {
        a = null;
        f = null;
        return this;
      }
      
      public Builder withRedirectUri(String paramString, DbxSessionStore paramDbxSessionStore)
      {
        if (paramString != null)
        {
          if (paramDbxSessionStore != null)
          {
            a = paramString;
            f = paramDbxSessionStore;
            return this;
          }
          throw new NullPointerException("sessionStore");
        }
        throw new NullPointerException("redirectUri");
      }
      
      public Builder withRequireRole(String paramString)
      {
        c = paramString;
        return this;
      }
      
      public Builder withState(String paramString)
      {
        if ((paramString != null) && (paramString.getBytes(DbxWebAuth.Request.a()).length + DbxWebAuth.a() > 500))
        {
          paramString = new StringBuilder();
          paramString.append("UTF-8 encoded state cannot be greater than ");
          paramString.append(500 - DbxWebAuth.a());
          paramString.append(" bytes.");
          throw new IllegalArgumentException(paramString.toString());
        }
        b = paramString;
        return this;
      }
    }
  }
}
