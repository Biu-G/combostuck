package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.annotation.StringRes;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;
import java.util.ArrayList;

public final class ShareCompat
{
  public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
  public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
  
  private ShareCompat() {}
  
  public static void configureMenuItem(Menu paramMenu, int paramInt, IntentBuilder paramIntentBuilder)
  {
    paramMenu = paramMenu.findItem(paramInt);
    if (paramMenu != null)
    {
      configureMenuItem(paramMenu, paramIntentBuilder);
      return;
    }
    paramMenu = new StringBuilder();
    paramMenu.append("Could not find menu item with id ");
    paramMenu.append(paramInt);
    paramMenu.append(" in the supplied menu");
    throw new IllegalArgumentException(paramMenu.toString());
  }
  
  public static void configureMenuItem(MenuItem paramMenuItem, IntentBuilder paramIntentBuilder)
  {
    Object localObject = paramMenuItem.getActionProvider();
    if (!(localObject instanceof ShareActionProvider)) {
      localObject = new ShareActionProvider(paramIntentBuilder.a());
    } else {
      localObject = (ShareActionProvider)localObject;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(".sharecompat_");
    localStringBuilder.append(paramIntentBuilder.a().getClass().getName());
    ((ShareActionProvider)localObject).setShareHistoryFileName(localStringBuilder.toString());
    ((ShareActionProvider)localObject).setShareIntent(paramIntentBuilder.getIntent());
    paramMenuItem.setActionProvider((ActionProvider)localObject);
    if ((Build.VERSION.SDK_INT < 16) && (!paramMenuItem.hasSubMenu())) {
      paramMenuItem.setIntent(paramIntentBuilder.createChooserIntent());
    }
  }
  
  public static ComponentName getCallingActivity(Activity paramActivity)
  {
    ComponentName localComponentName2 = paramActivity.getCallingActivity();
    ComponentName localComponentName1 = localComponentName2;
    if (localComponentName2 == null) {
      localComponentName1 = (ComponentName)paramActivity.getIntent().getParcelableExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY");
    }
    return localComponentName1;
  }
  
  public static String getCallingPackage(Activity paramActivity)
  {
    String str2 = paramActivity.getCallingPackage();
    String str1 = str2;
    if (str2 == null) {
      str1 = paramActivity.getIntent().getStringExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE");
    }
    return str1;
  }
  
  public static class IntentBuilder
  {
    private Activity a;
    private Intent b;
    private CharSequence c;
    private ArrayList<String> d;
    private ArrayList<String> e;
    private ArrayList<String> f;
    private ArrayList<Uri> g;
    
    private IntentBuilder(Activity paramActivity)
    {
      a = paramActivity;
      b = new Intent().setAction("android.intent.action.SEND");
      b.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", paramActivity.getPackageName());
      b.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", paramActivity.getComponentName());
      b.addFlags(524288);
    }
    
    private void a(String paramString, ArrayList<String> paramArrayList)
    {
      String[] arrayOfString1 = b.getStringArrayExtra(paramString);
      int i;
      if (arrayOfString1 != null) {
        i = arrayOfString1.length;
      } else {
        i = 0;
      }
      String[] arrayOfString2 = new String[paramArrayList.size() + i];
      paramArrayList.toArray(arrayOfString2);
      if (arrayOfString1 != null) {
        System.arraycopy(arrayOfString1, 0, arrayOfString2, paramArrayList.size(), i);
      }
      b.putExtra(paramString, arrayOfString2);
    }
    
    private void a(String paramString, String[] paramArrayOfString)
    {
      Intent localIntent = getIntent();
      String[] arrayOfString1 = localIntent.getStringArrayExtra(paramString);
      int i;
      if (arrayOfString1 != null) {
        i = arrayOfString1.length;
      } else {
        i = 0;
      }
      String[] arrayOfString2 = new String[paramArrayOfString.length + i];
      if (arrayOfString1 != null) {
        System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, i);
      }
      System.arraycopy(paramArrayOfString, 0, arrayOfString2, i, paramArrayOfString.length);
      localIntent.putExtra(paramString, arrayOfString2);
    }
    
    public static IntentBuilder from(Activity paramActivity)
    {
      return new IntentBuilder(paramActivity);
    }
    
    Activity a()
    {
      return a;
    }
    
    public IntentBuilder addEmailBcc(String paramString)
    {
      if (f == null) {
        f = new ArrayList();
      }
      f.add(paramString);
      return this;
    }
    
    public IntentBuilder addEmailBcc(String[] paramArrayOfString)
    {
      a("android.intent.extra.BCC", paramArrayOfString);
      return this;
    }
    
    public IntentBuilder addEmailCc(String paramString)
    {
      if (e == null) {
        e = new ArrayList();
      }
      e.add(paramString);
      return this;
    }
    
    public IntentBuilder addEmailCc(String[] paramArrayOfString)
    {
      a("android.intent.extra.CC", paramArrayOfString);
      return this;
    }
    
    public IntentBuilder addEmailTo(String paramString)
    {
      if (d == null) {
        d = new ArrayList();
      }
      d.add(paramString);
      return this;
    }
    
    public IntentBuilder addEmailTo(String[] paramArrayOfString)
    {
      a("android.intent.extra.EMAIL", paramArrayOfString);
      return this;
    }
    
    public IntentBuilder addStream(Uri paramUri)
    {
      Uri localUri = (Uri)b.getParcelableExtra("android.intent.extra.STREAM");
      if ((g == null) && (localUri == null)) {
        return setStream(paramUri);
      }
      if (g == null) {
        g = new ArrayList();
      }
      if (localUri != null)
      {
        b.removeExtra("android.intent.extra.STREAM");
        g.add(localUri);
      }
      g.add(paramUri);
      return this;
    }
    
    public Intent createChooserIntent()
    {
      return Intent.createChooser(getIntent(), c);
    }
    
    public Intent getIntent()
    {
      if (d != null)
      {
        a("android.intent.extra.EMAIL", d);
        d = null;
      }
      if (e != null)
      {
        a("android.intent.extra.CC", e);
        e = null;
      }
      if (f != null)
      {
        a("android.intent.extra.BCC", f);
        f = null;
      }
      ArrayList localArrayList = g;
      int i = 1;
      if ((localArrayList == null) || (g.size() <= 1)) {
        i = 0;
      }
      boolean bool = b.getAction().equals("android.intent.action.SEND_MULTIPLE");
      if ((i == 0) && (bool))
      {
        b.setAction("android.intent.action.SEND");
        if ((g != null) && (!g.isEmpty())) {
          b.putExtra("android.intent.extra.STREAM", (Parcelable)g.get(0));
        } else {
          b.removeExtra("android.intent.extra.STREAM");
        }
        g = null;
      }
      if ((i != 0) && (!bool))
      {
        b.setAction("android.intent.action.SEND_MULTIPLE");
        if ((g != null) && (!g.isEmpty())) {
          b.putParcelableArrayListExtra("android.intent.extra.STREAM", g);
        } else {
          b.removeExtra("android.intent.extra.STREAM");
        }
      }
      return b;
    }
    
    public IntentBuilder setChooserTitle(@StringRes int paramInt)
    {
      return setChooserTitle(a.getText(paramInt));
    }
    
    public IntentBuilder setChooserTitle(CharSequence paramCharSequence)
    {
      c = paramCharSequence;
      return this;
    }
    
    public IntentBuilder setEmailBcc(String[] paramArrayOfString)
    {
      b.putExtra("android.intent.extra.BCC", paramArrayOfString);
      return this;
    }
    
    public IntentBuilder setEmailCc(String[] paramArrayOfString)
    {
      b.putExtra("android.intent.extra.CC", paramArrayOfString);
      return this;
    }
    
    public IntentBuilder setEmailTo(String[] paramArrayOfString)
    {
      if (d != null) {
        d = null;
      }
      b.putExtra("android.intent.extra.EMAIL", paramArrayOfString);
      return this;
    }
    
    public IntentBuilder setHtmlText(String paramString)
    {
      b.putExtra("android.intent.extra.HTML_TEXT", paramString);
      if (!b.hasExtra("android.intent.extra.TEXT")) {
        setText(Html.fromHtml(paramString));
      }
      return this;
    }
    
    public IntentBuilder setStream(Uri paramUri)
    {
      if (!b.getAction().equals("android.intent.action.SEND")) {
        b.setAction("android.intent.action.SEND");
      }
      g = null;
      b.putExtra("android.intent.extra.STREAM", paramUri);
      return this;
    }
    
    public IntentBuilder setSubject(String paramString)
    {
      b.putExtra("android.intent.extra.SUBJECT", paramString);
      return this;
    }
    
    public IntentBuilder setText(CharSequence paramCharSequence)
    {
      b.putExtra("android.intent.extra.TEXT", paramCharSequence);
      return this;
    }
    
    public IntentBuilder setType(String paramString)
    {
      b.setType(paramString);
      return this;
    }
    
    public void startChooser()
    {
      a.startActivity(createChooserIntent());
    }
  }
  
