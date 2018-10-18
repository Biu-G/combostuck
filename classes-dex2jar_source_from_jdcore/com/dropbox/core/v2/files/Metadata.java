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

public class Metadata
{
  protected final String name;
  protected final String parentSharedFolderId;
  protected final String pathDisplay;
  protected final String pathLower;
  
  public Metadata(String paramString)
  {
    this(paramString, null, null, null);
  }
  
  public Metadata(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString1 != null)
    {
      name = paramString1;
      pathLower = paramString2;
      pathDisplay = paramString3;
      if ((paramString4 != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString4))) {
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
      }
      parentSharedFolderId = paramString4;
      return;
    }
    throw new IllegalArgumentException("Required value for 'name' is null");
  }
  
  public static Builder newBuilder(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (Metadata)paramObject;
      if (((name == name) || (name.equals(name))) && ((pathLower == pathLower) || ((pathLower != null) && (pathLower.equals(pathLower)))) && ((pathDisplay == pathDisplay) || ((pathDisplay != null) && (pathDisplay.equals(pathDisplay)))))
      {
        if (parentSharedFolderId == parentSharedFolderId) {
          break label159;
        }
        if ((parentSharedFolderId != null) && (parentSharedFolderId.equals(parentSharedFolderId))) {
          return true;
        }
      }
      bool = false;
      label159:
      return bool;
    }
    return false;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getParentSharedFolderId()
  {
    return parentSharedFolderId;
  }
  
  public String getPathDisplay()
  {
    return pathDisplay;
  }
  
  public String getPathLower()
  {
    return pathLower;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { name, pathLower, pathDisplay, parentSharedFolderId });
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
    protected final String name;
    protected String parentSharedFolderId;
    protected String pathDisplay;
    protected String pathLower;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        name = paramString;
        pathLower = null;
        pathDisplay = null;
        parentSharedFolderId = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'name' is null");
    }
    
    public Metadata build()
    {
      return new Metadata(name, pathLower, pathDisplay, parentSharedFolderId);
    }
    
    public Builder withParentSharedFolderId(String paramString)
    {
      if ((paramString != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString))) {
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
      }
      parentSharedFolderId = paramString;
      return this;
    }
    
    public Builder withPathDisplay(String paramString)
    {
      pathDisplay = paramString;
      return this;
    }
    
    public Builder withPathLower(String paramString)
    {
      pathLower = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<Metadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public Metadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str2 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"".equals(localObject2)) {}
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str3 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("name".equals(str3)) {
            str2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("path_lower".equals(str3)) {
            str1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("path_display".equals(str3)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str3)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str2 != null) {
          localObject1 = new Metadata(str2, str1, (String)localObject1, (String)localObject2);
        } else {
          throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
        }
      }
      else if ("".equals(localObject1))
      {
        localObject1 = a.a(paramJsonParser, true);
      }
      else if ("file".equals(localObject1))
      {
        localObject1 = FileMetadata.a.a.a(paramJsonParser, true);
      }
      else if ("folder".equals(localObject1))
      {
        localObject1 = FolderMetadata.a.a.a(paramJsonParser, true);
      }
      else
      {
        if (!"deleted".equals(localObject1)) {
          break label306;
        }
        localObject1 = DeletedMetadata.a.a.a(paramJsonParser, true);
      }
      if (!paramBoolean) {
        expectEndObject(paramJsonParser);
      }
      return localObject1;
      label306:
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(Metadata paramMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if ((paramMetadata instanceof FileMetadata))
      {
        FileMetadata.a.a.a((FileMetadata)paramMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if ((paramMetadata instanceof FolderMetadata))
      {
        FolderMetadata.a.a.a((FolderMetadata)paramMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if ((paramMetadata instanceof DeletedMetadata))
      {
        DeletedMetadata.a.a.a((DeletedMetadata)paramMetadata, paramJsonGenerator, paramBoolean);
        return;
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      if (pathLower != null)
      {
        paramJsonGenerator.writeFieldName("path_lower");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(pathLower, paramJsonGenerator);
      }
      if (pathDisplay != null)
      {
        paramJsonGenerator.writeFieldName("path_display");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(pathDisplay, paramJsonGenerator);
      }
      if (parentSharedFolderId != null)
      {
        paramJsonGenerator.writeFieldName("parent_shared_folder_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(parentSharedFolderId, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
