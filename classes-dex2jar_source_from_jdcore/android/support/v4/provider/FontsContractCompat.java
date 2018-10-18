package android.support.v4.provider;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import android.support.annotation.GuardedBy;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.res.FontResourcesParserCompat;
import android.support.v4.content.res.ResourcesCompat.FontCallback;
import android.support.v4.graphics.TypefaceCompat;
import android.support.v4.graphics.TypefaceCompatUtil;
import android.support.v4.util.LruCache;
import android.support.v4.util.Preconditions;
import android.support.v4.util.SimpleArrayMap;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public class FontsContractCompat
{
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static final String PARCEL_FONT_RESULTS = "font_results";
  static final LruCache<String, Typeface> a = new LruCache(16);
  static final Object b = new Object();
  @GuardedBy("sLock")
  static final SimpleArrayMap<String, ArrayList<SelfDestructiveThread.ReplyCallback<a>>> c = new SimpleArrayMap();
  private static final SelfDestructiveThread d = new SelfDestructiveThread("fonts", 10, 10000);
  private static final Comparator<byte[]> e = new Comparator()
  {
    public int a(byte[] paramAnonymousArrayOfByte1, byte[] paramAnonymousArrayOfByte2)
    {
      if (paramAnonymousArrayOfByte1.length != paramAnonymousArrayOfByte2.length) {
        return paramAnonymousArrayOfByte1.length - paramAnonymousArrayOfByte2.length;
      }
      int i = 0;
      while (i < paramAnonymousArrayOfByte1.length)
      {
        if (paramAnonymousArrayOfByte1[i] != paramAnonymousArrayOfByte2[i]) {
          return paramAnonymousArrayOfByte1[i] - paramAnonymousArrayOfByte2[i];
        }
        i += 1;
      }
      return 0;
    }
  };
  
  private FontsContractCompat() {}
  
  @NonNull
  static a a(Context paramContext, FontRequest paramFontRequest, int paramInt)
  {
    try
    {
      paramFontRequest = fetchFonts(paramContext, null, paramFontRequest);
      int j = paramFontRequest.getStatusCode();
      int i = -3;
      if (j == 0)
      {
        paramContext = TypefaceCompat.createFromFontInfo(paramContext, null, paramFontRequest.getFonts(), paramInt);
        if (paramContext != null) {
          i = 0;
        }
        return new a(paramContext, i);
      }
      if (paramFontRequest.getStatusCode() == 1) {
        i = -2;
      }
      return new a(null, i);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;) {}
    }
    return new a(null, -1);
  }
  
  private static List<List<byte[]>> a(FontRequest paramFontRequest, Resources paramResources)
  {
    if (paramFontRequest.getCertificates() != null) {
      return paramFontRequest.getCertificates();
    }
    return FontResourcesParserCompat.readCerts(paramResources, paramFontRequest.getCertificatesArrayResId());
  }
  
  private static List<byte[]> a(Signature[] paramArrayOfSignature)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramArrayOfSignature.length)
    {
      localArrayList.add(paramArrayOfSignature[i].toByteArray());
      i += 1;
    }
    return localArrayList;
  }
  
  private static boolean a(List<byte[]> paramList1, List<byte[]> paramList2)
  {
    if (paramList1.size() != paramList2.size()) {
      return false;
    }
    int i = 0;
    while (i < paramList1.size())
    {
      if (!Arrays.equals((byte[])paramList1.get(i), (byte[])paramList2.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  @NonNull
  @VisibleForTesting
  static FontInfo[] a(Context paramContext, FontRequest paramFontRequest, String paramString, CancellationSignal paramCancellationSignal)
  {
    ArrayList localArrayList = new ArrayList();
    Uri localUri1 = new Uri.Builder().scheme("content").authority(paramString).build();
    Uri localUri2 = new Uri.Builder().scheme("content").authority(paramString).appendPath("file").build();
    Object localObject = null;
    paramString = localObject;
    label336:
    label368:
    label389:
    label433:
    int k;
    label454:
    label541:
    try
    {
      if (Build.VERSION.SDK_INT > 16)
      {
        paramString = localObject;
        paramContext = paramContext.getContentResolver();
        paramString = localObject;
        paramFontRequest = paramFontRequest.getQuery();
        paramString = localObject;
        paramContext = paramContext.query(localUri1, new String[] { "_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code" }, "query = ?", new String[] { paramFontRequest }, null, paramCancellationSignal);
      }
      else
      {
        paramString = localObject;
        paramContext = paramContext.getContentResolver();
        paramString = localObject;
        paramFontRequest = paramFontRequest.getQuery();
        paramString = localObject;
        paramContext = paramContext.query(localUri1, new String[] { "_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code" }, "query = ?", new String[] { paramFontRequest }, null);
      }
    }
    finally
    {
      int m;
      int n;
      int i1;
      int i2;
      int i3;
      int i4;
      if (paramString == null) {
        break label541;
      }
      paramString.close();
    }
    paramFontRequest = localArrayList;
    int i;
    int j;
    boolean bool;
    if (paramContext != null)
    {
      paramFontRequest = localArrayList;
      paramString = paramContext;
      if (paramContext.getCount() > 0)
      {
        paramString = paramContext;
        m = paramContext.getColumnIndex("result_code");
        paramString = paramContext;
        paramCancellationSignal = new ArrayList();
        paramString = paramContext;
        n = paramContext.getColumnIndex("_id");
        paramString = paramContext;
        i1 = paramContext.getColumnIndex("file_id");
        paramString = paramContext;
        i2 = paramContext.getColumnIndex("font_ttc_index");
        paramString = paramContext;
        i3 = paramContext.getColumnIndex("font_weight");
        paramString = paramContext;
        i4 = paramContext.getColumnIndex("font_italic");
        paramString = paramContext;
        if (paramContext.moveToNext())
        {
          if (m == -1) {
            break label546;
          }
          paramString = paramContext;
          i = paramContext.getInt(m);
          if (i2 == -1) {
            break label552;
          }
          paramString = paramContext;
          j = paramContext.getInt(i2);
          if (i1 == -1)
          {
            paramString = paramContext;
            paramFontRequest = ContentUris.withAppendedId(localUri1, paramContext.getLong(n));
            break label558;
          }
          paramString = paramContext;
          paramFontRequest = ContentUris.withAppendedId(localUri2, paramContext.getLong(i1));
          break label558;
          if (i3 == -1) {
            break label561;
          }
          paramString = paramContext;
          k = paramContext.getInt(i3);
          if (i4 == -1) {
            break label569;
          }
          paramString = paramContext;
          if (paramContext.getInt(i4) != 1) {
            break label569;
          }
          bool = true;
        }
      }
    }
    for (;;)
    {
      paramString = paramContext;
      paramCancellationSignal.add(new FontInfo(paramFontRequest, j, k, bool, i));
      break label336;
      paramFontRequest = paramCancellationSignal;
      if (paramContext != null) {
        paramContext.close();
      }
      return (FontInfo[])paramFontRequest.toArray(new FontInfo[0]);
      break;
      label546:
      i = 0;
      break label368;
      label552:
      j = 0;
      break label389;
      label558:
      break label433;
      label561:
      k = 400;
      break label454;
      label569:
      bool = false;
    }
  }
  
  @Nullable
  public static Typeface buildTypeface(@NonNull Context paramContext, @Nullable CancellationSignal paramCancellationSignal, @NonNull FontInfo[] paramArrayOfFontInfo)
  {
    return TypefaceCompat.createFromFontInfo(paramContext, paramCancellationSignal, paramArrayOfFontInfo, 0);
  }
  
  @NonNull
  public static FontFamilyResult fetchFonts(@NonNull Context paramContext, @Nullable CancellationSignal paramCancellationSignal, @NonNull FontRequest paramFontRequest)
    throws PackageManager.NameNotFoundException
  {
    ProviderInfo localProviderInfo = getProvider(paramContext.getPackageManager(), paramFontRequest, paramContext.getResources());
    if (localProviderInfo == null) {
      return new FontFamilyResult(1, null);
    }
    return new FontFamilyResult(0, a(paramContext, paramFontRequest, authority, paramCancellationSignal));
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static Typeface getFontSync(Context paramContext, final FontRequest paramFontRequest, @Nullable ResourcesCompat.FontCallback arg2, @Nullable final Handler paramHandler, boolean paramBoolean, int paramInt1, final int paramInt2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramFontRequest.getIdentifier());
    ((StringBuilder)localObject).append("-");
    ((StringBuilder)localObject).append(paramInt2);
    localObject = ((StringBuilder)localObject).toString();
    Typeface localTypeface = (Typeface)a.get(localObject);
    if (localTypeface != null)
    {
      if (??? != null) {
        ???.onFontRetrieved(localTypeface);
      }
      return localTypeface;
    }
    if ((paramBoolean) && (paramInt1 == -1))
    {
      paramContext = a(paramContext, paramFontRequest, paramInt2);
      if (??? != null) {
        if (b == 0) {
          ???.callbackSuccessAsync(a, paramHandler);
        } else {
          ???.callbackFailAsync(b, paramHandler);
        }
      }
      return a;
    }
    paramFontRequest = new Callable()
    {
      public FontsContractCompat.a a()
        throws Exception
      {
        FontsContractCompat.a localA = FontsContractCompat.a(a, paramFontRequest, paramInt2);
        if (a != null) {
          FontsContractCompat.a.put(d, a);
        }
        return localA;
      }
    };
    if (paramBoolean) {}
    try
    {
      paramContext = dpostAndWaita;
      return paramContext;
    }
    catch (InterruptedException paramContext) {}
    if (??? == null) {
      paramContext = null;
    } else {
      paramContext = new SelfDestructiveThread.ReplyCallback()
      {
        public void a(FontsContractCompat.a paramAnonymousA)
        {
          if (paramAnonymousA == null)
          {
            a.callbackFailAsync(1, paramHandler);
            return;
          }
          if (b == 0)
          {
            a.callbackSuccessAsync(a, paramHandler);
            return;
          }
          a.callbackFailAsync(b, paramHandler);
        }
      };
    }
    synchronized (b)
    {
      if (c.containsKey(localObject))
      {
        if (paramContext != null) {
          ((ArrayList)c.get(localObject)).add(paramContext);
        }
        return null;
      }
      if (paramContext != null)
      {
        paramHandler = new ArrayList();
        paramHandler.add(paramContext);
        c.put(localObject, paramHandler);
      }
      d.postAndReply(paramFontRequest, new SelfDestructiveThread.ReplyCallback()
      {
        public void a(FontsContractCompat.a paramAnonymousA)
        {
          synchronized (FontsContractCompat.b)
          {
            ArrayList localArrayList = (ArrayList)FontsContractCompat.c.get(a);
            if (localArrayList == null) {
              return;
            }
            FontsContractCompat.c.remove(a);
            int i = 0;
            while (i < localArrayList.size())
            {
              ((SelfDestructiveThread.ReplyCallback)localArrayList.get(i)).onReply(paramAnonymousA);
              i += 1;
            }
            return;
          }
        }
      });
      return null;
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  @VisibleForTesting
  public static ProviderInfo getProvider(@NonNull PackageManager paramPackageManager, @NonNull FontRequest paramFontRequest, @Nullable Resources paramResources)
    throws PackageManager.NameNotFoundException
  {
    String str = paramFontRequest.getProviderAuthority();
    int i = 0;
    ProviderInfo localProviderInfo = paramPackageManager.resolveContentProvider(str, 0);
    if (localProviderInfo != null)
    {
      if (packageName.equals(paramFontRequest.getProviderPackage()))
      {
        paramPackageManager = a(getPackageInfopackageName, 64).signatures);
        Collections.sort(paramPackageManager, e);
        paramFontRequest = a(paramFontRequest, paramResources);
        while (i < paramFontRequest.size())
        {
          paramResources = new ArrayList((Collection)paramFontRequest.get(i));
          Collections.sort(paramResources, e);
          if (a(paramPackageManager, paramResources)) {
            return localProviderInfo;
          }
          i += 1;
        }
        return null;
      }
      paramPackageManager = new StringBuilder();
      paramPackageManager.append("Found content provider ");
      paramPackageManager.append(str);
      paramPackageManager.append(", but package was not ");
      paramPackageManager.append(paramFontRequest.getProviderPackage());
      throw new PackageManager.NameNotFoundException(paramPackageManager.toString());
    }
    paramPackageManager = new StringBuilder();
    paramPackageManager.append("No package found for authority: ");
    paramPackageManager.append(str);
    throw new PackageManager.NameNotFoundException(paramPackageManager.toString());
  }
  
  @RequiresApi(19)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static Map<Uri, ByteBuffer> prepareFontData(Context paramContext, FontInfo[] paramArrayOfFontInfo, CancellationSignal paramCancellationSignal)
  {
    HashMap localHashMap = new HashMap();
    int j = paramArrayOfFontInfo.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramArrayOfFontInfo[i];
      if (((FontInfo)localObject).getResultCode() == 0)
      {
        localObject = ((FontInfo)localObject).getUri();
        if (!localHashMap.containsKey(localObject)) {
          localHashMap.put(localObject, TypefaceCompatUtil.mmap(paramContext, paramCancellationSignal, (Uri)localObject));
        }
      }
      i += 1;
    }
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public static void requestFont(@NonNull Context paramContext, @NonNull final FontRequest paramFontRequest, @NonNull final FontRequestCallback paramFontRequestCallback, @NonNull Handler paramHandler)
  {
    paramHandler.post(new Runnable()
    {
      public void run()
      {
        try
        {
          Object localObject1 = FontsContractCompat.fetchFonts(a, null, paramFontRequest);
          if (((FontsContractCompat.FontFamilyResult)localObject1).getStatusCode() != 0)
          {
            switch (((FontsContractCompat.FontFamilyResult)localObject1).getStatusCode())
            {
            default: 
              c.post(new Runnable()
              {
                public void run()
                {
                  d.onTypefaceRequestFailed(-3);
                }
              });
              return;
            case 2: 
              c.post(new Runnable()
              {
                public void run()
                {
                  d.onTypefaceRequestFailed(-3);
                }
              });
              return;
            }
            c.post(new Runnable()
            {
              public void run()
              {
                d.onTypefaceRequestFailed(-2);
              }
            });
            return;
          }
          localObject1 = ((FontsContractCompat.FontFamilyResult)localObject1).getFonts();
          if ((localObject1 != null) && (localObject1.length != 0))
          {
            int j = localObject1.length;
            final int i = 0;
            while (i < j)
            {
              Object localObject2 = localObject1[i];
              if (localObject2.getResultCode() != 0)
              {
                i = localObject2.getResultCode();
                if (i < 0)
                {
                  c.post(new Runnable()
                  {
                    public void run()
                    {
                      d.onTypefaceRequestFailed(-3);
                    }
                  });
                  return;
                }
                c.post(new Runnable()
                {
                  public void run()
                  {
                    d.onTypefaceRequestFailed(i);
                  }
                });
                return;
              }
              i += 1;
            }
            localObject1 = FontsContractCompat.buildTypeface(a, null, (FontsContractCompat.FontInfo[])localObject1);
            if (localObject1 == null)
            {
              c.post(new Runnable()
              {
                public void run()
                {
                  d.onTypefaceRequestFailed(-3);
                }
              });
              return;
            }
            c.post(new Runnable()
            {
              public void run()
              {
                d.onTypefaceRetrieved(a);
              }
            });
            return;
          }
          c.post(new Runnable()
          {
            public void run()
            {
              d.onTypefaceRequestFailed(1);
            }
          });
          return;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          for (;;) {}
        }
        c.post(new Runnable()
        {
          public void run()
          {
            d.onTypefaceRequestFailed(-1);
          }
        });
      }
    });
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static void resetCache()
  {
    a.evictAll();
  }
  
  public static final class Columns
    implements BaseColumns
  {
    public static final String FILE_ID = "file_id";
    public static final String ITALIC = "font_italic";
    public static final String RESULT_CODE = "result_code";
    public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
    public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
    public static final int RESULT_CODE_MALFORMED_QUERY = 3;
    public static final int RESULT_CODE_OK = 0;
    public static final String TTC_INDEX = "font_ttc_index";
    public static final String VARIATION_SETTINGS = "font_variation_settings";
    public static final String WEIGHT = "font_weight";
    
    public Columns() {}
  }
  
  public static class FontFamilyResult
  {
    public static final int STATUS_OK = 0;
    public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
    public static final int STATUS_WRONG_CERTIFICATES = 1;
    private final int a;
    private final FontsContractCompat.FontInfo[] b;
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public FontFamilyResult(int paramInt, @Nullable FontsContractCompat.FontInfo[] paramArrayOfFontInfo)
    {
      a = paramInt;
      b = paramArrayOfFontInfo;
    }
    
    public FontsContractCompat.FontInfo[] getFonts()
    {
      return b;
    }
    
    public int getStatusCode()
    {
      return a;
    }
  }
  
  public static class FontInfo
  {
    private final Uri a;
    private final int b;
    private final int c;
    private final boolean d;
    private final int e;
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public FontInfo(@NonNull Uri paramUri, @IntRange(from=0L) int paramInt1, @IntRange(from=1L, to=1000L) int paramInt2, boolean paramBoolean, int paramInt3)
    {
      a = ((Uri)Preconditions.checkNotNull(paramUri));
      b = paramInt1;
      c = paramInt2;
      d = paramBoolean;
      e = paramInt3;
    }
    
    public int getResultCode()
    {
      return e;
    }
    
    @IntRange(from=0L)
    public int getTtcIndex()
    {
      return b;
    }
    
    @NonNull
    public Uri getUri()
    {
      return a;
    }
    
    @IntRange(from=1L, to=1000L)
    public int getWeight()
    {
      return c;
    }
    
    public boolean isItalic()
    {
      return d;
    }
  }
  
  public static class FontRequestCallback
  {
    public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
    public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
    public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
    public static final int FAIL_REASON_MALFORMED_QUERY = 3;
    public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
    public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
    public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public static final int RESULT_OK = 0;
    
    public FontRequestCallback() {}
    
    public void onTypefaceRequestFailed(int paramInt) {}
    
    public void onTypefaceRetrieved(Typeface paramTypeface) {}
    
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public static @interface FontRequestFailReason {}
  }
  
  private static final class a
  {
    final Typeface a;
    final int b;
    
    a(@Nullable Typeface paramTypeface, int paramInt)
    {
      a = paramTypeface;
      b = paramInt;
    }
  }
}
