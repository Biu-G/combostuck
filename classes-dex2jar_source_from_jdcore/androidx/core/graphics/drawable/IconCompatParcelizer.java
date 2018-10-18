package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public class IconCompatParcelizer
{
  public IconCompatParcelizer() {}
  
  public static IconCompat read(VersionedParcel paramVersionedParcel)
  {
    IconCompat localIconCompat = new IconCompat();
    mType = paramVersionedParcel.readInt(mType, 1);
    mData = paramVersionedParcel.readByteArray(mData, 2);
    mParcelable = paramVersionedParcel.readParcelable(mParcelable, 3);
    mInt1 = paramVersionedParcel.readInt(mInt1, 4);
    mInt2 = paramVersionedParcel.readInt(mInt2, 5);
    mTintList = ((ColorStateList)paramVersionedParcel.readParcelable(mTintList, 6));
    mTintModeStr = paramVersionedParcel.readString(mTintModeStr, 7);
    localIconCompat.onPostParceling();
    return localIconCompat;
  }
  
  public static void write(IconCompat paramIconCompat, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.setSerializationFlags(true, true);
    paramIconCompat.onPreParceling(paramVersionedParcel.isStream());
    paramVersionedParcel.writeInt(mType, 1);
    paramVersionedParcel.writeByteArray(mData, 2);
    paramVersionedParcel.writeParcelable(mParcelable, 3);
    paramVersionedParcel.writeInt(mInt1, 4);
    paramVersionedParcel.writeInt(mInt2, 5);
    paramVersionedParcel.writeParcelable(mTintList, 6);
    paramVersionedParcel.writeString(mTintModeStr, 7);
  }
}
