package android.support.v4.text.util;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.PatternsCompat;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.text.util.Linkify.MatchFilter;
import android.text.util.Linkify.TransformFilter;
import android.webkit.WebView;
import android.widget.TextView;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class LinkifyCompat
{
  private static final String[] a = new String[0];
  private static final Comparator<a> b = new Comparator()
  {
    public int a(LinkifyCompat.a paramAnonymousA1, LinkifyCompat.a paramAnonymousA2)
    {
      if (c < c) {
        return -1;
      }
      if (c > c) {
        return 1;
      }
      if (d < d) {
        return 1;
      }
      if (d > d) {
        return -1;
      }
      return 0;
    }
  };
  
  private LinkifyCompat() {}
  
  private static String a(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return WebView.findAddress(paramString);
    }
    return a.b(paramString);
  }
  
  private static String a(@NonNull String paramString, @NonNull String[] paramArrayOfString, Matcher paramMatcher, @Nullable Linkify.TransformFilter paramTransformFilter)
  {
    String str = paramString;
    if (paramTransformFilter != null) {
      str = paramTransformFilter.transformUrl(paramMatcher, paramString);
    }
    int i = 0;
    for (;;)
    {
      j = paramArrayOfString.length;
      int k = 1;
      if (i >= j) {
        break;
      }
      if (str.regionMatches(true, 0, paramArrayOfString[i], 0, paramArrayOfString[i].length()))
      {
        j = k;
        paramString = str;
        if (str.regionMatches(false, 0, paramArrayOfString[i], 0, paramArrayOfString[i].length())) {
          break label146;
        }
        paramString = new StringBuilder();
        paramString.append(paramArrayOfString[i]);
        paramString.append(str.substring(paramArrayOfString[i].length()));
        paramString = paramString.toString();
        j = k;
        break label146;
      }
      i += 1;
    }
    int j = 0;
    paramString = str;
    label146:
    paramMatcher = paramString;
    if (j == 0)
    {
      paramMatcher = paramString;
      if (paramArrayOfString.length > 0)
      {
        paramMatcher = new StringBuilder();
        paramMatcher.append(paramArrayOfString[0]);
        paramMatcher.append(paramString);
        paramMatcher = paramMatcher.toString();
      }
    }
    return paramMatcher;
  }
  
  private static void a(@NonNull TextView paramTextView)
  {
    MovementMethod localMovementMethod = paramTextView.getMovementMethod();
    if (((localMovementMethod == null) || (!(localMovementMethod instanceof LinkMovementMethod))) && (paramTextView.getLinksClickable())) {
      paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }
  }
  
  private static void a(String paramString, int paramInt1, int paramInt2, Spannable paramSpannable)
  {
    paramSpannable.setSpan(new URLSpan(paramString), paramInt1, paramInt2, 33);
  }
  
  /* Error */
  private static void a(ArrayList<a> paramArrayList, Spannable paramSpannable)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 116	java/lang/Object:toString	()Ljava/lang/String;
    //   4: astore_1
    //   5: iconst_0
    //   6: istore_2
    //   7: aload_1
    //   8: invokestatic 118	android/support/v4/text/util/LinkifyCompat:a	(Ljava/lang/String;)Ljava/lang/String;
    //   11: astore 6
    //   13: aload 6
    //   15: ifnull +114 -> 129
    //   18: aload_1
    //   19: aload 6
    //   21: invokevirtual 122	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   24: istore 4
    //   26: iload 4
    //   28: ifge +4 -> 32
    //   31: return
    //   32: new 11	android/support/v4/text/util/LinkifyCompat$a
    //   35: dup
    //   36: invokespecial 123	android/support/v4/text/util/LinkifyCompat$a:<init>	()V
    //   39: astore 5
    //   41: aload 6
    //   43: invokevirtual 58	java/lang/String:length	()I
    //   46: iload 4
    //   48: iadd
    //   49: istore_3
    //   50: aload 5
    //   52: iload 4
    //   54: iload_2
    //   55: iadd
    //   56: putfield 126	android/support/v4/text/util/LinkifyCompat$a:c	I
    //   59: iload_2
    //   60: iload_3
    //   61: iadd
    //   62: istore_2
    //   63: aload 5
    //   65: iload_2
    //   66: putfield 129	android/support/v4/text/util/LinkifyCompat$a:d	I
    //   69: aload_1
    //   70: iload_3
    //   71: invokevirtual 73	java/lang/String:substring	(I)Ljava/lang/String;
    //   74: astore_1
    //   75: aload 6
    //   77: ldc -125
    //   79: invokestatic 137	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   82: astore 6
    //   84: new 64	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   91: astore 7
    //   93: aload 7
    //   95: ldc -117
    //   97: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: pop
    //   101: aload 7
    //   103: aload 6
    //   105: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload 5
    //   111: aload 7
    //   113: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: putfield 142	android/support/v4/text/util/LinkifyCompat$a:b	Ljava/lang/String;
    //   119: aload_0
    //   120: aload 5
    //   122: invokevirtual 148	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   125: pop
    //   126: goto -119 -> 7
    //   129: return
    //   130: astore_0
    //   131: return
    //   132: astore 5
    //   134: goto -127 -> 7
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	paramArrayList	ArrayList<a>
    //   0	137	1	paramSpannable	Spannable
    //   6	60	2	i	int
    //   49	22	3	j	int
    //   24	32	4	k	int
    //   39	82	5	localA	a
    //   132	1	5	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    //   11	93	6	str	String
    //   91	21	7	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   7	13	130	java/lang/UnsupportedOperationException
    //   18	26	130	java/lang/UnsupportedOperationException
    //   32	59	130	java/lang/UnsupportedOperationException
    //   63	75	130	java/lang/UnsupportedOperationException
    //   75	84	130	java/lang/UnsupportedOperationException
    //   84	126	130	java/lang/UnsupportedOperationException
    //   75	84	132	java/io/UnsupportedEncodingException
  }
  
  private static void a(ArrayList<a> paramArrayList, Spannable paramSpannable, Pattern paramPattern, String[] paramArrayOfString, Linkify.MatchFilter paramMatchFilter, Linkify.TransformFilter paramTransformFilter)
  {
    paramPattern = paramPattern.matcher(paramSpannable);
    while (paramPattern.find())
    {
      int i = paramPattern.start();
      int j = paramPattern.end();
      if ((paramMatchFilter == null) || (paramMatchFilter.acceptMatch(paramSpannable, i, j)))
      {
        a localA = new a();
        b = a(paramPattern.group(0), paramArrayOfString, paramPattern, paramTransformFilter);
        c = i;
        d = j;
        paramArrayList.add(localA);
      }
    }
  }
  
  private static boolean a()
  {
    return Build.VERSION.SDK_INT >= 28;
  }
  
  public static void addLinks(@NonNull TextView paramTextView, @NonNull Pattern paramPattern, @Nullable String paramString)
  {
    if (a())
    {
      Linkify.addLinks(paramTextView, paramPattern, paramString);
      return;
    }
    addLinks(paramTextView, paramPattern, paramString, null, null, null);
  }
  
  public static void addLinks(@NonNull TextView paramTextView, @NonNull Pattern paramPattern, @Nullable String paramString, @Nullable Linkify.MatchFilter paramMatchFilter, @Nullable Linkify.TransformFilter paramTransformFilter)
  {
    if (a())
    {
      Linkify.addLinks(paramTextView, paramPattern, paramString, paramMatchFilter, paramTransformFilter);
      return;
    }
    addLinks(paramTextView, paramPattern, paramString, null, paramMatchFilter, paramTransformFilter);
  }
  
  @SuppressLint({"NewApi"})
  public static void addLinks(@NonNull TextView paramTextView, @NonNull Pattern paramPattern, @Nullable String paramString, @Nullable String[] paramArrayOfString, @Nullable Linkify.MatchFilter paramMatchFilter, @Nullable Linkify.TransformFilter paramTransformFilter)
  {
    if (a())
    {
      Linkify.addLinks(paramTextView, paramPattern, paramString, paramArrayOfString, paramMatchFilter, paramTransformFilter);
      return;
    }
    SpannableString localSpannableString = SpannableString.valueOf(paramTextView.getText());
    if (addLinks(localSpannableString, paramPattern, paramString, paramArrayOfString, paramMatchFilter, paramTransformFilter))
    {
      paramTextView.setText(localSpannableString);
      a(paramTextView);
    }
  }
  
  public static boolean addLinks(@NonNull Spannable paramSpannable, int paramInt)
  {
    if (a()) {
      return Linkify.addLinks(paramSpannable, paramInt);
    }
    if (paramInt == 0) {
      return false;
    }
    Object localObject1 = (URLSpan[])paramSpannable.getSpans(0, paramSpannable.length(), URLSpan.class);
    int i = localObject1.length - 1;
    while (i >= 0)
    {
      paramSpannable.removeSpan(localObject1[i]);
      i -= 1;
    }
    if ((paramInt & 0x4) != 0) {
      Linkify.addLinks(paramSpannable, 4);
    }
    localObject1 = new ArrayList();
    Object localObject2;
    if ((paramInt & 0x1) != 0)
    {
      localObject2 = PatternsCompat.AUTOLINK_WEB_URL;
      Linkify.MatchFilter localMatchFilter = Linkify.sUrlMatchFilter;
      a((ArrayList)localObject1, paramSpannable, (Pattern)localObject2, new String[] { "http://", "https://", "rtsp://" }, localMatchFilter, null);
    }
    if ((paramInt & 0x2) != 0) {
      a((ArrayList)localObject1, paramSpannable, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[] { "mailto:" }, null, null);
    }
    if ((paramInt & 0x8) != 0) {
      a((ArrayList)localObject1, paramSpannable);
    }
    b((ArrayList)localObject1, paramSpannable);
    if (((ArrayList)localObject1).size() == 0) {
      return false;
    }
    localObject1 = ((ArrayList)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (a)((Iterator)localObject1).next();
      if (a == null) {
        a(b, c, d, paramSpannable);
      }
    }
    return true;
  }
  
  public static boolean addLinks(@NonNull Spannable paramSpannable, @NonNull Pattern paramPattern, @Nullable String paramString)
  {
    if (a()) {
      return Linkify.addLinks(paramSpannable, paramPattern, paramString);
    }
    return addLinks(paramSpannable, paramPattern, paramString, null, null, null);
  }
  
  public static boolean addLinks(@NonNull Spannable paramSpannable, @NonNull Pattern paramPattern, @Nullable String paramString, @Nullable Linkify.MatchFilter paramMatchFilter, @Nullable Linkify.TransformFilter paramTransformFilter)
  {
    if (a()) {
      return Linkify.addLinks(paramSpannable, paramPattern, paramString, paramMatchFilter, paramTransformFilter);
    }
    return addLinks(paramSpannable, paramPattern, paramString, null, paramMatchFilter, paramTransformFilter);
  }
  
  @SuppressLint({"NewApi"})
  public static boolean addLinks(@NonNull Spannable paramSpannable, @NonNull Pattern paramPattern, @Nullable String paramString, @Nullable String[] paramArrayOfString, @Nullable Linkify.MatchFilter paramMatchFilter, @Nullable Linkify.TransformFilter paramTransformFilter)
  {
    if (a()) {
      return Linkify.addLinks(paramSpannable, paramPattern, paramString, paramArrayOfString, paramMatchFilter, paramTransformFilter);
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (paramArrayOfString != null)
    {
      paramString = paramArrayOfString;
      if (paramArrayOfString.length >= 1) {}
    }
    else
    {
      paramString = a;
    }
    String[] arrayOfString = new String[paramString.length + 1];
    arrayOfString[0] = str.toLowerCase(Locale.ROOT);
    int i = 0;
    while (i < paramString.length)
    {
      paramArrayOfString = paramString[i];
      i += 1;
      if (paramArrayOfString == null) {
        paramArrayOfString = "";
      } else {
        paramArrayOfString = paramArrayOfString.toLowerCase(Locale.ROOT);
      }
      arrayOfString[i] = paramArrayOfString;
    }
    paramPattern = paramPattern.matcher(paramSpannable);
    boolean bool1 = false;
    while (paramPattern.find())
    {
      i = paramPattern.start();
      int j = paramPattern.end();
      boolean bool2;
      if (paramMatchFilter != null) {
        bool2 = paramMatchFilter.acceptMatch(paramSpannable, i, j);
      } else {
        bool2 = true;
      }
      if (bool2)
      {
        a(a(paramPattern.group(0), arrayOfString, paramPattern, paramTransformFilter), i, j, paramSpannable);
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean addLinks(@NonNull TextView paramTextView, int paramInt)
  {
    if (a()) {
      return Linkify.addLinks(paramTextView, paramInt);
    }
    if (paramInt == 0) {
      return false;
    }
    Object localObject = paramTextView.getText();
    if ((localObject instanceof Spannable))
    {
      if (addLinks((Spannable)localObject, paramInt))
      {
        a(paramTextView);
        return true;
      }
      return false;
    }
    localObject = SpannableString.valueOf((CharSequence)localObject);
    if (addLinks((Spannable)localObject, paramInt))
    {
      a(paramTextView);
      paramTextView.setText((CharSequence)localObject);
      return true;
    }
    return false;
  }
  
  private static void b(ArrayList<a> paramArrayList, Spannable paramSpannable)
  {
    int i = paramSpannable.length();
    int j = 0;
    Object localObject = (URLSpan[])paramSpannable.getSpans(0, i, URLSpan.class);
    i = 0;
    a localA;
    while (i < localObject.length)
    {
      localA = new a();
      a = localObject[i];
      c = paramSpannable.getSpanStart(localObject[i]);
      d = paramSpannable.getSpanEnd(localObject[i]);
      paramArrayList.add(localA);
      i += 1;
    }
    Collections.sort(paramArrayList, b);
    int k = paramArrayList.size();
    i = j;
    while (i < k - 1)
    {
      localObject = (a)paramArrayList.get(i);
      int m = i + 1;
      localA = (a)paramArrayList.get(m);
      if ((c <= c) && (d > c))
      {
        if (d <= d) {}
        while (d - c > d - c)
        {
          j = m;
          break;
        }
        if (d - c < d - c) {
          j = i;
        } else {
          j = -1;
        }
        if (j != -1)
        {
          localObject = geta;
          if (localObject != null) {
            paramSpannable.removeSpan(localObject);
          }
          paramArrayList.remove(j);
          k -= 1;
          continue;
        }
      }
      i = m;
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface LinkifyMask {}
  
  private static class a
  {
    URLSpan a;
    String b;
    int c;
    int d;
    
    a() {}
  }
}
