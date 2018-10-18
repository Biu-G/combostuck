package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.support.annotation.GuardedBy;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

public class FileProvider
  extends ContentProvider
{
  private static final String[] a = { "_display_name", "_size" };
  private static final File b = new File("/");
  @GuardedBy("sCache")
  private static HashMap<String, a> c = new HashMap();
  private a d;
  
  public FileProvider() {}
  
  private static int a(String paramString)
  {
    if ("r".equals(paramString)) {
      return 268435456;
    }
    if ((!"w".equals(paramString)) && (!"wt".equals(paramString)))
    {
      if ("wa".equals(paramString)) {
        return 704643072;
      }
      if ("rw".equals(paramString)) {
        return 939524096;
      }
      if ("rwt".equals(paramString)) {
        return 1006632960;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid mode: ");
      localStringBuilder.append(paramString);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    return 738197504;
  }
  
  private static a a(Context paramContext, String paramString)
  {
    synchronized (c)
    {
      a localA2 = (a)c.get(paramString);
      a localA1 = localA2;
      if (localA2 == null) {
        try
        {
          localA1 = b(paramContext, paramString);
          c.put(paramString, localA1);
        }
        catch (XmlPullParserException paramContext)
        {
          throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramContext);
        }
        catch (IOException paramContext)
        {
          throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramContext);
        }
      }
      return localA1;
    }
  }
  
  private static File a(File paramFile, String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      File localFile = paramFile;
      if (str != null) {
        localFile = new File(paramFile, str);
      }
      i += 1;
      paramFile = localFile;
    }
    return paramFile;
  }
  
  private static Object[] a(Object[] paramArrayOfObject, int paramInt)
  {
    Object[] arrayOfObject = new Object[paramInt];
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 0, paramInt);
    return arrayOfObject;
  }
  
  private static String[] a(String[] paramArrayOfString, int paramInt)
  {
    String[] arrayOfString = new String[paramInt];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramInt);
    return arrayOfString;
  }
  
  private static a b(Context paramContext, String paramString)
    throws IOException, XmlPullParserException
  {
    b localB = new b(paramString);
    XmlResourceParser localXmlResourceParser = paramContext.getPackageManager().resolveContentProvider(paramString, 128).loadXmlMetaData(paramContext.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
    if (localXmlResourceParser != null)
    {
      for (;;)
      {
        int i = localXmlResourceParser.next();
        if (i == 1) {
          break;
        }
        if (i == 2)
        {
          Object localObject2 = localXmlResourceParser.getName();
          Object localObject1 = null;
          String str1 = localXmlResourceParser.getAttributeValue(null, "name");
          String str2 = localXmlResourceParser.getAttributeValue(null, "path");
          if ("root-path".equals(localObject2))
          {
            paramString = b;
          }
          else if ("files-path".equals(localObject2))
          {
            paramString = paramContext.getFilesDir();
          }
          else if ("cache-path".equals(localObject2))
          {
            paramString = paramContext.getCacheDir();
          }
          else if ("external-path".equals(localObject2))
          {
            paramString = Environment.getExternalStorageDirectory();
          }
          else if ("external-files-path".equals(localObject2))
          {
            localObject2 = ContextCompat.getExternalFilesDirs(paramContext, null);
            paramString = localObject1;
            if (localObject2.length > 0) {
              paramString = localObject2[0];
            }
          }
          else if ("external-cache-path".equals(localObject2))
          {
            localObject2 = ContextCompat.getExternalCacheDirs(paramContext);
            paramString = localObject1;
            if (localObject2.length > 0) {
              paramString = localObject2[0];
            }
          }
          else
          {
            paramString = localObject1;
            if (Build.VERSION.SDK_INT >= 21)
            {
              paramString = localObject1;
              if ("external-media-path".equals(localObject2))
              {
                localObject2 = paramContext.getExternalMediaDirs();
                paramString = localObject1;
                if (localObject2.length > 0) {
                  paramString = localObject2[0];
                }
              }
            }
          }
          if (paramString != null) {
            localB.a(str1, a(paramString, new String[] { str2 }));
          }
        }
      }
      return localB;
    }
    throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
  }
  
  public static Uri getUriForFile(@NonNull Context paramContext, @NonNull String paramString, @NonNull File paramFile)
  {
    return a(paramContext, paramString).a(paramFile);
  }
  
  public void attachInfo(@NonNull Context paramContext, @NonNull ProviderInfo paramProviderInfo)
  {
    super.attachInfo(paramContext, paramProviderInfo);
    if (!exported)
    {
      if (grantUriPermissions)
      {
        d = a(paramContext, authority);
        return;
      }
      throw new SecurityException("Provider must grant uri permissions");
    }
    throw new SecurityException("Provider must not be exported");
  }
  
  public int delete(@NonNull Uri paramUri, @Nullable String paramString, @Nullable String[] paramArrayOfString)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:659)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public String getType(@NonNull Uri paramUri)
  {
    paramUri = d.a(paramUri);
    int i = paramUri.getName().lastIndexOf('.');
    if (i >= 0)
    {
      paramUri = paramUri.getName().substring(i + 1);
      paramUri = MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramUri);
      if (paramUri != null) {
        return paramUri;
      }
    }
    return "application/octet-stream";
  }
  
  public Uri insert(@NonNull Uri paramUri, ContentValues paramContentValues)
  {
    throw new UnsupportedOperationException("No external inserts");
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public ParcelFileDescriptor openFile(@NonNull Uri paramUri, @NonNull String paramString)
    throws FileNotFoundException
  {
    return ParcelFileDescriptor.open(d.a(paramUri), a(paramString));
  }
  
  public Cursor query(@NonNull Uri paramUri, @Nullable String[] paramArrayOfString1, @Nullable String paramString1, @Nullable String[] paramArrayOfString2, @Nullable String paramString2)
  {
    paramString1 = d.a(paramUri);
    paramUri = paramArrayOfString1;
    if (paramArrayOfString1 == null) {
      paramUri = a;
    }
    paramArrayOfString2 = new String[paramUri.length];
    paramArrayOfString1 = new Object[paramUri.length];
    int m = paramUri.length;
    int j = 0;
    int k;
    for (int i = 0; j < m; i = k)
    {
      paramString2 = paramUri[j];
      if ("_display_name".equals(paramString2))
      {
        paramArrayOfString2[i] = "_display_name";
        k = i + 1;
        paramArrayOfString1[i] = paramString1.getName();
      }
      for (i = k;; i = k)
      {
        k = i;
        break;
        k = i;
        if (!"_size".equals(paramString2)) {
          break;
        }
        paramArrayOfString2[i] = "_size";
        k = i + 1;
        paramArrayOfString1[i] = Long.valueOf(paramString1.length());
      }
      j += 1;
    }
    paramUri = a(paramArrayOfString2, i);
    paramArrayOfString1 = a(paramArrayOfString1, i);
    paramUri = new MatrixCursor(paramUri, 1);
    paramUri.addRow(paramArrayOfString1);
    return paramUri;
  }
  
  public int update(@NonNull Uri paramUri, ContentValues paramContentValues, @Nullable String paramString, @Nullable String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException("No external updates");
  }
  
  static abstract interface a
  {
    public abstract Uri a(File paramFile);
    
    public abstract File a(Uri paramUri);
  }
  
  static class b
    implements FileProvider.a
  {
    private final String a;
    private final HashMap<String, File> b = new HashMap();
    
    b(String paramString)
    {
      a = paramString;
    }
    
    public Uri a(File paramFile)
    {
      try
      {
        Object localObject2 = paramFile.getCanonicalPath();
        paramFile = null;
        Iterator localIterator = b.entrySet().iterator();
        while (localIterator.hasNext())
        {
          localObject1 = (Map.Entry)localIterator.next();
          String str = ((File)((Map.Entry)localObject1).getValue()).getPath();
          if ((((String)localObject2).startsWith(str)) && ((paramFile == null) || (str.length() > ((File)paramFile.getValue()).getPath().length()))) {
            paramFile = (File)localObject1;
          }
        }
        if (paramFile != null)
        {
          localObject1 = ((File)paramFile.getValue()).getPath();
          if (((String)localObject1).endsWith("/")) {
            localObject1 = ((String)localObject2).substring(((String)localObject1).length());
          } else {
            localObject1 = ((String)localObject2).substring(((String)localObject1).length() + 1);
          }
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(Uri.encode((String)paramFile.getKey()));
          ((StringBuilder)localObject2).append('/');
          ((StringBuilder)localObject2).append(Uri.encode((String)localObject1, "/"));
          paramFile = ((StringBuilder)localObject2).toString();
          return new Uri.Builder().scheme("content").authority(a).encodedPath(paramFile).build();
        }
        paramFile = new StringBuilder();
        paramFile.append("Failed to find configured root that contains ");
        paramFile.append((String)localObject2);
        throw new IllegalArgumentException(paramFile.toString());
      }
      catch (IOException localIOException)
      {
        Object localObject1;
        for (;;) {}
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Failed to resolve canonical path for ");
      ((StringBuilder)localObject1).append(paramFile);
      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
    }
    
    public File a(Uri paramUri)
    {
      Object localObject2 = paramUri.getEncodedPath();
      int i = ((String)localObject2).indexOf('/', 1);
      Object localObject1 = Uri.decode(((String)localObject2).substring(1, i));
      localObject2 = Uri.decode(((String)localObject2).substring(i + 1));
      localObject1 = (File)b.get(localObject1);
      if (localObject1 != null) {
        paramUri = new File((File)localObject1, (String)localObject2);
      }
      try
      {
        localObject2 = paramUri.getCanonicalFile();
        if (((File)localObject2).getPath().startsWith(((File)localObject1).getPath())) {
          return localObject2;
        }
        throw new SecurityException("Resolved path jumped beyond configured root");
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Failed to resolve canonical path for ");
      ((StringBuilder)localObject1).append(paramUri);
      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Unable to find configured root for ");
      ((StringBuilder)localObject1).append(paramUri);
      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
    }
    
    void a(String paramString, File paramFile)
    {
      if (!TextUtils.isEmpty(paramString)) {
        try
        {
          localObject = paramFile.getCanonicalFile();
          b.put(paramString, localObject);
          return;
        }
        catch (IOException paramString)
        {
          Object localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Failed to resolve canonical path for ");
          ((StringBuilder)localObject).append(paramFile);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString(), paramString);
        }
      }
      throw new IllegalArgumentException("Name must not be empty");
    }
  }
}
