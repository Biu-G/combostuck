package androidx.media;

import android.support.annotation.RestrictTo;
import android.support.v4.media.c;
import androidx.versionedparcelable.VersionedParcel;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public final class AudioAttributesImplBaseParcelizer
{
  public AudioAttributesImplBaseParcelizer() {}
  
  public static c read(VersionedParcel paramVersionedParcel)
  {
    c localC = new c();
    mUsage = paramVersionedParcel.readInt(mUsage, 1);
    mContentType = paramVersionedParcel.readInt(mContentType, 2);
    mFlags = paramVersionedParcel.readInt(mFlags, 3);
    mLegacyStream = paramVersionedParcel.readInt(mLegacyStream, 4);
    return localC;
  }
  
  public static void write(c paramC, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.setSerializationFlags(false, false);
    paramVersionedParcel.writeInt(mUsage, 1);
    paramVersionedParcel.writeInt(mContentType, 2);
    paramVersionedParcel.writeInt(mFlags, 3);
    paramVersionedParcel.writeInt(mLegacyStream, 4);
  }
}
