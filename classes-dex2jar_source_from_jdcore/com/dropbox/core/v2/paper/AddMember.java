package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.MemberSelector;
import com.dropbox.core.v2.sharing.MemberSelector.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class AddMember
{
  protected final MemberSelector member;
  protected final PaperDocPermissionLevel permissionLevel;
  
  public AddMember(MemberSelector paramMemberSelector)
  {
    this(paramMemberSelector, PaperDocPermissionLevel.EDIT);
  }
  
  public AddMember(MemberSelector paramMemberSelector, PaperDocPermissionLevel paramPaperDocPermissionLevel)
  {
    if (paramPaperDocPermissionLevel != null)
    {
      permissionLevel = paramPaperDocPermissionLevel;
      if (paramMemberSelector != null)
      {
        member = paramMemberSelector;
        return;
      }
      throw new IllegalArgumentException("Required value for 'member' is null");
    }
    throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
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
        if (permissionLevel == permissionLevel) {
          break label88;
        }
        if (permissionLevel.equals(permissionLevel)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public MemberSelector getMember()
  {
    return member;
  }
  
  public PaperDocPermissionLevel getPermissionLevel()
  {
    return permissionLevel;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { permissionLevel, member });
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
        localObject1 = PaperDocPermissionLevel.EDIT;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("member".equals(str)) {
            localObject2 = MemberSelector.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("permission_level".equals(str)) {
            localObject1 = PaperDocPermissionLevel.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new AddMember((MemberSelector)localObject2, (PaperDocPermissionLevel)localObject1);
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
      paramJsonGenerator.writeFieldName("permission_level");
      PaperDocPermissionLevel.a.a.a(permissionLevel, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
