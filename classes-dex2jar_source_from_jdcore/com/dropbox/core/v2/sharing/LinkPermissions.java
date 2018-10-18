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

public class LinkPermissions
{
  protected final boolean canRevoke;
  protected final RequestedVisibility requestedVisibility;
  protected final ResolvedVisibility resolvedVisibility;
  protected final SharedLinkAccessFailureReason revokeFailureReason;
  
  public LinkPermissions(boolean paramBoolean)
  {
    this(paramBoolean, null, null, null);
  }
  
  public LinkPermissions(boolean paramBoolean, ResolvedVisibility paramResolvedVisibility, RequestedVisibility paramRequestedVisibility, SharedLinkAccessFailureReason paramSharedLinkAccessFailureReason)
  {
    resolvedVisibility = paramResolvedVisibility;
    requestedVisibility = paramRequestedVisibility;
    canRevoke = paramBoolean;
    revokeFailureReason = paramSharedLinkAccessFailureReason;
  }
  
  public static Builder newBuilder(boolean paramBoolean)
  {
    return new Builder(paramBoolean);
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
      paramObject = (LinkPermissions)paramObject;
      if ((canRevoke == canRevoke) && ((resolvedVisibility == resolvedVisibility) || ((resolvedVisibility != null) && (resolvedVisibility.equals(resolvedVisibility)))) && ((requestedVisibility == requestedVisibility) || ((requestedVisibility != null) && (requestedVisibility.equals(requestedVisibility)))))
      {
        if (revokeFailureReason == revokeFailureReason) {
          break label145;
        }
        if ((revokeFailureReason != null) && (revokeFailureReason.equals(revokeFailureReason))) {
          return true;
        }
      }
      bool = false;
      label145:
      return bool;
    }
    return false;
  }
  
  public boolean getCanRevoke()
  {
    return canRevoke;
  }
  
  public RequestedVisibility getRequestedVisibility()
  {
    return requestedVisibility;
  }
  
  public ResolvedVisibility getResolvedVisibility()
  {
    return resolvedVisibility;
  }
  
  public SharedLinkAccessFailureReason getRevokeFailureReason()
  {
    return revokeFailureReason;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { resolvedVisibility, requestedVisibility, Boolean.valueOf(canRevoke), revokeFailureReason });
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
    protected final boolean canRevoke;
    protected RequestedVisibility requestedVisibility;
    protected ResolvedVisibility resolvedVisibility;
    protected SharedLinkAccessFailureReason revokeFailureReason;
    
    protected Builder(boolean paramBoolean)
    {
      canRevoke = paramBoolean;
      resolvedVisibility = null;
      requestedVisibility = null;
      revokeFailureReason = null;
    }
    
    public LinkPermissions build()
    {
      return new LinkPermissions(canRevoke, resolvedVisibility, requestedVisibility, revokeFailureReason);
    }
    
    public Builder withRequestedVisibility(RequestedVisibility paramRequestedVisibility)
    {
      requestedVisibility = paramRequestedVisibility;
      return this;
    }
    
    public Builder withResolvedVisibility(ResolvedVisibility paramResolvedVisibility)
    {
      resolvedVisibility = paramResolvedVisibility;
      return this;
    }
    
    public Builder withRevokeFailureReason(SharedLinkAccessFailureReason paramSharedLinkAccessFailureReason)
    {
      revokeFailureReason = paramSharedLinkAccessFailureReason;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<LinkPermissions>
  {
    public static final a a = new a();
    
    a() {}
    
    public LinkPermissions a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean = null;
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
        ResolvedVisibility localResolvedVisibility = null;
        localObject1 = localResolvedVisibility;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("can_revoke".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("resolved_visibility".equals(str)) {
            localResolvedVisibility = (ResolvedVisibility)StoneSerializers.nullable(ResolvedVisibility.a.a).deserialize(paramJsonParser);
          } else if ("requested_visibility".equals(str)) {
            localObject1 = (RequestedVisibility)StoneSerializers.nullable(RequestedVisibility.a.a).deserialize(paramJsonParser);
          } else if ("revoke_failure_reason".equals(str)) {
            localObject2 = (SharedLinkAccessFailureReason)StoneSerializers.nullable(SharedLinkAccessFailureReason.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localBoolean != null)
        {
          localObject1 = new LinkPermissions(localBoolean.booleanValue(), localResolvedVisibility, (RequestedVisibility)localObject1, (SharedLinkAccessFailureReason)localObject2);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"can_revoke\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(LinkPermissions paramLinkPermissions, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("can_revoke");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(canRevoke), paramJsonGenerator);
      if (resolvedVisibility != null)
      {
        paramJsonGenerator.writeFieldName("resolved_visibility");
        StoneSerializers.nullable(ResolvedVisibility.a.a).serialize(resolvedVisibility, paramJsonGenerator);
      }
      if (requestedVisibility != null)
      {
        paramJsonGenerator.writeFieldName("requested_visibility");
        StoneSerializers.nullable(RequestedVisibility.a.a).serialize(requestedVisibility, paramJsonGenerator);
      }
      if (revokeFailureReason != null)
      {
        paramJsonGenerator.writeFieldName("revoke_failure_reason");
        StoneSerializers.nullable(SharedLinkAccessFailureReason.a.a).serialize(revokeFailureReason, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
