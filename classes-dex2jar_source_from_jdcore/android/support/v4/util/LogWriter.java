package android.support.v4.util;

import android.support.annotation.RestrictTo;
import android.util.Log;
import java.io.Writer;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class LogWriter
  extends Writer
{
  private final String a;
  private StringBuilder b = new StringBuilder(128);
  
  public LogWriter(String paramString)
  {
    a = paramString;
  }
  
  private void a()
  {
    if (b.length() > 0)
    {
      Log.d(a, b.toString());
      b.delete(0, b.length());
    }
  }
  
  public void close()
  {
    a();
  }
  
  public void flush()
  {
    a();
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n') {
        a();
      } else {
        b.append(c);
      }
      i += 1;
    }
  }
}
