package com.dropbox.core.v2.paper;

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

public class ListPaperDocsResponse
{
  protected final Cursor cursor;
  protected final List<String> docIds;
  protected final boolean hasMore;
  
  public ListPaperDocsResponse(List<String> paramList, Cursor paramCursor, boolean paramBoolean)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'docIds' is null");
        }
      }
      docIds = paramList;
      if (paramCursor != null)
      {
        cursor = paramCursor;
        hasMore = paramBoolean;
        return;
      }
      throw new IllegalArgumentException("Required value for 'cursor' is null");
    }
    throw new IllegalArgumentException("Required value for 'docIds' is null");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ListPaperDocsResponse)paramObject;
      return ((docIds == docIds) || (docIds.equals(docIds))) && ((cursor == cursor) || (cursor.equals(cursor))) && (hasMore == hasMore);
    }
    return false;
  }
  
  public Cursor getCursor()
  {
    return cursor;
  }
  
  public List<String> getDocIds()
  {
    return docIds;
  }
  
  public boolean getHasMore()
  {
    return hasMore;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { docIds, cursor, Boolean.valueOf(hasMore) });
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
    extends StructSerializer<ListPaperDocsResponse>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListPaperDocsResponse a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      List localList = null;
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
          if ("doc_ids".equals(str)) {
            localList = (List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("cursor".equals(str)) {
            localObject2 = (Cursor)Cursor.a.a.deserialize(paramJsonParser);
          } else if ("has_more".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList != null)
        {
          if (localObject2 != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new ListPaperDocsResponse(localList, (Cursor)localObject2, ((Boolean)localObject1).booleanValue());
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"has_more\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"cursor\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"doc_ids\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListPaperDocsResponse paramListPaperDocsResponse, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("doc_ids");
      StoneSerializers.list(StoneSerializers.string()).serialize(docIds, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("cursor");
      Cursor.a.a.serialize(cursor, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("has_more");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(hasMore), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
