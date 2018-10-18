package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.Team;
import com.dropbox.core.v2.users.Team.Serializer;
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

public class SharedFolderMetadataBase
{
  protected final AccessLevel accessType;
  protected final boolean isInsideTeamFolder;
  protected final boolean isTeamFolder;
  protected final List<String> ownerDisplayNames;
  protected final Team ownerTeam;
  protected final String parentSharedFolderId;
  protected final String pathLower;
  
  public SharedFolderMetadataBase(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramAccessLevel, paramBoolean1, paramBoolean2, null, null, null, null);
  }
  
  public SharedFolderMetadataBase(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2, List<String> paramList, Team paramTeam, String paramString1, String paramString2)
  {
    if (paramAccessLevel != null)
    {
      accessType = paramAccessLevel;
      isInsideTeamFolder = paramBoolean1;
      isTeamFolder = paramBoolean2;
      if (paramList != null)
      {
        paramAccessLevel = paramList.iterator();
        while (paramAccessLevel.hasNext()) {
          if ((String)paramAccessLevel.next() == null) {
            throw new IllegalArgumentException("An item in list 'ownerDisplayNames' is null");
          }
        }
      }
      ownerDisplayNames = paramList;
      ownerTeam = paramTeam;
      if ((paramString1 != null) && (!Pattern.matches("[-_0-9a-zA-Z:]+", paramString1))) {
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
      }
      parentSharedFolderId = paramString1;
      pathLower = paramString2;
      return;
    }
    throw new IllegalArgumentException("Required value for 'accessType' is null");
  }
  
  public static Builder newBuilder(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new Builder(paramAccessLevel, paramBoolean1, paramBoolean2);
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
      paramObject = (SharedFolderMetadataBase)paramObject;
      if (((accessType == accessType) || (accessType.equals(accessType))) && (isInsideTeamFolder == isInsideTeamFolder) && (isTeamFolder == isTeamFolder) && ((ownerDisplayNames == ownerDisplayNames) || ((ownerDisplayNames != null) && (ownerDisplayNames.equals(ownerDisplayNames)))) && ((ownerTeam == ownerTeam) || ((ownerTeam != null) && (ownerTeam.equals(ownerTeam)))) && ((parentSharedFolderId == parentSharedFolderId) || ((parentSharedFolderId != null) && (parentSharedFolderId.equals(parentSharedFolderId)))))
      {
        if (pathLower == pathLower) {
          break label215;
        }
        if ((pathLower != null) && (pathLower.equals(pathLower))) {
          return true;
        }
      }
      bool = false;
      label215:
      return bool;
    }
    return false;
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
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { accessType, Boolean.valueOf(isInsideTeamFolder), Boolean.valueOf(isTeamFolder), ownerDisplayNames, ownerTeam, parentSharedFolderId, pathLower });
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
    protected final AccessLevel accessType;
    protected final boolean isInsideTeamFolder;
    protected final boolean isTeamFolder;
    protected List<String> ownerDisplayNames;
    protected Team ownerTeam;
    protected String parentSharedFolderId;
    protected String pathLower;
    
    protected Builder(AccessLevel paramAccessLevel, boolean paramBoolean1, boolean paramBoolean2)
    {
      if (paramAccessLevel != null)
      {
        accessType = paramAccessLevel;
        isInsideTeamFolder = paramBoolean1;
        isTeamFolder = paramBoolean2;
        ownerDisplayNames = null;
        ownerTeam = null;
        parentSharedFolderId = null;
        pathLower = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'accessType' is null");
    }
    
    public SharedFolderMetadataBase build()
    {
      return new SharedFolderMetadataBase(accessType, isInsideTeamFolder, isTeamFolder, ownerDisplayNames, ownerTeam, parentSharedFolderId, pathLower);
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
    
    public Builder withPathLower(String paramString)
    {
      pathLower = paramString;
      return this;
    }
  }
  
  private static class a
    extends StructSerializer<SharedFolderMetadataBase>
  {
    public static final a a = new a();
    
    private a() {}
    
    public SharedFolderMetadataBase a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean2 = null;
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
        Boolean localBoolean1 = null;
        localObject1 = localBoolean1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("access_type".equals(str)) {
            localObject1 = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("is_inside_team_folder".equals(str)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("is_team_folder".equals(str)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("owner_display_names".equals(str)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(paramJsonParser);
          } else if ("owner_team".equals(str)) {
            localObject3 = (Team)StoneSerializers.nullableStruct(Team.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("parent_shared_folder_id".equals(str)) {
            localObject4 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("path_lower".equals(str)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          if (localBoolean2 != null)
          {
            if (localBoolean1 != null)
            {
              localObject1 = new SharedFolderMetadataBase((AccessLevel)localObject1, localBoolean2.booleanValue(), localBoolean1.booleanValue(), (List)localObject2, (Team)localObject3, (String)localObject4, (String)localObject5);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
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
    
    public void a(SharedFolderMetadataBase paramSharedFolderMetadataBase, JsonGenerator paramJsonGenerator, boolean paramBoolean)
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
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
