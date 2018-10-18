package com.dropbox.core.android;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.dropbox.core.DbxRequestUtil;
import java.security.SecureRandom;
import java.util.List;
import java.util.Locale;

public class AuthActivity
  extends Activity
{
  public static final String ACTION_AUTHENTICATE_V1 = "com.dropbox.android.AUTHENTICATE_V1";
  public static final String ACTION_AUTHENTICATE_V2 = "com.dropbox.android.AUTHENTICATE_V2";
  public static final String AUTH_PATH_CONNECT = "/connect";
  public static final int AUTH_VERSION = 1;
  public static final String EXTRA_ACCESS_SECRET = "ACCESS_SECRET";
  public static final String EXTRA_ACCESS_TOKEN = "ACCESS_TOKEN";
  public static final String EXTRA_ALREADY_AUTHED_UIDS = "ALREADY_AUTHED_UIDS";
  public static final String EXTRA_AUTH_STATE = "AUTH_STATE";
  public static final String EXTRA_CALLING_CLASS = "CALLING_CLASS";
  public static final String EXTRA_CALLING_PACKAGE = "CALLING_PACKAGE";
  public static final String EXTRA_CONSUMER_KEY = "CONSUMER_KEY";
  public static final String EXTRA_CONSUMER_SIG = "CONSUMER_SIG";
  public static final String EXTRA_DESIRED_UID = "DESIRED_UID";
  public static final String EXTRA_SESSION_ID = "SESSION_ID";
  public static final String EXTRA_UID = "UID";
  private static final String a = "com.dropbox.core.android.AuthActivity";
  private static SecurityProvider b = new SecurityProvider()
  {
    public SecureRandom getSecureRandom()
    {
      return FixedSecureRandom.get();
    }
  };
  private static final Object c = new Object();
  private static String d;
  private static String e = "www.dropbox.com";
  private static String f;
  private static String g;
  private static String[] h;
  private static String i;
  public static Intent result = null;
  private String j;
  private String k;
  private String l;
  private String m;
  private String[] n;
  private String o;
  private String p = null;
  private boolean q = false;
  
  public AuthActivity() {}
  
  static Intent a()
  {
    Intent localIntent = new Intent("com.dropbox.android.AUTHENTICATE_V2");
    localIntent.setPackage("com.dropbox.android");
    return localIntent;
  }
  
  private void a(Intent paramIntent)
  {
    result = paramIntent;
    p = null;
    a(null, null, null);
    finish();
  }
  
  private void a(String paramString)
  {
    Object localObject = Locale.getDefault();
    Locale localLocale = new Locale(((Locale)localObject).getLanguage(), ((Locale)localObject).getCountry());
    if (n.length > 0) {
      localObject = n[0];
    } else {
      localObject = "0";
    }
    String str1 = j;
    String str2 = l;
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(DbxRequestUtil.buildUrlWithParams(localLocale.toString(), k, "1/connect", new String[] { "k", str1, "n", localObject, "api", str2, "state", paramString }))));
  }
  
  static void a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    a(paramString1, paramString2, paramArrayOfString, null);
  }
  
  static void a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    a(paramString1, paramString2, paramArrayOfString, paramString3, null, null);
  }
  
  static void a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, String paramString4, String paramString5)
  {
    d = paramString1;
    g = paramString2;
    if (paramArrayOfString == null) {
      paramArrayOfString = new String[0];
    }
    h = paramArrayOfString;
    i = paramString3;
    if (paramString4 == null) {
      paramString4 = "www.dropbox.com";
    }
    e = paramString4;
    f = paramString5;
  }
  
  private static SecurityProvider c()
  {
    synchronized (c)
    {
      SecurityProvider localSecurityProvider = b;
      return localSecurityProvider;
    }
  }
  
  public static boolean checkAppBeforeAuth(Context paramContext, String paramString, boolean paramBoolean)
  {
    Object localObject = new Intent("android.intent.action.VIEW");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("db-");
    localStringBuilder.append(paramString);
    paramString = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("://");
    localStringBuilder.append(1);
    localStringBuilder.append("/connect");
    ((Intent)localObject).setData(Uri.parse(localStringBuilder.toString()));
    localObject = paramContext.getPackageManager().queryIntentActivities((Intent)localObject, 0);
    if ((localObject != null) && (((List)localObject).size() != 0))
    {
      if (((List)localObject).size() > 1)
      {
        if (paramBoolean)
        {
          paramContext = new AlertDialog.Builder(paramContext);
          paramContext.setTitle("Security alert");
          paramContext.setMessage("Another app on your phone may be trying to pose as the app you are currently using. The malicious app can't access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com.");
          paramContext.setPositiveButton("OK", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface.dismiss();
            }
          });
          paramContext.show();
          return false;
        }
        paramContext = a;
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("There are multiple apps registered for the AuthActivity URI scheme (");
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append(").  Another app may be trying to  impersonate this app, so authentication will be disabled.");
        Log.w(paramContext, ((StringBuilder)localObject).toString());
        return false;
      }
      localObject = (ResolveInfo)((List)localObject).get(0);
      if ((localObject != null) && (activityInfo != null) && (paramContext.getPackageName().equals(activityInfo.packageName))) {
        return true;
      }
      paramContext = new StringBuilder();
      paramContext.append("There must be a ");
      paramContext.append(AuthActivity.class.getName());
      paramContext.append(" within your app's package registered for your URI scheme (");
      paramContext.append(paramString);
      paramContext.append("). However, it appears that an activity in a different package is registered for that scheme instead. If you have multiple apps that all want to use the same accesstoken pair, designate one of them to do authentication and have the other apps launch it and then retrieve the token pair from it.");
      throw new IllegalStateException(paramContext.toString());
    }
    paramContext = new StringBuilder();
    paramContext.append("URI scheme in your app's manifest is not set up correctly. You should have a ");
    paramContext.append(AuthActivity.class.getName());
    paramContext.append(" with the scheme: ");
    paramContext.append(paramString);
    throw new IllegalStateException(paramContext.toString());
  }
  
  private static SecureRandom d()
  {
    SecurityProvider localSecurityProvider = c();
    if (localSecurityProvider != null) {
      return localSecurityProvider.getSecureRandom();
    }
    return new SecureRandom();
  }
  
  private String e()
  {
    byte[] arrayOfByte = new byte[16];
    d().nextBytes(arrayOfByte);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("oauth2:");
    int i1 = 0;
    while (i1 < 16)
    {
      localStringBuilder.append(String.format("%02x", new Object[] { Integer.valueOf(arrayOfByte[i1] & 0xFF) }));
      i1 += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static Intent makeIntent(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    return makeIntent(paramContext, paramString1, null, null, null, paramString2, paramString3);
  }
  
  public static Intent makeIntent(Context paramContext, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, String paramString4, String paramString5)
  {
    if (paramString1 != null)
    {
      a(paramString1, paramString2, paramArrayOfString, paramString3, paramString4, paramString5);
      return new Intent(paramContext, AuthActivity.class);
    }
    throw new IllegalArgumentException("'appKey' can't be null");
  }
  
  public static void setSecurityProvider(SecurityProvider paramSecurityProvider)
  {
    synchronized (c)
    {
      b = paramSecurityProvider;
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    j = d;
    k = e;
    l = f;
    m = g;
    n = h;
    o = i;
    if (paramBundle == null)
    {
      result = null;
      p = null;
    }
    else
    {
      p = paramBundle.getString("SIS_KEY_AUTH_STATE_NONCE");
    }
    setTheme(16973840);
    super.onCreate(paramBundle);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    Object localObject1 = p;
    Object localObject5 = null;
    if (localObject1 == null)
    {
      a(null);
      return;
    }
    if (paramIntent.hasExtra("ACCESS_TOKEN"))
    {
      localObject4 = paramIntent.getStringExtra("ACCESS_TOKEN");
      localObject1 = paramIntent.getStringExtra("ACCESS_SECRET");
      localObject2 = paramIntent.getStringExtra("UID");
      localObject3 = paramIntent.getStringExtra("AUTH_STATE");
      paramIntent = (Intent)localObject4;
    }
    else
    {
      localObject3 = paramIntent.getData();
      if ((localObject3 == null) || (!"/connect".equals(((Uri)localObject3).getPath()))) {}
    }
    for (;;)
    {
      try
      {
        paramIntent = ((Uri)localObject3).getQueryParameter("oauth_token");
      }
      catch (UnsupportedOperationException paramIntent)
      {
        label136:
        continue;
      }
      try
      {
        localObject1 = ((Uri)localObject3).getQueryParameter("oauth_token_secret");
      }
      catch (UnsupportedOperationException localUnsupportedOperationException1)
      {
        continue;
      }
      try
      {
        localObject2 = ((Uri)localObject3).getQueryParameter("uid");
      }
      catch (UnsupportedOperationException localUnsupportedOperationException2)
      {
        continue;
      }
      try
      {
        localObject3 = ((Uri)localObject3).getQueryParameter("state");
      }
      catch (UnsupportedOperationException localUnsupportedOperationException3) {}
    }
    Object localObject2 = null;
    break label140;
    break label136;
    paramIntent = null;
    localObject1 = null;
    localObject2 = null;
    label140:
    Object localObject3 = null;
    break label156;
    localObject3 = null;
    paramIntent = (Intent)localObject3;
    localObject1 = paramIntent;
    localObject2 = localObject1;
    label156:
    Object localObject4 = localObject5;
    if (paramIntent != null)
    {
      localObject4 = localObject5;
      if (!paramIntent.equals(""))
      {
        localObject4 = localObject5;
        if (localObject1 != null)
        {
          localObject4 = localObject5;
          if (!((String)localObject1).equals(""))
          {
            localObject4 = localObject5;
            if (localObject2 != null)
            {
              localObject4 = localObject5;
              if (!((String)localObject2).equals(""))
              {
                localObject4 = localObject5;
                if (localObject3 != null)
                {
                  localObject4 = localObject5;
                  if (!((String)localObject3).equals(""))
                  {
                    if (!p.equals(localObject3))
                    {
                      a(null);
                      return;
                    }
                    localObject4 = new Intent();
                    ((Intent)localObject4).putExtra("ACCESS_TOKEN", paramIntent);
                    ((Intent)localObject4).putExtra("ACCESS_SECRET", (String)localObject1);
                    ((Intent)localObject4).putExtra("UID", (String)localObject2);
                  }
                }
              }
            }
          }
        }
      }
    }
    a((Intent)localObject4);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (isFinishing()) {
      return;
    }
    if ((p == null) && (j != null))
    {
      result = null;
      if (q)
      {
        Log.w(a, "onResume called again before Handler run");
        return;
      }
      final String str = e();
      final Intent localIntent = a();
      localIntent.putExtra("CONSUMER_KEY", j);
      localIntent.putExtra("CONSUMER_SIG", "");
      localIntent.putExtra("DESIRED_UID", m);
      localIntent.putExtra("ALREADY_AUTHED_UIDS", n);
      localIntent.putExtra("SESSION_ID", o);
      localIntent.putExtra("CALLING_PACKAGE", getPackageName());
      localIntent.putExtra("CALLING_CLASS", getClass().getName());
      localIntent.putExtra("AUTH_STATE", str);
      new Handler(Looper.getMainLooper()).post(new Runnable()
      {
        public void run()
        {
          Log.d(AuthActivity.b(), "running startActivity in handler");
          try
          {
            if (DbxOfficialAppConnector.a(AuthActivity.this, localIntent) != null) {
              startActivity(localIntent);
            } else {
              AuthActivity.a(AuthActivity.this, str);
            }
            AuthActivity.b(AuthActivity.this, str);
            AuthActivity.a(null, null, null);
            return;
          }
          catch (ActivityNotFoundException localActivityNotFoundException)
          {
            Log.e(AuthActivity.b(), "Could not launch intent. User may have restricted profile", localActivityNotFoundException);
            finish();
          }
        }
      });
      q = true;
      return;
    }
    a(null);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("SIS_KEY_AUTH_STATE_NONCE", p);
  }
  
  public static abstract interface SecurityProvider
  {
    public abstract SecureRandom getSecureRandom();
  }
}
