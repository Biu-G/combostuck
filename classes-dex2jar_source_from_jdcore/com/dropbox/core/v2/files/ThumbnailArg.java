package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

public class ThumbnailArg
{
  protected final ThumbnailFormat format;
  protected final ThumbnailMode mode;
  protected final String path;
  protected final ThumbnailSize size;
  
  public ThumbnailArg(String paramString)
  {
    this(paramString, ThumbnailFormat.JPEG, ThumbnailSize.W64H64, ThumbnailMode.STRICT);
  }
  
  public ThumbnailArg(String paramString, ThumbnailFormat paramThumbnailFormat, ThumbnailSize paramThumbnailSize, ThumbnailMode paramThumbnailMode)
  {
    if (paramString != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", paramString))
      {
        path = paramString;
        if (paramThumbnailFormat != null)
        {
          format = paramThumbnailFormat;
          if (paramThumbnailSize != null)
          {
            size = paramThumbnailSize;
            if (paramThumbnailMode != null)
            {
              mode = paramThumbnailMode;
              return;
            }
            throw new IllegalArgumentException("Required value for 'mode' is null");
          }
          throw new IllegalArgumentException("Required value for 'size' is null");
        }
        throw new IllegalArgumentException("Required value for 'format' is null");
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
  }
  
  public static Builder newBuilder(String paramString)
  {
    return new Builder(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ThumbnailArg)paramObject;
      if (((path == path) || (path.equals(path))) && ((format == format) || (format.equals(format))) && ((size == size) || (size.equals(size))))
      {
        if (mode == mode) {
          break label138;
        }
        if (mode.equals(mode)) {
          return true;
        }
      }
      bool = false;
      label138:
      return bool;
    }
    return false;
  }
  
  public ThumbnailFormat getFormat()
  {
    return format;
  }
  
  public ThumbnailMode getMode()
  {
    return mode;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public ThumbnailSize getSize()
  {
    return size;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { path, format, size, mode });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected ThumbnailFormat format;
    protected ThumbnailMode mode;
    protected final String path;
    protected ThumbnailSize size;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", paramString))
        {
          path = paramString;
          format = ThumbnailFormat.JPEG;
          size = ThumbnailSize.W64H64;
          mode = ThumbnailMode.STRICT;
          return;
        }
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public ThumbnailArg build()
    {
      return new ThumbnailArg(path, format, size, mode);
    }
    
    public Builder withFormat(ThumbnailFormat paramThumbnailFormat)
    {
      if (paramThumbnailFormat != null)
      {
        format = paramThumbnailFormat;
        return this;
      }
      format = ThumbnailFormat.JPEG;
      return this;
    }
    
    public Builder withMode(ThumbnailMode paramThumbnailMode)
    {
      if (paramThumbnailMode != null)
      {
        mode = paramThumbnailMode;
        return this;
      }
      mode = ThumbnailMode.STRICT;
      return this;
    }
    
    public Builder withSize(ThumbnailSize paramThumbnailSize)
    {
      if (paramThumbnailSize != null)
      {
        size = paramThumbnailSize;
        return this;
      }
      size = ThumbnailSize.W64H64;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ThumbnailArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ThumbnailArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject1 = readTag(paramJsonParser);
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        ThumbnailFormat localThumbnailFormat = ThumbnailFormat.JPEG;
        localObject2 = ThumbnailSize.W64H64;
        localObject1 = ThumbnailMode.STRICT;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("format".equals(str2)) {
            localThumbnailFormat = ThumbnailFormat.a.a.a(paramJsonParser);
          } else if ("size".equals(str2)) {
            localObject2 = ThumbnailSize.a.a.a(paramJsonParser);
          } else if ("mode".equals(str2)) {
            localObject1 = ThumbnailMode.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new ThumbnailArg(str1, localThumbnailFormat, (ThumbnailSize)localObject2, (ThumbnailMode)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ThumbnailArg paramThumbnailArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(path, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("format");
      ThumbnailFormat.a.a.a(format, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("size");
      ThumbnailSize.a.a.a(size, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("mode");
      ThumbnailMode.a.a.a(mode, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
