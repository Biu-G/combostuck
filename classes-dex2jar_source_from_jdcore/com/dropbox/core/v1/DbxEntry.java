package com.dropbox.core.v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonReader.FieldMapping;
import com.dropbox.core.json.JsonReader.FieldMapping.Builder;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.Collector.ArrayListCollector;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

public abstract class DbxEntry
  extends Dumpable
  implements Serializable
{
  public static final JsonReader<DbxEntry> Reader;
  public static final JsonReader<DbxEntry> ReaderMaybeDeleted;
  private static final JsonReader.FieldMapping b;
  public static final long serialVersionUID = 0L;
  public final String iconName;
  public final boolean mightHaveThumbnail;
  public final String name;
  public final String path;
  
  static
  {
    Reader = new JsonReader()
    {
      public final DbxEntry a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        return readentry;
      }
    };
    ReaderMaybeDeleted = new JsonReader()
    {
      public final DbxEntry a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        paramAnonymousJsonParser = DbxEntry.readMaybeDeleted(paramAnonymousJsonParser, null);
        if (paramAnonymousJsonParser == null) {
          return null;
        }
        return entry;
      }
    };
    JsonReader.FieldMapping.Builder localBuilder = new JsonReader.FieldMapping.Builder();
    localBuilder.add("size", 0);
    localBuilder.add("bytes", 1);
    localBuilder.add("path", 2);
    localBuilder.add("is_dir", 3);
    localBuilder.add("is_deleted", 4);
    localBuilder.add("rev", 5);
    localBuilder.add("thumb_exists", 6);
    localBuilder.add("icon", 7);
    localBuilder.add("modified", 8);
    localBuilder.add("client_mtime", 9);
    localBuilder.add("hash", 10);
    localBuilder.add("contents", 11);
    localBuilder.add("photo_info", 12);
    localBuilder.add("video_info", 13);
    b = localBuilder.build();
  }
  
  private DbxEntry(String paramString1, String paramString2, boolean paramBoolean)
  {
    name = DbxPathV1.getName(paramString1);
    path = paramString1;
    iconName = paramString2;
    mightHaveThumbnail = paramBoolean;
  }
  
  private static <C> WithChildrenC<C> b(JsonParser paramJsonParser, Collector<DbxEntry, ? extends C> paramCollector, boolean paramBoolean)
    throws IOException, JsonReadException
  {
    JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramJsonParser);
    Object localObject2 = null;
    Object localObject13 = null;
    Object localObject11 = null;
    Object localObject12 = null;
    Object localObject6 = null;
    Object localObject1 = null;
    Object localObject10 = null;
    Object localObject5 = null;
    Object localObject4 = null;
    Object localObject3 = null;
    Object localObject8 = null;
    Object localObject7 = null;
    Object localObject9 = null;
    long l = -1L;
    label780:
    label793:
    label806:
    label819:
    label832:
    label871:
    label874:
    for (;;)
    {
      Collector<DbxEntry, ? extends C> localCollector = paramCollector;
      String str;
      if (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        str = paramJsonParser.getCurrentName();
        JsonReader.nextToken(paramJsonParser);
        int i = b.get(str);
        switch (i)
        {
        default: 
          break;
        }
        try
        {
          localObject4 = (DbxEntry.File.VideoInfo)a.a(DbxEntry.File.VideoInfo.Reader, DbxEntry.File.VideoInfo.PENDING).readField(paramJsonParser, str, localObject4);
        }
        catch (JsonReadException paramJsonParser)
        {
          throw paramJsonParser.addFieldContext(str);
        }
        localObject2 = (DbxEntry.File.PhotoInfo)a.a(DbxEntry.File.PhotoInfo.Reader, DbxEntry.File.PhotoInfo.PENDING).readField(paramJsonParser, str, localObject2);
        break label871;
        if (localCollector != null)
        {
          localObject11 = JsonArrayReader.mk(Reader, localCollector).readField(paramJsonParser, str, localObject11);
        }
        else
        {
          throw new JsonReadException("not expecting \"contents\" field, since we didn't ask for children", paramJsonParser.getCurrentLocation());
          if (localCollector != null)
          {
            localObject13 = (String)JsonReader.StringReader.readField(paramJsonParser, str, localObject13);
          }
          else
          {
            throw new JsonReadException("not expecting \"hash\" field, since we didn't ask for children", paramJsonParser.getCurrentLocation());
            localObject12 = (Date)JsonDateReader.Dropbox.readField(paramJsonParser, str, localObject12);
            break label871;
            localObject8 = (Date)JsonDateReader.Dropbox.readField(paramJsonParser, str, localObject8);
            break label871;
            localObject10 = (String)JsonReader.StringReader.readField(paramJsonParser, str, localObject10);
            break label871;
            localObject3 = (Boolean)JsonReader.BooleanReader.readField(paramJsonParser, str, localObject3);
            break label871;
            localObject7 = (String)JsonReader.StringReader.readField(paramJsonParser, str, localObject7);
            break label871;
            localObject6 = (Boolean)JsonReader.BooleanReader.readField(paramJsonParser, str, localObject6);
            break label871;
            localObject5 = (Boolean)JsonReader.BooleanReader.readField(paramJsonParser, str, localObject5);
            break label871;
            localObject1 = (String)JsonReader.StringReader.readField(paramJsonParser, str, localObject1);
            break label874;
            l = JsonReader.readUnsignedLongField(paramJsonParser, str, l);
            break label874;
            localObject9 = (String)JsonReader.StringReader.readField(paramJsonParser, str, localObject9);
            break label874;
            JsonReader.skipValue(paramJsonParser);
            break label874;
            paramJsonParser = new StringBuilder();
            paramJsonParser.append("bad index: ");
            paramJsonParser.append(i);
            paramJsonParser.append(", field = \"");
            paramJsonParser.append(str);
            paramJsonParser.append("\"");
            throw new AssertionError(paramJsonParser.toString());
          }
        }
      }
      else
      {
        JsonReader.expectObjectEnd(paramJsonParser);
        if (localObject1 != null)
        {
          if (localObject10 != null)
          {
            paramJsonParser = (JsonParser)localObject6;
            if (localObject6 == null) {
              paramJsonParser = Boolean.FALSE;
            }
            paramCollector = (Collector<DbxEntry, ? extends C>)localObject5;
            if (localObject5 == null) {
              paramCollector = Boolean.FALSE;
            }
            localObject5 = localObject3;
            if (localObject3 == null) {
              localObject5 = Boolean.FALSE;
            }
            if ((paramCollector.booleanValue()) && ((localObject11 != null) || (localObject13 != null))) {
              if (localObject13 != null)
              {
                if (localObject11 == null) {
                  throw new JsonReadException("missing \"contents\", when we asked for children", localJsonLocation);
                }
              }
              else {
                throw new JsonReadException("missing \"hash\", when we asked for children", localJsonLocation);
              }
            }
            if (paramCollector.booleanValue())
            {
              paramCollector = new Folder((String)localObject1, (String)localObject10, ((Boolean)localObject5).booleanValue());
            }
            else
            {
              if (localObject9 == null) {
                break label832;
              }
              if (l == -1L) {
                break label819;
              }
              if (localObject8 == null) {
                break label806;
              }
              if (localObject12 == null) {
                break label793;
              }
              if (localObject7 == null) {
                break label780;
              }
              paramCollector = new File((String)localObject1, (String)localObject10, ((Boolean)localObject5).booleanValue(), l, (String)localObject9, (Date)localObject8, (Date)localObject12, (String)localObject7, (DbxEntry.File.PhotoInfo)localObject2, (DbxEntry.File.VideoInfo)localObject4);
            }
            if (paramJsonParser.booleanValue())
            {
              if (paramBoolean) {
                return null;
              }
              throw new JsonReadException("not expecting \"is_deleted\" entry here", localJsonLocation);
            }
            return new WithChildrenC(paramCollector, (String)localObject13, localObject11);
            throw new JsonReadException("missing \"rev\" for a file entry", localJsonLocation);
            throw new JsonReadException("missing \"client_mtime\" for a file entry", localJsonLocation);
            throw new JsonReadException("missing \"modified\" for a file entry", localJsonLocation);
            throw new JsonReadException("missing \"bytes\" for a file entry", localJsonLocation);
            throw new JsonReadException("missing \"size\" for a file entry", localJsonLocation);
          }
          throw new JsonReadException("missing field \"icon\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"path\"", localJsonLocation);
      }
    }
  }
  
  public static <C> WithChildrenC<C> read(JsonParser paramJsonParser, Collector<DbxEntry, ? extends C> paramCollector)
    throws IOException, JsonReadException
  {
    paramJsonParser = b(paramJsonParser, paramCollector, false);
    if (!a)
    {
      if (paramJsonParser != null) {
        return paramJsonParser;
      }
      throw new AssertionError("@AssumeAssertion(nullness)");
    }
    return paramJsonParser;
  }
  
  public static <C> WithChildrenC<C> readMaybeDeleted(JsonParser paramJsonParser, Collector<DbxEntry, ? extends C> paramCollector)
    throws IOException, JsonReadException
  {
    return b(paramJsonParser, paramCollector, true);
  }
  
  public abstract File asFile();
  
  public abstract Folder asFolder();
  
  protected void dumpFields(DumpWriter paramDumpWriter)
  {
    paramDumpWriter.v(path);
    paramDumpWriter.f("iconName").v(iconName);
    paramDumpWriter.f("mightHaveThumbnail").v(mightHaveThumbnail);
  }
  
  public abstract boolean isFile();
  
  public abstract boolean isFolder();
  
  protected boolean partialEquals(DbxEntry paramDbxEntry)
  {
    if (!name.equals(name)) {
      return false;
    }
    if (!path.equals(path)) {
      return false;
    }
    if (!iconName.equals(iconName)) {
      return false;
    }
    return mightHaveThumbnail == mightHaveThumbnail;
  }
  
  protected int partialHashCode()
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e2expr(TypeTransformer.java:632)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:716)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public static final class File
    extends DbxEntry
  {
    public static final JsonReader<File> Reader = new JsonReader()
    {
      public final DbxEntry.File a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = paramAnonymousJsonParser.getCurrentLocation();
        paramAnonymousJsonParser = readentry;
        if ((paramAnonymousJsonParser instanceof DbxEntry.File)) {
          return (DbxEntry.File)paramAnonymousJsonParser;
        }
        throw new JsonReadException("Expecting a file entry, got a folder entry", localJsonLocation);
      }
    };
    public static final JsonReader<File> ReaderMaybeDeleted = new JsonReader()
    {
      public final DbxEntry.File a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = paramAnonymousJsonParser.getCurrentLocation();
        paramAnonymousJsonParser = DbxEntry.a(paramAnonymousJsonParser, null, true);
        if (paramAnonymousJsonParser == null) {
          return null;
        }
        paramAnonymousJsonParser = entry;
        if ((paramAnonymousJsonParser instanceof DbxEntry.File)) {
          return (DbxEntry.File)paramAnonymousJsonParser;
        }
        throw new JsonReadException("Expecting a file entry, got a folder entry", localJsonLocation);
      }
    };
    public static final long serialVersionUID = 0L;
    public final Date clientMtime;
    public final String humanSize;
    public final Date lastModified;
    public final long numBytes;
    public final PhotoInfo photoInfo;
    public final String rev;
    public final VideoInfo videoInfo;
    
    public File(String paramString1, String paramString2, boolean paramBoolean, long paramLong, String paramString3, Date paramDate1, Date paramDate2, String paramString4)
    {
      this(paramString1, paramString2, paramBoolean, paramLong, paramString3, paramDate1, paramDate2, paramString4, null, null);
    }
    
    public File(String paramString1, String paramString2, boolean paramBoolean, long paramLong, String paramString3, Date paramDate1, Date paramDate2, String paramString4, PhotoInfo paramPhotoInfo, VideoInfo paramVideoInfo)
    {
      super(paramString2, paramBoolean, null);
      numBytes = paramLong;
      humanSize = paramString3;
      lastModified = paramDate1;
      clientMtime = paramDate2;
      rev = paramString4;
      photoInfo = paramPhotoInfo;
      videoInfo = paramVideoInfo;
    }
    
    private static <T extends Dumpable> void a(DumpWriter paramDumpWriter, String paramString, T paramT1, T paramT2)
    {
      if (paramT1 == null) {
        return;
      }
      paramDumpWriter.f(paramString);
      if (paramT1 == paramT2)
      {
        paramDumpWriter.verbatim("pending");
        return;
      }
      paramDumpWriter.v(paramT1);
    }
    
    public File asFile()
    {
      return this;
    }
    
    public DbxEntry.Folder asFolder()
    {
      throw new RuntimeException("not a folder");
    }
    
    protected void dumpFields(DumpWriter paramDumpWriter)
    {
      super.dumpFields(paramDumpWriter);
      paramDumpWriter.f("numBytes").v(numBytes);
      paramDumpWriter.f("humanSize").v(humanSize);
      paramDumpWriter.f("lastModified").v(lastModified);
      paramDumpWriter.f("clientMtime").v(clientMtime);
      paramDumpWriter.f("rev").v(rev);
      a(paramDumpWriter, "photoInfo", photoInfo, PhotoInfo.PENDING);
      a(paramDumpWriter, "videoInfo", videoInfo, VideoInfo.PENDING);
    }
    
    public boolean equals(File paramFile)
    {
      if (!partialEquals(paramFile)) {
        return false;
      }
      if (numBytes != numBytes) {
        return false;
      }
      if (!humanSize.equals(humanSize)) {
        return false;
      }
      if (!lastModified.equals(lastModified)) {
        return false;
      }
      if (!clientMtime.equals(clientMtime)) {
        return false;
      }
      if (!rev.equals(rev)) {
        return false;
      }
      if (!LangUtil.nullableEquals(photoInfo, photoInfo)) {
        return false;
      }
      return LangUtil.nullableEquals(videoInfo, videoInfo);
    }
    
    public boolean equals(Object paramObject)
    {
      return (paramObject != null) && (getClass().equals(paramObject.getClass())) && (equals((File)paramObject));
    }
    
    protected String getTypeName()
    {
      return "File";
    }
    
    public int hashCode()
    {
      return (((((partialHashCode() * 31 + (int)numBytes) * 31 + lastModified.hashCode()) * 31 + clientMtime.hashCode()) * 31 + rev.hashCode()) * 31 + LangUtil.nullableHashCode(photoInfo)) * 31 + LangUtil.nullableHashCode(videoInfo);
    }
    
    public boolean isFile()
    {
      return true;
    }
    
    public boolean isFolder()
    {
      return false;
    }
    
    public static class Location
      extends Dumpable
    {
      public static JsonReader<Location> Reader = new JsonReader()
      {
        public DbxEntry.File.Location a(JsonParser paramAnonymousJsonParser)
          throws IOException, JsonReadException
        {
          if (JsonArrayReader.isArrayStart(paramAnonymousJsonParser))
          {
            JsonReader.expectArrayStart(paramAnonymousJsonParser);
            DbxEntry.File.Location localLocation = new DbxEntry.File.Location(JsonReader.readDouble(paramAnonymousJsonParser), JsonReader.readDouble(paramAnonymousJsonParser));
            JsonReader.expectArrayEnd(paramAnonymousJsonParser);
            return localLocation;
          }
          JsonReader.skipValue(paramAnonymousJsonParser);
          return null;
        }
      };
      public final double latitude;
      public final double longitude;
      
      public Location(double paramDouble1, double paramDouble2)
      {
        latitude = paramDouble1;
        longitude = paramDouble2;
      }
      
      protected void dumpFields(DumpWriter paramDumpWriter)
      {
        paramDumpWriter.f("latitude").v(latitude);
        paramDumpWriter.f("longitude").v(longitude);
      }
      
      public boolean equals(Location paramLocation)
      {
        if (latitude != latitude) {
          return false;
        }
        return longitude == longitude;
      }
      
      public boolean equals(Object paramObject)
      {
        return (paramObject != null) && (getClass().equals(paramObject.getClass())) && (equals((Location)paramObject));
      }
      
      public int hashCode()
      {
        long l1 = Double.doubleToLongBits(latitude);
        long l2 = Double.doubleToLongBits(longitude);
        return (527 + (int)(l1 ^ l1 >>> 32)) * 31 + (int)(l2 ^ l2 >>> 32);
      }
    }
    
    public static final class PhotoInfo
      extends Dumpable
    {
      public static final PhotoInfo PENDING = new PhotoInfo(null, null);
      public static JsonReader<PhotoInfo> Reader = new JsonReader()
      {
        public DbxEntry.File.PhotoInfo a(JsonParser paramAnonymousJsonParser)
          throws IOException, JsonReadException
        {
          JsonReader.expectObjectStart(paramAnonymousJsonParser);
          Date localDate = null;
          DbxEntry.File.Location localLocation = null;
          while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
          {
            String str = paramAnonymousJsonParser.getCurrentName();
            JsonReader.nextToken(paramAnonymousJsonParser);
            if (str.equals("lat_long")) {
              localLocation = (DbxEntry.File.Location)DbxEntry.File.Location.Reader.read(paramAnonymousJsonParser);
            } else if (str.equals("time_taken")) {
              localDate = (Date)JsonDateReader.Dropbox.readOptional(paramAnonymousJsonParser);
            } else {
              JsonReader.skipValue(paramAnonymousJsonParser);
            }
          }
          JsonReader.expectObjectEnd(paramAnonymousJsonParser);
          return new DbxEntry.File.PhotoInfo(localDate, localLocation);
        }
      };
      public final DbxEntry.File.Location location;
      public final Date timeTaken;
      
      public PhotoInfo(Date paramDate, DbxEntry.File.Location paramLocation)
      {
        timeTaken = paramDate;
        location = paramLocation;
      }
      
      protected void dumpFields(DumpWriter paramDumpWriter)
      {
        paramDumpWriter.f("timeTaken").v(timeTaken);
        paramDumpWriter.f("location").v(location);
      }
      
      public boolean equals(PhotoInfo paramPhotoInfo)
      {
        if ((paramPhotoInfo != PENDING) && (this != PENDING))
        {
          if (!LangUtil.nullableEquals(timeTaken, timeTaken)) {
            return false;
          }
          return LangUtil.nullableEquals(location, location);
        }
        return paramPhotoInfo == this;
      }
      
      public boolean equals(Object paramObject)
      {
        return (paramObject != null) && (getClass().equals(paramObject.getClass())) && (equals((PhotoInfo)paramObject));
      }
      
      public int hashCode()
      {
        return (0 + LangUtil.nullableHashCode(timeTaken)) * 31 + LangUtil.nullableHashCode(location);
      }
    }
    
    public static final class VideoInfo
      extends Dumpable
    {
      public static final VideoInfo PENDING = new VideoInfo(null, null, null);
      public static JsonReader<VideoInfo> Reader = new JsonReader()
      {
        public DbxEntry.File.VideoInfo a(JsonParser paramAnonymousJsonParser)
          throws IOException, JsonReadException
        {
          JsonReader.expectObjectStart(paramAnonymousJsonParser);
          Date localDate = null;
          DbxEntry.File.Location localLocation = null;
          Object localObject = localLocation;
          while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
          {
            String str = paramAnonymousJsonParser.getCurrentName();
            JsonReader.nextToken(paramAnonymousJsonParser);
            if (str.equals("lat_long")) {
              localLocation = (DbxEntry.File.Location)DbxEntry.File.Location.Reader.read(paramAnonymousJsonParser);
            } else if (str.equals("time_taken")) {
              localDate = (Date)JsonDateReader.Dropbox.readOptional(paramAnonymousJsonParser);
            } else if (str.equals("duration")) {
              localObject = (Long)JsonReader.UnsignedLongReader.readOptional(paramAnonymousJsonParser);
            } else {
              JsonReader.skipValue(paramAnonymousJsonParser);
            }
          }
          JsonReader.expectObjectEnd(paramAnonymousJsonParser);
          return new DbxEntry.File.VideoInfo(localDate, localLocation, (Long)localObject);
        }
      };
      public final Long duration;
      public final DbxEntry.File.Location location;
      public final Date timeTaken;
      
      public VideoInfo(Date paramDate, DbxEntry.File.Location paramLocation, Long paramLong)
      {
        timeTaken = paramDate;
        location = paramLocation;
        duration = paramLong;
      }
      
      protected void dumpFields(DumpWriter paramDumpWriter)
      {
        paramDumpWriter.f("timeTaken").v(timeTaken);
        paramDumpWriter.f("location").v(location);
        paramDumpWriter.f("duration").v(duration);
      }
      
      public boolean equals(VideoInfo paramVideoInfo)
      {
        if ((paramVideoInfo != PENDING) && (this != PENDING))
        {
          if (!LangUtil.nullableEquals(timeTaken, timeTaken)) {
            return false;
          }
          if (!LangUtil.nullableEquals(location, location)) {
            return false;
          }
          return LangUtil.nullableEquals(duration, duration);
        }
        return paramVideoInfo == this;
      }
      
      public boolean equals(Object paramObject)
      {
        return (paramObject != null) && (getClass().equals(paramObject.getClass())) && (equals((VideoInfo)paramObject));
      }
      
      public int hashCode()
      {
        return ((0 + LangUtil.nullableHashCode(timeTaken)) * 31 + LangUtil.nullableHashCode(location)) * 31 + LangUtil.nullableHashCode(duration);
      }
    }
  }
  
  public static final class Folder
    extends DbxEntry
  {
    public static final JsonReader<Folder> Reader = new JsonReader()
    {
      public final DbxEntry.Folder a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = paramAnonymousJsonParser.getCurrentLocation();
        paramAnonymousJsonParser = readentry;
        if ((paramAnonymousJsonParser instanceof DbxEntry.Folder)) {
          return (DbxEntry.Folder)paramAnonymousJsonParser;
        }
        throw new JsonReadException("Expecting a file entry, got a folder entry", localJsonLocation);
      }
    };
    public static final long serialVersionUID = 0L;
    
    public Folder(String paramString1, String paramString2, boolean paramBoolean)
    {
      super(paramString2, paramBoolean, null);
    }
    
    public DbxEntry.File asFile()
    {
      throw new RuntimeException("not a file");
    }
    
    public Folder asFolder()
    {
      return this;
    }
    
    public boolean equals(Folder paramFolder)
    {
      return partialEquals(paramFolder);
    }
    
    public boolean equals(Object paramObject)
    {
      return (paramObject != null) && (getClass().equals(paramObject.getClass())) && (equals((Folder)paramObject));
    }
    
    protected String getTypeName()
    {
      return "Folder";
    }
    
    public int hashCode()
    {
      return partialHashCode();
    }
    
    public boolean isFile()
    {
      return false;
    }
    
    public boolean isFolder()
    {
      return true;
    }
  }
  
  public static final class WithChildren
    extends Dumpable
    implements Serializable
  {
    public static final JsonReader<WithChildren> Reader = new JsonReader()
    {
      public final DbxEntry.WithChildren a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        paramAnonymousJsonParser = DbxEntry.read(paramAnonymousJsonParser, new Collector.ArrayListCollector());
        return new DbxEntry.WithChildren(entry, hash, (List)children);
      }
    };
    public static final JsonReader<WithChildren> ReaderMaybeDeleted = new JsonReader()
    {
      public final DbxEntry.WithChildren a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        paramAnonymousJsonParser = DbxEntry.readMaybeDeleted(paramAnonymousJsonParser, new Collector.ArrayListCollector());
        if (paramAnonymousJsonParser == null) {
          return null;
        }
        return new DbxEntry.WithChildren(entry, hash, (List)children);
      }
    };
    public static final long serialVersionUID = 0L;
    public final List<DbxEntry> children;
    public final DbxEntry entry;
    public final String hash;
    
    public WithChildren(DbxEntry paramDbxEntry, String paramString, List<DbxEntry> paramList)
    {
      entry = paramDbxEntry;
      hash = paramString;
      children = paramList;
    }
    
    protected void dumpFields(DumpWriter paramDumpWriter)
    {
      paramDumpWriter.v(entry);
      paramDumpWriter.f("hash").v(hash);
      paramDumpWriter.f("children").v(children);
    }
    
    public boolean equals(WithChildren paramWithChildren)
    {
      if (children != null)
      {
        if (!children.equals(children)) {
          return false;
        }
      }
      else if (children != null) {
        return false;
      }
      if (!entry.equals(entry)) {
        return false;
      }
      if (hash != null)
      {
        if (!hash.equals(hash)) {
          return false;
        }
      }
      else if (hash != null) {
        return false;
      }
      return true;
    }
    
    public boolean equals(Object paramObject)
    {
      return (paramObject != null) && (getClass().equals(paramObject.getClass())) && (equals((WithChildren)paramObject));
    }
    
    public int hashCode()
    {
      int k = entry.hashCode();
      String str = hash;
      int j = 0;
      int i;
      if (str != null) {
        i = hash.hashCode();
      } else {
        i = 0;
      }
      if (children != null) {
        j = children.hashCode();
      }
      return (k * 31 + i) * 31 + j;
    }
  }
  
  public static final class WithChildrenC<C>
    extends Dumpable
    implements Serializable
  {
    public static final long serialVersionUID = 0L;
    public final C children;
    public final DbxEntry entry;
    public final String hash;
    
    public WithChildrenC(DbxEntry paramDbxEntry, String paramString, C paramC)
    {
      entry = paramDbxEntry;
      hash = paramString;
      children = paramC;
    }
    
    protected void dumpFields(DumpWriter paramDumpWriter)
    {
      paramDumpWriter.v(entry);
      paramDumpWriter.f("hash").v(hash);
      if (children != null) {
        paramDumpWriter.f("children").verbatim(children.toString());
      }
    }
    
    public boolean equals(WithChildrenC<?> paramWithChildrenC)
    {
      if (children != null)
      {
        if (!children.equals(children)) {
          return false;
        }
      }
      else if (children != null) {
        return false;
      }
      if (!entry.equals(entry)) {
        return false;
      }
      if (hash != null)
      {
        if (!hash.equals(hash)) {
          return false;
        }
      }
      else if (hash != null) {
        return false;
      }
      return true;
    }
    
    public boolean equals(Object paramObject)
    {
      return (paramObject != null) && (getClass().equals(paramObject.getClass())) && (equals((WithChildrenC)paramObject));
    }
    
    public int hashCode()
    {
      int k = entry.hashCode();
      String str = hash;
      int j = 0;
      int i;
      if (str != null) {
        i = hash.hashCode();
      } else {
        i = 0;
      }
      if (children != null) {
        j = children.hashCode();
      }
      return (k * 31 + i) * 31 + j;
    }
    
    public static class Reader<C>
      extends JsonReader<DbxEntry.WithChildrenC<C>>
    {
      private final Collector<DbxEntry, ? extends C> c;
      
      public Reader(Collector<DbxEntry, ? extends C> paramCollector)
      {
        c = paramCollector;
      }
      
      public final DbxEntry.WithChildrenC<C> read(JsonParser paramJsonParser)
        throws IOException, JsonReadException
      {
        return DbxEntry.read(paramJsonParser, c);
      }
    }
    
    public static class ReaderMaybeDeleted<C>
      extends JsonReader<DbxEntry.WithChildrenC<C>>
    {
      private final Collector<DbxEntry, ? extends C> c;
      
      public ReaderMaybeDeleted(Collector<DbxEntry, ? extends C> paramCollector)
      {
        c = paramCollector;
      }
      
      public final DbxEntry.WithChildrenC<C> read(JsonParser paramJsonParser)
        throws IOException, JsonReadException
      {
        return DbxEntry.readMaybeDeleted(paramJsonParser, c);
      }
    }
  }
  
  private static final class a<T>
    extends JsonReader<T>
  {
    private final JsonReader<T> c;
    private final T d;
    
    public a(JsonReader<T> paramJsonReader, T paramT)
    {
      c = paramJsonReader;
      d = paramT;
    }
    
    public static <T> a<T> a(JsonReader<T> paramJsonReader, T paramT)
    {
      return new a(paramJsonReader, paramT);
    }
    
    public T read(JsonParser paramJsonParser)
      throws IOException, JsonReadException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        if (paramJsonParser.getText().equals("pending"))
        {
          paramJsonParser.nextToken();
          return d;
        }
        throw new JsonReadException("got a string, but the value wasn't \"pending\"", paramJsonParser.getTokenLocation());
      }
      return c.read(paramJsonParser);
    }
  }
}
