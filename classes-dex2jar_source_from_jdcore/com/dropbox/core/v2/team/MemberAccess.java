package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class MemberAccess
{
  protected final GroupAccessType accessType;
  protected final UserSelectorArg user;
  
  public MemberAccess(UserSelectorArg paramUserSelectorArg, GroupAccessType paramGroupAccessType)
  {
    if (paramUserSelectorArg != null)
    {
      user = paramUserSelectorArg;
      if (paramGroupAccessType != null)
      {
        accessType = paramGroupAccessType;
        return;
      }
      throw new IllegalArgumentException("Required value for 'accessType' is null");
    }
    throw new IllegalArgumentException("Required value for 'user' is null");
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
      paramObject = (MemberAccess)paramObject;
      if ((user == user) || (user.equals(user)))
      {
        if (accessType == accessType) {
          break label88;
        }
        if (accessType.equals(accessType)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public GroupAccessType getAccessType()
  {
    return accessType;
  }
  
  public UserSelectorArg getUser()
  {
    return user;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { user, accessType });
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
    extends StructSerializer<MemberAccess>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberAccess a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("user".equals(str)) {
            localObject2 = UserSelectorArg.a.a.a(paramJsonParser);
          } else if ("access_type".equals(str)) {
            localObject1 = GroupAccessType.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new MemberAccess((UserSelectorArg)localObject2, (GroupAccessType)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"access_type\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MemberAccess paramMemberAccess, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("user");
      UserSelectorArg.a.a.a(user, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_type");
      GroupAccessType.a.a.a(accessType, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
