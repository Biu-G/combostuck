package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class FileMemberActionResult
{
  protected final MemberSelector member;
  protected final FileMemberActionIndividualResult result;
  
  public FileMemberActionResult(MemberSelector paramMemberSelector, FileMemberActionIndividualResult paramFileMemberActionIndividualResult)
  {
    if (paramMemberSelector != null)
    {
      member = paramMemberSelector;
      if (paramFileMemberActionIndividualResult != null)
      {
        result = paramFileMemberActionIndividualResult;
        return;
      }
      throw new IllegalArgumentException("Required value for 'result' is null");
    }
    throw new IllegalArgumentException("Required value for 'member' is null");
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
      paramObject = (FileMemberActionResult)paramObject;
      if ((member == member) || (member.equals(member)))
      {
        if (result == result) {
          break label88;
        }
        if (result.equals(result)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public MemberSelector getMember()
  {
    return member;
  }
  
  public FileMemberActionIndividualResult getResult()
  {
    return result;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { member, result });
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
    extends StructSerializer<FileMemberActionResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileMemberActionResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("member".equals(str)) {
            localObject2 = MemberSelector.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("result".equals(str)) {
            localObject1 = FileMemberActionIndividualResult.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new FileMemberActionResult((MemberSelector)localObject2, (FileMemberActionIndividualResult)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"result\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"member\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FileMemberActionResult paramFileMemberActionResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("member");
      MemberSelector.Serializer.INSTANCE.serialize(member, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("result");
      FileMemberActionIndividualResult.a.a.a(result, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
