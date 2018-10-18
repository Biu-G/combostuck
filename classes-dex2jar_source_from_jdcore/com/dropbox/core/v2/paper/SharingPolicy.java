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

public class SharingPolicy
{
  protected final SharingPublicPolicyType publicSharingPolicy;
  protected final SharingTeamPolicyType teamSharingPolicy;
  
  public SharingPolicy()
  {
    this(null, null);
  }
  
  public SharingPolicy(SharingPublicPolicyType paramSharingPublicPolicyType, SharingTeamPolicyType paramSharingTeamPolicyType)
  {
    publicSharingPolicy = paramSharingPublicPolicyType;
    teamSharingPolicy = paramSharingTeamPolicyType;
  }
  
  public static Builder newBuilder()
  {
    return new Builder();
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
      paramObject = (SharingPolicy)paramObject;
      if ((publicSharingPolicy == publicSharingPolicy) || ((publicSharingPolicy != null) && (publicSharingPolicy.equals(publicSharingPolicy))))
      {
        if (teamSharingPolicy == teamSharingPolicy) {
          break label102;
        }
        if ((teamSharingPolicy != null) && (teamSharingPolicy.equals(teamSharingPolicy))) {
          return true;
        }
      }
      bool = false;
      label102:
      return bool;
    }
    return false;
  }
  
  public SharingPublicPolicyType getPublicSharingPolicy()
  {
    return publicSharingPolicy;
  }
  
  public SharingTeamPolicyType getTeamSharingPolicy()
  {
    return teamSharingPolicy;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { publicSharingPolicy, teamSharingPolicy });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected SharingPublicPolicyType publicSharingPolicy = null;
    protected SharingTeamPolicyType teamSharingPolicy = null;
    
    protected Builder() {}
    
    public SharingPolicy build()
    {
      return new SharingPolicy(publicSharingPolicy, teamSharingPolicy);
    }
    
    public Builder withPublicSharingPolicy(SharingPublicPolicyType paramSharingPublicPolicyType)
    {
      publicSharingPolicy = paramSharingPublicPolicyType;
      return this;
    }
    
    public Builder withTeamSharingPolicy(SharingTeamPolicyType paramSharingTeamPolicyType)
    {
      teamSharingPolicy = paramSharingTeamPolicyType;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<SharingPolicy>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharingPolicy a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("public_sharing_policy".equals(str)) {
            localObject2 = (SharingPublicPolicyType)StoneSerializers.nullable(SharingPublicPolicyType.a.a).deserialize(paramJsonParser);
          } else if ("team_sharing_policy".equals(str)) {
            localObject1 = (SharingTeamPolicyType)StoneSerializers.nullable(SharingTeamPolicyType.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new SharingPolicy((SharingPublicPolicyType)localObject2, (SharingTeamPolicyType)localObject1);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SharingPolicy paramSharingPolicy, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (publicSharingPolicy != null)
      {
        paramJsonGenerator.writeFieldName("public_sharing_policy");
        StoneSerializers.nullable(SharingPublicPolicyType.a.a).serialize(publicSharingPolicy, paramJsonGenerator);
      }
      if (teamSharingPolicy != null)
      {
        paramJsonGenerator.writeFieldName("team_sharing_policy");
        StoneSerializers.nullable(SharingTeamPolicyType.a.a).serialize(teamSharingPolicy, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
