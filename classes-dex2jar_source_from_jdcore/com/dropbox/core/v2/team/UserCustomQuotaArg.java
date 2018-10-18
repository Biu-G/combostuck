package com.dropbox.core.v2.team;

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

public class UserCustomQuotaArg
{
  protected final long quotaGb;
  protected final UserSelectorArg user;
  
  public UserCustomQuotaArg(UserSelectorArg paramUserSelectorArg, long paramLong)
  {
    if (paramUserSelectorArg != null)
    {
      user = paramUserSelectorArg;
      if (paramLong >= 15L)
      {
        quotaGb = paramLong;
        return;
      }
      throw new IllegalArgumentException("Number 'quotaGb' is smaller than 15L");
    }
    throw new IllegalArgumentException("Required value for 'user' is null");
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
      paramObject = (UserCustomQuotaArg)paramObject;
      return ((user == user) || (user.equals(user))) && (quotaGb == quotaGb);
    }
    return false;
  }
  
  public long getQuotaGb()
  {
    return quotaGb;
  }
  
  public UserSelectorArg getUser()
  {
    return user;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { user, Long.valueOf(quotaGb) });
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
    extends StructSerializer<UserCustomQuotaArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public UserCustomQuotaArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          } else if ("quota_gb".equals(str)) {
            localObject1 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new UserCustomQuotaArg((UserSelectorArg)localObject2, ((Long)localObject1).longValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"quota_gb\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UserCustomQuotaArg paramUserCustomQuotaArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("user");
      UserSelectorArg.a.a.a(user, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("quota_gb");
      StoneSerializers.uInt32().serialize(Long.valueOf(quotaGb), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
