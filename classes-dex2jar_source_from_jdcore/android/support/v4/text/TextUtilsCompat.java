package android.support.v4.text;

import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Locale;

public final class TextUtilsCompat
{
  private static final Locale a = new Locale("", "");
  
  private TextUtilsCompat() {}
  
  private static int a(@NonNull Locale paramLocale)
  {
    switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
    {
    default: 
      return 0;
    }
    return 1;
  }
  
  public static int getLayoutDirectionFromLocale(@Nullable Locale paramLocale)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return TextUtils.getLayoutDirectionFromLocale(paramLocale);
    }
    if ((paramLocale != null) && (!paramLocale.equals(a)))
    {
      String str = ICUCompat.maximizeAndGetScript(paramLocale);
      if (str == null) {
        return a(paramLocale);
      }
      if ((str.equalsIgnoreCase("Arab")) || (str.equalsIgnoreCase("Hebr"))) {
        return 1;
      }
    }
    return 0;
  }
  
  @NonNull
  public static String htmlEncode(@NonNull String paramString)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return TextUtils.htmlEncode(paramString);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramString.length())
    {
      char c = paramString.charAt(i);
      if (c != '"')
      {
        if (c != '<')
        {
          if (c != '>') {
            switch (c)
            {
            default: 
              localStringBuilder.append(c);
              break;
            case '\'': 
              localStringBuilder.append("&#39;");
              break;
            case '&': 
              localStringBuilder.append("&amp;");
              break;
            }
          } else {
            localStringBuilder.append("&gt;");
          }
        }
        else {
          localStringBuilder.append("&lt;");
        }
      }
      else {
        localStringBuilder.append("&quot;");
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
}
