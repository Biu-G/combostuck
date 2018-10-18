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
import java.util.regex.Pattern;

class ListFileMembersArg
{
  protected final String a;
  protected final List<MemberAction> b;
  protected final boolean c;
  protected final long d;
  
  public ListFileMembersArg(String paramString)
  {
    this(paramString, null, true, 100L);
  }
  
  public ListFileMembersArg(String paramString, List<MemberAction> paramList, boolean paramBoolean, long paramLong)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", paramString))
        {
          a = paramString;
          if (paramList != null)
          {
            paramString = paramList.iterator();
            while (paramString.hasNext()) {
              if ((MemberAction)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'actions' is null");
              }
            }
          }
          b = paramList;
          c = paramBoolean;
          if (paramLong >= 1L)
          {
            if (paramLong <= 300L)
            {
              d = paramLong;
              return;
            }
            throw new IllegalArgumentException("Number 'limit' is larger than 300L");
          }
          throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        throw new IllegalArgumentException("String 'file' does not match pattern");
      }
      throw new IllegalArgumentException("String 'file' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'file' is null");
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (ListFileMembersArg)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))) && (c == c) && (d == d);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, Boolean.valueOf(c), Long.valueOf(d) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected List<MemberAction> actions;
    protected final String file;
    protected boolean includeInherited;
    protected long limit;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (paramString.length() >= 1)
        {
          if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", paramString))
          {
            file = paramString;
            actions = null;
            includeInherited = true;
            limit = 100L;
            return;
          }
          throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        throw new IllegalArgumentException("String 'file' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'file' is null");
    }
    
    public ListFileMembersArg build()
    {
      return new ListFileMembersArg(file, actions, includeInherited, limit);
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
    
    public Builder withIncludeInherited(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeInherited = paramBoolean.booleanValue();
        return this;
      }
      includeInherited = true;
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
    extends StructSerializer<ListFileMembersArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFileMembersArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Boolean localBoolean = Boolean.valueOf(true);
        Long localLong = Long.valueOf(100L);
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("file".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("actions".equals(str)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(MemberAction.a.a)).deserialize(paramJsonParser);
          } else if ("include_inherited".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("limit".equals(str)) {
            localLong = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new ListFileMembersArg((String)localObject2, (List)localObject1, localBoolean.booleanValue(), localLong.longValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"file\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListFileMembersArg paramListFileMembersArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("file");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("actions");
        StoneSerializers.nullable(StoneSerializers.list(MemberAction.a.a)).serialize(b, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("include_inherited");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("limit");
      StoneSerializers.uInt32().serialize(Long.valueOf(d), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
