package com.dropbox.core.http;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import okio.BufferedSink;
import okio.Okio;

final class OkHttpUtil
{
  public static void a(ExecutorService paramExecutorService)
  {
    Thread localThread = Thread.currentThread();
    try
    {
      paramExecutorService = (Thread)paramExecutorService.submit(new Callable()
      {
        public Thread a()
        {
          return Thread.currentThread();
        }
      }).get(2L, TimeUnit.MINUTES);
      if (!localThread.equals(paramExecutorService)) {
        return;
      }
      throw new IllegalArgumentException("OkHttp dispatcher uses same-thread executor. This is not supported by the SDK and may result in dead-locks. Please configure your Dispatcher to use an ExecutorService that runs tasks on separate threads.");
    }
    catch (Exception paramExecutorService)
    {
      throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", paramExecutorService);
    }
    catch (InterruptedException paramExecutorService)
    {
      localThread.interrupt();
      throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", paramExecutorService);
    }
  }
  
  public static final class PipedStream
    implements Closeable
  {
    private final PipedInputStream a = new PipedInputStream(5242880);
    private final PipedOutputStream b;
    
    public PipedStream()
    {
      try
      {
        b = new PipedOutputStream(a);
        return;
      }
      catch (IOException localIOException)
      {
        for (;;) {}
      }
      throw new IllegalStateException("Unable to create piped stream for async upload request.");
    }
    
    public void close()
    {
      try
      {
        b.close();
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          try
          {
            a.close();
            return;
          }
          catch (IOException localIOException2) {}
          localIOException1 = localIOException1;
        }
      }
    }
    
    public OutputStream getOutputStream()
    {
      return b;
    }
    
    public void writeTo(BufferedSink paramBufferedSink)
      throws IOException
    {
      paramBufferedSink.writeAll(Okio.source(a));
    }
  }
}
