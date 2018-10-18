package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import java.io.File;

public abstract interface Encoder<T>
{
  public abstract boolean encode(@NonNull T paramT, @NonNull File paramFile, @NonNull Options paramOptions);
}
