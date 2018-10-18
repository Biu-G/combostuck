package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class TeamFolderListError
{
  protected final TeamFolderAccessError accessError;
  
  public TeamFolderListError(TeamFolderAccessError paramTeamFolderAccessError)
  {
    if (paramTeamFolderAccessError != null)
    {
      accessError = paramTeamFolderAccessError;
      return;
    }
    throw new IllegalArgumentException("Required value for 'accessError' is null");
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
      paramObject = (TeamFolderListError)paramObject;
      if (accessError != accessError)
      {
        if (accessError.equals(accessError)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public TeamFolderAccessError getAccessError()
  {
    return accessError;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { accessError });
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
    extends StructSerializer<TeamFolderListError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderListError a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("access_error".equals(localObject2)) {
            localObject1 = TeamFolderAccessError.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          localObject1 = new TeamFolderListError((TeamFolderAccessError)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"access_error\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TeamFolderListError paramTeamFolderListError, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("access_error");
      TeamFolderAccessError.a.a.a(accessError, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
