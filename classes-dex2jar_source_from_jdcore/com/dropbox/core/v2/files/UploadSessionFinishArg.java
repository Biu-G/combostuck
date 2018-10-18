package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class UploadSessionFinishArg
{
  protected final CommitInfo commit;
  protected final UploadSessionCursor cursor;
  
  public UploadSessionFinishArg(UploadSessionCursor paramUploadSessionCursor, CommitInfo paramCommitInfo)
  {
    if (paramUploadSessionCursor != null)
    {
      cursor = paramUploadSessionCursor;
      if (paramCommitInfo != null)
      {
        commit = paramCommitInfo;
        return;
      }
      throw new IllegalArgumentException("Required value for 'commit' is null");
    }
    throw new IllegalArgumentException("Required value for 'cursor' is null");
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
      paramObject = (UploadSessionFinishArg)paramObject;
      if ((cursor == cursor) || (cursor.equals(cursor)))
      {
        if (commit == commit) {
          break label88;
        }
        if (commit.equals(commit)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public CommitInfo getCommit()
  {
    return commit;
  }
  
  public UploadSessionCursor getCursor()
  {
    return cursor;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { cursor, commit });
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
    extends StructSerializer<UploadSessionFinishArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public UploadSessionFinishArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("cursor".equals(str)) {
            localObject2 = (UploadSessionCursor)UploadSessionCursor.a.a.deserialize(paramJsonParser);
          } else if ("commit".equals(str)) {
            localObject1 = (CommitInfo)CommitInfo.a.a.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new UploadSessionFinishArg((UploadSessionCursor)localObject2, (CommitInfo)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"commit\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"cursor\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UploadSessionFinishArg paramUploadSessionFinishArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("cursor");
      UploadSessionCursor.a.a.serialize(cursor, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("commit");
      CommitInfo.a.a.serialize(commit, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
