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
import java.util.Iterator;
import java.util.List;

public class SearchResult
{
  protected final List<SearchMatch> matches;
  protected final boolean more;
  protected final long start;
  
  public SearchResult(List<SearchMatch> paramList, boolean paramBoolean, long paramLong)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((SearchMatch)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'matches' is null");
        }
      }
      matches = paramList;
      more = paramBoolean;
      start = paramLong;
      return;
    }
    throw new IllegalArgumentException("Required value for 'matches' is null");
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
      paramObject = (SearchResult)paramObject;
      return ((matches == matches) || (matches.equals(matches))) && (more == more) && (start == start);
    }
    return false;
  }
  
  public List<SearchMatch> getMatches()
  {
    return matches;
  }
  
  public boolean getMore()
  {
    return more;
  }
  
  public long getStart()
  {
    return start;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { matches, Boolean.valueOf(more), Long.valueOf(start) });
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
    extends StructSerializer<SearchResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public SearchResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("matches".equals(str)) {
            localList = (List)StoneSerializers.list(SearchMatch.a.a).deserialize(paramJsonParser);
          } else if ("more".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("start".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
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
              localObject1 = new SearchResult(localList, ((Boolean)localObject2).booleanValue(), ((Long)localObject1).longValue());
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"start\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"more\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"matches\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SearchResult paramSearchResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("matches");
      StoneSerializers.list(SearchMatch.a.a).serialize(matches, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("more");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(more), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("start");
      StoneSerializers.uInt64().serialize(Long.valueOf(start), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
