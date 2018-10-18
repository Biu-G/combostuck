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

public class ListFolderLongpollResult
{
  protected final Long backoff;
  protected final boolean changes;
  
  public ListFolderLongpollResult(boolean paramBoolean)
  {
    this(paramBoolean, null);
  }
  
  public ListFolderLongpollResult(boolean paramBoolean, Long paramLong)
  {
    changes = paramBoolean;
    backoff = paramLong;
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
      paramObject = (ListFolderLongpollResult)paramObject;
      if (changes == changes)
      {
        if (backoff == backoff) {
          break label81;
        }
        if ((backoff != null) && (backoff.equals(backoff))) {
          return true;
        }
      }
      bool = false;
      label81:
      return bool;
    }
    return false;
  }
  
  public Long getBackoff()
  {
    return backoff;
  }
  
  public boolean getChanges()
  {
    return changes;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Boolean.valueOf(changes), backoff });
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
    extends StructSerializer<ListFolderLongpollResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFolderLongpollResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("changes".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("backoff".equals(str)) {
            localObject1 = (Long)StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new ListFolderLongpollResult(((Boolean)localObject2).booleanValue(), (Long)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"changes\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListFolderLongpollResult paramListFolderLongpollResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("changes");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(changes), paramJsonGenerator);
      if (backoff != null)
      {
        paramJsonGenerator.writeFieldName("backoff");
        StoneSerializers.nullable(StoneSerializers.uInt64()).serialize(backoff, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
