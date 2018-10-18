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

public class SharedFolderMetadata
  extends SharedFolderMetadataBase
{
  protected final AccessInheritance accessInheritance;
  protected final SharedContentLinkMetadata linkMetadata;
  protected final String name;
  protected final List<FolderPermission> permissions;
  protected final FolderPolicy policy;
  protected final String previewUrl;
  protected final String sharedFolderId;
  protected final Date timeInvited;
  
  public SharedFolderMetadata(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2, String paramString1, FolderPolicy paramFolderPolicy, String paramString2, String paramString3, Date paramDate)
  {
    this(paramAccessLevel, paramBoolean1, paramBoolean2, paramString1, paramFolderPolicy, paramString2, paramString3, paramDate, null, null, null, null, null, null, AccessInheritance.INHERIT);
  }
  
  public SharedFolderMetadata(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2, String paramString1, FolderPolicy paramFolderPolicy, String paramString2, String paramString3, Date paramDate, List<String> paramList, Team paramTeam, String paramString4, String paramString5, SharedContentLinkMetadata paramSharedContentLinkMetadata, List<FolderPermission> paramList1, AccessInheritance paramAccessInheritance)
  {
    super(paramAccessLevel, paramBoolean1, paramBoolean2, paramList, paramTeam, paramString4, paramString5);
    linkMetadata = paramSharedContentLinkMetadata;
    if (paramString1 != null)
    {
      name = paramString1;
      if (paramList1 != null)
      {
        paramAccessLevel = paramList1.iterator();
        while (paramAccessLevel.hasNext()) {
          if ((FolderPermission)paramAccessLevel.next() == null) {
            throw new IllegalArgumentException("An item in list 'permissions' is null");
          }
        }
      }
      permissions = paramList1;
      if (paramFolderPolicy != null)
      {
        policy = paramFolderPolicy;
        if (paramString2 != null)
        {
          previewUrl = paramString2;
          if (paramString3 != null)
          {
            if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString3))
            {
              sharedFolderId = paramString3;
              if (paramDate != null)
              {
                timeInvited = LangUtil.truncateMillis(paramDate);
                if (paramAccessInheritance != null)
                {
                  accessInheritance = paramAccessInheritance;
                  return;
                }
                throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
              }
              throw new IllegalArgumentException("Required value for 'timeInvited' is null");
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
          }
          throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        throw new IllegalArgumentException("Required value for 'previewUrl' is null");
      }
      throw new IllegalArgumentException("Required value for 'policy' is null");
    }
    throw new IllegalArgumentException("Required value for 'name' is null");
  }
  
  public static Builder newBuilder(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2, String paramString1, FolderPolicy paramFolderPolicy, String paramString2, String paramString3, Date paramDate)
  {
    return new Builder(paramAccessLevel, paramBoolean1, paramBoolean2, paramString1, paramFolderPolicy, paramString2, paramString3, paramDate);
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
      paramObject = (SharedFolderMetadata)paramObject;
      if (((accessType == accessType) || (accessType.equals(accessType))) && (isInsideTeamFolder == isInsideTeamFolder) && (isTeamFolder == isTeamFolder) && ((name == name) || (name.equals(name))) && ((policy == policy) || (policy.equals(policy))) && ((previewUrl == previewUrl) || (previewUrl.equals(previewUrl))) && ((sharedFolderId == sharedFolderId) || (sharedFolderId.equals(sharedFolderId))) && ((timeInvited == timeInvited) || (timeInvited.equals(timeInvited))) && ((ownerDisplayNames == ownerDisplayNames) || ((ownerDisplayNames != null) && (ownerDisplayNames.equals(ownerDisplayNames)))) && ((ownerTeam == ownerTeam) || ((ownerTeam != null) && (ownerTeam.equals(ownerTeam)))) && ((parentSharedFolderId == parentSharedFolderId) || ((parentSharedFolderId != null) && (parentSharedFolderId.equals(parentSharedFolderId)))) && ((pathLower == pathLower) || ((pathLower != null) && (pathLower.equals(pathLower)))) && ((linkMetadata == linkMetadata) || ((linkMetadata != null) && (linkMetadata.equals(linkMetadata)))) && ((permissions == permissions) || ((permissions != null) && (permissions.equals(permissions)))))
      {
        if (accessInheritance == accessInheritance) {
          break label431;
        }
        if (accessInheritance.equals(accessInheritance)) {
          return true;
        }
      }
      bool = false;
      label431:
      return bool;
    }
    return false;
  }
  
  public AccessInheritance getAccessInheritance()
  {
    return accessInheritance;
  }
  
  public AccessLevel getAccessType()
  {
    return accessType;
  }
  
  public boolean getIsInsideTeamFolder()
  {
    return isInsideTeamFolder;
  }
  
  public boolean getIsTeamFolder()
  {
    return isTeamFolder;
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
  
  public String getPathLower()
  {
    return pathLower;
  }
  
  public List<FolderPermission> getPermissions()
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
  
  public String getSharedFolderId()
  {
    return sharedFolderId;
  }
  
  public Date getTimeInvited()
  {
    return timeInvited;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { linkMetadata, name, permissions, policy, previewUrl, sharedFolderId, timeInvited, accessInheritance });
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
    extends SharedFolderMetadataBase.Builder
  {
    protected AccessInheritance accessInheritance;
    protected SharedContentLinkMetadata linkMetadata;
    protected final String name;
    protected List<FolderPermission> permissions;
    protected final FolderPolicy policy;
    protected final String previewUrl;
    protected final String sharedFolderId;
    protected final Date timeInvited;
    
    protected Builder(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2, String paramString1, FolderPolicy paramFolderPolicy, String paramString2, String paramString3, Date paramDate)
    {
      super(paramBoolean1, paramBoolean2);
      if (paramString1 != null)
      {
        name = paramString1;
        if (paramFolderPolicy != null)
        {
          policy = paramFolderPolicy;
          if (paramString2 != null)
          {
            previewUrl = paramString2;
            if (paramString3 != null)
            {
              if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString3))
              {
                sharedFolderId = paramString3;
                if (paramDate != null)
                {
                  timeInvited = LangUtil.truncateMillis(paramDate);
                  linkMetadata = null;
                  permissions = null;
                  accessInheritance = AccessInheritance.INHERIT;
                  return;
                }
                throw new IllegalArgumentException("Required value for 'timeInvited' is null");
              }
              throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
          }
          throw new IllegalArgumentException("Required value for 'previewUrl' is null");
        }
        throw new IllegalArgumentException("Required value for 'policy' is null");
      }
      throw new IllegalArgumentException("Required value for 'name' is null");
    }
    
    public SharedFolderMetadata build()
    {
      return new SharedFolderMetadata(accessType, isInsideTeamFolder, isTeamFolder, name, policy, previewUrl, sharedFolderId, timeInvited, ownerDisplayNames, ownerTeam, parentSharedFolderId, pathLower, linkMetadata, permissions, accessInheritance);
    }
    
    public Builder withAccessInheritance(AccessInheritance paramAccessInheritance)
    {
      if (paramAccessInheritance != null)
      {
        accessInheritance = paramAccessInheritance;
        return this;
      }
      accessInheritance = AccessInheritance.INHERIT;
      return this;
    }
    
    public Builder withLinkMetadata(SharedContentLinkMetadata paramSharedContentLinkMetadata)
    {
      linkMetadata = paramSharedContentLinkMetadata;
      return this;
    }
    
    public Builder withOwnerDisplayNames(List<String> paramList)
    {
      super.withOwnerDisplayNames(paramList);
      return this;
    }
    
    public Builder withOwnerTeam(Team paramTeam)
    {
      super.withOwnerTeam(paramTeam);
      return this;
    }
    
    public Builder withParentSharedFolderId(String paramString)
    {
      super.withParentSharedFolderId(paramString);
      return this;
    }
    
    public Builder withPathLower(String paramString)
    {
      super.withPathLower(paramString);
      return this;
    }
    
    public Builder withPermissions(List<FolderPermission> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((FolderPermission)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'permissions' is null");
          }
        }
      }
      permissions = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<SharedFolderMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedFolderMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
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
        AccessInheritance localAccessInheritance = AccessInheritance.INHERIT;
        AccessLevel localAccessLevel = null;
        localObject1 = localAccessLevel;
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
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("access_type".equals(str)) {
            localAccessLevel = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("is_inside_team_folder".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("is_team_folder".equals(str)) {
            localObject12 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("name".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("policy".equals(str)) {
            localObject2 = (FolderPolicy)FolderPolicy.a.a.deserialize(paramJsonParser);
          } else if ("preview_url".equals(str)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("shared_folder_id".equals(str)) {
            localObject4 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("time_invited".equals(str)) {
            localObject5 = (Date)StoneSerializers.timestamp().deserialize(paramJsonParser);
          } else if ("owner_display_names".equals(str)) {
            localObject6 = (List)StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(paramJsonParser);
          } else if ("owner_team".equals(str)) {
            localObject7 = (Team)StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str)) {
            localObject8 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("path_lower".equals(str)) {
            localObject9 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("link_metadata".equals(str)) {
            localObject10 = (SharedContentLinkMetadata)StoneSerializers.nullableStruct(SharedContentLinkMetadata.a.a).deserialize(paramJsonParser);
          } else if ("permissions".equals(str)) {
            localObject11 = (List)StoneSerializers.nullable(StoneSerializers.list(FolderPermission.a.a)).deserialize(paramJsonParser);
          } else if ("access_inheritance".equals(str)) {
            localAccessInheritance = AccessInheritance.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localAccessLevel != null)
        {
          if (localBoolean != null)
          {
            if (localObject12 != null)
            {
              if (localObject1 != null)
              {
                if (localObject2 != null)
                {
                  if (localObject3 != null)
                  {
                    if (localObject4 != null)
                    {
                      if (localObject5 != null)
                      {
                        localObject1 = new SharedFolderMetadata(localAccessLevel, localBoolean.booleanValue(), ((Boolean)localObject12).booleanValue(), (String)localObject1, (FolderPolicy)localObject2, (String)localObject3, (String)localObject4, (Date)localObject5, (List)localObject6, (Team)localObject7, (String)localObject8, (String)localObject9, (SharedContentLinkMetadata)localObject10, (List)localObject11, localAccessInheritance);
                        if (!paramBoolean) {
                          expectEndObject(paramJsonParser);
                        }
                        return localObject1;
                      }
                      throw new JsonParseException(paramJsonParser, "Required field \"time_invited\" missing.");
                    }
                    throw new JsonParseException(paramJsonParser, "Required field \"shared_folder_id\" missing.");
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"preview_url\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"policy\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"is_team_folder\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"is_inside_team_folder\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"access_type\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SharedFolderMetadata paramSharedFolderMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("access_type");
      AccessLevel.Serializer.INSTANCE.serialize(accessType, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_inside_team_folder");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isInsideTeamFolder), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_team_folder");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isTeamFolder), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("policy");
      FolderPolicy.a.a.serialize(policy, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("preview_url");
      StoneSerializers.string().serialize(previewUrl, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_folder_id");
      StoneSerializers.string().serialize(sharedFolderId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("time_invited");
      StoneSerializers.timestamp().serialize(timeInvited, paramJsonGenerator);
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
      if (pathLower != null)
      {
        paramJsonGenerator.writeFieldName("path_lower");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(pathLower, paramJsonGenerator);
      }
      if (linkMetadata != null)
      {
        paramJsonGenerator.writeFieldName("link_metadata");
        StoneSerializers.nullableStruct(SharedContentLinkMetadata.a.a).serialize(linkMetadata, paramJsonGenerator);
      }
      if (permissions != null)
      {
        paramJsonGenerator.writeFieldName("permissions");
        StoneSerializers.nullable(StoneSerializers.list(FolderPermission.a.a)).serialize(permissions, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("access_inheritance");
      AccessInheritance.a.a.a(accessInheritance, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
