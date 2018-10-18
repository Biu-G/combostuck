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

public class FileRequestDeadline
{
  protected final GracePeriod allowLateUploads;
  protected final Date deadline;
  
  public FileRequestDeadline(Date paramDate)
  {
    this(paramDate, null);
  }
  
  public FileRequestDeadline(Date paramDate, GracePeriod paramGracePeriod)
  {
    if (paramDate != null)
    {
      deadline = LangUtil.truncateMillis(paramDate);
      allowLateUploads = paramGracePeriod;
      return;
    }
    throw new IllegalArgumentException("Required value for 'deadline' is null");
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
      paramObject = (FileRequestDeadline)paramObject;
      if ((deadline == deadline) || (deadline.equals(deadline)))
      {
        if (allowLateUploads == allowLateUploads) {
          break label95;
        }
        if ((allowLateUploads != null) && (allowLateUploads.equals(allowLateUploads))) {
          return true;
        }
      }
      bool = false;
      label95:
      return bool;
    }
    return false;
  }
  
  public GracePeriod getAllowLateUploads()
  {
    return allowLateUploads;
  }
  
  public Date getDeadline()
  {
    return deadline;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { deadline, allowLateUploads });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<FileRequestDeadline>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileRequestDeadline a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
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
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("deadline".equals(str)) {
            localObject2 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else if ("allow_late_uploads".equals(str)) {
            localObject1 = (GracePeriod)StoneSerializers.nullable(GracePeriod.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new FileRequestDeadline((Date)localObject2, (GracePeriod)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"deadline\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FileRequestDeadline paramFileRequestDeadline, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("deadline");
      StoneSerializers.timestamp().serialize(deadline, paramJsonGenerator);
      if (allowLateUploads != null)
      {
        paramJsonGenerator.writeFieldName("allow_late_uploads");
        StoneSerializers.nullable(GracePeriod.a.a).serialize(allowLateUploads, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
