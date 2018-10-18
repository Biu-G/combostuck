package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.inputmethod.InputContentInfo;

public final class InputContentInfoCompat
{
  private final c a;
  
  public InputContentInfoCompat(@NonNull Uri paramUri1, @NonNull ClipDescription paramClipDescription, @Nullable Uri paramUri2)
  {
    if (Build.VERSION.SDK_INT >= 25)
    {
      a = new a(paramUri1, paramClipDescription, paramUri2);
      return;
    }
    a = new b(paramUri1, paramClipDescription, paramUri2);
  }
  
  private InputContentInfoCompat(@NonNull c paramC)
  {
    a = paramC;
  }
  
  @Nullable
  public static InputContentInfoCompat wrap(@Nullable Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if (Build.VERSION.SDK_INT < 25) {
      return null;
    }
    return new InputContentInfoCompat(new a(paramObject));
  }
  
  @NonNull
  public Uri getContentUri()
  {
    return a.a();
  }
  
  @NonNull
  public ClipDescription getDescription()
  {
    return a.b();
  }
  
  @Nullable
  public Uri getLinkUri()
  {
    return a.c();
  }
  
  public void releasePermission()
  {
    a.f();
  }
  
  public void requestPermission()
  {
    a.e();
  }
  
  @Nullable
  public Object unwrap()
  {
    return a.d();
  }
  
  @RequiresApi(25)
  private static final class a
    implements InputContentInfoCompat.c
  {
    @NonNull
    final InputContentInfo a;
    
    a(@NonNull Uri paramUri1, @NonNull ClipDescription paramClipDescription, @Nullable Uri paramUri2)
    {
      a = new InputContentInfo(paramUri1, paramClipDescription, paramUri2);
    }
    
    a(@NonNull Object paramObject)
    {
      a = ((InputContentInfo)paramObject);
    }
    
    @NonNull
    public Uri a()
    {
      return a.getContentUri();
    }
    
    @NonNull
    public ClipDescription b()
    {
      return a.getDescription();
    }
    
    @Nullable
    public Uri c()
    {
      return a.getLinkUri();
    }
    
    @Nullable
    public Object d()
    {
      return a;
    }
    
    public void e()
    {
      a.requestPermission();
    }
    
    public void f()
    {
      a.releasePermission();
    }
  }
  
  private static final class b
    implements InputContentInfoCompat.c
  {
    @NonNull
    private final Uri a;
    @NonNull
    private final ClipDescription b;
    @Nullable
    private final Uri c;
    
    b(@NonNull Uri paramUri1, @NonNull ClipDescription paramClipDescription, @Nullable Uri paramUri2)
    {
      a = paramUri1;
      b = paramClipDescription;
      c = paramUri2;
    }
    
    @NonNull
    public Uri a()
    {
      return a;
    }
    
    @NonNull
    public ClipDescription b()
    {
      return b;
    }
    
    @Nullable
    public Uri c()
    {
      return c;
    }
    
    @Nullable
    public Object d()
    {
      return null;
    }
    
    public void e() {}
    
    public void f() {}
  }
  
  private static abstract interface c
  {
    @NonNull
    public abstract Uri a();
    
    @NonNull
    public abstract ClipDescription b();
    
    @Nullable
    public abstract Uri c();
    
    @Nullable
    public abstract Object d();
    
    public abstract void e();
    
    public abstract void f();
  }
}
