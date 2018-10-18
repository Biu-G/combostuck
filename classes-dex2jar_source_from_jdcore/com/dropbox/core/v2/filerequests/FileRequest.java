package com.dropbox.core.v2.filerequests;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.regex.Pattern;

public class FileRequest
{
  protected final Date created;
  protected final FileRequestDeadline deadline;
  protected final String destination;
  protected final long fileCount;
  protected final String id;
  protected final boolean isOpen;
  protected final String title;
  protected final String url;
  
  public FileRequest(String paramString1, String paramString2, String paramString3, Date paramDate, boolean paramBoolean, long paramLong)
  {
    this(paramString1, paramString2, paramString3, paramDate, paramBoolean, paramLong, null, null);
  }
  
  public FileRequest(String paramString1, String paramString2, String paramString3, Date paramDate, boolean paramBoolean, long paramLong, String paramString4, FileRequestDeadline paramFileRequestDeadline)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() >= 1)
      {
        if (Pattern.matches("[-_0-9a-zA-Z]+", paramString1))
        {
          id = paramString1;
          if (paramString2 != null)
          {
            if (paramString2.length() >= 1)
            {
              url = paramString2;
              if (paramString3 != null)
              {
                if (paramString3.length() >= 1)
                {
                  title = paramString3;
                  if ((paramString4 != null) && (!Pattern.matches("/(.|[\\r\\n])*", paramString4))) {
                    throw new IllegalArgumentException("String 'destination' does not match pattern");
                  }
                  destination = paramString4;
                  if (paramDate != null)
                  {
                    created = LangUtil.truncateMillis(paramDate);
                    deadline = paramFileRequestDeadline;
                    isOpen = paramBoolean;
                    fileCount = paramLong;
                    return;
                  }
                  throw new IllegalArgumentException("Required value for 'created' is null");
                }
                throw new IllegalArgumentException("String 'title' is shorter than 1");
              }
              throw new IllegalArgumentException("Required value for 'title' is null");
            }
            throw new IllegalArgumentException("String 'url' is shorter than 1");
          }
          throw new IllegalArgumentException("Required value for 'url' is null");
        }
        throw new IllegalArgumentException("String 'id' does not match pattern");
      }
      throw new IllegalArgumentException("String 'id' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'id' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, String paramString3, Date paramDate, boolean paramBoolean, long paramLong)
  {
    return new Builder(paramString1, paramString2, paramString3, paramDate, paramBoolean, paramLong);
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
      paramObject = (FileRequest)paramObject;
      if (((id == id) || (id.equals(id))) && ((url == url) || (url.equals(url))) && ((title == title) || (title.equals(title))) && ((created == created) || (created.equals(created))) && (isOpen == isOpen) && (fileCount == fileCount) && ((destination == destination) || ((destination != null) && (destination.equals(destination)))))
      {
        if (deadline == deadline) {
          break label225;
        }
        if ((deadline != null) && (deadline.equals(deadline))) {
          return true;
        }
      }
      bool = false;
      label225:
      return bool;
    }
    return false;
  }
  
  public Date getCreated()
  {
    return created;
  }
  
  public FileRequestDeadline getDeadline()
  {
    return deadline;
  }
  
  public String getDestination()
  {
    return destination;
  }
  
  public long getFileCount()
  {
    return fileCount;
  }
  
  public String getId()
  {
    return id;
  }
  
  public boolean getIsOpen()
  {
    return isOpen;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { id, url, title, destination, created, deadline, Boolean.valueOf(isOpen), Long.valueOf(fileCount) });
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
    protected final Date created;
    protected FileRequestDeadline deadline;
    protected String destination;
    protected final long fileCount;
    protected final String id;
    protected final boolean isOpen;
    protected final String title;
    protected final String url;
    
    protected Builder(String paramString1, String paramString2, String paramString3, Date paramDate, boolean paramBoolean, long paramLong)
    {
      if (paramString1 != null)
      {
        if (paramString1.length() >= 1)
        {
          if (Pattern.matches("[-_0-9a-zA-Z]+", paramString1))
          {
            id = paramString1;
            if (paramString2 != null)
            {
              if (paramString2.length() >= 1)
              {
                url = paramString2;
                if (paramString3 != null)
                {
                  if (paramString3.length() >= 1)
                  {
                    title = paramString3;
                    if (paramDate != null)
                    {
                      created = LangUtil.truncateMillis(paramDate);
                      isOpen = paramBoolean;
                      fileCount = paramLong;
                      destination = null;
                      deadline = null;
                      return;
                    }
                    throw new IllegalArgumentException("Required value for 'created' is null");
                  }
                  throw new IllegalArgumentException("String 'title' is shorter than 1");
                }
                throw new IllegalArgumentException("Required value for 'title' is null");
              }
              throw new IllegalArgumentException("String 'url' is shorter than 1");
            }
            throw new IllegalArgumentException("Required value for 'url' is null");
          }
          throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        throw new IllegalArgumentException("String 'id' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'id' is null");
    }
    
    public FileRequest build()
    {
      return new FileRequest(id, url, title, created, isOpen, fileCount, destination, deadline);
    }
    
    public Builder withDeadline(FileRequestDeadline paramFileRequestDeadline)
    {
      deadline = paramFileRequestDeadline;
      return this;
    }
    
    public Builder withDestination(String paramString)
    {
      if ((paramString != null) && (!Pattern.matches("/(.|[\\r\\n])*", paramString))) {
        throw new IllegalArgumentException("String 'destination' does not match pattern");
      }
      destination = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<FileRequest>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileRequest a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean = null;
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
        Long localLong = null;
        localObject1 = localLong;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("id".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("url".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("title".equals(str)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("created".equals(str)) {
            localObject4 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else if ("is_open".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("file_count".equals(str)) {
            localLong = (Long)StoneSerializers.int64().deserialize(paramJsonParser);
          } else if ("destination".equals(str)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("deadline".equals(str)) {
            localObject6 = (FileRequestDeadline)StoneSerializers.nullableStruct(FileRequestDeadline.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          if (localObject2 != null)
          {
            if (localObject3 != null)
            {
              if (localObject4 != null)
              {
                if (localBoolean != null)
                {
                  if (localLong != null)
                  {
                    localObject1 = new FileRequest((String)localObject1, (String)localObject2, (String)localObject3, (Date)localObject4, localBoolean.booleanValue(), localLong.longValue(), (String)localObject5, (FileRequestDeadline)localObject6);
                    if (!paramBoolean) {
                      expectEndObject(paramJsonParser);
                    }
                    return localObject1;
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"file_count\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"is_open\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"created\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"title\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"url\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FileRequest paramFileRequest, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("id");
      StoneSerializers.string().serialize(id, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("url");
      StoneSerializers.string().serialize(url, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("title");
      StoneSerializers.string().serialize(title, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("created");
      StoneSerializers.timestamp().serialize(created, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_open");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isOpen), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("file_count");
      StoneSerializers.int64().serialize(Long.valueOf(fileCount), paramJsonGenerator);
      if (destination != null)
      {
        paramJsonGenerator.writeFieldName("destination");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(destination, paramJsonGenerator);
      }
      if (deadline != null)
      {
        paramJsonGenerator.writeFieldName("deadline");
        StoneSerializers.nullableStruct(FileRequestDeadline.a.a).serialize(deadline, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
