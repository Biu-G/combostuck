package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

public class FileOpsResult
{
  public FileOpsResult() {}
  
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
      paramObject = (FileOpsResult)paramObject;
      return true;
    }
    return false;
  }
  
  public int hashCode()
  {
    return getClass().toString().hashCode();
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  private static class a
    extends StructSerializer<FileOpsResult>
  {
    public static final a a = new a();
    
    private a() {}
    
    public FileOpsResult a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      else
      {
        localObject = null;
      }
      if (localObject == null)
      {
        localObject = new FileOpsResult();
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("No subtype found that matches tag: \"");
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("\"");
      throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
    }
    
    public void a(FileOpsResult paramFileOpsResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
