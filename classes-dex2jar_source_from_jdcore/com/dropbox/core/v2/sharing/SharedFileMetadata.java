package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.users.Team;
import com.dropbox.core.v2.users.Team.Serializer;
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

public class SharedFileMetadata
{
  protected final AccessLevel accessType;
  protected final ExpectedSharedContentLinkMetadata expectedLinkMetadata;
  protected final String id;
  protected final SharedContentLinkMetadata linkMetadata;
  protected final String name;
  protected final List<String> ownerDisplayNames;
  protected final Team ownerTeam;
  protected final String parentSharedFolderId;
  protected final String pathDisplay;
  protected final String pathLower;
  protected final List<FilePermission> permissions;
  protected final FolderPolicy policy;
  protected final String previewUrl;
  protected final Date timeInvited;
  
  public SharedFileMetadata(String paramString1, String paramString2, FolderPolicy paramFolderPolicy, String paramString3)
  {
    this(paramString1, paramString2, paramFolderPolicy, paramString3, null, null, null, null, null, null, null, null, null, null);
  }
  
  public SharedFileMetadata(String paramString1, String paramString2, FolderPolicy paramFolderPolicy, String paramString3, AccessLevel paramAccessLevel, ExpectedSharedContentLinkMetadata paramExpectedSharedContentLinkMetadata, SharedContentLinkMetadata paramSharedContentLinkMetadata, List<String> paramList, Team paramTeam, String paramString4, String paramString5, String paramString6, List<FilePermission> paramList1, Date paramDate)
  {
    accessType = paramAccessLevel;
    if (paramString1 != null)
    {
      if (paramString1.length() >= 4)
      {
        if (Pattern.matches("id:.+", paramString1))
        {
          id = paramString1;
          expectedLinkMetadata = paramExpectedSharedContentLinkMetadata;
          linkMetadata = paramSharedContentLinkMetadata;
          if (paramString2 != null)
          {
            name = paramString2;
            if (paramList != null)
            {
              paramString1 = paramList.iterator();
              while (paramString1.hasNext()) {
                if ((String)paramString1.next() == null) {
                  throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
                }
              }
            }
            ownerDisplayNames = paramList;
            ownerTeam = paramTeam;
            if ((paramString4 != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString4))) {
              throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            parentSharedFolderId = paramString4;
            pathDisplay = paramString5;
            pathLower = paramString6;
            if (paramList1 != null)
            {
              paramString1 = paramList1.iterator();
              while (paramString1.hasNext()) {
                if ((FilePermission)paramString1.next() == null) {
                  throw new IllegalArgumentException("An item in list 'permissions' is null");
                }
              }
            }
            permissions = paramList1;
            if (paramFolderPolicy != null)
            {
              policy = paramFolderPolicy;
              if (paramString3 != null)
              {
                previewUrl = paramString3;
                timeInvited = LangUtil.truncateMillis(paramDate);
                return;
              }
              throw new IllegalArgumentException("Required value for 'previewUrl' is null");
            }
            throw new IllegalArgumentException("Required value for 'policy' is null");
          }
          throw new IllegalArgumentException("Required value for 'name' is null");
        }
        throw new IllegalArgumentException("String 'id' does not match pattern");
      }
      throw new IllegalArgumentException("String 'id' is shorter than 4");
    }
    throw new IllegalArgumentException("Required value for 'id' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, FolderPolicy paramFolderPolicy, String paramString3)
  {
    return new Builder(paramString1, paramString2, paramFolderPolicy, paramString3);
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
      paramObject = (SharedFileMetadata)paramObject;
      if (((id == id) || (id.equals(id))) && ((name == name) || (name.equals(name))) && ((policy == policy) || (policy.equals(policy))) && ((previewUrl == previewUrl) || (previewUrl.equals(previewUrl))) && ((accessType == accessType) || ((accessType != null) && (accessType.equals(accessType)))) && ((expectedLinkMetadata == expectedLinkMetadata) || ((expectedLinkMetadata != null) && (expectedLinkMetadata.equals(expectedLinkMetadata)))) && ((linkMetadata == linkMetadata) || ((linkMetadata != null) && (linkMetadata.equals(linkMetadata)))) && ((ownerDisplayNames == ownerDisplayNames) || ((ownerDisplayNames != null) && (ownerDisplayNames.equals(ownerDisplayNames)))) && ((ownerTeam == ownerTeam) || ((ownerTeam != null) && (ownerTeam.equals(ownerTeam)))) && ((parentSharedFolderId == parentSharedFolderId) || ((parentSharedFolderId != null) && (parentSharedFolderId.equals(parentSharedFolderId)))) && ((pathDisplay == pathDisplay) || ((pathDisplay != null) && (pathDisplay.equals(pathDisplay)))) && ((pathLower == pathLower) || ((pathLower != null) && (pathLower.equals(pathLower)))) && ((permissions == permissions) || ((permissions != null) && (permissions.equals(permissions)))))
      {
        if (timeInvited == timeInvited) {
          break label462;
        }
        if ((timeInvited != null) && (timeInvited.equals(timeInvited))) {
          return true;
        }
      }
      bool = false;
      label462:
      return bool;
    }
    return false;
  }
  
  public AccessLevel getAccessType()
  {
    return accessType;
  }
  
  public ExpectedSharedContentLinkMetadata getExpectedLinkMetadata()
  {
    return expectedLinkMetadata;
  }
  
  public String getId()
  {
    return id;
  }
  
  public SharedContentLinkMetadata getLinkMetadata()
  {
    return linkMetadata;
  }
  
  public String getName()
  {
    return name;
  }
  
  public List<String> getOwnerDisplayNames()
  {
    return ownerDisplayNames;
  }
  
  public Team getOwnerTeam()
  {
    return ownerTeam;
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
  
  public List<FilePermission> getPermissions()
  {
    return permissions;
  }
  
  public FolderPolicy getPolicy()
  {
    return policy;
  }
  
  public String getPreviewUrl()
  {
    return previewUrl;
  }
  
  public Date getTimeInvited()
  {
    return timeInvited;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { accessType, id, expectedLinkMetadata, linkMetadata, name, ownerDisplayNames, ownerTeam, parentSharedFolderId, pathDisplay, pathLower, permissions, policy, previewUrl, timeInvited });
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
    protected AccessLevel accessType;
    protected ExpectedSharedContentLinkMetadata expectedLinkMetadata;
    protected final String id;
    protected SharedContentLinkMetadata linkMetadata;
    protected final String name;
    protected List<String> ownerDisplayNames;
    protected Team ownerTeam;
    protected String parentSharedFolderId;
    protected String pathDisplay;
    protected String pathLower;
    protected List<FilePermission> permissions;
    protected final FolderPolicy policy;
    protected final String previewUrl;
    protected Date timeInvited;
    
    protected Builder(String paramString1, String paramString2, FolderPolicy paramFolderPolicy, String paramString3)
    {
      if (paramString1 != null)
      {
        if (paramString1.length() >= 4)
        {
          if (Pattern.matches("id:.+", paramString1))
          {
            id = paramString1;
            if (paramString2 != null)
            {
              name = paramString2;
              if (paramFolderPolicy != null)
              {
                policy = paramFolderPolicy;
                if (paramString3 != null)
                {
                  previewUrl = paramString3;
                  accessType = null;
                  expectedLinkMetadata = null;
                  linkMetadata = null;
                  ownerDisplayNames = null;
                  ownerTeam = null;
                  parentSharedFolderId = null;
                  pathDisplay = null;
                  pathLower = null;
                  permissions = null;
                  timeInvited = null;
                  return;
                }
                throw new IllegalArgumentException("Required value for 'previewUrl' is null");
              }
              throw new IllegalArgumentException("Required value for 'policy' is null");
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
          }
          throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        throw new IllegalArgumentException("String 'id' is shorter than 4");
      }
      throw new IllegalArgumentException("Required value for 'id' is null");
    }
    
    public SharedFileMetadata build()
    {
      return new SharedFileMetadata(id, name, policy, previewUrl, accessType, expectedLinkMetadata, linkMetadata, ownerDisplayNames, ownerTeam, parentSharedFolderId, pathDisplay, pathLower, permissions, timeInvited);
    }
    
    public Builder withAccessType(AccessLevel paramAccessLevel)
    {
      accessType = paramAccessLevel;
      return this;
    }
    
    public Builder withExpectedLinkMetadata(ExpectedSharedContentLinkMetadata paramExpectedSharedContentLinkMetadata)
    {
      expectedLinkMetadata = paramExpectedSharedContentLinkMetadata;
      return this;
    }
    
    public Builder withLinkMetadata(SharedContentLinkMetadata paramSharedContentLinkMetadata)
    {
      linkMetadata = paramSharedContentLinkMetadata;
      return this;
    }
    
    public Builder withOwnerDisplayNames(List<String> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((String)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
          }
        }
      }
      ownerDisplayNames = paramList;
      return this;
    }
    
    public Builder withOwnerTeam(Team paramTeam)
    {
      ownerTeam = paramTeam;
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
    
    public Builder withPermissions(List<FilePermission> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((FilePermission)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'permissions' is null");
          }
        }
      }
      permissions = paramList;
      return this;
    }
    
    public Builder withTimeInvited(Date paramDate)
    {
      timeInvited = LangUtil.truncateMillis(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<SharedFileMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedFileMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
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
          if ("id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("name".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("policy".equals(str2)) {
            localObject2 = (FolderPolicy)FolderPolicy.a.a.deserialize(paramJsonParser);
          } else if ("preview_url".equals(str2)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("access_type".equals(str2)) {
            localObject4 = (AccessLevel)StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("expected_link_metadata".equals(str2)) {
            localObject5 = (ExpectedSharedContentLinkMetadata)StoneSerializers.nullableStruct(ExpectedSharedContentLinkMetadata.a.a).deserialize(paramJsonParser);
          } else if ("link_metadata".equals(str2)) {
            localObject6 = (SharedContentLinkMetadata)StoneSerializers.nullableStruct(SharedContentLinkMetadata.a.a).deserialize(paramJsonParser);
          } else if ("owner_display_names".equals(str2)) {
            localObject7 = (List)StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(paramJsonParser);
          } else if ("owner_team".equals(str2)) {
            localObject8 = (Team)StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str2)) {
            localObject9 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("path_display".equals(str2)) {
            localObject10 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("path_lower".equals(str2)) {
            localObject11 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("permissions".equals(str2)) {
            localObject12 = (List)StoneSerializers.nullable(StoneSerializers.list(FilePermission.a.a)).deserialize(paramJsonParser);
          } else if ("time_invited".equals(str2)) {
            localObject13 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
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
                localObject1 = new SharedFileMetadata(str1, (String)localObject1, (FolderPolicy)localObject2, (String)localObject3, (AccessLevel)localObject4, (ExpectedSharedContentLinkMetadata)localObject5, (SharedContentLinkMetadata)localObject6, (List)localObject7, (Team)localObject8, (String)localObject9, (String)localObject10, (String)localObject11, (List)localObject12, (Date)localObject13);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"preview_url\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"policy\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SharedFileMetadata paramSharedFileMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("id");
      StoneSerializers.string().serialize(id, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("policy");
      FolderPolicy.a.a.serialize(policy, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("preview_url");
      StoneSerializers.string().serialize(previewUrl, paramJsonGenerator);
      if (accessType != null)
      {
        paramJsonGenerator.writeFieldName("access_type");
        StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(accessType, paramJsonGenerator);
      }
      if (expectedLinkMetadata != null)
      {
        paramJsonGenerator.writeFieldName("expected_link_metadata");
        StoneSerializers.nullableStruct(ExpectedSharedContentLinkMetadata.a.a).serialize(expectedLinkMetadata, paramJsonGenerator);
      }
      if (linkMetadata != null)
      {
        paramJsonGenerator.writeFieldName("link_metadata");
        StoneSerializers.nullableStruct(SharedContentLinkMetadata.a.a).serialize(linkMetadata, paramJsonGenerator);
      }
      if (ownerDisplayNames != null)
      {
        paramJsonGenerator.writeFieldName("owner_display_names");
        StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(ownerDisplayNames, paramJsonGenerator);
      }
      if (ownerTeam != null)
      {
        paramJsonGenerator.writeFieldName("owner_team");
        StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).serialize(ownerTeam, paramJsonGenerator);
      }
      if (parentSharedFolderId != null)
      {
        paramJsonGenerator.writeFieldName("parent_shared_folder_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(parentSharedFolderId, paramJsonGenerator);
      }
      if (pathDisplay != null)
      {
        paramJsonGenerator.writeFieldName("path_display");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(pathDisplay, paramJsonGenerator);
      }
      if (pathLower != null)
      {
        paramJsonGenerator.writeFieldName("path_lower");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(pathLower, paramJsonGenerator);
      }
      if (permissions != null)
      {
        paramJsonGenerator.writeFieldName("permissions");
        StoneSerializers.nullable(StoneSerializers.list(FilePermission.a.a)).serialize(permissions, paramJsonGenerator);
      }
      if (timeInvited != null)
      {
        paramJsonGenerator.writeFieldName("time_invited");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(timeInvited, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
