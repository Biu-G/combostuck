package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class SearchMatch
{
  protected final SearchMatchType matchType;
  protected final Metadata metadata;
  
  public SearchMatch(SearchMatchType paramSearchMatchType, Metadata paramMetadata)
  {
    if (paramSearchMatchType != null)
    {
      matchType = paramSearchMatchType;
      if (paramMetadata != null)
      {
        metadata = paramMetadata;
        return;
      }
      throw new IllegalArgumentException("Required value for 'metadata' is null");
    }
    throw new IllegalArgumentException("Required value for 'matchType' is null");
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
      paramObject = (SearchMatch)paramObject;
      if ((matchType == matchType) || (matchType.equals(matchType)))
      {
        if (metadata == metadata) {
          break label88;
        }
        if (metadata.equals(metadata)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public SearchMatchType getMatchType()
  {
    return matchType;
  }
  
  public Metadata getMetadata()
  {
    return metadata;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { matchType, metadata });
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
    extends StructSerializer<SearchMatch>
  {
    public static final a a = new a();
    
    a() {}
    
    public SearchMatch a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("match_type".equals(str)) {
            localObject2 = SearchMatchType.a.a.a(paramJsonParser);
          } else if ("metadata".equals(str)) {
            localObject1 = (Metadata)Metadata.a.a.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new SearchMatch((SearchMatchType)localObject2, (Metadata)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"metadata\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"match_type\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SearchMatch paramSearchMatch, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("match_type");
      SearchMatchType.a.a.a(matchType, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("metadata");
      Metadata.a.a.serialize(metadata, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
