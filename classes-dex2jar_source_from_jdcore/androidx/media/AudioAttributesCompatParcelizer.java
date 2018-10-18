package androidx.media;

import android.support.annotation.RestrictTo;
import android.support.v4.media.AudioAttributesCompat;
import android.support.v4.media.a;
import androidx.versionedparcelable.VersionedParcel;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public final class AudioAttributesCompatParcelizer
{
  public AudioAttributesCompatParcelizer() {}
  
  public static AudioAttributesCompat read(VersionedParcel paramVersionedParcel)
  {
    AudioAttributesCompat localAudioAttributesCompat = new AudioAttributesCompat();
    mImpl = ((a)paramVersionedParcel.readVersionedParcelable(mImpl, 1));
    return localAudioAttributesCompat;
  }
  
  public static void write(AudioAttributesCompat paramAudioAttributesCompat, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.setSerializationFlags(false, false);
    paramVersionedParcel.writeVersionedParcelable(mImpl, 1);
  }
}
