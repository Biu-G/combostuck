package com.dropbox.core.v2.sharing;

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
import java.util.Iterator;
import java.util.List;

public class ListFoldersResult
{
  protected final String cursor;
  protected final List<SharedFolderMetadata> entries;
  
  public ListFoldersResult(List<SharedFolderMetadata> paramList)
  {
    this(paramList, null);
  }
  
  public ListFoldersResult(List<SharedFolderMetadata> paramList, String paramString)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((SharedFolderMetadata)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'entries' is null");
        }
      }
      entries = paramList;
      cursor = paramString;
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
      paramObject = (ListFoldersResult)paramObject;
      if ((entries == entries) || (entries.equals(entries)))
      {
        if (cursor == cursor) {
          break label97;
        }
        if ((cursor != null) && (cursor.equals(cursor))) {
          return true;
        }
      }
      bool = false;
      label97:
      return bool;
    }
    return false;
  }
  
  public String getCursor()
  {
    return cursor;
  }
  
  public List<SharedFolderMetadata> getEntries()
  {
    return entries;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { entries, cursor });
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
    extends StructSerializer<ListFoldersResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFoldersResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("entries".equals(str)) {
            localObject2 = (List)StoneSerializers.list(SharedFolderMetadata.a.a).deserialize(paramJsonParser);
          } else if ("cursor".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new ListFoldersResult((List)localObject2, (String)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"entries\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListFoldersResult paramListFoldersResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("entries");
      StoneSerializers.list(SharedFolderMetadata.a.a).serialize(entries, paramJsonGenerator);
      if (cursor != null)
      {
        paramJsonGenerator.writeFieldName("cursor");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(cursor, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
