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

public class LinkPermission
{
  protected final LinkAction action;
  protected final boolean allow;
  protected final PermissionDeniedReason reason;
  
  public LinkPermission(LinkAction paramLinkAction, boolean paramBoolean)
  {
    this(paramLinkAction, paramBoolean, null);
  }
  
  public LinkPermission(LinkAction paramLinkAction, boolean paramBoolean, PermissionDeniedReason paramPermissionDeniedReason)
  {
    if (paramLinkAction != null)
    {
      action = paramLinkAction;
      allow = paramBoolean;
      reason = paramPermissionDeniedReason;
      return;
    }
    throw new IllegalArgumentException("Required value for 'action' is null");
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
      paramObject = (LinkPermission)paramObject;
      if (((action == action) || (action.equals(action))) && (allow == allow))
      {
        if (reason == reason) {
          break label106;
        }
        if ((reason != null) && (reason.equals(reason))) {
          return true;
        }
      }
      bool = false;
      label106:
      return bool;
    }
    return false;
  }
  
  public LinkAction getAction()
  {
    return action;
  }
  
  public boolean getAllow()
  {
    return allow;
  }
  
  public PermissionDeniedReason getReason()
  {
    return reason;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { action, Boolean.valueOf(allow), reason });
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
    extends StructSerializer<LinkPermission>
  {
    public static final a a = new a();
    
    a() {}
    
    public LinkPermission a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      LinkAction localLinkAction = null;
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
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("action".equals(str)) {
            localLinkAction = LinkAction.a.a.a(paramJsonParser);
          } else if ("allow".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("reason".equals(str)) {
            localObject1 = (PermissionDeniedReason)StoneSerializers.nullable(PermissionDeniedReason.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localLinkAction != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new LinkPermission(localLinkAction, ((Boolean)localObject2).booleanValue(), (PermissionDeniedReason)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"allow\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"action\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(LinkPermission paramLinkPermission, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("action");
      LinkAction.a.a.a(action, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("allow");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(allow), paramJsonGenerator);
      if (reason != null)
      {
        paramJsonGenerator.writeFieldName("reason");
        StoneSerializers.nullable(PermissionDeniedReason.a.a).serialize(reason, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
