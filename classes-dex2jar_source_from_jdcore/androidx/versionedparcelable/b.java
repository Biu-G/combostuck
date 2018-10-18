package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.util.SparseArray;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
class b
  extends VersionedParcel
{
  private static final Charset a = Charset.forName("UTF-16");
  private final DataInputStream b;
  private final DataOutputStream c;
  private final SparseArray<b> d = new SparseArray();
  private DataInputStream e;
  private DataOutputStream f;
  private a g;
  private boolean h;
  
  public b(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    Object localObject = null;
    if (paramInputStream != null) {
      paramInputStream = new DataInputStream(paramInputStream);
    } else {
      paramInputStream = null;
    }
    b = paramInputStream;
    paramInputStream = localObject;
    if (paramOutputStream != null) {
      paramInputStream = new DataOutputStream(paramOutputStream);
    }
    c = paramInputStream;
    e = b;
    f = c;
  }
  
  private void a(int paramInt, String paramString, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      paramString = new StringBuilder();
      paramString.append("Unknown type ");
      paramString.append(paramInt);
      throw new RuntimeException(paramString.toString());
    case 14: 
      paramBundle.putFloatArray(paramString, readFloatArray());
      return;
    case 13: 
      paramBundle.putFloat(paramString, readFloat());
      return;
    case 12: 
      paramBundle.putLongArray(paramString, readLongArray());
      return;
    case 11: 
      paramBundle.putLong(paramString, readLong());
      return;
    case 10: 
      paramBundle.putIntArray(paramString, readIntArray());
      return;
    case 9: 
      paramBundle.putInt(paramString, readInt());
      return;
    case 8: 
      paramBundle.putDoubleArray(paramString, readDoubleArray());
      return;
    case 7: 
      paramBundle.putDouble(paramString, readDouble());
      return;
    case 6: 
      paramBundle.putBooleanArray(paramString, readBooleanArray());
      return;
    case 5: 
      paramBundle.putBoolean(paramString, readBoolean());
      return;
    case 4: 
      paramBundle.putStringArray(paramString, (String[])readArray(new String[0]));
      return;
    case 3: 
      paramBundle.putString(paramString, readString());
      return;
    case 2: 
      paramBundle.putBundle(paramString, readBundle());
      return;
    case 1: 
      paramBundle.putBundle(paramString, readBundle());
      return;
    }
    paramBundle.putParcelable(paramString, null);
  }
  
  private void a(Object paramObject)
  {
    if (paramObject == null)
    {
      writeInt(0);
      return;
    }
    if ((paramObject instanceof Bundle))
    {
      writeInt(1);
      writeBundle((Bundle)paramObject);
      return;
    }
    if ((paramObject instanceof String))
    {
      writeInt(3);
      writeString((String)paramObject);
      return;
    }
    if ((paramObject instanceof String[]))
    {
      writeInt(4);
      writeArray((String[])paramObject);
      return;
    }
    if ((paramObject instanceof Boolean))
    {
      writeInt(5);
      writeBoolean(((Boolean)paramObject).booleanValue());
      return;
    }
    if ((paramObject instanceof boolean[]))
    {
      writeInt(6);
      writeBooleanArray((boolean[])paramObject);
      return;
    }
    if ((paramObject instanceof Double))
    {
      writeInt(7);
      writeDouble(((Double)paramObject).doubleValue());
      return;
    }
    if ((paramObject instanceof double[]))
    {
      writeInt(8);
      writeDoubleArray((double[])paramObject);
      return;
    }
    if ((paramObject instanceof Integer))
    {
      writeInt(9);
      writeInt(((Integer)paramObject).intValue());
      return;
    }
    if ((paramObject instanceof int[]))
    {
      writeInt(10);
      writeIntArray((int[])paramObject);
      return;
    }
    if ((paramObject instanceof Long))
    {
      writeInt(11);
      writeLong(((Long)paramObject).longValue());
      return;
    }
    if ((paramObject instanceof long[]))
    {
      writeInt(12);
      writeLongArray((long[])paramObject);
      return;
    }
    if ((paramObject instanceof Float))
    {
      writeInt(13);
      writeFloat(((Float)paramObject).floatValue());
      return;
    }
    if ((paramObject instanceof float[]))
    {
      writeInt(14);
      writeFloatArray((float[])paramObject);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Unsupported type ");
    localStringBuilder.append(paramObject.getClass());
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void closeField()
  {
    if (g != null) {
      try
      {
        if (g.a.size() != 0) {
          g.a();
        }
        g = null;
        return;
      }
      catch (IOException localIOException)
      {
        throw new VersionedParcel.ParcelException(localIOException);
      }
    }
  }
  
  protected VersionedParcel createSubParcel()
  {
    return new b(e, f);
  }
  
  public boolean isStream()
  {
    return true;
  }
  
  public boolean readBoolean()
  {
    try
    {
      boolean bool = e.readBoolean();
      return bool;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public Bundle readBundle()
  {
    int j = readInt();
    if (j < 0) {
      return null;
    }
    Bundle localBundle = new Bundle();
    int i = 0;
    while (i < j)
    {
      String str = readString();
      a(readInt(), str, localBundle);
      i += 1;
    }
    return localBundle;
  }
  
  public byte[] readByteArray()
  {
    try
    {
      int i = e.readInt();
      if (i > 0)
      {
        byte[] arrayOfByte = new byte[i];
        e.readFully(arrayOfByte);
        return arrayOfByte;
      }
      return null;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public double readDouble()
  {
    try
    {
      double d1 = e.readDouble();
      return d1;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public boolean readField(int paramInt)
  {
    b localB = (b)d.get(paramInt);
    if (localB != null)
    {
      d.remove(paramInt);
      e = a;
      return true;
    }
    try
    {
      for (;;)
      {
        int k = b.readInt();
        int j = k & 0xFFFF;
        int i = j;
        if (j == 65535) {
          i = b.readInt();
        }
        localB = new b(k >> 16 & 0xFFFF, i, b);
        if (b == paramInt)
        {
          e = a;
          return true;
        }
        d.put(b, localB);
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
    return false;
  }
  
  public float readFloat()
  {
    try
    {
      float f1 = e.readFloat();
      return f1;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public int readInt()
  {
    try
    {
      int i = e.readInt();
      return i;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public long readLong()
  {
    try
    {
      long l = e.readLong();
      return l;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public <T extends Parcelable> T readParcelable()
  {
    return null;
  }
  
  public String readString()
  {
    try
    {
      int i = e.readInt();
      if (i > 0)
      {
        Object localObject = new byte[i];
        e.readFully((byte[])localObject);
        localObject = new String((byte[])localObject, a);
        return localObject;
      }
      return null;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public IBinder readStrongBinder()
  {
    return null;
  }
  
  public void setOutputField(int paramInt)
  {
    closeField();
    g = new a(paramInt, c);
    f = g.b;
  }
  
  public void setSerializationFlags(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      h = paramBoolean2;
      return;
    }
    throw new RuntimeException("Serialization of this object is not allowed");
  }
  
  public void writeBoolean(boolean paramBoolean)
  {
    try
    {
      f.writeBoolean(paramBoolean);
      return;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public void writeBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {}
    try
    {
      Object localObject = paramBundle.keySet();
      f.writeInt(((Set)localObject).size());
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        writeString(str);
        a(paramBundle.get(str));
        continue;
        f.writeInt(-1);
      }
      return;
    }
    catch (IOException paramBundle)
    {
      for (;;) {}
    }
    throw new VersionedParcel.ParcelException(paramBundle);
  }
  
  public void writeByteArray(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {}
    try
    {
      f.writeInt(paramArrayOfByte.length);
      f.write(paramArrayOfByte);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      for (;;) {}
    }
    f.writeInt(-1);
    return;
    throw new VersionedParcel.ParcelException(paramArrayOfByte);
  }
  
  public void writeByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte != null) {}
    try
    {
      f.writeInt(paramInt2);
      f.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      for (;;) {}
    }
    f.writeInt(-1);
    return;
    throw new VersionedParcel.ParcelException(paramArrayOfByte);
  }
  
  public void writeDouble(double paramDouble)
  {
    try
    {
      f.writeDouble(paramDouble);
      return;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public void writeFloat(float paramFloat)
  {
    try
    {
      f.writeFloat(paramFloat);
      return;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public void writeInt(int paramInt)
  {
    try
    {
      f.writeInt(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public void writeLong(long paramLong)
  {
    try
    {
      f.writeLong(paramLong);
      return;
    }
    catch (IOException localIOException)
    {
      throw new VersionedParcel.ParcelException(localIOException);
    }
  }
  
  public void writeParcelable(Parcelable paramParcelable)
  {
    if (h) {
      return;
    }
    throw new RuntimeException("Parcelables cannot be written to an OutputStream");
  }
  
  public void writeString(String paramString)
  {
    if (paramString != null) {}
    try
    {
      paramString = paramString.getBytes(a);
      f.writeInt(paramString.length);
      f.write(paramString);
      return;
    }
    catch (IOException paramString)
    {
      for (;;) {}
    }
    f.writeInt(-1);
    return;
    throw new VersionedParcel.ParcelException(paramString);
  }
  
  public void writeStrongBinder(IBinder paramIBinder)
  {
    if (h) {
      return;
    }
    throw new RuntimeException("Binders cannot be written to an OutputStream");
  }
  
  public void writeStrongInterface(IInterface paramIInterface)
  {
    if (h) {
      return;
    }
    throw new RuntimeException("Binders cannot be written to an OutputStream");
  }
  
  private static class a
  {
    final ByteArrayOutputStream a = new ByteArrayOutputStream();
    final DataOutputStream b = new DataOutputStream(a);
    private final int c;
    private final DataOutputStream d;
    
    a(int paramInt, DataOutputStream paramDataOutputStream)
    {
      c = paramInt;
      d = paramDataOutputStream;
    }
    
    void a()
      throws IOException
    {
      b.flush();
      int j = a.size();
      int k = c;
      int i;
      if (j >= 65535) {
        i = 65535;
      } else {
        i = j;
      }
      d.writeInt(k << 16 | i);
      if (j >= 65535) {
        d.writeInt(j);
      }
      a.writeTo(d);
    }
  }
  
  private static class b
  {
    final DataInputStream a;
    final int b;
    private final int c;
    
    b(int paramInt1, int paramInt2, DataInputStream paramDataInputStream)
      throws IOException
    {
      c = paramInt2;
      b = paramInt1;
      byte[] arrayOfByte = new byte[c];
      paramDataInputStream.readFully(arrayOfByte);
      a = new DataInputStream(new ByteArrayInputStream(arrayOfByte));
    }
  }
}
