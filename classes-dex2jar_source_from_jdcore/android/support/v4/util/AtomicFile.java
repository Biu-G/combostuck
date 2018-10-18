package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class AtomicFile
{
  private final File a;
  private final File b;
  
  public AtomicFile(@NonNull File paramFile)
  {
    a = paramFile;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramFile.getPath());
    localStringBuilder.append(".bak");
    b = new File(localStringBuilder.toString());
  }
  
  private static boolean a(@NonNull FileOutputStream paramFileOutputStream)
  {
    try
    {
      paramFileOutputStream.getFD().sync();
      return true;
    }
    catch (IOException paramFileOutputStream)
    {
      for (;;) {}
    }
    return false;
  }
  
  public void delete()
  {
    a.delete();
    b.delete();
  }
  
  public void failWrite(@Nullable FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null)
    {
      a(paramFileOutputStream);
      try
      {
        paramFileOutputStream.close();
        a.delete();
        b.renameTo(a);
        return;
      }
      catch (IOException paramFileOutputStream)
      {
        Log.w("AtomicFile", "failWrite: Got exception:", paramFileOutputStream);
      }
    }
  }
  
  public void finishWrite(@Nullable FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null)
    {
      a(paramFileOutputStream);
      try
      {
        paramFileOutputStream.close();
        b.delete();
        return;
      }
      catch (IOException paramFileOutputStream)
      {
        Log.w("AtomicFile", "finishWrite: Got exception:", paramFileOutputStream);
      }
    }
  }
  
  @NonNull
  public File getBaseFile()
  {
    return a;
  }
  
  @NonNull
  public FileInputStream openRead()
    throws FileNotFoundException
  {
    if (b.exists())
    {
      a.delete();
      b.renameTo(a);
    }
    return new FileInputStream(a);
  }
  
  /* Error */
  @NonNull
  public byte[] readFully()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 102	android/support/v4/util/AtomicFile:openRead	()Ljava/io/FileInputStream;
    //   4: astore 6
    //   6: aload 6
    //   8: invokevirtual 106	java/io/FileInputStream:available	()I
    //   11: newarray byte
    //   13: astore 4
    //   15: iconst_0
    //   16: istore_1
    //   17: aload 6
    //   19: aload 4
    //   21: iload_1
    //   22: aload 4
    //   24: arraylength
    //   25: iload_1
    //   26: isub
    //   27: invokevirtual 110	java/io/FileInputStream:read	([BII)I
    //   30: istore_2
    //   31: iload_2
    //   32: ifgt +11 -> 43
    //   35: aload 6
    //   37: invokevirtual 111	java/io/FileInputStream:close	()V
    //   40: aload 4
    //   42: areturn
    //   43: iload_1
    //   44: iload_2
    //   45: iadd
    //   46: istore_2
    //   47: aload 6
    //   49: invokevirtual 106	java/io/FileInputStream:available	()I
    //   52: istore_3
    //   53: iload_2
    //   54: istore_1
    //   55: iload_3
    //   56: aload 4
    //   58: arraylength
    //   59: iload_2
    //   60: isub
    //   61: if_icmple -44 -> 17
    //   64: iload_3
    //   65: iload_2
    //   66: iadd
    //   67: newarray byte
    //   69: astore 5
    //   71: aload 4
    //   73: iconst_0
    //   74: aload 5
    //   76: iconst_0
    //   77: iload_2
    //   78: invokestatic 117	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   81: aload 5
    //   83: astore 4
    //   85: iload_2
    //   86: istore_1
    //   87: goto -70 -> 17
    //   90: astore 4
    //   92: aload 6
    //   94: invokevirtual 111	java/io/FileInputStream:close	()V
    //   97: aload 4
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	AtomicFile
    //   16	71	1	i	int
    //   30	56	2	j	int
    //   52	15	3	k	int
    //   13	71	4	localObject1	Object
    //   90	8	4	localObject2	Object
    //   69	13	5	arrayOfByte	byte[]
    //   4	89	6	localFileInputStream	FileInputStream
    // Exception table:
    //   from	to	target	type
    //   6	15	90	finally
    //   17	31	90	finally
    //   47	53	90	finally
    //   55	81	90	finally
  }
  
  @NonNull
  public FileOutputStream startWrite()
    throws IOException
  {
    if (a.exists()) {
      if (!b.exists())
      {
        if (!a.renameTo(b))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Couldn't rename file ");
          ((StringBuilder)localObject).append(a);
          ((StringBuilder)localObject).append(" to backup file ");
          ((StringBuilder)localObject).append(b);
          Log.w("AtomicFile", ((StringBuilder)localObject).toString());
        }
      }
      else {
        a.delete();
      }
    }
    try
    {
      localObject = new FileOutputStream(a);
      return localObject;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      for (;;) {}
    }
    if (a.getParentFile().mkdirs()) {}
    try
    {
      localObject = new FileOutputStream(a);
      return localObject;
    }
    catch (FileNotFoundException localFileNotFoundException2)
    {
      for (;;) {}
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Couldn't create ");
    ((StringBuilder)localObject).append(a);
    throw new IOException(((StringBuilder)localObject).toString());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Couldn't create directory ");
    ((StringBuilder)localObject).append(a);
    throw new IOException(((StringBuilder)localObject).toString());
  }
}
