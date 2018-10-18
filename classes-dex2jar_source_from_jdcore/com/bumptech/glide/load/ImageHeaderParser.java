package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public abstract interface ImageHeaderParser
{
  public static final int UNKNOWN_ORIENTATION = -1;
  
  public abstract int getOrientation(@NonNull InputStream paramInputStream, @NonNull ArrayPool paramArrayPool)
    throws IOException;
  
  public abstract int getOrientation(@NonNull ByteBuffer paramByteBuffer, @NonNull ArrayPool paramArrayPool)
    throws IOException;
  
  @NonNull
  public abstract ImageType getType(@NonNull InputStream paramInputStream)
    throws IOException;
  
  @NonNull
  public abstract ImageType getType(@NonNull ByteBuffer paramByteBuffer)
    throws IOException;
  
  public static enum ImageType
  {
    private final boolean a;
    
    static
    {
      PNG_A = new ImageType("PNG_A", 3, true);
      PNG = new ImageType("PNG", 4, false);
      WEBP_A = new ImageType("WEBP_A", 5, true);
      WEBP = new ImageType("WEBP", 6, false);
    }
    
    private ImageType(boolean paramBoolean)
    {
      a = paramBoolean;
    }
    
    public boolean hasAlpha()
    {
      return a;
    }
  }
}
