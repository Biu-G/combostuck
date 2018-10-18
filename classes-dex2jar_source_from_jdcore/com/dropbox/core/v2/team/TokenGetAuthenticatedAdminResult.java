package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class TokenGetAuthenticatedAdminResult
{
  protected final TeamMemberProfile adminProfile;
  
  public TokenGetAuthenticatedAdminResult(TeamMemberProfile paramTeamMemberProfile)
  {
    if (paramTeamMemberProfile != null)
    {
      adminProfile = paramTeamMemberProfile;
      return;
    }
    throw new IllegalArgumentException("Required value for 'adminProfile' is null");
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
      paramObject = (TokenGetAuthenticatedAdminResult)paramObject;
      if (adminProfile != adminProfile)
      {
        if (adminProfile.equals(adminProfile)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public TeamMemberProfile getAdminProfile()
  {
    return adminProfile;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { adminProfile });
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
    extends StructSerializer<TokenGetAuthenticatedAdminResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public TokenGetAuthenticatedAdminResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          localObject2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("admin_profile".equals(localObject2)) {
            localObject1 = (TeamMemberProfile)TeamMemberProfile.a.a.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          localObject1 = new TokenGetAuthenticatedAdminResult((TeamMemberProfile)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"admin_profile\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TokenGetAuthenticatedAdminResult paramTokenGetAuthenticatedAdminResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("admin_profile");
      TeamMemberProfile.a.a.serialize(adminProfile, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
