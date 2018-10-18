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

public class FolderSharingInfo
  extends SharingInfo
{
  protected final boolean noAccess;
  protected final String parentSharedFolderId;
  protected final String sharedFolderId;
  protected final boolean traverseOnly;
  
  public FolderSharingInfo(boolean paramBoolean)
  {
    this(paramBoolean, null, null, false, false);
  }
  
  public FolderSharingInfo(boolean paramBoolean1, String paramString1, String paramString2, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramBoolean1);
    if ((paramString1 != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString1))) {
      throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
    }
    parentSharedFolderId = paramString1;
    if ((paramString2 != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString2))) {
      throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
    }
    sharedFolderId = paramString2;
    traverseOnly = paramBoolean2;
    noAccess = paramBoolean3;
  }
  
  public static Builder newBuilder(boolean paramBoolean)
  {
    return new Builder(paramBoolean);
  }
  
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
      paramObject = (FolderSharingInfo)paramObject;
      return (readOnly == readOnly) && ((parentSharedFolderId == parentSharedFolderId) || ((parentSharedFolderId != null) && (parentSharedFolderId.equals(parentSharedFolderId)))) && ((sharedFolderId == sharedFolderId) || ((sharedFolderId != null) && (sharedFolderId.equals(sharedFolderId)))) && (traverseOnly == traverseOnly) && (noAccess == noAccess);
    }
    return false;
  }
  
  public boolean getNoAccess()
  {
    return noAccess;
  }
  
  public String getParentSharedFolderId()
  {
    return parentSharedFolderId;
  }
  
  public boolean getReadOnly()
  {
    return readOnly;
  }
  
  public String getSharedFolderId()
  {
    return sharedFolderId;
  }
  
  public boolean getTraverseOnly()
  {
    return traverseOnly;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { parentSharedFolderId, sharedFolderId, Boolean.valueOf(traverseOnly), Boolean.valueOf(noAccess) });
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
  
  public static class Builder
  {
    protected boolean noAccess;
    protected String parentSharedFolderId;
    protected final boolean readOnly;
    protected String sharedFolderId;
    protected boolean traverseOnly;
    
    protected Builder(boolean paramBoolean)
    {
      readOnly = paramBoolean;
      parentSharedFolderId = null;
      sharedFolderId = null;
      traverseOnly = false;
      noAccess = false;
    }
    
    public FolderSharingInfo build()
    {
      return new FolderSharingInfo(readOnly, parentSharedFolderId, sharedFolderId, traverseOnly, noAccess);
    }
    
    public Builder withNoAccess(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        noAccess = paramBoolean.booleanValue();
        return this;
      }
      noAccess = false;
      return this;
    }
    
    public Builder withParentSharedFolderId(String paramString)
    {
      if ((paramString != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString))) {
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
      }
      parentSharedFolderId = paramString;
      return this;
    }
    
    public Builder withSharedFolderId(String paramString)
    {
      if ((paramString != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString))) {
        throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
      }
      sharedFolderId = paramString;
      return this;
    }
    
    public Builder withTraverseOnly(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        traverseOnly = paramBoolean.booleanValue();
        return this;
      }
      traverseOnly = false;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<FolderSharingInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public FolderSharingInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean3 = null;
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
        Boolean localBoolean1 = Boolean.valueOf(false);
        Boolean localBoolean2 = Boolean.valueOf(false);
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("read_only".equals(str)) {
            localBoolean3 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("shared_folder_id".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("traverse_only".equals(str)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("no_access".equals(str)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localBoolean3 != null)
        {
          localObject1 = new FolderSharingInfo(localBoolean3.booleanValue(), (String)localObject2, (String)localObject1, localBoolean1.booleanValue(), localBoolean2.booleanValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"read_only\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FolderSharingInfo paramFolderSharingInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("read_only");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(readOnly), paramJsonGenerator);
      if (parentSharedFolderId != null)
      {
        paramJsonGenerator.writeFieldName("parent_shared_folder_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(parentSharedFolderId, paramJsonGenerator);
      }
      if (sharedFolderId != null)
      {
        paramJsonGenerator.writeFieldName("shared_folder_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderId, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("traverse_only");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(traverseOnly), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("no_access");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(noAccess), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
