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

class ListFilesArg
{
  protected final long a;
  protected final List<FileAction> b;
  
  public ListFilesArg()
  {
    this(100L, null);
  }
  
  public ListFilesArg(long paramLong, List<FileAction> paramList)
  {
    if (paramLong >= 1L)
    {
      if (paramLong <= 300L)
      {
        a = paramLong;
        if (paramList != null)
        {
          Iterator localIterator = paramList.iterator();
          while (localIterator.hasNext()) {
            if ((FileAction)localIterator.next() == null) {
              throw new IllegalArgumentException("An item in list 'actions' is null");
            }
          }
        }
        b = paramList;
        return;
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 300L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
  }
  
  public static Builder a()
  {
    return new Builder();
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
      paramObject = (ListFilesArg)paramObject;
      if (a == a)
      {
        if (b == b) {
          break label84;
        }
        if ((b != null) && (b.equals(b))) {
          return true;
        }
      }
      bool = false;
      label84:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Long.valueOf(a), b });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected List<FileAction> actions = null;
    protected long limit = 100L;
    
    protected Builder() {}
    
    public ListFilesArg build()
    {
      return new ListFilesArg(limit, actions);
    }
    
    public Builder withActions(List<FileAction> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((FileAction)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'actions' is null");
          }
        }
      }
      actions = paramList;
      return this;
    }
    
    public Builder withLimit(Long paramLong)
    {
      if (paramLong.longValue() >= 1L)
      {
        if (paramLong.longValue() <= 300L)
        {
          if (paramLong != null)
          {
            limit = paramLong.longValue();
            return this;
          }
          limit = 100L;
          return this;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 300L");
      }
      throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
    }
  }
  
  static class a
    extends StructSerializer<ListFilesArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFilesArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = Long.valueOf(100L);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("limit".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else if ("actions".equals(str)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(FileAction.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new ListFilesArg(((Long)localObject1).longValue(), (List)localObject2);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListFilesArg paramListFilesArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("limit");
      StoneSerializers.uInt32().serialize(Long.valueOf(a), paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("actions");
        StoneSerializers.nullable(StoneSerializers.list(FileAction.a.a)).serialize(b, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
