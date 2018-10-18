package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.InviteeInfo;
import com.dropbox.core.v2.sharing.InviteeInfo.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class InviteeInfoWithPermissionLevel
{
  protected final InviteeInfo invitee;
  protected final PaperDocPermissionLevel permissionLevel;
  
  public InviteeInfoWithPermissionLevel(InviteeInfo paramInviteeInfo, PaperDocPermissionLevel paramPaperDocPermissionLevel)
  {
    if (paramInviteeInfo != null)
    {
      invitee = paramInviteeInfo;
      if (paramPaperDocPermissionLevel != null)
      {
        permissionLevel = paramPaperDocPermissionLevel;
        return;
      }
      throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
    }
    throw new IllegalArgumentException("Required value for 'invitee' is null");
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
      paramObject = (InviteeInfoWithPermissionLevel)paramObject;
      if ((invitee == invitee) || (invitee.equals(invitee)))
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
  
  public InviteeInfo getInvitee()
  {
    return invitee;
  }
  
  public PaperDocPermissionLevel getPermissionLevel()
  {
    return permissionLevel;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { invitee, permissionLevel });
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
    extends StructSerializer<InviteeInfoWithPermissionLevel>
  {
    public static final a a = new a();
    
    a() {}
    
    public InviteeInfoWithPermissionLevel a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("invitee".equals(str)) {
            localObject2 = InviteeInfo.Serializer.INSTANCE.deserialize(paramJsonParser);
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
            localObject1 = new InviteeInfoWithPermissionLevel((InviteeInfo)localObject2, (PaperDocPermissionLevel)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"permission_level\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"invitee\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(InviteeInfoWithPermissionLevel paramInviteeInfoWithPermissionLevel, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("invitee");
      InviteeInfo.Serializer.INSTANCE.serialize(invitee, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("permission_level");
      PaperDocPermissionLevel.a.a.a(permissionLevel, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
