package cn.edu.pku.pkurunner.Photo;

import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

public abstract class PhotoFile
{
  public static final String PicutreType = Environment.DIRECTORY_PICTURES;
  
  public PhotoFile() {}
  
  public static File createPhotoFile(File paramFile)
    throws IOException
  {
    String str = newPhotoName();
    paramFile = getPhotoDir(paramFile);
    if (!paramFile.exists()) {
      paramFile.mkdir();
    }
    return File.createTempFile(str, ".jpg", paramFile);
  }
  
  public static File getCompressedPhotoDir(File paramFile)
  {
    return new File(paramFile, "/compressed");
  }
  
  public static File getPhotoDir(File paramFile)
  {
    return new File(paramFile, "/photo");
  }
  
  public static String newPhotoName()
  {
    String str = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.CHINESE).format(new Date());
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("JPEG_");
    localStringBuilder.append(str);
    localStringBuilder.append(UUID.randomUUID());
    return localStringBuilder.toString();
  }
}
