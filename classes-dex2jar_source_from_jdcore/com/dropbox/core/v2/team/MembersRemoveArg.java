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

class MembersRemoveArg
  extends s
{
  protected final UserSelectorArg c;
  protected final UserSelectorArg d;
  protected final boolean e;
  
  public MembersRemoveArg(UserSelectorArg paramUserSelectorArg)
  {
    this(paramUserSelectorArg, true, null, null, false);
  }
  
  public MembersRemoveArg(UserSelectorArg paramUserSelectorArg1, boolean paramBoolean1, UserSelectorArg paramUserSelectorArg2, UserSelectorArg paramUserSelectorArg3, boolean paramBoolean2)
  {
    super(paramUserSelectorArg1, paramBoolean1);
    c = paramUserSelectorArg2;
    d = paramUserSelectorArg3;
    e = paramBoolean2;
  }
  
  public static Builder a(UserSelectorArg paramUserSelectorArg)
  {
    return new Builder(paramUserSelectorArg);
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
      paramObject = (MembersRemoveArg)paramObject;
      return ((a == a) || (a.equals(a))) && (b == b) && ((c == c) || ((c != null) && (c.equals(c)))) && ((d == d) || ((d != null) && (d.equals(d)))) && (e == e);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { c, d, Boolean.valueOf(e) });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected boolean keepAccount;
    protected UserSelectorArg transferAdminId;
    protected UserSelectorArg transferDestId;
    protected final UserSelectorArg user;
    protected boolean wipeData;
    
    protected Builder(UserSelectorArg paramUserSelectorArg)
    {
      if (paramUserSelectorArg != null)
      {
        user = paramUserSelectorArg;
        wipeData = true;
        transferDestId = null;
        transferAdminId = null;
        keepAccount = false;
        return;
      }
      throw new IllegalArgumentException("Required value for 'user' is null");
    }
    
    public MembersRemoveArg build()
    {
      return new MembersRemoveArg(user, wipeData, transferDestId, transferAdminId, keepAccount);
    }
    
    public Builder withKeepAccount(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        keepAccount = paramBoolean.booleanValue();
        return this;
      }
      keepAccount = false;
      return this;
    }
    
    public Builder withTransferAdminId(UserSelectorArg paramUserSelectorArg)
    {
      transferAdminId = paramUserSelectorArg;
      return this;
    }
    
    public Builder withTransferDestId(UserSelectorArg paramUserSelectorArg)
    {
      transferDestId = paramUserSelectorArg;
      return this;
    }
    
    public Builder withWipeData(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        wipeData = paramBoolean.booleanValue();
        return this;
      }
      wipeData = true;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MembersRemoveArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersRemoveArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
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
        Boolean localBoolean2 = Boolean.valueOf(true);
        Boolean localBoolean1 = Boolean.valueOf(false);
        UserSelectorArg localUserSelectorArg = null;
        localObject1 = localUserSelectorArg;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("user".equals(str)) {
            localUserSelectorArg = UserSelectorArg.a.a.a(paramJsonParser);
          } else if ("wipe_data".equals(str)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("transfer_dest_id".equals(str)) {
            localObject1 = (UserSelectorArg)StoneSerializers.nullable(UserSelectorArg.a.a).deserialize(paramJsonParser);
          } else if ("transfer_admin_id".equals(str)) {
            localObject2 = (UserSelectorArg)StoneSerializers.nullable(UserSelectorArg.a.a).deserialize(paramJsonParser);
          } else if ("keep_account".equals(str)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localUserSelectorArg != null)
        {
          localObject1 = new MembersRemoveArg(localUserSelectorArg, localBoolean2.booleanValue(), (UserSelectorArg)localObject1, (UserSelectorArg)localObject2, localBoolean1.booleanValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MembersRemoveArg paramMembersRemoveArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("user");
      UserSelectorArg.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("wipe_data");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("transfer_dest_id");
        StoneSerializers.nullable(UserSelectorArg.a.a).serialize(c, paramJsonGenerator);
      }
      if (d != null)
      {
        paramJsonGenerator.writeFieldName("transfer_admin_id");
        StoneSerializers.nullable(UserSelectorArg.a.a).serialize(d, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("keep_account");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(e), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
