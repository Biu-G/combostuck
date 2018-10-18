package com.bumptech.glide.signature;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

public final class EmptySignature
  implements Key
{
  private static final EmptySignature a = new EmptySignature();
  
  private EmptySignature() {}
  
  @NonNull
  public static EmptySignature obtain()
  {
    return a;
  }
  
  public String toString()
  {
    return "EmptySignature";
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest) {}
}
