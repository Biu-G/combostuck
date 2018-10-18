package android.support.v4.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class Loader<D>
{
  int n;
  OnLoadCompleteListener<D> o;
  OnLoadCanceledListener<D> p;
  Context q;
  boolean r = false;
  boolean s = false;
  boolean t = true;
  boolean u = false;
  boolean v = false;
  
  public Loader(@NonNull Context paramContext)
  {
    q = paramContext.getApplicationContext();
  }
  
  @MainThread
  public void abandon()
  {
    s = true;
    onAbandon();
  }
  
  @MainThread
  public boolean cancelLoad()
  {
    return onCancelLoad();
  }
  
  public void commitContentChanged()
  {
    v = false;
  }
  
  @NonNull
  public String dataToString(@Nullable D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    DebugUtils.buildShortClassTag(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  @MainThread
  public void deliverCancellation()
  {
    if (p != null) {
      p.onLoadCanceled(this);
    }
  }
  
  @MainThread
  public void deliverResult(@Nullable D paramD)
  {
    if (o != null) {
      o.onLoadComplete(this, paramD);
    }
  }
  
  @Deprecated
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(n);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(o);
    if ((r) || (u) || (v))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(r);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(u);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(v);
    }
    if ((s) || (t))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(s);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(t);
    }
  }
  
  @MainThread
  public void forceLoad()
  {
    onForceLoad();
  }
  
  @NonNull
  public Context getContext()
  {
    return q;
  }
  
  public int getId()
  {
    return n;
  }
  
  public boolean isAbandoned()
  {
    return s;
  }
  
  public boolean isReset()
  {
    return t;
  }
  
  public boolean isStarted()
  {
    return r;
  }
  
  @MainThread
  protected void onAbandon() {}
  
  @MainThread
  protected boolean onCancelLoad()
  {
    return false;
  }
  
  @MainThread
  public void onContentChanged()
  {
    if (r)
    {
      forceLoad();
      return;
    }
    u = true;
  }
  
  @MainThread
  protected void onForceLoad() {}
  
  @MainThread
  protected void onReset() {}
  
  @MainThread
  protected void onStartLoading() {}
  
  @MainThread
  protected void onStopLoading() {}
  
  @MainThread
  public void registerListener(int paramInt, @NonNull OnLoadCompleteListener<D> paramOnLoadCompleteListener)
  {
    if (o == null)
    {
      o = paramOnLoadCompleteListener;
      n = paramInt;
      return;
    }
    throw new IllegalStateException("There is already a listener registered");
  }
  
  @MainThread
  public void registerOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> paramOnLoadCanceledListener)
  {
    if (p == null)
    {
      p = paramOnLoadCanceledListener;
      return;
    }
    throw new IllegalStateException("There is already a listener registered");
  }
  
  @MainThread
  public void reset()
  {
    onReset();
    t = true;
    r = false;
    s = false;
    u = false;
    v = false;
  }
  
  public void rollbackContentChanged()
  {
    if (v) {
      onContentChanged();
    }
  }
  
  @MainThread
  public final void startLoading()
  {
    r = true;
    t = false;
    s = false;
    onStartLoading();
  }
  
  @MainThread
  public void stopLoading()
  {
    r = false;
    onStopLoading();
  }
  
  public boolean takeContentChanged()
  {
    boolean bool = u;
    u = false;
    v |= bool;
    return bool;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    DebugUtils.buildShortClassTag(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(n);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  @MainThread
  public void unregisterListener(@NonNull OnLoadCompleteListener<D> paramOnLoadCompleteListener)
  {
    if (o != null)
    {
      if (o == paramOnLoadCompleteListener)
      {
        o = null;
        return;
      }
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    throw new IllegalStateException("No listener register");
  }
  
  @MainThread
  public void unregisterOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> paramOnLoadCanceledListener)
  {
    if (p != null)
    {
      if (p == paramOnLoadCanceledListener)
      {
        p = null;
        return;
      }
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    throw new IllegalStateException("No listener register");
  }
  
  public final class ForceLoadContentObserver
    extends ContentObserver
  {
    public ForceLoadContentObserver()
    {
      super();
    }
    
    public boolean deliverSelfNotifications()
    {
      return true;
    }
    
    public void onChange(boolean paramBoolean)
    {
      onContentChanged();
    }
  }
  
  public static abstract interface OnLoadCanceledListener<D>
  {
    public abstract void onLoadCanceled(@NonNull Loader<D> paramLoader);
  }
  
  public static abstract interface OnLoadCompleteListener<D>
  {
    public abstract void onLoadComplete(@NonNull Loader<D> paramLoader, @Nullable D paramD);
  }
}