  public static class IntentReader
  {
    private Activity a;
    private Intent b;
    private String c;
    private ComponentName d;
    private ArrayList<Uri> e;
    
    private IntentReader(Activity paramActivity)
    {
      a = paramActivity;
      b = paramActivity.getIntent();
      c = ShareCompat.getCallingPackage(paramActivity);
      d = ShareCompat.getCallingActivity(paramActivity);
    }
    
    private static void a(StringBuilder paramStringBuilder, CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      while (paramInt1 < paramInt2)
      {
        char c1 = paramCharSequence.charAt(paramInt1);
        if (c1 == '<')
        {
          paramStringBuilder.append("&lt;");
        }
        else if (c1 == '>')
        {
          paramStringBuilder.append("&gt;");
        }
        else if (c1 == '&')
        {
          paramStringBuilder.append("&amp;");
        }
        else if ((c1 <= '~') && (c1 >= ' '))
        {
          if (c1 == ' ')
          {
            for (;;)
            {
              int i = paramInt1 + 1;
              if ((i >= paramInt2) || (paramCharSequence.charAt(i) != ' ')) {
                break;
              }
              paramStringBuilder.append("&nbsp;");
              paramInt1 = i;
            }
            paramStringBuilder.append(' ');
          }
          else
          {
            paramStringBuilder.append(c1);
          }
        }
        else
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("&#");
          localStringBuilder.append(c1);
          localStringBuilder.append(";");
          paramStringBuilder.append(localStringBuilder.toString());
        }
        paramInt1 += 1;
      }
    }
    
