package com.dropbox.core.v2.filerequests;

import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class UpdateFileRequestDeadline
{
  public static final UpdateFileRequestDeadline NO_UPDATE = new UpdateFileRequestDeadline().a(Tag.NO_UPDATE);
  public static final UpdateFileRequestDeadline OTHER = new UpdateFileRequestDeadline().a(Tag.OTHER);
  private Tag a;
  private FileRequestDeadline b;
  
  private UpdateFileRequestDeadline() {}
  
  private UpdateFileRequestDeadline a(Tag paramTag)
  {
    UpdateFileRequestDeadline localUpdateFileRequestDeadline = new UpdateFileRequestDeadline();
    a = paramTag;
    return localUpdateFileRequestDeadline;
  }
  
  private UpdateFileRequestDeadline a(Tag paramTag, FileRequestDeadline paramFileRequestDeadline)
  {
    UpdateFileRequestDeadline localUpdateFileRequestDeadline = new UpdateFileRequestDeadline();
    a = paramTag;
    b = paramFileRequestDeadline;
    return localUpdateFileRequestDeadline;
  }
  
  public static UpdateFileRequestDeadline update()
  {
    return update(null);
  }
  
  public static UpdateFileRequestDeadline update(FileRequestDeadline paramFileRequestDeadline)
  {
    return new UpdateFileRequestDeadline().a(Tag.UPDATE, paramFileRequestDeadline);
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
    if ((paramObject instanceof UpdateFileRequestDeadline))
    {
      paramObject = (UpdateFileRequestDeadline)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        return true;
      case 2: 
        if (b != b)
        {
          if ((b != null) && (b.equals(b))) {
            return true;
          }
          bool = false;
        }
        return bool;
      }
      return true;
    }
    return false;
  }
  
  public FileRequestDeadline getUpdateValue()
  {
    if (a == Tag.UPDATE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.UPDATE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isNoUpdate()
  {
    return a == Tag.NO_UPDATE;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isUpdate()
  {
    return a == Tag.UPDATE;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<UpdateFileRequestDeadline>
  {
    public static final a a = new a();
    
    a() {}
    
    public UpdateFileRequestDeadline a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      Object localObject;
      int i;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
        i = 1;
      }
      else
      {
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
        i = 0;
      }
      if (localObject != null)
      {
        if ("no_update".equals(localObject))
        {
          localObject = UpdateFileRequestDeadline.NO_UPDATE;
        }
        else if ("update".equals(localObject))
        {
          localObject = null;
          if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
            localObject = (FileRequestDeadline)StoneSerializers.nullableStruct(FileRequestDeadline.a.a).deserialize(paramJsonParser, true);
          }
          if (localObject == null) {
            localObject = UpdateFileRequestDeadline.update();
          } else {
            localObject = UpdateFileRequestDeadline.update((FileRequestDeadline)localObject);
          }
        }
        else
        {
          localObject = UpdateFileRequestDeadline.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(UpdateFileRequestDeadline paramUpdateFileRequestDeadline, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UpdateFileRequestDeadline.1.a[paramUpdateFileRequestDeadline.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("update", paramJsonGenerator);
        StoneSerializers.nullableStruct(FileRequestDeadline.a.a).serialize(UpdateFileRequestDeadline.a(paramUpdateFileRequestDeadline), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("no_update");
    }
  }
}
