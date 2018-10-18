package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.fileproperties.PropertyGroup.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class FolderMetadata
  extends Metadata
{
  protected final String id;
  protected final List<PropertyGroup> propertyGroups;
  protected final String sharedFolderId;
  protected final FolderSharingInfo sharingInfo;
  
  public FolderMetadata(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null, null, null, null, null, null);
  }
  
  public FolderMetadata(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, FolderSharingInfo paramFolderSharingInfo, List<PropertyGroup> paramList)
  {
    super(paramString1, paramString3, paramString4, paramString5);
    if (paramString2 != null)
    {
      if (paramString2.length() >= 1)
      {
        id = paramString2;
        if ((paramString6 != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString6))) {
          throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        sharedFolderId = paramString6;
        sharingInfo = paramFolderSharingInfo;
        if (paramList != null)
        {
          paramString1 = paramList.iterator();
          while (paramString1.hasNext()) {
            if ((PropertyGroup)paramString1.next() == null) {
              throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
            }
          }
        }
        propertyGroups = paramList;
        return;
      }
      throw new IllegalArgumentException("String 'id' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'id' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2)
  {
    return new Builder(paramString1, paramString2);
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
      paramObject = (FolderMetadata)paramObject;
      if (((name == name) || (name.equals(name))) && ((id == id) || (id.equals(id))) && ((pathLower == pathLower) || ((pathLower != null) && (pathLower.equals(pathLower)))) && ((pathDisplay == pathDisplay) || ((pathDisplay != null) && (pathDisplay.equals(pathDisplay)))) && ((parentSharedFolderId == parentSharedFolderId) || ((parentSharedFolderId != null) && (parentSharedFolderId.equals(parentSharedFolderId)))) && ((sharedFolderId == sharedFolderId) || ((sharedFolderId != null) && (sharedFolderId.equals(sharedFolderId)))) && ((sharingInfo == sharingInfo) || ((sharingInfo != null) && (sharingInfo.equals(sharingInfo)))))
      {
        if (propertyGroups == propertyGroups) {
          break label282;
        }
        if ((propertyGroups != null) && (propertyGroups.equals(propertyGroups))) {
          return true;
        }
      }
      bool = false;
      label282:
      return bool;
    }
    return false;
  }
  
  public String getId()
  {
    return id;
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
  
  public List<PropertyGroup> getPropertyGroups()
  {
    return propertyGroups;
  }
  
  public String getSharedFolderId()
  {
    return sharedFolderId;
  }
  
  public FolderSharingInfo getSharingInfo()
  {
    return sharingInfo;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { id, sharedFolderId, sharingInfo, propertyGroups });
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
    extends Metadata.Builder
  {
    protected final String id;
    protected List<PropertyGroup> propertyGroups;
    protected String sharedFolderId;
    protected FolderSharingInfo sharingInfo;
    
    protected Builder(String paramString1, String paramString2)
    {
      super();
      if (paramString2 != null)
      {
        if (paramString2.length() >= 1)
        {
          id = paramString2;
          sharedFolderId = null;
          sharingInfo = null;
          propertyGroups = null;
          return;
        }
        throw new IllegalArgumentException("String 'id' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'id' is null");
    }
    
    public FolderMetadata build()
    {
      return new FolderMetadata(name, id, pathLower, pathDisplay, parentSharedFolderId, sharedFolderId, sharingInfo, propertyGroups);
    }
    
    public Builder withParentSharedFolderId(String paramString)
    {
      super.withParentSharedFolderId(paramString);
      return this;
    }
    
    public Builder withPathDisplay(String paramString)
    {
      super.withPathDisplay(paramString);
      return this;
    }
    
    public Builder withPathLower(String paramString)
    {
      super.withPathLower(paramString);
      return this;
    }
    
    public Builder withPropertyGroups(List<PropertyGroup> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((PropertyGroup)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
          }
        }
      }
      propertyGroups = paramList;
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
    
    public Builder withSharingInfo(FolderSharingInfo paramFolderSharingInfo)
    {
      sharingInfo = paramFolderSharingInfo;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<FolderMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public FolderMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"folder".equals(localObject2)) {}
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
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
        Object localObject7 = localObject6;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("name".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("id".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("path_lower".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("path_display".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str2)) {
            localObject4 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("shared_folder_id".equals(str2)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("sharing_info".equals(str2)) {
            localObject6 = (FolderSharingInfo)StoneSerializers.nullableStruct(FolderSharingInfo.a.a).deserialize(paramJsonParser);
          } else if ("property_groups".equals(str2)) {
            localObject7 = (List)StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new FolderMetadata(str1, (String)localObject1, (String)localObject2, (String)localObject3, (String)localObject4, (String)localObject5, (FolderSharingInfo)localObject6, (List)localObject7);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FolderMetadata paramFolderMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("folder", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("id");
      StoneSerializers.string().serialize(id, paramJsonGenerator);
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
      if (sharedFolderId != null)
      {
        paramJsonGenerator.writeFieldName("shared_folder_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedFolderId, paramJsonGenerator);
      }
      if (sharingInfo != null)
      {
        paramJsonGenerator.writeFieldName("sharing_info");
        StoneSerializers.nullableStruct(FolderSharingInfo.a.a).serialize(sharingInfo, paramJsonGenerator);
      }
      if (propertyGroups != null)
      {
        paramJsonGenerator.writeFieldName("property_groups");
        StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize(propertyGroups, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
