package android.support.v4.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.os.CancellationSignal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class CursorLoader
  extends AsyncTaskLoader<Cursor>
{
  final Loader<Cursor>.ForceLoadContentObserver f = new Loader.ForceLoadContentObserver(this);
  Uri g;
  String[] h;
  String i;
  String[] j;
  String k;
  Cursor l;
  CancellationSignal m;
  
  public CursorLoader(@NonNull Context paramContext)
  {
    super(paramContext);
  }
  
  public CursorLoader(@NonNull Context paramContext, @NonNull Uri paramUri, @Nullable String[] paramArrayOfString1, @Nullable String paramString1, @Nullable String[] paramArrayOfString2, @Nullable String paramString2)
  {
    super(paramContext);
    g = paramUri;
    h = paramArrayOfString1;
    i = paramString1;
    j = paramArrayOfString2;
    k = paramString2;
  }
  
  public void cancelLoadInBackground()
  {
    super.cancelLoadInBackground();
    try
    {
      if (m != null) {
        m.cancel();
      }
      return;
    }
    finally {}
  }
  
  public void deliverResult(Cursor paramCursor)
  {
    if (isReset())
    {
      if (paramCursor != null) {
        paramCursor.close();
      }
      return;
    }
    Cursor localCursor = l;
    l = paramCursor;
    if (isStarted()) {
      super.deliverResult(paramCursor);
    }
    if ((localCursor != null) && (localCursor != paramCursor) && (!localCursor.isClosed())) {
      localCursor.close();
    }
  }
  
  @Deprecated
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mUri=");
    paramPrintWriter.println(g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mProjection=");
    paramPrintWriter.println(Arrays.toString(h));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelection=");
    paramPrintWriter.println(i);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelectionArgs=");
    paramPrintWriter.println(Arrays.toString(j));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSortOrder=");
    paramPrintWriter.println(k);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCursor=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mContentChanged=");
    paramPrintWriter.println(u);
  }
  
  @Nullable
  public String[] getProjection()
  {
    return h;
  }
  
  @Nullable
  public String getSelection()
  {
    return i;
  }
  
  @Nullable
  public String[] getSelectionArgs()
  {
    return j;
  }
  
  @Nullable
  public String getSortOrder()
  {
    return k;
  }
  
  @NonNull
  public Uri getUri()
  {
    return g;
  }
  
  /* Error */
  public Cursor loadInBackground()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 141	android/support/v4/content/CursorLoader:isLoadInBackgroundCanceled	()Z
    //   6: ifne +117 -> 123
    //   9: aload_0
    //   10: new 54	android/support/v4/os/CancellationSignal
    //   13: dup
    //   14: invokespecial 143	android/support/v4/os/CancellationSignal:<init>	()V
    //   17: putfield 52	android/support/v4/content/CursorLoader:m	Landroid/support/v4/os/CancellationSignal;
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_0
    //   23: invokevirtual 147	android/support/v4/content/CursorLoader:getContext	()Landroid/content/Context;
    //   26: invokevirtual 153	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   29: aload_0
    //   30: getfield 38	android/support/v4/content/CursorLoader:g	Landroid/net/Uri;
    //   33: aload_0
    //   34: getfield 40	android/support/v4/content/CursorLoader:h	[Ljava/lang/String;
    //   37: aload_0
    //   38: getfield 42	android/support/v4/content/CursorLoader:i	Ljava/lang/String;
    //   41: aload_0
    //   42: getfield 44	android/support/v4/content/CursorLoader:j	[Ljava/lang/String;
    //   45: aload_0
    //   46: getfield 46	android/support/v4/content/CursorLoader:k	Ljava/lang/String;
    //   49: aload_0
    //   50: getfield 52	android/support/v4/content/CursorLoader:m	Landroid/support/v4/os/CancellationSignal;
    //   53: invokestatic 159	android/support/v4/content/ContentResolverCompat:query	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    //   56: astore_1
    //   57: aload_1
    //   58: ifnull +32 -> 90
    //   61: aload_1
    //   62: invokeinterface 163 1 0
    //   67: pop
    //   68: aload_1
    //   69: aload_0
    //   70: getfield 32	android/support/v4/content/CursorLoader:f	Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    //   73: invokeinterface 167 2 0
    //   78: goto +12 -> 90
    //   81: astore_2
    //   82: aload_1
    //   83: invokeinterface 68 1 0
    //   88: aload_2
    //   89: athrow
    //   90: aload_0
    //   91: monitorenter
    //   92: aload_0
    //   93: aconst_null
    //   94: putfield 52	android/support/v4/content/CursorLoader:m	Landroid/support/v4/os/CancellationSignal;
    //   97: aload_0
    //   98: monitorexit
    //   99: aload_1
    //   100: areturn
    //   101: astore_1
    //   102: aload_0
    //   103: monitorexit
    //   104: aload_1
    //   105: athrow
    //   106: astore_1
    //   107: aload_0
    //   108: monitorenter
    //   109: aload_0
    //   110: aconst_null
    //   111: putfield 52	android/support/v4/content/CursorLoader:m	Landroid/support/v4/os/CancellationSignal;
    //   114: aload_0
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    //   118: astore_1
    //   119: aload_0
    //   120: monitorexit
    //   121: aload_1
    //   122: athrow
    //   123: new 169	android/support/v4/os/OperationCanceledException
    //   126: dup
    //   127: invokespecial 170	android/support/v4/os/OperationCanceledException:<init>	()V
    //   130: athrow
    //   131: astore_1
    //   132: aload_0
    //   133: monitorexit
    //   134: aload_1
    //   135: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	CursorLoader
    //   56	44	1	localCursor	Cursor
    //   101	4	1	localObject1	Object
    //   106	11	1	localObject2	Object
    //   118	4	1	localObject3	Object
    //   131	4	1	localObject4	Object
    //   81	8	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   61	78	81	java/lang/RuntimeException
    //   92	99	101	finally
    //   102	104	101	finally
    //   22	57	106	finally
    //   61	78	106	finally
    //   82	90	106	finally
    //   109	116	118	finally
    //   119	121	118	finally
    //   2	22	131	finally
    //   123	131	131	finally
    //   132	134	131	finally
  }
  
  public void onCanceled(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed())) {
      paramCursor.close();
    }
  }
  
  protected void onReset()
  {
    super.onReset();
    onStopLoading();
    if ((l != null) && (!l.isClosed())) {
      l.close();
    }
    l = null;
  }
  
  protected void onStartLoading()
  {
    if (l != null) {
      deliverResult(l);
    }
    if ((takeContentChanged()) || (l == null)) {
      forceLoad();
    }
  }
  
  protected void onStopLoading()
  {
    cancelLoad();
  }
  
  public void setProjection(@Nullable String[] paramArrayOfString)
  {
    h = paramArrayOfString;
  }
  
  public void setSelection(@Nullable String paramString)
  {
    i = paramString;
  }
  
  public void setSelectionArgs(@Nullable String[] paramArrayOfString)
  {
    j = paramArrayOfString;
  }
  
  public void setSortOrder(@Nullable String paramString)
  {
    k = paramString;
  }
  
  public void setUri(@NonNull Uri paramUri)
  {
    g = paramUri;
  }
}
