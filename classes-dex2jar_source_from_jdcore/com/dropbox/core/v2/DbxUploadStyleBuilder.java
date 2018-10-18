package com.dropbox.core.v2;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxUploader;
import java.io.IOException;
import java.io.InputStream;

public abstract class DbxUploadStyleBuilder<R, E, X extends DbxApiException>
{
  public DbxUploadStyleBuilder() {}
  
  public abstract DbxUploader<R, E, X> start()
    throws DbxException;
  
  public R uploadAndFinish(InputStream paramInputStream)
    throws DbxApiException, DbxException, IOException
  {
    return start().uploadAndFinish(paramInputStream);
  }
  
  public R uploadAndFinish(InputStream paramInputStream, long paramLong)
    throws DbxApiException, DbxException, IOException
  {
    return start().uploadAndFinish(paramInputStream, paramLong);
  }
}
