package androidx.versionedparcelable;

import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import java.io.InputStream;
import java.io.OutputStream;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ParcelUtils
{
  private ParcelUtils() {}
  
  public static <T extends VersionedParcelable> T fromInputStream(InputStream paramInputStream)
  {
    return new b(paramInputStream, null).readVersionedParcelable();
  }
  
  public static <T extends VersionedParcelable> T fromParcelable(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof ParcelImpl)) {
      return ((ParcelImpl)paramParcelable).getVersionedParcel();
    }
    throw new IllegalArgumentException("Invalid parcel");
  }
  
  public static void toOutputStream(VersionedParcelable paramVersionedParcelable, OutputStream paramOutputStream)
  {
    paramOutputStream = new b(null, paramOutputStream);
    paramOutputStream.writeVersionedParcelable(paramVersionedParcelable);
    paramOutputStream.closeField();
  }
  
  public static Parcelable toParcelable(VersionedParcelable paramVersionedParcelable)
  {
    return new ParcelImpl(paramVersionedParcelable);
  }
}
