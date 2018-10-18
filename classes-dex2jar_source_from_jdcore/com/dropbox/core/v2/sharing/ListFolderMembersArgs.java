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
import java.util.List;
import java.util.regex.Pattern;

class ListFolderMembersArgs
  extends ListFolderMembersCursorArg
{
  protected final String a;
  
  public ListFolderMembersArgs(String paramString)
  {
    this(paramString, null, 1000L);
  }
  
  public ListFolderMembersArgs(String paramString, List<MemberAction> paramList, long paramLong)
  {
    super(paramList, paramLong);
    if (paramString != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString))
      {
        a = paramString;
        return;
      }
      throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
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
      paramObject = (ListFolderMembersArgs)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))) && (c == c);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
    extends ListFolderMembersCursorArg.Builder
  {
    protected final String sharedFolderId;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString))
        {
          sharedFolderId = paramString;
          return;
        }
        throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }
    
    public ListFolderMembersArgs build()
    {
      return new ListFolderMembersArgs(sharedFolderId, actions, limit);
    }
    
    public Builder withActions(List<MemberAction> paramList)
    {
      super.withActions(paramList);
      return this;
    }
    
    public Builder withLimit(Long paramLong)
    {
      super.withLimit(paramLong);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ListFolderMembersArgs>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFolderMembersArgs a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = Long.valueOf(1000L);
        localObject2 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("shared_folder_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("actions".equals(str2)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(MemberAction.a.a)).deserialize(paramJsonParser);
          } else if ("limit".equals(str2)) {
            localObject1 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new ListFolderMembersArgs(str1, (List)localObject2, ((Long)localObject1).longValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"shared_folder_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListFolderMembersArgs paramListFolderMembersArgs, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("shared_folder_id");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
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
