package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class FileLoader<Data>
  implements ModelLoader<File, Data>
{
  private final FileOpener<Data> a;
  
  public FileLoader(FileOpener<Data> paramFileOpener)
  {
    a = paramFileOpener;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull File paramFile, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(new ObjectKey(paramFile), new a(paramFile, a));
  }
  
  public boolean handles(@NonNull File paramFile)
  {
    return true;
  }
  
  public static class Factory<Data>
    implements ModelLoaderFactory<File, Data>
  {
    private final FileLoader.FileOpener<Data> a;
    
    public Factory(FileLoader.FileOpener<Data> paramFileOpener)
    {
      a = paramFileOpener;
    }
    
    @NonNull
    public final ModelLoader<File, Data> build(@NonNull MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new FileLoader(a);
    }
    
    public final void teardown() {}
  }
  
  public static class FileDescriptorFactory
    extends FileLoader.Factory<ParcelFileDescriptor>
  {
    public FileDescriptorFactory()
    {
      super()
      {
        public ParcelFileDescriptor a(File paramAnonymousFile)
          throws FileNotFoundException
        {
          return ParcelFileDescriptor.open(paramAnonymousFile, 268435456);
        }
        
        public void a(ParcelFileDescriptor paramAnonymousParcelFileDescriptor)
          throws IOException
        {
          paramAnonymousParcelFileDescriptor.close();
        }
        
        public Class<ParcelFileDescriptor> getDataClass()
        {
          return ParcelFileDescriptor.class;
        }
      };
    }
  }
  
  public static abstract interface FileOpener<Data>
  {
    public abstract void close(Data paramData)
      throws IOException;
    
    public abstract Class<Data> getDataClass();
    
    public abstract Data open(File paramFile)
      throws FileNotFoundException;
  }
  
  public static class StreamFactory
    extends FileLoader.Factory<InputStream>
  {
    public StreamFactory()
    {
      super()
      {
        public InputStream a(File paramAnonymousFile)
          throws FileNotFoundException
        {
          return new FileInputStream(paramAnonymousFile);
        }
        
        public void a(InputStream paramAnonymousInputStream)
          throws IOException
        {
          paramAnonymousInputStream.close();
        }
        
        public Class<InputStream> getDataClass()
        {
          return InputStream.class;
        }
      };
    }
  }
  
  private static final class a<Data>
    implements DataFetcher<Data>
  {
    private final File a;
    private final FileLoader.FileOpener<Data> b;
    private Data c;
    
    a(File paramFile, FileLoader.FileOpener<Data> paramFileOpener)
    {
      a = paramFile;
      b = paramFileOpener;
    }
    
    public void cancel() {}
    
    public void cleanup()
    {
      if (c != null) {}
      try
      {
        b.close(c);
        return;
      }
      catch (IOException localIOException) {}
    }
    
    @NonNull
    public Class<Data> getDataClass()
    {
      return b.getDataClass();
    }
    
    @NonNull
    public DataSource getDataSource()
    {
      return DataSource.LOCAL;
    }
    
    public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super Data> paramDataCallback)
    {
      try
      {
        c = b.open(a);
        paramDataCallback.onDataReady(c);
        return;
      }
      catch (FileNotFoundException paramPriority)
      {
        if (Log.isLoggable("FileLoader", 3)) {
          Log.d("FileLoader", "Failed to open file", paramPriority);
        }
        paramDataCallback.onLoadFailed(paramPriority);
      }
    }
  }
}