    public static IntentReader from(Activity paramActivity)
    {
      return new IntentReader(paramActivity);
    }
    
    public ComponentName getCallingActivity()
    {
      return d;
    }
    
    public Drawable getCallingActivityIcon()
    {
      if (d == null) {
        return null;
      }
      Object localObject = a.getPackageManager();
      try
      {
        localObject = ((PackageManager)localObject).getActivityIcon(d);
        return localObject;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("IntentReader", "Could not retrieve icon for calling activity", localNameNotFoundException);
      }
      return null;
    }
    
    public Drawable getCallingApplicationIcon()
    {
      if (c == null) {
        return null;
      }
      Object localObject = a.getPackageManager();
      try
      {
        localObject = ((PackageManager)localObject).getApplicationIcon(c);
        return localObject;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("IntentReader", "Could not retrieve icon for calling application", localNameNotFoundException);
      }
      return null;
    }
    
    public CharSequence getCallingApplicationLabel()
    {
      if (c == null) {
        return null;
      }
      Object localObject = a.getPackageManager();
      try
      {
        localObject = ((PackageManager)localObject).getApplicationLabel(((PackageManager)localObject).getApplicationInfo(c, 0));
        return localObject;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("IntentReader", "Could not retrieve label for calling application", localNameNotFoundException);
      }
      return null;
    }
    
    public String getCallingPackage()
    {
      return c;
    }
    
    public String[] getEmailBcc()
    {
      return b.getStringArrayExtra("android.intent.extra.BCC");
    }
    
    public String[] getEmailCc()
    {
      return b.getStringArrayExtra("android.intent.extra.CC");
    }
    
    public String[] getEmailTo()
    {
      return b.getStringArrayExtra("android.intent.extra.EMAIL");
    }
    
    public String getHtmlText()
    {
      String str = b.getStringExtra("android.intent.extra.HTML_TEXT");
      Object localObject = str;
      if (str == null)
      {
        CharSequence localCharSequence = getText();
        if ((localCharSequence instanceof Spanned)) {
          return Html.toHtml((Spanned)localCharSequence);
        }
        localObject = str;
        if (localCharSequence != null)
        {
          if (Build.VERSION.SDK_INT >= 16) {
            return Html.escapeHtml(localCharSequence);
          }
          localObject = new StringBuilder();
          a((StringBuilder)localObject, localCharSequence, 0, localCharSequence.length());
          localObject = ((StringBuilder)localObject).toString();
        }
      }
      return localObject;
    }
    
    public Uri getStream()
    {
      return (Uri)b.getParcelableExtra("android.intent.extra.STREAM");
    }
    
    public Uri getStream(int paramInt)
    {
      if ((e == null) && (isMultipleShare())) {
        e = b.getParcelableArrayListExtra("android.intent.extra.STREAM");
      }
      if (e != null) {
        return (Uri)e.get(paramInt);
      }
      if (paramInt == 0) {
        return (Uri)b.getParcelableExtra("android.intent.extra.STREAM");
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Stream items available: ");
      localStringBuilder.append(getStreamCount());
      localStringBuilder.append(" index requested: ");
      localStringBuilder.append(paramInt);
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    public int getStreamCount()
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:659)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
    
    public String getSubject()
    {
      return b.getStringExtra("android.intent.extra.SUBJECT");
    }
    
    public CharSequence getText()
    {
      return b.getCharSequenceExtra("android.intent.extra.TEXT");
    }
    
    public String getType()
    {
      return b.getType();
    }
    
    public boolean isMultipleShare()
    {
      return "android.intent.action.SEND_MULTIPLE".equals(b.getAction());
    }
    
    public boolean isShareIntent()
    {
      String str = b.getAction();
      return ("android.intent.action.SEND".equals(str)) || ("android.intent.action.SEND_MULTIPLE".equals(str));
    }
    
    public boolean isSingleShare()
    {
      return "android.intent.action.SEND".equals(b.getAction());
    }
  }
}
