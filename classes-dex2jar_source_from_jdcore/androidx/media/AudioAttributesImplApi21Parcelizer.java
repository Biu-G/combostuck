package androidx.media;

import android.media.AudioAttributes;
import android.support.annotation.RestrictTo;
import android.support.v4.media.b;
import androidx.versionedparcelable.VersionedParcel;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public final class AudioAttributesImplApi21Parcelizer
{
  public AudioAttributesImplApi21Parcelizer() {}
  
  public static b read(VersionedParcel paramVersionedParcel)
  {
    b localB = new b();
    mAudioAttributes = ((AudioAttributes)paramVersionedParcel.readParcelable(mAudioAttributes, 1));
    mLegacyStreamType = paramVersionedParcel.readInt(mLegacyStreamType, 2);
    return localB;
  }
  
  public static void write(b paramB, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.setSerializationFlags(false, false);
    paramVersionedParcel.writeParcelable(mAudioAttributes, 1);
    paramVersionedParcel.writeInt(mLegacyStreamType, 2);
  }
}
