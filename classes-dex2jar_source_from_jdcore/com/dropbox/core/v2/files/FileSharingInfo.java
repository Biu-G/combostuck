package com.dropbox.core.v2.files;

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

public class FileSharingInfo
  extends SharingInfo
{
  protected final String modifiedBy;
  protected final String parentSharedFolderId;
  
  public FileSharingInfo(boolean paramBoolean, String paramString)
  {
    this(paramBoolean, paramString, null);
  }
  
  public FileSharingInfo(boolean paramBoolean, String paramString1, String paramString2)
  {
    super(paramBoolean);
    if (paramString1 != null)
    {
      if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString1))
      {
        parentSharedFolderId = paramString1;
        if (paramString2 != null) {
          if (paramString2.length() >= 40)
          {
            if (paramString2.length() > 40) {
              throw new IllegalArgumentException("String 'modifiedBy' is longer than 40");
            }
          }
          else {
            throw new IllegalArgumentException("String 'modifiedBy' is shorter than 40");
          }
        }
        modifiedBy = paramString2;
        return;
      }
      throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'parentSharedFolderId' is null");
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
      paramObject = (FileSharingInfo)paramObject;
      if ((readOnly == readOnly) && ((parentSharedFolderId == parentSharedFolderId) || (parentSharedFolderId.equals(parentSharedFolderId))))
      {
        if (modifiedBy == modifiedBy) {
          break label106;
        }
        if ((modifiedBy != null) && (modifiedBy.equals(modifiedBy))) {
          return true;
        }
      }
      bool = false;
      label106:
      return bool;
    }
    return false;
  }
  
  public String getModifiedBy()
  {
    return modifiedBy;
  }
  
  public String getParentSharedFolderId()
  {
    return parentSharedFolderId;
  }
  
  public boolean getReadOnly()
  {
    return readOnly;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { parentSharedFolderId, modifiedBy });
    return super.hashCode() * 31 + i;
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
    extends StructSerializer<FileSharingInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileSharingInfo a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("read_only".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("modified_by".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localBoolean != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new FileSharingInfo(localBoolean.booleanValue(), (String)localObject2, (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"parent_shared_folder_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"read_only\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FileSharingInfo paramFileSharingInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("read_only");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(readOnly), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("parent_shared_folder_id");
      StoneSerializers.string().serialize(parentSharedFolderId, paramJsonGenerator);
      if (modifiedBy != null)
      {
        paramJsonGenerator.writeFieldName("modified_by");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(modifiedBy, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
