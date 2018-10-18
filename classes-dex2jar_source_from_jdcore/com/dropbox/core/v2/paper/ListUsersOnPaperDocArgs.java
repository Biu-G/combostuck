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

class ListUsersOnPaperDocArgs
  extends i
{
  protected final int a;
  protected final UserOnPaperDocFilter b;
  
  public ListUsersOnPaperDocArgs(String paramString)
  {
    this(paramString, 1000, UserOnPaperDocFilter.SHARED);
  }
  
  public ListUsersOnPaperDocArgs(String paramString, int paramInt, UserOnPaperDocFilter paramUserOnPaperDocFilter)
  {
    super(paramString);
    if (paramInt >= 1)
    {
      if (paramInt <= 1000)
      {
        a = paramInt;
        if (paramUserOnPaperDocFilter != null)
        {
          b = paramUserOnPaperDocFilter;
          return;
        }
        throw new IllegalArgumentException("Required value for 'filterBy' is null");
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1");
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (ListUsersOnPaperDocArgs)paramObject;
      if (((d == d) || (d.equals(d))) && (a == a))
      {
        if (b == b) {
          break label99;
        }
        if (b.equals(b)) {
          return true;
        }
      }
      bool = false;
      label99:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { Integer.valueOf(a), b });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected final String docId;
    protected UserOnPaperDocFilter filterBy;
    protected int limit;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        docId = paramString;
        limit = 1000;
        filterBy = UserOnPaperDocFilter.SHARED;
        return;
      }
      throw new IllegalArgumentException("Required value for 'docId' is null");
    }
    
    public ListUsersOnPaperDocArgs build()
    {
      return new ListUsersOnPaperDocArgs(docId, limit, filterBy);
    }
    
    public Builder withFilterBy(UserOnPaperDocFilter paramUserOnPaperDocFilter)
    {
      if (paramUserOnPaperDocFilter != null)
      {
        filterBy = paramUserOnPaperDocFilter;
        return this;
      }
      filterBy = UserOnPaperDocFilter.SHARED;
      return this;
    }
    
    public Builder withLimit(Integer paramInteger)
    {
      if (paramInteger.intValue() >= 1)
      {
        if (paramInteger.intValue() <= 1000)
        {
          if (paramInteger != null)
          {
            limit = paramInteger.intValue();
            return this;
          }
          limit = 1000;
          return this;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000");
      }
      throw new IllegalArgumentException("Number 'limit' is smaller than 1");
    }
  }
  
  static class a
    extends StructSerializer<ListUsersOnPaperDocArgs>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListUsersOnPaperDocArgs a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
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
        localObject2 = Integer.valueOf(1000);
        localObject1 = UserOnPaperDocFilter.SHARED;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("doc_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("limit".equals(str2)) {
            localObject2 = (Integer)StoneSerializers.int32().deserialize(paramJsonParser);
          } else if ("filter_by".equals(str2)) {
            localObject1 = UserOnPaperDocFilter.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new ListUsersOnPaperDocArgs(str1, ((Integer)localObject2).intValue(), (UserOnPaperDocFilter)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"doc_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListUsersOnPaperDocArgs paramListUsersOnPaperDocArgs, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("doc_id");
      StoneSerializers.string().serialize(d, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("limit");
      StoneSerializers.int32().serialize(Integer.valueOf(a), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("filter_by");
      UserOnPaperDocFilter.a.a.a(b, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
