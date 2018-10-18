package cn.edu.pku.pkuiaaa_android;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

final class a
{
  private static String a(InputStream paramInputStream)
  {
    paramInputStream = new BufferedInputStream(paramInputStream);
    Object localObject = new byte['က'];
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    localMessageDigest.reset();
    int j;
    int i;
    do
    {
      j = paramInputStream.read((byte[])localObject);
      i = 0;
      if (j > 0) {
        localMessageDigest.update((byte[])localObject, 0, j);
      }
    } while (j != -1);
    paramInputStream.close();
    paramInputStream = localMessageDigest.digest();
    localObject = new StringBuffer();
    while (i < paramInputStream.length)
    {
      if (Integer.toHexString(paramInputStream[i] & 0xFF).length() == 1) {
        ((StringBuffer)localObject).append("0");
      }
      for (j = paramInputStream[i];; j = paramInputStream[i])
      {
        ((StringBuffer)localObject).append(Integer.toHexString(j & 0xFF));
        break;
      }
      i += 1;
    }
    return ((StringBuffer)localObject).toString();
  }
  
  private static String a(String paramString)
  {
    return a(new ByteArrayInputStream(paramString.getBytes()));
  }
  
  static String a(String paramString1, String paramString2)
  {
    Object localObject = new TreeMap();
    ((TreeMap)localObject).put("userName", paramString1);
    ((TreeMap)localObject).put("appId", paramString2);
    paramString2 = ((TreeMap)localObject).keySet().iterator();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString2.hasNext())
    {
      String str1 = (String)paramString2.next();
      String str2 = (String)((TreeMap)localObject).get(str1);
      if (localStringBuilder.length() != 0) {}
      for (paramString1 = new StringBuilder("&");; paramString1 = new StringBuilder())
      {
        paramString1.append(str1);
        paramString1.append("=");
        paramString1.append(str2);
        localStringBuilder.append(paramString1.toString());
        break;
      }
    }
    paramString1 = localStringBuilder.toString();
    paramString2 = new StringBuilder();
    paramString2.append(paramString1);
    paramString2.append("7696baa1fa4ed9679441764a271e556e");
    paramString2 = paramString2.toString();
    for (;;)
    {
      try
      {
        paramString2 = a(paramString2);
        if (paramString2 != null)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(paramString1);
          ((StringBuilder)localObject).append("&msgAbs=");
          ((StringBuilder)localObject).append(paramString2);
          paramString2 = ((StringBuilder)localObject).toString();
        }
      }
      catch (Exception paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = new URL("https://iaaa.pku.edu.cn/iaaa/svc/authen/sendSMSCode.do");
        paramString2 = paramString2.getBytes();
      }
      catch (MalformedURLException paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = (HttpURLConnection)paramString1.openConnection();
        paramString1.setConnectTimeout(15000);
        paramString1.setDoInput(true);
        paramString1.setDoOutput(true);
        paramString1.setRequestMethod("POST");
        paramString1.setUseCaches(false);
        paramString1.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        paramString1.setRequestProperty("Content-Length", String.valueOf(paramString2.length));
        paramString1.getOutputStream().write(paramString2);
        if (paramString1.getResponseCode() == 200)
        {
          paramString2 = paramString1.getInputStream();
          paramString1 = new StringBuilder();
          paramString2 = new BufferedReader(new InputStreamReader(new BufferedInputStream(paramString2)));
          localObject = paramString2.readLine();
          if (localObject != null)
          {
            paramString1.append((String)localObject);
            continue;
          }
        }
      }
      catch (IOException paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = new JSONObject(paramString1.toString());
        if (paramString1.has("success"))
        {
          if (paramString1.getString("success").equals("true"))
          {
            if (!paramString1.has("mobileMask")) {
              break label542;
            }
            return paramString1.getString("mobileMask");
          }
          throw new Exception("发送验证码失败！");
        }
        if (paramString1.has("errMsg"))
        {
          paramString2 = new StringBuilder();
          paramString2.append("发送验证码失败！");
          paramString2.append(paramString1.getString("errMsg"));
          throw new Exception(paramString2.toString());
        }
        throw new Exception("发送验证码失败！");
      }
      catch (JSONException paramString1) {}
    }
    throw new Exception("服务器数据错误！");
    throw new Exception("服务器返回数据错误，发送验证码失败！");
    throw new Exception("服务器返回数据错误，发送验证码失败！");
    throw new Exception("URL错误！");
    throw new Exception("数据处理错误！");
    throw new Exception("数据处理错误！");
    label542:
    return "";
  }
  
  static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("userName", paramString1);
    localTreeMap.put("password", paramString2);
    localTreeMap.put("randCode", "");
    localTreeMap.put("appId", paramString4);
    if (paramString5.equals("SMS"))
    {
      localTreeMap.put("smsCode", paramString3);
      localTreeMap.put("otpCode", "");
    }
    else
    {
      localTreeMap.put("smsCode", "");
      localTreeMap.put("otpCode", paramString3);
    }
    paramString2 = localTreeMap.keySet().iterator();
    paramString3 = new StringBuilder();
    if (paramString2.hasNext())
    {
      paramString4 = (String)paramString2.next();
      paramString5 = (String)localTreeMap.get(paramString4);
      if (paramString3.length() != 0) {}
      for (paramString1 = new StringBuilder("&");; paramString1 = new StringBuilder())
      {
        paramString1.append(paramString4);
        paramString1.append("=");
        paramString1.append(paramString5);
        paramString3.append(paramString1.toString());
        break;
      }
    }
    paramString1 = paramString3.toString();
    paramString2 = new StringBuilder();
    paramString2.append(paramString1);
    paramString2.append("7696baa1fa4ed9679441764a271e556e");
    paramString2 = paramString2.toString();
    for (;;)
    {
      try
      {
        paramString2 = a(paramString2);
        if (paramString2 != null)
        {
          paramString3 = new StringBuilder();
          paramString3.append(paramString1);
          paramString3.append("&msgAbs=");
          paramString3.append(paramString2);
          paramString2 = paramString3.toString();
        }
      }
      catch (Exception paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = new URL("https://iaaa.pku.edu.cn/iaaa/svc/authen/login.do");
        paramString2 = paramString2.getBytes();
      }
      catch (MalformedURLException paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = (HttpURLConnection)paramString1.openConnection();
        paramString1.setConnectTimeout(15000);
        paramString1.setDoInput(true);
        paramString1.setDoOutput(true);
        paramString1.setRequestMethod("POST");
        paramString1.setUseCaches(false);
        paramString1.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        paramString1.setRequestProperty("Content-Length", String.valueOf(paramString2.length));
        paramString1.getOutputStream().write(paramString2);
        if (paramString1.getResponseCode() == 200)
        {
          paramString2 = paramString1.getInputStream();
          paramString1 = new StringBuilder();
          paramString2 = new BufferedReader(new InputStreamReader(new BufferedInputStream(paramString2)));
          paramString3 = paramString2.readLine();
          if (paramString3 != null)
          {
            paramString1.append(paramString3);
            continue;
          }
          paramString2 = new StringBuilder();
          paramString2.append(paramString1);
          paramString2.append(" result");
          Log.d("test", paramString2.toString());
        }
      }
      catch (IOException paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = new JSONObject(paramString1.toString());
        if (paramString1.has("success"))
        {
          if (paramString1.getString("success").equals("true"))
          {
            if (paramString1.has("token"))
            {
              paramString1 = paramString1.getString("token");
              if (!paramString1.equals("")) {
                return paramString1;
              }
              throw new Exception("认证失败！");
            }
            throw new Exception("认证失败！");
          }
          if (paramString1.has("errMsg"))
          {
            paramString2 = new StringBuilder();
            paramString2.append("认证失败！");
            paramString2.append(paramString1.getString("errMsg"));
            throw new Exception(paramString2.toString());
          }
          throw new Exception("认证失败！");
        }
        throw new Exception("认证失败！");
      }
      catch (JSONException paramString1) {}
    }
    throw new Exception("服务器数据错误，认证失败！");
    throw new Exception("服务器返回数据错误，认证失败！");
    throw new Exception("服务器返回数据错误，认证失败！");
    throw new Exception("URL错误！");
    throw new Exception("数据处理错误！");
    throw new Exception("数据处理错误！");
  }
  
  static String b(String paramString1, String paramString2)
  {
    Object localObject = new TreeMap();
    ((TreeMap)localObject).put("userName", paramString1);
    ((TreeMap)localObject).put("appId", paramString2);
    paramString2 = ((TreeMap)localObject).keySet().iterator();
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString2.hasNext())
    {
      String str1 = (String)paramString2.next();
      String str2 = (String)((TreeMap)localObject).get(str1);
      if (localStringBuilder.length() != 0) {}
      for (paramString1 = new StringBuilder("&");; paramString1 = new StringBuilder())
      {
        paramString1.append(str1);
        paramString1.append("=");
        paramString1.append(str2);
        localStringBuilder.append(paramString1.toString());
        break;
      }
    }
    paramString1 = localStringBuilder.toString();
    paramString2 = new StringBuilder();
    paramString2.append(paramString1);
    paramString2.append("7696baa1fa4ed9679441764a271e556e");
    paramString2 = paramString2.toString();
    for (;;)
    {
      try
      {
        paramString2 = a(paramString2);
        if (paramString2 != null)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(paramString1);
          ((StringBuilder)localObject).append("&msgAbs=");
          ((StringBuilder)localObject).append(paramString2);
          paramString2 = ((StringBuilder)localObject).toString();
        }
      }
      catch (Exception paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = new URL("https://iaaa.pku.edu.cn/iaaa/svc/authen/isMobileAuthen.do");
        paramString2 = paramString2.getBytes();
      }
      catch (MalformedURLException paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = (HttpURLConnection)paramString1.openConnection();
        paramString1.setConnectTimeout(15000);
        paramString1.setDoInput(true);
        paramString1.setDoOutput(true);
        paramString1.setRequestMethod("POST");
        paramString1.setUseCaches(false);
        paramString1.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        paramString1.setRequestProperty("Content-Length", String.valueOf(paramString2.length));
        paramString1.getOutputStream().write(paramString2);
        if (paramString1.getResponseCode() == 200)
        {
          paramString2 = paramString1.getInputStream();
          paramString1 = new StringBuilder();
          paramString2 = new BufferedReader(new InputStreamReader(new BufferedInputStream(paramString2)));
          localObject = paramString2.readLine();
          if (localObject != null)
          {
            paramString1.append((String)localObject);
            continue;
          }
        }
      }
      catch (IOException paramString1)
      {
        continue;
      }
      try
      {
        paramString1 = new JSONObject(paramString1.toString());
        if (paramString1.has("success"))
        {
          if (paramString1.getString("success").equals("true"))
          {
            if (paramString1.has("authenMode"))
            {
              paramString2 = paramString1.getString("authenMode");
              if (paramString2.equals("SMS")) {
                return "SMS";
              }
              if (paramString2.equals("OTP"))
              {
                if (paramString1.has("isBind"))
                {
                  if (Boolean.valueOf(paramString1.getBoolean("isBind")).booleanValue()) {
                    return "OTP";
                  }
                  throw new Exception("如果是动态口令验证但是没有绑定， 通过页面（https://iaaa.pku.edu.cn/iaaa/login2OTP.jsp）登录，按照要求完成绑定。");
                }
                throw new Exception("如果是动态口令验证但是没有绑定， 通过页面（https://iaaa.pku.edu.cn/iaaa/login2OTP.jsp）登录，按照要求完成绑定。");
              }
              return "";
            }
            throw new Exception("查验验证选项失败！");
          }
          throw new Exception("查验验证选项失败！");
        }
        if (paramString1.has("errMsg"))
        {
          paramString2 = new StringBuilder();
          paramString2.append("查验验证选项失败！");
          paramString2.append(paramString1.getString("errMsg"));
          throw new Exception(paramString2.toString());
        }
        throw new Exception("查验验证选项失败！");
      }
      catch (JSONException paramString1) {}
    }
    throw new Exception("服务器数据错误！");
    throw new Exception("服务器返回数据错误，查验验证选项失败！");
    throw new Exception("服务器返回数据错误，查验验证选项失败！");
    throw new Exception("URL错误！");
    throw new Exception("数据处理错误！");
    throw new Exception("数据处理错误！");
  }
}
