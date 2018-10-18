package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintManager.AuthenticationCallback;
import android.hardware.fingerprint.FingerprintManager.AuthenticationResult;
import android.hardware.fingerprint.FingerprintManager.CryptoObject;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RequiresPermission;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

public final class FingerprintManagerCompat
{
  private final Context a;
  
  private FingerprintManagerCompat(Context paramContext)
  {
    a = paramContext;
  }
  
  @RequiresApi(23)
  private static FingerprintManager.AuthenticationCallback a(AuthenticationCallback paramAuthenticationCallback)
  {
    new FingerprintManager.AuthenticationCallback()
    {
      public void onAuthenticationError(int paramAnonymousInt, CharSequence paramAnonymousCharSequence)
      {
        a.onAuthenticationError(paramAnonymousInt, paramAnonymousCharSequence);
      }
      
      public void onAuthenticationFailed()
      {
        a.onAuthenticationFailed();
      }
      
      public void onAuthenticationHelp(int paramAnonymousInt, CharSequence paramAnonymousCharSequence)
      {
        a.onAuthenticationHelp(paramAnonymousInt, paramAnonymousCharSequence);
      }
      
      public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult paramAnonymousAuthenticationResult)
      {
        a.onAuthenticationSucceeded(new FingerprintManagerCompat.AuthenticationResult(FingerprintManagerCompat.a(paramAnonymousAuthenticationResult.getCryptoObject())));
      }
    };
  }
  
  @RequiresApi(23)
  private static FingerprintManager.CryptoObject a(CryptoObject paramCryptoObject)
  {
    if (paramCryptoObject == null) {
      return null;
    }
    if (paramCryptoObject.getCipher() != null) {
      return new FingerprintManager.CryptoObject(paramCryptoObject.getCipher());
    }
    if (paramCryptoObject.getSignature() != null) {
      return new FingerprintManager.CryptoObject(paramCryptoObject.getSignature());
    }
    if (paramCryptoObject.getMac() != null) {
      return new FingerprintManager.CryptoObject(paramCryptoObject.getMac());
    }
    return null;
  }
  
  @Nullable
  @RequiresApi(23)
  private static FingerprintManager a(@NonNull Context paramContext)
  {
    if (paramContext.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
      return (FingerprintManager)paramContext.getSystemService(FingerprintManager.class);
    }
    return null;
  }
  
  @RequiresApi(23)
  static CryptoObject a(FingerprintManager.CryptoObject paramCryptoObject)
  {
    if (paramCryptoObject == null) {
      return null;
    }
    if (paramCryptoObject.getCipher() != null) {
      return new CryptoObject(paramCryptoObject.getCipher());
    }
    if (paramCryptoObject.getSignature() != null) {
      return new CryptoObject(paramCryptoObject.getSignature());
    }
    if (paramCryptoObject.getMac() != null) {
      return new CryptoObject(paramCryptoObject.getMac());
    }
    return null;
  }
  
  @NonNull
  public static FingerprintManagerCompat from(@NonNull Context paramContext)
  {
    return new FingerprintManagerCompat(paramContext);
  }
  
  @RequiresPermission("android.permission.USE_FINGERPRINT")
  public void authenticate(@Nullable CryptoObject paramCryptoObject, int paramInt, @Nullable android.support.v4.os.CancellationSignal paramCancellationSignal, @NonNull AuthenticationCallback paramAuthenticationCallback, @Nullable Handler paramHandler)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      FingerprintManager localFingerprintManager = a(a);
      if (localFingerprintManager != null)
      {
        if (paramCancellationSignal != null) {}
        for (paramCancellationSignal = (android.os.CancellationSignal)paramCancellationSignal.getCancellationSignalObject();; paramCancellationSignal = null) {
          break;
        }
        localFingerprintManager.authenticate(a(paramCryptoObject), paramCancellationSignal, paramInt, a(paramAuthenticationCallback), paramHandler);
      }
    }
  }
  
  @RequiresPermission("android.permission.USE_FINGERPRINT")
  public boolean hasEnrolledFingerprints()
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool2 = false;
    if (i >= 23)
    {
      FingerprintManager localFingerprintManager = a(a);
      boolean bool1 = bool2;
      if (localFingerprintManager != null)
      {
        bool1 = bool2;
        if (localFingerprintManager.hasEnrolledFingerprints()) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  @RequiresPermission("android.permission.USE_FINGERPRINT")
  public boolean isHardwareDetected()
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool2 = false;
    if (i >= 23)
    {
      FingerprintManager localFingerprintManager = a(a);
      boolean bool1 = bool2;
      if (localFingerprintManager != null)
      {
        bool1 = bool2;
        if (localFingerprintManager.isHardwareDetected()) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  public static abstract class AuthenticationCallback
  {
    public AuthenticationCallback() {}
    
    public void onAuthenticationError(int paramInt, CharSequence paramCharSequence) {}
    
    public void onAuthenticationFailed() {}
    
    public void onAuthenticationHelp(int paramInt, CharSequence paramCharSequence) {}
    
    public void onAuthenticationSucceeded(FingerprintManagerCompat.AuthenticationResult paramAuthenticationResult) {}
  }
  
  public static final class AuthenticationResult
  {
    private final FingerprintManagerCompat.CryptoObject a;
    
    public AuthenticationResult(FingerprintManagerCompat.CryptoObject paramCryptoObject)
    {
      a = paramCryptoObject;
    }
    
    public FingerprintManagerCompat.CryptoObject getCryptoObject()
    {
      return a;
    }
  }
  
  public static class CryptoObject
  {
    private final Signature a;
    private final Cipher b;
    private final Mac c;
    
    public CryptoObject(@NonNull Signature paramSignature)
    {
      a = paramSignature;
      b = null;
      c = null;
    }
    
    public CryptoObject(@NonNull Cipher paramCipher)
    {
      b = paramCipher;
      a = null;
      c = null;
    }
    
    public CryptoObject(@NonNull Mac paramMac)
    {
      c = paramMac;
      b = null;
      a = null;
    }
    
    @Nullable
    public Cipher getCipher()
    {
      return b;
    }
    
    @Nullable
    public Mac getMac()
    {
      return c;
    }
    
    @Nullable
    public Signature getSignature()
    {
      return a;
    }
  }
}
