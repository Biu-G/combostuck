package cn.edu.pku.pkurunner.Photo;

import android.graphics.Bitmap.CompressFormat;
import id.zelory.compressor.Compressor;
import java.io.File;
import java.io.IOException;

public abstract class PhotoCompression
{
  public PhotoCompression() {}
  
  public static String compressPhoto(File paramFile, Compressor paramCompressor, String paramString)
    throws IOException
  {
    paramString = new File(PhotoFile.getPhotoDir(paramFile), paramString);
    return paramCompressor.setMaxWidth(640).setMaxHeight(480).setQuality(50).setCompressFormat(Bitmap.CompressFormat.JPEG).setDestinationDirectoryPath(PhotoFile.getCompressedPhotoDir(paramFile).getPath()).compressToFile(paramString).getName();
  }
}
