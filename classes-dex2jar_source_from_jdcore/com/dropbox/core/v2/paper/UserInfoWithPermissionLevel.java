package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.UserInfo;
import com.dropbox.core.v2.sharing.UserInfo.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class UserInfoWithPermissionLevel
{
  protected final PaperDocPermissionLevel permissionLevel;
  protected final UserInfo user;
  
  public UserInfoWithPermissionLevel(UserInfo paramUserInfo, PaperDocPermissionLevel paramPaperDocPermissionLevel)
  {
    if (paramUserInfo != null)
    {
      user = paramUserInfo;
      if (paramPaperDocPermissionLevel != null)
      {
        permissionLevel = paramPaperDocPermissionLevel;
        return;
      }
      throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
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
      paramObject = (UserInfoWithPermissionLevel)paramObject;
      if ((user == user) || (user.equals(user)))
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
  
  public PaperDocPermissionLevel getPermissionLevel()
  {
    return permissionLevel;
  }
  
  public UserInfo getUser()
  {
    return user;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { user, permissionLevel });
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
    extends StructSerializer<UserInfoWithPermissionLevel>
  {
    public static final a a = new a();
    
    a() {}
    
    public UserInfoWithPermissionLevel a(JsonParser paramJsonParser, boolean paramBoolean)
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
            localObject2 = (UserInfo)UserInfo.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("permission_level".equals(str)) {
            localObject1 = PaperDocPermissionLevel.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new UserInfoWithPermissionLevel((UserInfo)localObject2, (PaperDocPermissionLevel)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"permission_level\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UserInfoWithPermissionLevel paramUserInfoWithPermissionLevel, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("user");
      UserInfo.Serializer.INSTANCE.serialize(user, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("permission_level");
      PaperDocPermissionLevel.a.a.a(permissionLevel, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
