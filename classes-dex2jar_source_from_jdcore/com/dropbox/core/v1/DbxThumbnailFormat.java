package com.dropbox.core.v1;

public class DbxThumbnailFormat
{
  public static final DbxThumbnailFormat JPEG = new DbxThumbnailFormat("jpeg");
  public static final DbxThumbnailFormat PNG = new DbxThumbnailFormat("png");
  public final String ident;
  
  public DbxThumbnailFormat(String paramString)
  {
    ident = paramString;
  }
  
  public static DbxThumbnailFormat bestForFileName(String paramString, DbxThumbnailFormat paramDbxThumbnailFormat)
  {
    paramString = paramString.toLowerCase();
    if ((!paramString.endsWith(".png")) && (!paramString.endsWith(".gif")))
    {
      if ((!paramString.endsWith(".jpeg")) && (!paramString.endsWith(".jpg")) && (!paramString.endsWith(".jpe"))) {
        return paramDbxThumbnailFormat;
      }
      return JPEG;
    }
    return PNG;
  }
}
