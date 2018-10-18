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
import java.util.regex.Pattern;

public class GetFileMetadataBatchResult
{
  protected final String file;
  protected final GetFileMetadataIndividualResult result;
  
  public GetFileMetadataBatchResult(String paramString, GetFileMetadataIndividualResult paramGetFileMetadataIndividualResult)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", paramString))
        {
          file = paramString;
          if (paramGetFileMetadataIndividualResult != null)
          {
            result = paramGetFileMetadataIndividualResult;
            return;
          }
          throw new IllegalArgumentException("Required value for 'result' is null");
        }
        throw new IllegalArgumentException("String 'file' does not match pattern");
      }
      throw new IllegalArgumentException("String 'file' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'file' is null");
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
      paramObject = (GetFileMetadataBatchResult)paramObject;
      if ((file == file) || (file.equals(file)))
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
  
  public String getFile()
  {
    return file;
  }
  
  public GetFileMetadataIndividualResult getResult()
  {
    return result;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { file, result });
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
    extends StructSerializer<GetFileMetadataBatchResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetFileMetadataBatchResult a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("file".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("result".equals(str)) {
            localObject1 = GetFileMetadataIndividualResult.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new GetFileMetadataBatchResult((String)localObject2, (GetFileMetadataIndividualResult)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"result\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"file\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetFileMetadataBatchResult paramGetFileMetadataBatchResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("file");
      StoneSerializers.string().serialize(file, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("result");
      GetFileMetadataIndividualResult.a.a.a(result, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
