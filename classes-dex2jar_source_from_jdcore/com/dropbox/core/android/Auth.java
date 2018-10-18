package com.dropbox.core.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;

public class Auth
{
  public Auth() {}
  
  public static String getOAuth2Token()
  {
    Object localObject = AuthActivity.result;
    if (localObject == null) {
      return null;
    }
    String str1 = ((Intent)localObject).getStringExtra("ACCESS_TOKEN");
    String str2 = ((Intent)localObject).getStringExtra("ACCESS_SECRET");
    localObject = ((Intent)localObject).getStringExtra("UID");
    if ((str1 != null) && (!str1.equals("")) && (str2 != null) && (!str2.equals("")) && (localObject != null) && (!((String)localObject).equals(""))) {
      return str2;
    }
    return null;
  }
  
  public static String getUid()
  {
    Object localObject = AuthActivity.result;
    if (localObject == null) {
      return null;
    }
    String str1 = ((Intent)localObject).getStringExtra("ACCESS_TOKEN");
    String str2 = ((Intent)localObject).getStringExtra("ACCESS_SECRET");
    localObject = ((Intent)localObject).getStringExtra("UID");
    if ((str1 != null) && (!str1.equals("")) && (str2 != null) && (!str2.equals("")) && (localObject != null) && (!((String)localObject).equals(""))) {
      return localObject;
    }
    return null;
  }
  
  public static void startOAuth2Authentication(Context paramContext, String paramString)
  {
    startOAuth2Authentication(paramContext, paramString, null, null, null);
  }
  
  public static void startOAuth2Authentication(Context paramContext, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    startOAuth2Authentication(paramContext, paramString1, paramString2, paramArrayOfString, paramString3, "www.dropbox.com");
  }
  
  public static void startOAuth2Authentication(Context paramContext, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, String paramString4)
  {
    if (!AuthActivity.checkAppBeforeAuth(paramContext, paramString1, true)) {
      return;
    }
    if ((paramArrayOfString != null) && (Arrays.asList(paramArrayOfString).contains(paramString2))) {
      throw new IllegalArgumentException("desiredUid cannot be present in alreadyAuthedUids");
    }
    paramString1 = AuthActivity.makeIntent(paramContext, paramString1, paramString2, paramArrayOfString, paramString3, paramString4, "1");
    if (!(paramContext instanceof Activity)) {
      paramString1.addFlags(268435456);
    }
    paramContext.startActivity(paramString1);
  }
}
