package com.dropbox.core.v2.team;

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

class MembersListArg
{
  protected final long a;
  protected final boolean b;
  
  public MembersListArg()
  {
    this(1000L, false);
  }
  
  public MembersListArg(long paramLong, boolean paramBoolean)
  {
    if (paramLong >= 1L)
    {
      if (paramLong <= 1000L)
      {
        a = paramLong;
        b = paramBoolean;
        return;
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
  }
  
  public static Builder a()
  {
    return new Builder();
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
      paramObject = (MembersListArg)paramObject;
      return (a == a) && (b == b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Long.valueOf(a), Boolean.valueOf(b) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected boolean includeRemoved = false;
    protected long limit = 1000L;
    
    protected Builder() {}
    
    public MembersListArg build()
    {
      return new MembersListArg(limit, includeRemoved);
    }
    
    public Builder withIncludeRemoved(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeRemoved = paramBoolean.booleanValue();
        return this;
      }
      includeRemoved = false;
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
  
  static class a
    extends StructSerializer<MembersListArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersListArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = Long.valueOf(1000L);
        localObject1 = Boolean.valueOf(false);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("limit".equals(str)) {
            localObject2 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else if ("include_removed".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new MembersListArg(((Long)localObject2).longValue(), ((Boolean)localObject1).booleanValue());
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MembersListArg paramMembersListArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("limit");
      StoneSerializers.uInt32().serialize(Long.valueOf(a), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_removed");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
