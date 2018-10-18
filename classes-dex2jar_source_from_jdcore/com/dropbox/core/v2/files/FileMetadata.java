package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.fileproperties.PropertyGroup.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class FileMetadata
  extends Metadata
{
  protected final Date clientModified;
  protected final String contentHash;
  protected final Boolean hasExplicitSharedMembers;
  protected final String id;
  protected final MediaInfo mediaInfo;
  protected final List<PropertyGroup> propertyGroups;
  protected final String rev;
  protected final Date serverModified;
  protected final FileSharingInfo sharingInfo;
  protected final long size;
  protected final SymlinkInfo symlinkInfo;
  
  public FileMetadata(String paramString1, String paramString2, Date paramDate1, Date paramDate2, String paramString3, long paramLong)
  {
    this(paramString1, paramString2, paramDate1, paramDate2, paramString3, paramLong, null, null, null, null, null, null, null, null, null);
  }
  
  public FileMetadata(String paramString1, String paramString2, Date paramDate1, Date paramDate2, String paramString3, long paramLong, String paramString4, String paramString5, String paramString6, MediaInfo paramMediaInfo, SymlinkInfo paramSymlinkInfo, FileSharingInfo paramFileSharingInfo, List<PropertyGroup> paramList, Boolean paramBoolean, String paramString7)
  {
    super(paramString1, paramString4, paramString5, paramString6);
    if (paramString2 != null)
    {
      if (paramString2.length() >= 1)
      {
        id = paramString2;
        if (paramDate1 != null)
        {
          clientModified = LangUtil.truncateMillis(paramDate1);
          if (paramDate2 != null)
          {
            serverModified = LangUtil.truncateMillis(paramDate2);
            if (paramString3 != null)
            {
              if (paramString3.length() >= 9)
              {
                if (Pattern.matches("[0-9a-f]+", paramString3))
                {
                  rev = paramString3;
                  size = paramLong;
                  mediaInfo = paramMediaInfo;
                  symlinkInfo = paramSymlinkInfo;
                  sharingInfo = paramFileSharingInfo;
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
                  hasExplicitSharedMembers = paramBoolean;
                  if (paramString7 != null) {
                    if (paramString7.length() >= 64)
                    {
                      if (paramString7.length() > 64) {
                        throw new IllegalArgumentException("String 'contentHash' is longer than 64");
                      }
                    }
                    else {
                      throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
                    }
                  }
                  contentHash = paramString7;
                  return;
                }
                throw new IllegalArgumentException("String 'rev' does not match pattern");
              }
              throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            throw new IllegalArgumentException("Required value for 'rev' is null");
          }
          throw new IllegalArgumentException("Required value for 'serverModified' is null");
        }
        throw new IllegalArgumentException("Required value for 'clientModified' is null");
      }
      throw new IllegalArgumentException("String 'id' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'id' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, Date paramDate1, Date paramDate2, String paramString3, long paramLong)
  {
    return new Builder(paramString1, paramString2, paramDate1, paramDate2, paramString3, paramLong);
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
      paramObject = (FileMetadata)paramObject;
      if (((name == name) || (name.equals(name))) && ((id == id) || (id.equals(id))) && ((clientModified == clientModified) || (clientModified.equals(clientModified))) && ((serverModified == serverModified) || (serverModified.equals(serverModified))) && ((rev == rev) || (rev.equals(rev))) && (size == size) && ((pathLower == pathLower) || ((pathLower != null) && (pathLower.equals(pathLower)))) && ((pathDisplay == pathDisplay) || ((pathDisplay != null) && (pathDisplay.equals(pathDisplay)))) && ((parentSharedFolderId == parentSharedFolderId) || ((parentSharedFolderId != null) && (parentSharedFolderId.equals(parentSharedFolderId)))) && ((mediaInfo == mediaInfo) || ((mediaInfo != null) && (mediaInfo.equals(mediaInfo)))) && ((symlinkInfo == symlinkInfo) || ((symlinkInfo != null) && (symlinkInfo.equals(symlinkInfo)))) && ((sharingInfo == sharingInfo) || ((sharingInfo != null) && (sharingInfo.equals(sharingInfo)))) && ((propertyGroups == propertyGroups) || ((propertyGroups != null) && (propertyGroups.equals(propertyGroups)))) && ((hasExplicitSharedMembers == hasExplicitSharedMembers) || ((hasExplicitSharedMembers != null) && (hasExplicitSharedMembers.equals(hasExplicitSharedMembers)))))
      {
        if (contentHash == contentHash) {
          break label465;
        }
        if ((contentHash != null) && (contentHash.equals(contentHash))) {
          return true;
        }
      }
      bool = false;
      label465:
      return bool;
    }
    return false;
  }
  
  public Date getClientModified()
  {
    return clientModified;
  }
  
  public String getContentHash()
  {
    return contentHash;
  }
  
  public Boolean getHasExplicitSharedMembers()
  {
    return hasExplicitSharedMembers;
  }
  
  public String getId()
  {
    return id;
  }
  
  public MediaInfo getMediaInfo()
  {
    return mediaInfo;
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
  
  public String getRev()
  {
    return rev;
  }
  
  public Date getServerModified()
  {
    return serverModified;
  }
  
  public FileSharingInfo getSharingInfo()
  {
    return sharingInfo;
  }
  
  public long getSize()
  {
    return size;
  }
  
  public SymlinkInfo getSymlinkInfo()
  {
    return symlinkInfo;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { id, clientModified, serverModified, rev, Long.valueOf(size), mediaInfo, symlinkInfo, sharingInfo, propertyGroups, hasExplicitSharedMembers, contentHash });
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
    protected final Date clientModified;
    protected String contentHash;
    protected Boolean hasExplicitSharedMembers;
    protected final String id;
    protected MediaInfo mediaInfo;
    protected List<PropertyGroup> propertyGroups;
    protected final String rev;
    protected final Date serverModified;
    protected FileSharingInfo sharingInfo;
    protected final long size;
    protected SymlinkInfo symlinkInfo;
    
    protected Builder(String paramString1, String paramString2, Date paramDate1, Date paramDate2, String paramString3, long paramLong)
    {
      super();
      if (paramString2 != null)
      {
        if (paramString2.length() >= 1)
        {
          id = paramString2;
          if (paramDate1 != null)
          {
            clientModified = LangUtil.truncateMillis(paramDate1);
            if (paramDate2 != null)
            {
              serverModified = LangUtil.truncateMillis(paramDate2);
              if (paramString3 != null)
              {
                if (paramString3.length() >= 9)
                {
                  if (Pattern.matches("[0-9a-f]+", paramString3))
                  {
                    rev = paramString3;
                    size = paramLong;
                    mediaInfo = null;
                    symlinkInfo = null;
                    sharingInfo = null;
                    propertyGroups = null;
                    hasExplicitSharedMembers = null;
                    contentHash = null;
                    return;
                  }
                  throw new IllegalArgumentException("String 'rev' does not match pattern");
                }
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
              }
              throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            throw new IllegalArgumentException("Required value for 'serverModified' is null");
          }
          throw new IllegalArgumentException("Required value for 'clientModified' is null");
        }
        throw new IllegalArgumentException("String 'id' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'id' is null");
    }
    
    public FileMetadata build()
    {
      return new FileMetadata(name, id, clientModified, serverModified, rev, size, pathLower, pathDisplay, parentSharedFolderId, mediaInfo, symlinkInfo, sharingInfo, propertyGroups, hasExplicitSharedMembers, contentHash);
    }
    
    public Builder withContentHash(String paramString)
    {
      if (paramString != null) {
        if (paramString.length() >= 64)
        {
          if (paramString.length() > 64) {
            throw new IllegalArgumentException("String 'contentHash' is longer than 64");
          }
        }
        else {
          throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
        }
      }
      contentHash = paramString;
      return this;
    }
    
    public Builder withHasExplicitSharedMembers(Boolean paramBoolean)
    {
      hasExplicitSharedMembers = paramBoolean;
      return this;
    }
    
    public Builder withMediaInfo(MediaInfo paramMediaInfo)
    {
      mediaInfo = paramMediaInfo;
      return this;
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
    
    public Builder withSharingInfo(FileSharingInfo paramFileSharingInfo)
    {
      sharingInfo = paramFileSharingInfo;
      return this;
    }
    
    public Builder withSymlinkInfo(SymlinkInfo paramSymlinkInfo)
    {
      symlinkInfo = paramSymlinkInfo;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<FileMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Long localLong = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject2 = readTag(paramJsonParser);
        localObject1 = localObject2;
        if (!"file".equals(localObject2)) {}
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
        Object localObject8 = localObject7;
        Object localObject9 = localObject8;
        Object localObject10 = localObject9;
        Object localObject11 = localObject10;
        Object localObject12 = localObject11;
        Object localObject13 = localObject12;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("name".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("id".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("client_modified".equals(str2)) {
            localObject2 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else if ("server_modified".equals(str2)) {
            localObject3 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else if ("rev".equals(str2)) {
            localObject4 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("size".equals(str2)) {
            localLong = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else if ("path_lower".equals(str2)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("path_display".equals(str2)) {
            localObject6 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str2)) {
            localObject7 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("media_info".equals(str2)) {
            localObject8 = (MediaInfo)StoneSerializers.nullable(MediaInfo.a.a).deserialize(paramJsonParser);
          } else if ("symlink_info".equals(str2)) {
            localObject9 = (SymlinkInfo)StoneSerializers.nullableStruct(SymlinkInfo.a.a).deserialize(paramJsonParser);
          } else if ("sharing_info".equals(str2)) {
            localObject10 = (FileSharingInfo)StoneSerializers.nullableStruct(FileSharingInfo.a.a).deserialize(paramJsonParser);
          } else if ("property_groups".equals(str2)) {
            localObject11 = (List)StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).deserialize(paramJsonParser);
          } else if ("has_explicit_shared_members".equals(str2)) {
            localObject12 = (Boolean)StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(paramJsonParser);
          } else if ("content_hash".equals(str2)) {
            localObject13 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              if (localObject3 != null)
              {
                if (localObject4 != null)
                {
                  if (localLong != null)
                  {
                    localObject1 = new FileMetadata(str1, (String)localObject1, (Date)localObject2, (Date)localObject3, (String)localObject4, localLong.longValue(), (String)localObject5, (String)localObject6, (String)localObject7, (MediaInfo)localObject8, (SymlinkInfo)localObject9, (FileSharingInfo)localObject10, (List)localObject11, (Boolean)localObject12, (String)localObject13);
                    if (!paramBoolean) {
                      expectEndObject(paramJsonParser);
                    }
                    return localObject1;
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"size\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"rev\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"server_modified\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"client_modified\" missing.");
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
    
    public void a(FileMetadata paramFileMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      writeTag("file", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("id");
      StoneSerializers.string().serialize(id, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("client_modified");
      StoneSerializers.timestamp().serialize(clientModified, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("server_modified");
      StoneSerializers.timestamp().serialize(serverModified, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("rev");
      StoneSerializers.string().serialize(rev, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("size");
      StoneSerializers.uInt64().serialize(Long.valueOf(size), paramJsonGenerator);
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
      if (mediaInfo != null)
      {
        paramJsonGenerator.writeFieldName("media_info");
        StoneSerializers.nullable(MediaInfo.a.a).serialize(mediaInfo, paramJsonGenerator);
      }
      if (symlinkInfo != null)
      {
        paramJsonGenerator.writeFieldName("symlink_info");
        StoneSerializers.nullableStruct(SymlinkInfo.a.a).serialize(symlinkInfo, paramJsonGenerator);
      }
      if (sharingInfo != null)
      {
        paramJsonGenerator.writeFieldName("sharing_info");
        StoneSerializers.nullableStruct(FileSharingInfo.a.a).serialize(sharingInfo, paramJsonGenerator);
      }
      if (propertyGroups != null)
      {
        paramJsonGenerator.writeFieldName("property_groups");
        StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize(propertyGroups, paramJsonGenerator);
      }
      if (hasExplicitSharedMembers != null)
      {
        paramJsonGenerator.writeFieldName("has_explicit_shared_members");
        StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(hasExplicitSharedMembers, paramJsonGenerator);
      }
      if (contentHash != null)
      {
        paramJsonGenerator.writeFieldName("content_hash");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(contentHash, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
