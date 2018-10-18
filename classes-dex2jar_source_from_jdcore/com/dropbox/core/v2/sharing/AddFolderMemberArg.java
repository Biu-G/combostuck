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

class AddFolderMemberArg
{
  protected final String a;
  protected final List<AddMember> b;
  protected final boolean c;
  protected final String d;
  
  public AddFolderMemberArg(String paramString, List<AddMember> paramList)
  {
    this(paramString, paramList, false, null);
  }
  
  public AddFolderMemberArg(String paramString1, List<AddMember> paramList, boolean paramBoolean, String paramString2)
  {
    if (paramString1 != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString1))
      {
        a = paramString1;
        if (paramList != null)
        {
          paramString1 = paramList.iterator();
          while (paramString1.hasNext()) {
            if ((AddMember)paramString1.next() == null) {
              throw new IllegalArgumentException("An item in list 'members' is null");
            }
          }
          b = paramList;
          c = paramBoolean;
          if ((paramString2 != null) && (paramString2.length() < 1)) {
            throw new IllegalArgumentException("String 'customMessage' is shorter than 1");
          }
          d = paramString2;
          return;
        }
        throw new IllegalArgumentException("Required value for 'members' is null");
      }
      throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
  }
  
  public static Builder a(String paramString, List<AddMember> paramList)
  {
    return new Builder(paramString, paramList);
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
      paramObject = (AddFolderMemberArg)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && (c == c))
      {
        if (d == d) {
          break label133;
        }
        if ((d != null) && (d.equals(d))) {
          return true;
        }
      }
      bool = false;
      label133:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, Boolean.valueOf(c), d });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected String customMessage;
    protected final List<AddMember> members;
    protected boolean quiet;
    protected final String sharedFolderId;
    
    protected Builder(String paramString, List<AddMember> paramList)
    {
      if (paramString != null)
      {
        if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString))
        {
          sharedFolderId = paramString;
          if (paramList != null)
          {
            paramString = paramList.iterator();
            while (paramString.hasNext()) {
              if ((AddMember)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
              }
            }
            members = paramList;
            quiet = false;
            customMessage = null;
            return;
          }
          throw new IllegalArgumentException("Required value for 'members' is null");
        }
        throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }
    
    public AddFolderMemberArg build()
    {
      return new AddFolderMemberArg(sharedFolderId, members, quiet, customMessage);
    }
    
    public Builder withCustomMessage(String paramString)
    {
      if ((paramString != null) && (paramString.length() < 1)) {
        throw new IllegalArgumentException("String 'customMessage' is shorter than 1");
      }
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
    extends StructSerializer<AddFolderMemberArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddFolderMemberArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = null;
        localObject2 = Boolean.valueOf(false);
        Object localObject3 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("shared_folder_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("members".equals(str2)) {
            localObject3 = (List)StoneSerializers.list(AddMember.a.a).deserialize(paramJsonParser);
          } else if ("quiet".equals(str2)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("custom_message".equals(str2)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject3 != null)
          {
            localObject1 = new AddFolderMemberArg(str1, (List)localObject3, ((Boolean)localObject2).booleanValue(), (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"members\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"shared_folder_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(AddFolderMemberArg paramAddFolderMemberArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("shared_folder_id");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("members");
      StoneSerializers.list(AddMember.a.a).serialize(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("quiet");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      if (d != null)
      {
        paramJsonGenerator.writeFieldName("custom_message");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(d, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
