package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.util.SparseIntArray;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
class a
  extends VersionedParcel
{
  private final SparseIntArray a = new SparseIntArray();
  private final Parcel b;
  private final int c;
  private final int d;
  private final String e;
  private int f = -1;
  private int g = 0;
  
  a(Parcel paramParcel)
  {
    this(paramParcel, paramParcel.dataPosition(), paramParcel.dataSize(), "");
  }
  
  a(Parcel paramParcel, int paramInt1, int paramInt2, String paramString)
  {
    b = paramParcel;
    c = paramInt1;
    d = paramInt2;
    g = c;
    e = paramString;
  }
  
  private int a(int paramInt)
  {
    while (g < d)
    {
      b.setDataPosition(g);
      int i = b.readInt();
      int j = b.readInt();
      g += i;
      if (j == paramInt) {
        return b.dataPosition();
      }
    }
    return -1;
  }
  
  public void closeField()
  {
    if (f >= 0)
    {
      int i = a.get(f);
      int j = b.dataPosition();
      b.setDataPosition(i);
      b.writeInt(j - i);
      b.setDataPosition(j);
    }
  }
  
  protected VersionedParcel createSubParcel()
  {
    Parcel localParcel = b;
    int j = b.dataPosition();
    int i;
    if (g == c) {
      i = d;
    } else {
      i = g;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(e);
    localStringBuilder.append("  ");
    return new a(localParcel, j, i, localStringBuilder.toString());
  }
  
  public boolean readBoolean()
  {
    return b.readInt() != 0;
  }
  
  public Bundle readBundle()
  {
    return b.readBundle(getClass().getClassLoader());
  }
  
  public byte[] readByteArray()
  {
    int i = b.readInt();
    if (i < 0) {
      return null;
    }
    byte[] arrayOfByte = new byte[i];
    b.readByteArray(arrayOfByte);
    return arrayOfByte;
  }
  
  public double readDouble()
  {
    return b.readDouble();
  }
  
  public boolean readField(int paramInt)
  {
    paramInt = a(paramInt);
    if (paramInt == -1) {
      return false;
    }
    b.setDataPosition(paramInt);
    return true;
  }
  
  public float readFloat()
  {
    return b.readFloat();
  }
  
  public int readInt()
  {
    return b.readInt();
  }
  
  public long readLong()
  {
    return b.readLong();
  }
  
  public <T extends Parcelable> T readParcelable()
  {
    return b.readParcelable(getClass().getClassLoader());
  }
  
  public String readString()
  {
    return b.readString();
  }
  
  public IBinder readStrongBinder()
  {
    return b.readStrongBinder();
  }
  
  public void setOutputField(int paramInt)
  {
    closeField();
    f = paramInt;
    a.put(paramInt, b.dataPosition());
    writeInt(0);
    writeInt(paramInt);
  }
  
  public void writeBoolean(boolean paramBoolean)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public void writeBundle(Bundle paramBundle)
  {
    b.writeBundle(paramBundle);
  }
  
  public void writeByteArray(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      b.writeInt(paramArrayOfByte.length);
      b.writeByteArray(paramArrayOfByte);
      return;
    }
    b.writeInt(-1);
  }
  
  public void writeByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte != null)
    {
      b.writeInt(paramArrayOfByte.length);
      b.writeByteArray(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    b.writeInt(-1);
  }
  
  public void writeDouble(double paramDouble)
  {
    b.writeDouble(paramDouble);
  }
  
  public void writeFloat(float paramFloat)
  {
    b.writeFloat(paramFloat);
  }
  
  public void writeInt(int paramInt)
  {
    b.writeInt(paramInt);
  }
  
  public void writeLong(long paramLong)
  {
    b.writeLong(paramLong);
  }
  
  public void writeParcelable(Parcelable paramParcelable)
  {
    b.writeParcelable(paramParcelable, 0);
  }
  
  public void writeString(String paramString)
  {
    b.writeString(paramString);
  }
  
  public void writeStrongBinder(IBinder paramIBinder)
  {
    b.writeStrongBinder(paramIBinder);
  }
  
  public void writeStrongInterface(IInterface paramIInterface)
  {
    b.writeStrongInterface(paramIInterface);
  }
}
