package com.dropbox.core.v2.files;

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
import java.util.Iterator;
import java.util.List;

public class ListRevisionsResult
{
  protected final List<FileMetadata> entries;
  protected final boolean isDeleted;
  protected final Date serverDeleted;
  
  public ListRevisionsResult(boolean paramBoolean, List<FileMetadata> paramList)
  {
    this(paramBoolean, paramList, null);
  }
  
  public ListRevisionsResult(boolean paramBoolean, List<FileMetadata> paramList, Date paramDate)
  {
    isDeleted = paramBoolean;
    serverDeleted = LangUtil.truncateMillis(paramDate);
    if (paramList != null)
    {
      paramDate = paramList.iterator();
      while (paramDate.hasNext()) {
        if ((FileMetadata)paramDate.next() == null) {
          throw new IllegalArgumentException("An item in list 'entries' is null");
        }
      }
      entries = paramList;
      return;
    }
    throw new IllegalArgumentException("Required value for 'entries' is null");
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
      paramObject = (ListRevisionsResult)paramObject;
      if ((isDeleted == isDeleted) && ((entries == entries) || (entries.equals(entries))))
      {
        if (serverDeleted == serverDeleted) {
          break label108;
        }
        if ((serverDeleted != null) && (serverDeleted.equals(serverDeleted))) {
          return true;
        }
      }
      bool = false;
      label108:
      return bool;
    }
    return false;
  }
  
  public List<FileMetadata> getEntries()
  {
    return entries;
  }
  
  public boolean getIsDeleted()
  {
    return isDeleted;
  }
  
  public Date getServerDeleted()
  {
    return serverDeleted;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Boolean.valueOf(isDeleted), serverDeleted, entries });
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
    extends StructSerializer<ListRevisionsResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListRevisionsResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("is_deleted".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("entries".equals(str)) {
            localObject2 = (List)StoneSerializers.list(FileMetadata.a.a).deserialize(paramJsonParser);
          } else if ("server_deleted".equals(str)) {
            localObject1 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localBoolean != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new ListRevisionsResult(localBoolean.booleanValue(), (List)localObject2, (Date)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"entries\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"is_deleted\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListRevisionsResult paramListRevisionsResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("is_deleted");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isDeleted), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("entries");
      StoneSerializers.list(FileMetadata.a.a).serialize(entries, paramJsonGenerator);
      if (serverDeleted != null)
      {
        paramJsonGenerator.writeFieldName("server_deleted");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(serverDeleted, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
