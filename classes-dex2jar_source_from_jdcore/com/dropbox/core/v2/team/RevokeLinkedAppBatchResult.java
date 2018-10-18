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
import java.util.Iterator;
import java.util.List;

public class RevokeLinkedAppBatchResult
{
  protected final List<RevokeLinkedAppStatus> revokeLinkedAppStatus;
  
  public RevokeLinkedAppBatchResult(List<RevokeLinkedAppStatus> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((RevokeLinkedAppStatus)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'revokeLinkedAppStatus' is null");
        }
      }
      revokeLinkedAppStatus = paramList;
      return;
    }
    throw new IllegalArgumentException("Required value for 'revokeLinkedAppStatus' is null");
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
      paramObject = (RevokeLinkedAppBatchResult)paramObject;
      if (revokeLinkedAppStatus != revokeLinkedAppStatus)
      {
        if (revokeLinkedAppStatus.equals(revokeLinkedAppStatus)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public List<RevokeLinkedAppStatus> getRevokeLinkedAppStatus()
  {
    return revokeLinkedAppStatus;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { revokeLinkedAppStatus });
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
    extends StructSerializer<RevokeLinkedAppBatchResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public RevokeLinkedAppBatchResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("revoke_linked_app_status".equals(localObject2)) {
            localObject1 = (List)StoneSerializers.list(RevokeLinkedAppStatus.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          localObject1 = new RevokeLinkedAppBatchResult((List)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"revoke_linked_app_status\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(RevokeLinkedAppBatchResult paramRevokeLinkedAppBatchResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("revoke_linked_app_status");
      StoneSerializers.list(RevokeLinkedAppStatus.a.a).serialize(revokeLinkedAppStatus, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
