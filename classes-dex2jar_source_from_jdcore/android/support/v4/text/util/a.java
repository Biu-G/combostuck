package android.support.v4.text.util;

import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import java.util.Locale;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class a
{
  private static final a[] a = { new a(99, 99, -1, -1), new a(35, 36, -1, -1), new a(71, 72, -1, -1), new a(96, 96, -1, -1), new a(85, 86, -1, -1), new a(90, 96, -1, -1), new a(80, 81, -1, -1), new a(6, 6, -1, -1), new a(20, 20, -1, -1), new a(19, 19, -1, -1), new a(32, 34, -1, -1), new a(96, 96, -1, -1), new a(30, 31, -1, -1), new a(96, 96, -1, -1), new a(96, 96, -1, -1), new a(50, 52, -1, -1), new a(83, 83, -1, -1), new a(60, 62, -1, -1), new a(46, 47, -1, -1), new a(66, 67, 73, -1), new a(40, 42, -1, -1), new a(70, 71, -1, -1), new a(1, 2, -1, -1), new a(20, 21, -1, -1), new a(3, 4, -1, -1), new a(96, 96, -1, -1), new a(48, 49, -1, -1), new a(55, 56, -1, -1), new a(63, 65, -1, -1), new a(96, 96, -1, -1), new a(38, 39, -1, -1), new a(55, 56, -1, -1), new a(27, 28, -1, -1), new a(58, 58, -1, -1), new a(68, 69, -1, -1), new a(3, 4, -1, -1), new a(7, 8, -1, -1), new a(87, 88, 86, -1), new a(88, 89, 96, -1), new a(10, 14, 0, 6), new a(43, 45, -1, -1), new a(73, 74, -1, -1), new a(97, 97, -1, -1), new a(15, 19, -1, -1), new a(6, 6, 0, 9), new a(96, 96, -1, -1), new a(2, 2, -1, -1), new a(29, 29, -1, -1), new a(57, 57, -1, -1), new a(37, 38, -1, -1), new a(75, 79, 87, 88), new a(84, 84, -1, -1), new a(22, 24, 20, -1), new a(6, 9, -1, -1), new a(5, 5, -1, -1), new a(98, 99, -1, -1), new a(53, 54, -1, -1), new a(24, 26, -1, -1), new a(82, 83, -1, -1) };
  private static final Pattern b = Pattern.compile("[^,*•\t                　\n\013\f\r  ]+(?=[,*•\t                　\n\013\f\r  ]|$)", 2);
  private static final Pattern c = Pattern.compile("(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|\\d+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"'\t                　\n\013\f\r  ]|$)", 2);
  private static final Pattern d = Pattern.compile("(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t                　]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t                　]+of[\t                　]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t                　]+states[\t                　]+of[\t                　]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t                　]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t                　]+mariana[\t                　]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t                　]+carolina)|(nd|north[\t                　]+dakota)|(ne|nebraska)|(nh|new[\t                　]+hampshire)|(nj|new[\t                　]+jersey)|(nm|new[\t                　]+mexico)|(nv|nevada)|(ny|new[\t                　]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t                　]+rico)|(pw|palau)|(ri|rhode[\t                　]+island)|(sc|south[\t                　]+carolina)|(sd|south[\t                　]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t                　]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t                　]+virginia)|(wy|wyoming))(?=[,*•\t                　\n\013\f\r  ]|$)", 2);
  private static final Pattern e = Pattern.compile("(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*•\t                　\n\013\f\r  ]|$)", 2);
  private static final Pattern f = Pattern.compile("(\\d+)(st|nd|rd|th)", 2);
  private static final Pattern g = Pattern.compile("(?:\\d{5}(?:-\\d{4})?)(?=[,*•\t                　\n\013\f\r  ]|$)", 2);
  
  @VisibleForTesting
  public static MatchResult a(String paramString, int paramInt)
  {
    if ((paramInt > 0) && (":,\"'\t                　\n\013\f\r  ".indexOf(paramString.charAt(paramInt - 1)) == -1)) {
      return null;
    }
    paramString = c.matcher(paramString).region(paramInt, paramString.length());
    if (paramString.lookingAt())
    {
      paramString = paramString.toMatchResult();
      if (c(paramString.group(0))) {
        return paramString;
      }
    }
    return null;
  }
  
  @VisibleForTesting
  public static boolean a(String paramString)
  {
    return e.matcher(paramString).matches();
  }
  
  private static boolean a(String paramString, MatchResult paramMatchResult)
  {
    boolean bool2 = false;
    if (paramMatchResult == null) {
      return false;
    }
    int j;
    for (int i = paramMatchResult.groupCount();; i = j)
    {
      j = i;
      if (i <= 0) {
        break;
      }
      j = i - 1;
      if (paramMatchResult.group(i) != null) {
        break;
      }
    }
    boolean bool1 = bool2;
    if (g.matcher(paramString).matches())
    {
      bool1 = bool2;
      if (a[j].a(paramString)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private static int b(String paramString, MatchResult paramMatchResult)
  {
    int j = paramMatchResult.end();
    Matcher localMatcher = b.matcher(paramString);
    paramMatchResult = "";
    int i2 = 1;
    int i3 = 1;
    int i1 = 1;
    int k = -1;
    int n = 0;
    int m = -1;
    int i;
    for (;;)
    {
      i = j;
      if (j >= paramString.length()) {
        break;
      }
      if (!localMatcher.find(j)) {
        return -paramString.length();
      }
      i = j;
      if (localMatcher.end() - localMatcher.start() > 25) {
        return -localMatcher.end();
      }
      while (i < localMatcher.start())
      {
        j = i2;
        if ("\n\013\f\r  ".indexOf(paramString.charAt(i)) != -1) {
          j = i2 + 1;
        }
        i += 1;
        i2 = j;
      }
      if (i2 > 5) {
        break;
      }
      i3 += 1;
      if (i3 > 14) {
        break;
      }
      int i4;
      int i5;
      int i6;
      if (a(paramString, i) != null)
      {
        if ((i1 != 0) && (i2 > 1)) {
          return -i;
        }
        j = i1;
        i4 = k;
        i5 = n;
        i6 = m;
        if (k == -1)
        {
          j = i1;
          i4 = i;
          i5 = n;
          i6 = m;
        }
      }
      else if (a(localMatcher.group(0)))
      {
        j = 0;
        i5 = 1;
        i4 = k;
        i6 = m;
      }
      else
      {
        if ((i3 == 5) && (n == 0))
        {
          i = localMatcher.end();
          break;
        }
        j = m;
        if (n != 0)
        {
          j = m;
          if (i3 > 4)
          {
            MatchResult localMatchResult = b(paramString, i);
            j = m;
            if (localMatchResult != null)
            {
              if ((paramMatchResult.equals("et")) && (localMatchResult.group(0).equals("al")))
              {
                i = localMatchResult.end();
                break;
              }
              paramMatchResult = b.matcher(paramString);
              if (paramMatchResult.find(localMatchResult.end()))
              {
                j = m;
                if (a(paramMatchResult.group(0), localMatchResult)) {
                  return paramMatchResult.end();
                }
              }
              else
              {
                j = localMatchResult.end();
              }
            }
          }
        }
        i = 0;
        i6 = j;
        i5 = n;
        i4 = k;
        j = i;
      }
      paramMatchResult = localMatcher.group(0);
      i = localMatcher.end();
      i1 = j;
      k = i4;
      n = i5;
      m = i6;
      j = i;
    }
    if (m > 0) {
      return m;
    }
    if (k > 0) {
      i = k;
    }
    return -i;
  }
  
  static String b(String paramString)
  {
    Matcher localMatcher = c.matcher(paramString);
    int i = 0;
    while (localMatcher.find(i)) {
      if (c(localMatcher.group(0)))
      {
        i = localMatcher.start();
        int j = b(paramString, localMatcher);
        if (j > 0) {
          return paramString.substring(i, j);
        }
        i = -j;
      }
      else
      {
        i = localMatcher.end();
      }
    }
    return null;
  }
  
  @VisibleForTesting
  public static MatchResult b(String paramString, int paramInt)
  {
    Object localObject = null;
    if ((paramInt > 0) && (",*•\t                　\n\013\f\r  ".indexOf(paramString.charAt(paramInt - 1)) == -1)) {
      return null;
    }
    Matcher localMatcher = d.matcher(paramString).region(paramInt, paramString.length());
    paramString = localObject;
    if (localMatcher.lookingAt()) {
      paramString = localMatcher.toMatchResult();
    }
    return paramString;
  }
  
  private static boolean c(String paramString)
  {
    int i = 0;
    int k;
    for (int j = 0; i < paramString.length(); j = k)
    {
      k = j;
      if (Character.isDigit(paramString.charAt(i))) {
        k = j + 1;
      }
      i += 1;
    }
    if (j > 5) {
      return false;
    }
    paramString = f.matcher(paramString);
    if (paramString.find())
    {
      i = Integer.parseInt(paramString.group(1));
      if (i == 0) {
        return false;
      }
      String str = paramString.group(2).toLowerCase(Locale.getDefault());
      switch (i % 10)
      {
      default: 
        return str.equals("th");
      case 3: 
        if (i % 100 == 13) {
          paramString = "th";
        } else {
          paramString = "rd";
        }
        return str.equals(paramString);
      case 2: 
        if (i % 100 == 12) {
          paramString = "th";
        } else {
          paramString = "nd";
        }
        return str.equals(paramString);
      }
      if (i % 100 == 11) {
        paramString = "th";
      } else {
        paramString = "st";
      }
      return str.equals(paramString);
    }
    return true;
  }
  
  private static class a
  {
    int a;
    int b;
    int c;
    int d;
    
    a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
      d = paramInt3;
    }
    
    boolean a(String paramString)
    {
      boolean bool = false;
      int i = Integer.parseInt(paramString.substring(0, 2));
      if (((a <= i) && (i <= b)) || (i == c) || (i == d)) {
        bool = true;
      }
      return bool;
    }
  }
}
