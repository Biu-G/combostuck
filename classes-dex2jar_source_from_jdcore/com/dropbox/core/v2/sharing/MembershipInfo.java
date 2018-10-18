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

public class MembershipInfo
{
  protected final AccessLevel accessType;
  protected final String initials;
  protected final boolean isInherited;
  protected final List<MemberPermission> permissions;
  
  public MembershipInfo(AccessLevel paramAccessLevel)
  {
    this(paramAccessLevel, null, null, false);
  }
  
  public MembershipInfo(AccessLevel paramAccessLevel, List<MemberPermission> paramList, String paramString, boolean paramBoolean)
  {
    if (paramAccessLevel != null)
    {
      accessType = paramAccessLevel;
      if (paramList != null)
      {
        paramAccessLevel = paramList.iterator();
        while (paramAccessLevel.hasNext()) {
          if ((MemberPermission)paramAccessLevel.next() == null) {
            throw new IllegalArgumentException("An item in list 'permissions' is null");
          }
        }
      }
      permissions = paramList;
      initials = paramString;
      isInherited = paramBoolean;
      return;
    }
    throw new IllegalArgumentException("Required value for 'accessType' is null");
  }
  
  public static Builder newBuilder(AccessLevel paramAccessLevel)
  {
    return new Builder(paramAccessLevel);
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
      paramObject = (MembershipInfo)paramObject;
      return ((accessType == accessType) || (accessType.equals(accessType))) && ((permissions == permissions) || ((permissions != null) && (permissions.equals(permissions)))) && ((initials == initials) || ((initials != null) && (initials.equals(initials)))) && (isInherited == isInherited);
    }
    return false;
  }
  
  public AccessLevel getAccessType()
  {
    return accessType;
  }
  
  public String getInitials()
  {
    return initials;
  }
  
  public boolean getIsInherited()
  {
    return isInherited;
  }
  
  public List<MemberPermission> getPermissions()
  {
    return permissions;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { accessType, permissions, initials, Boolean.valueOf(isInherited) });
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
    protected final AccessLevel accessType;
    protected String initials;
    protected boolean isInherited;
    protected List<MemberPermission> permissions;
    
    protected Builder(AccessLevel paramAccessLevel)
    {
      if (paramAccessLevel != null)
      {
        accessType = paramAccessLevel;
        permissions = null;
        initials = null;
        isInherited = false;
        return;
      }
      throw new IllegalArgumentException("Required value for 'accessType' is null");
    }
    
    public MembershipInfo build()
    {
      return new MembershipInfo(accessType, permissions, initials, isInherited);
    }
    
    public Builder withInitials(String paramString)
    {
      initials = paramString;
      return this;
    }
    
    public Builder withIsInherited(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        isInherited = paramBoolean.booleanValue();
        return this;
      }
      isInherited = false;
      return this;
    }
    
    public Builder withPermissions(List<MemberPermission> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((MemberPermission)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'permissions' is null");
          }
        }
      }
      permissions = paramList;
      return this;
    }
  }
  
  private static class a
    extends StructSerializer<MembershipInfo>
  {
    public static final a a = new a();
    
    private a() {}
    
    public MembershipInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      AccessLevel localAccessLevel = null;
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
        localObject2 = null;
        localObject1 = Boolean.valueOf(false);
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("access_type".equals(str)) {
            localAccessLevel = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("permissions".equals(str)) {
            localObject3 = (List)StoneSerializers.nullable(StoneSerializers.list(MemberPermission.a.a)).deserialize(paramJsonParser);
          } else if ("initials".equals(str)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("is_inherited".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localAccessLevel != null)
        {
          localObject1 = new MembershipInfo(localAccessLevel, (List)localObject3, (String)localObject2, ((Boolean)localObject1).booleanValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"access_type\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MembershipInfo paramMembershipInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("access_type");
      AccessLevel.Serializer.INSTANCE.serialize(accessType, paramJsonGenerator);
      if (permissions != null)
      {
        paramJsonGenerator.writeFieldName("permissions");
        StoneSerializers.nullable(StoneSerializers.list(MemberPermission.a.a)).serialize(permissions, paramJsonGenerator);
      }
      if (initials != null)
      {
        paramJsonGenerator.writeFieldName("initials");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(initials, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("is_inherited");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isInherited), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
