package android.support.v7.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

class a<T>
  implements ThreadUtil<T>
{
  a() {}
  
  public ThreadUtil.BackgroundCallback<T> a(final ThreadUtil.BackgroundCallback<T> paramBackgroundCallback)
  {
    new ThreadUtil.BackgroundCallback()
    {
      final a.a a = new a.a();
      AtomicBoolean b = new AtomicBoolean(false);
      private final Executor e = AsyncTask.THREAD_POOL_EXECUTOR;
      private Runnable f = new Runnable()
      {
        public void run()
        {
          for (;;)
          {
            a.b localB = a.a();
            if (localB == null)
            {
              b.set(false);
              return;
            }
            switch (b)
            {
            default: 
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("Unsupported message, what=");
              localStringBuilder.append(b);
              Log.e("ThreadUtil", localStringBuilder.toString());
              break;
            case 4: 
              c.recycleTile((TileList.Tile)h);
              break;
            case 3: 
              c.loadTile(c, d);
              break;
            case 2: 
              a.a(2);
              a.a(3);
              c.updateRange(c, d, e, f, g);
              break;
            case 1: 
              a.a(1);
              c.refresh(c);
            }
          }
        }
      };
      
      private void a()
      {
        if (b.compareAndSet(false, true)) {
          e.execute(f);
        }
      }
      
      private void a(a.b paramAnonymousB)
      {
        a.b(paramAnonymousB);
        a();
      }
      
      private void b(a.b paramAnonymousB)
      {
        a.a(paramAnonymousB);
        a();
      }
      
      public void loadTile(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a(a.b.a(3, paramAnonymousInt1, paramAnonymousInt2));
      }
      
      public void recycleTile(TileList.Tile<T> paramAnonymousTile)
      {
        a(a.b.a(4, 0, paramAnonymousTile));
      }
      
      public void refresh(int paramAnonymousInt)
      {
        b(a.b.a(1, paramAnonymousInt, null));
      }
      
      public void updateRange(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5)
      {
        b(a.b.a(2, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3, paramAnonymousInt4, paramAnonymousInt5, null));
      }
    };
  }
  
  public ThreadUtil.MainThreadCallback<T> a(final ThreadUtil.MainThreadCallback<T> paramMainThreadCallback)
  {
    new ThreadUtil.MainThreadCallback()
    {
      final a.a a = new a.a();
      private final Handler d = new Handler(Looper.getMainLooper());
      private Runnable e = new Runnable()
      {
        public void run()
        {
          for (a.b localB = a.a(); localB != null; localB = a.a()) {
            switch (b)
            {
            default: 
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("Unsupported message, what=");
              localStringBuilder.append(b);
              Log.e("ThreadUtil", localStringBuilder.toString());
              break;
            case 3: 
              b.removeTile(c, d);
              break;
            case 2: 
              b.addTile(c, (TileList.Tile)h);
              break;
            case 1: 
              b.updateItemCount(c, d);
            }
          }
        }
      };
      
      private void a(a.b paramAnonymousB)
      {
        a.b(paramAnonymousB);
        d.post(e);
      }
      
      public void addTile(int paramAnonymousInt, TileList.Tile<T> paramAnonymousTile)
      {
        a(a.b.a(2, paramAnonymousInt, paramAnonymousTile));
      }
      
      public void removeTile(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a(a.b.a(3, paramAnonymousInt1, paramAnonymousInt2));
      }
      
      public void updateItemCount(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        a(a.b.a(1, paramAnonymousInt1, paramAnonymousInt2));
      }
    };
  }
  
  static class a
  {
    private a.b a;
    
    a() {}
    
    a.b a()
    {
      try
      {
        a.b localB = a;
        if (localB == null) {
          return null;
        }
        localB = a;
        a = a.a;
        return localB;
      }
      finally {}
    }
    
    void a(int paramInt)
    {
      try
      {
        Object localObject1;
        while ((a != null) && (a.b == paramInt))
        {
          localObject1 = a;
          a = a.a;
          ((a.b)localObject1).a();
        }
        if (a != null)
        {
          Object localObject3 = a;
          a.b localB;
          for (localObject1 = a; localObject1 != null; localObject1 = localB)
          {
            localB = a;
            if (b == paramInt)
            {
              a = localB;
              ((a.b)localObject1).a();
            }
            else
            {
              localObject3 = localObject1;
            }
          }
        }
        return;
      }
      finally {}
    }
    
    void a(a.b paramB)
    {
      try
      {
        a = a;
        a = paramB;
        return;
      }
      finally
      {
        paramB = finally;
        throw paramB;
      }
    }
    
    void b(a.b paramB)
    {
      try
      {
        if (a == null)
        {
          a = paramB;
          return;
        }
        for (a.b localB = a; a != null; localB = a) {}
        a = paramB;
        return;
      }
      finally {}
    }
  }
  
  static class b
  {
    private static b i;
    private static final Object j = new Object();
    b a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public Object h;
    
    b() {}
    
    static b a(int paramInt1, int paramInt2, int paramInt3)
    {
      return a(paramInt1, paramInt2, paramInt3, 0, 0, 0, null);
    }
    
    static b a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Object paramObject)
    {
      synchronized (j)
      {
        b localB;
        if (i == null)
        {
          localB = new b();
        }
        else
        {
          localB = i;
          i = ia;
          a = null;
        }
        b = paramInt1;
        c = paramInt2;
        d = paramInt3;
        e = paramInt4;
        f = paramInt5;
        g = paramInt6;
        h = paramObject;
        return localB;
      }
    }
    
    static b a(int paramInt1, int paramInt2, Object paramObject)
    {
      return a(paramInt1, paramInt2, 0, 0, 0, 0, paramObject);
    }
    
    void a()
    {
      a = null;
      g = 0;
      f = 0;
      e = 0;
      d = 0;
      c = 0;
      b = 0;
      h = null;
      synchronized (j)
      {
        if (i != null) {
          a = i;
        }
        i = this;
        return;
      }
    }
  }
}
