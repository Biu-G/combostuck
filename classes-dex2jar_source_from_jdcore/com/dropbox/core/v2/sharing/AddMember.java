package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class AddMember
{
  protected final AccessLevel accessLevel;
  protected final MemberSelector member;
  
  public AddMember(MemberSelector paramMemberSelector)
  {
    this(paramMemberSelector, AccessLevel.VIEWER);
  }
  
  public AddMember(MemberSelector paramMemberSelector, AccessLevel paramAccessLevel)
  {
    if (paramMemberSelector != null)
    {
      member = paramMemberSelector;
      if (paramAccessLevel != null)
      {
        accessLevel = paramAccessLevel;
        return;
      }
      throw new IllegalArgumentException("Required value for 'accessLevel' is null");
    }
    throw new IllegalArgumentException("Required value for 'member' is null");
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
      paramObject = (AddMember)paramObject;
      if ((member == member) || (member.equals(member)))
      {
        if (accessLevel == accessLevel) {
          break label88;
        }
        if (accessLevel.equals(accessLevel)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public AccessLevel getAccessLevel()
  {
    return accessLevel;
  }
  
  public MemberSelector getMember()
  {
    return member;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { member, accessLevel });
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
    extends StructSerializer<AddMember>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddMember a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = AccessLevel.VIEWER;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("member".equals(str)) {
            localObject2 = MemberSelector.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("access_level".equals(str)) {
            localObject1 = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new AddMember((MemberSelector)localObject2, (AccessLevel)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"member\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(AddMember paramAddMember, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("member");
      MemberSelector.Serializer.INSTANCE.serialize(member, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_level");
      AccessLevel.Serializer.INSTANCE.serialize(accessLevel, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
