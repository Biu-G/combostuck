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

class SearchArg
{
  protected final String a;
  protected final String b;
  protected final long c;
  protected final long d;
  protected final SearchMode e;
  
  public SearchArg(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, 0L, 100L, SearchMode.FILENAME);
  }
  
  public SearchArg(String paramString1, String paramString2, long paramLong1, long paramLong2, SearchMode paramSearchMode)
  {
    if (paramString1 != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", paramString1))
      {
        a = paramString1;
        if (paramString2 != null)
        {
          b = paramString2;
          c = paramLong1;
          if (paramLong2 >= 1L)
          {
            if (paramLong2 <= 1000L)
            {
              d = paramLong2;
              if (paramSearchMode != null)
              {
                e = paramSearchMode;
                return;
              }
              throw new IllegalArgumentException("Required value for 'mode' is null");
            }
            throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
          }
          throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
        }
        throw new IllegalArgumentException("Required value for 'query' is null");
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
  }
  
  public static Builder a(String paramString1, String paramString2)
  {
    return new Builder(paramString1, paramString2);
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
      paramObject = (SearchArg)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && (c == c) && (d == d))
      {
        if (e == e) {
          break label137;
        }
        if (e.equals(e)) {
          return true;
        }
      }
      bool = false;
      label137:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, Long.valueOf(c), Long.valueOf(d), e });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected long maxResults;
    protected SearchMode mode;
    protected final String path;
    protected final String query;
    protected long start;
    
    protected Builder(String paramString1, String paramString2)
    {
      if (paramString1 != null)
      {
        if (Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", paramString1))
        {
          path = paramString1;
          if (paramString2 != null)
          {
            query = paramString2;
            start = 0L;
            maxResults = 100L;
            mode = SearchMode.FILENAME;
            return;
          }
          throw new IllegalArgumentException("Required value for 'query' is null");
        }
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public SearchArg build()
    {
      return new SearchArg(path, query, start, maxResults, mode);
    }
    
    public Builder withMaxResults(Long paramLong)
    {
      if (paramLong.longValue() >= 1L)
      {
        if (paramLong.longValue() <= 1000L)
        {
          if (paramLong != null)
          {
            maxResults = paramLong.longValue();
            return this;
          }
          maxResults = 100L;
          return this;
        }
        throw new IllegalArgumentException("Number 'maxResults' is larger than 1000L");
      }
      throw new IllegalArgumentException("Number 'maxResults' is smaller than 1L");
    }
    
    public Builder withMode(SearchMode paramSearchMode)
    {
      if (paramSearchMode != null)
      {
        mode = paramSearchMode;
        return this;
      }
      mode = SearchMode.FILENAME;
      return this;
    }
    
    public Builder withStart(Long paramLong)
    {
      if (paramLong != null)
      {
        start = paramLong.longValue();
        return this;
      }
      start = 0L;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<SearchArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public SearchArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
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
        Long localLong2 = Long.valueOf(0L);
        Long localLong1 = Long.valueOf(100L);
        localObject1 = SearchMode.FILENAME;
        String str1 = null;
        localObject2 = str1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("query".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("start".equals(str2)) {
            localLong2 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else if ("max_results".equals(str2)) {
            localLong1 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else if ("mode".equals(str2)) {
            localObject1 = SearchMode.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new SearchArg(str1, (String)localObject2, localLong2.longValue(), localLong1.longValue(), (SearchMode)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"query\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SearchArg paramSearchArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("query");
      StoneSerializers.string().serialize(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("start");
      StoneSerializers.uInt64().serialize(Long.valueOf(c), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("max_results");
      StoneSerializers.uInt64().serialize(Long.valueOf(d), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("mode");
      SearchMode.a.a.a(e, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
