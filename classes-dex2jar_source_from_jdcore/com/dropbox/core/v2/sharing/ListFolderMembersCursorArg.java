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

class ListFolderMembersCursorArg
{
  protected final List<MemberAction> b;
  protected final long c;
  
  public ListFolderMembersCursorArg()
  {
    this(null, 1000L);
  }
  
  public ListFolderMembersCursorArg(List<MemberAction> paramList, long paramLong)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((MemberAction)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'actions' is null");
        }
      }
    }
    b = paramList;
    if (paramLong >= 1L)
    {
      if (paramLong <= 1000L)
      {
        c = paramLong;
        return;
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
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
      paramObject = (ListFolderMembersCursorArg)paramObject;
      return ((b == b) || ((b != null) && (b.equals(b)))) && (c == c);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { b, Long.valueOf(c) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected List<MemberAction> actions = null;
    protected long limit = 1000L;
    
    protected Builder() {}
    
    public ListFolderMembersCursorArg build()
    {
      return new ListFolderMembersCursorArg(actions, limit);
    }
    
    public Builder withActions(List<MemberAction> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((MemberAction)localIterator.next() == null) {
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
        if (paramLong.longValue() <= 1000L)
        {
          if (paramLong != null)
          {
            limit = paramLong.longValue();
            return this;
          }
          limit = 1000L;
          return this;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
      }
      throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
    }
  }
  
  private static class a
    extends StructSerializer<ListFolderMembersCursorArg>
  {
    public static final a a = new a();
    
    private a() {}
    
    public ListFolderMembersCursorArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = Long.valueOf(1000L);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("actions".equals(str)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(MemberAction.a.a)).deserialize(paramJsonParser);
          } else if ("limit".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new ListFolderMembersCursorArg((List)localObject2, ((Long)localObject1).longValue());
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
    
    public void a(ListFolderMembersCursorArg paramListFolderMembersCursorArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("actions");
        StoneSerializers.nullable(StoneSerializers.list(MemberAction.a.a)).serialize(b, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("limit");
      StoneSerializers.uInt32().serialize(Long.valueOf(c), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
