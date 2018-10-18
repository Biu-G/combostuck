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

class AddPaperDocUser
  extends i
{
  protected final List<AddMember> a;
  protected final String b;
  protected final boolean c;
  
  public AddPaperDocUser(String paramString, List<AddMember> paramList)
  {
    this(paramString, paramList, null, false);
  }
  
  public AddPaperDocUser(String paramString1, List<AddMember> paramList, String paramString2, boolean paramBoolean)
  {
    super(paramString1);
    if (paramList != null)
    {
      if (paramList.size() <= 20)
      {
        paramString1 = paramList.iterator();
        while (paramString1.hasNext()) {
          if ((AddMember)paramString1.next() == null) {
            throw new IllegalArgumentException("An item in list 'members' is null");
          }
        }
        a = paramList;
        b = paramString2;
        c = paramBoolean;
        return;
      }
      throw new IllegalArgumentException("List 'members' has more than 20 items");
    }
    throw new IllegalArgumentException("Required value for 'members' is null");
  }
  
  public static Builder a(String paramString, List<AddMember> paramList)
  {
    return new Builder(paramString, paramList);
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
      paramObject = (AddPaperDocUser)paramObject;
      return ((d == d) || (d.equals(d))) && ((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))) && (c == c);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, Boolean.valueOf(c) });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected String customMessage;
    protected final String docId;
    protected final List<AddMember> members;
    protected boolean quiet;
    
    protected Builder(String paramString, List<AddMember> paramList)
    {
      if (paramString != null)
      {
        docId = paramString;
        if (paramList != null)
        {
          if (paramList.size() <= 20)
          {
            paramString = paramList.iterator();
            while (paramString.hasNext()) {
              if ((AddMember)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
              }
            }
            members = paramList;
            customMessage = null;
            quiet = false;
            return;
          }
          throw new IllegalArgumentException("List 'members' has more than 20 items");
        }
        throw new IllegalArgumentException("Required value for 'members' is null");
      }
      throw new IllegalArgumentException("Required value for 'docId' is null");
    }
    
    public AddPaperDocUser build()
    {
      return new AddPaperDocUser(docId, members, customMessage, quiet);
    }
    
    public Builder withCustomMessage(String paramString)
    {
      customMessage = paramString;
      return this;
    }
    
    public Builder withQuiet(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        quiet = paramBoolean.booleanValue();
        return this;
      }
      quiet = false;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<AddPaperDocUser>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddPaperDocUser a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = null;
        localObject1 = Boolean.valueOf(false);
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("doc_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("members".equals(str2)) {
            localObject3 = (List)StoneSerializers.list(AddMember.a.a).deserialize(paramJsonParser);
          } else if ("custom_message".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("quiet".equals(str2)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject3 != null)
          {
            localObject1 = new AddPaperDocUser(str1, (List)localObject3, (String)localObject2, ((Boolean)localObject1).booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"members\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"doc_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(AddPaperDocUser paramAddPaperDocUser, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("doc_id");
      StoneSerializers.string().serialize(d, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("members");
      StoneSerializers.list(AddMember.a.a).serialize(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("custom_message");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(b, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("quiet");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
