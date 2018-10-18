package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import java.io.Closeable;
import java.io.InputStream;

public class DbxDownloader<R>
  implements Closeable
{
  private final R a;
  private final InputStream b;
  private boolean c;
  
  public DbxDownloader(R paramR, InputStream paramInputStream)
  {
    a = paramR;
    b = paramInputStream;
    c = false;
  }
  
  private void a()
  {
    if (!c) {
      return;
    }
    throw new IllegalStateException("This downloader is already closed.");
  }
  
  public void close()
  {
    if (!c)
    {
      IOUtil.closeQuietly(b);
      c = true;
    }
  }
  
  /* Error */
  public R download(java.io.OutputStream paramOutputStream)
    throws DbxException, java.io.IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 54	com/dropbox/core/DbxDownloader:getInputStream	()Ljava/io/InputStream;
    //   4: aload_1
    //   5: invokestatic 58	com/dropbox/core/util/IOUtil:copyStreamToStream	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   8: aload_0
    //   9: invokevirtual 60	com/dropbox/core/DbxDownloader:close	()V
    //   12: aload_0
    //   13: getfield 21	com/dropbox/core/DbxDownloader:a	Ljava/lang/Object;
    //   16: areturn
    //   17: astore_1
    //   18: goto +19 -> 37
    //   21: astore_1
    //   22: new 62	com/dropbox/core/NetworkIOException
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 65	com/dropbox/core/NetworkIOException:<init>	(Ljava/io/IOException;)V
    //   30: athrow
    //   31: astore_1
    //   32: aload_1
    //   33: invokevirtual 69	com/dropbox/core/util/IOUtil$WriteException:getCause	()Ljava/io/IOException;
    //   36: athrow
    //   37: aload_0
    //   38: invokevirtual 60	com/dropbox/core/DbxDownloader:close	()V
    //   41: aload_1
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	DbxDownloader
    //   0	43	1	paramOutputStream	java.io.OutputStream
    // Exception table:
    //   from	to	target	type
    //   0	8	17	finally
    //   22	31	17	finally
    //   32	37	17	finally
    //   0	8	21	java/io/IOException
    //   0	8	31	com/dropbox/core/util/IOUtil$WriteException
  }
  
  public InputStream getInputStream()
  {
    a();
    return b;
  }
  
  public R getResult()
  {
    return a;
  }
}
