package com.dropbox.core;

import java.io.IOException;
import java.security.cert.CertPathValidatorException;
import javax.net.ssl.SSLHandshakeException;

public class NetworkIOException
  extends DbxException
{
  private static final long serialVersionUID = 0L;
  
  public NetworkIOException(IOException paramIOException)
  {
    super(a(paramIOException), paramIOException);
  }
  
  private static String a(IOException paramIOException)
  {
    String str = paramIOException.getMessage();
    Object localObject = str;
    if ((paramIOException instanceof SSLHandshakeException))
    {
      paramIOException = paramIOException.getCause();
      localObject = str;
      if ((paramIOException instanceof CertPathValidatorException))
      {
        paramIOException = (CertPathValidatorException)paramIOException;
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(str);
        ((StringBuilder)localObject).append("[CERT PATH: ");
        ((StringBuilder)localObject).append(paramIOException.getCertPath());
        ((StringBuilder)localObject).append("]");
        localObject = ((StringBuilder)localObject).toString();
      }
    }
    return localObject;
  }
  
  public IOException getCause()
  {
    return (IOException)super.getCause();
  }
}
