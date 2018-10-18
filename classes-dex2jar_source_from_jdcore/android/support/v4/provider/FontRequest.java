package android.support.v4.provider;

import android.support.annotation.ArrayRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.Preconditions;
import android.util.Base64;
import java.util.List;

public final class FontRequest
{
  private final String a;
  private final String b;
  private final String c;
  private final List<List<byte[]>> d;
  private final int e;
  private final String f;
  
  public FontRequest(@NonNull String paramString1, @NonNull String paramString2, @NonNull String paramString3, @ArrayRes int paramInt)
  {
    a = ((String)Preconditions.checkNotNull(paramString1));
    b = ((String)Preconditions.checkNotNull(paramString2));
    c = ((String)Preconditions.checkNotNull(paramString3));
    d = null;
    boolean bool;
    if (paramInt != 0) {
      bool = true;
    } else {
      bool = false;
    }
    Preconditions.checkArgument(bool);
    e = paramInt;
    paramString1 = new StringBuilder(a);
    paramString1.append("-");
    paramString1.append(b);
    paramString1.append("-");
    paramString1.append(c);
    f = paramString1.toString();
  }
  
  public FontRequest(@NonNull String paramString1, @NonNull String paramString2, @NonNull String paramString3, @NonNull List<List<byte[]>> paramList)
  {
    a = ((String)Preconditions.checkNotNull(paramString1));
    b = ((String)Preconditions.checkNotNull(paramString2));
    c = ((String)Preconditions.checkNotNull(paramString3));
    d = ((List)Preconditions.checkNotNull(paramList));
    e = 0;
    paramString1 = new StringBuilder(a);
    paramString1.append("-");
    paramString1.append(b);
    paramString1.append("-");
    paramString1.append(c);
    f = paramString1.toString();
  }
  
  @Nullable
  public List<List<byte[]>> getCertificates()
  {
    return d;
  }
  
  @ArrayRes
  public int getCertificatesArrayResId()
  {
    return e;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public String getIdentifier()
  {
    return f;
  }
  
  @NonNull
  public String getProviderAuthority()
  {
    return a;
  }
  
  @NonNull
  public String getProviderPackage()
  {
    return b;
  }
  
  @NonNull
  public String getQuery()
  {
    return c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("FontRequest {mProviderAuthority: ");
    ((StringBuilder)localObject).append(a);
    ((StringBuilder)localObject).append(", mProviderPackage: ");
    ((StringBuilder)localObject).append(b);
    ((StringBuilder)localObject).append(", mQuery: ");
    ((StringBuilder)localObject).append(c);
    ((StringBuilder)localObject).append(", mCertificates:");
    localStringBuilder.append(((StringBuilder)localObject).toString());
    int i = 0;
    while (i < d.size())
    {
      localStringBuilder.append(" [");
      localObject = (List)d.get(i);
      int j = 0;
      while (j < ((List)localObject).size())
      {
        localStringBuilder.append(" \"");
        localStringBuilder.append(Base64.encodeToString((byte[])((List)localObject).get(j), 0));
        localStringBuilder.append("\"");
        j += 1;
      }
      localStringBuilder.append(" ]");
      i += 1;
    }
    localStringBuilder.append("}");
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("mCertificatesArray: ");
    ((StringBuilder)localObject).append(e);
    localStringBuilder.append(((StringBuilder)localObject).toString());
    return localStringBuilder.toString();
  }
}
