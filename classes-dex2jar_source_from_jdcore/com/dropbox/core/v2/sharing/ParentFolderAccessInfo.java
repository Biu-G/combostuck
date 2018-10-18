package com.dropbox.core.v2.sharing;

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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class ParentFolderAccessInfo
{
  protected final String folderName;
  protected final String path;
  protected final List<MemberPermission> permissions;
  protected final String sharedFolderId;
  
  public ParentFolderAccessInfo(String paramString1, String paramString2, List<MemberPermission> paramList, String paramString3)
  {
    if (paramString1 != null)
    {
      folderName = paramString1;
      if (paramString2 != null)
      {
        if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString2))
        {
          sharedFolderId = paramString2;
          if (paramList != null)
          {
            paramString1 = paramList.iterator();
            while (paramString1.hasNext()) {
              if ((MemberPermission)paramString1.next() == null) {
                throw new IllegalArgumentException("An item in list 'permissions' is null");
              }
            }
            permissions = paramList;
            if (paramString3 != null)
            {
              path = paramString3;
              return;
            }
            throw new IllegalArgumentException("Required value for 'path' is null");
          }
          throw new IllegalArgumentException("Required value for 'permissions' is null");
        }
        throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }
    throw new IllegalArgumentException("Required value for 'folderName' is null");
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
      paramObject = (ParentFolderAccessInfo)paramObject;
      if (((folderName == folderName) || (folderName.equals(folderName))) && ((sharedFolderId == sharedFolderId) || (sharedFolderId.equals(sharedFolderId))) && ((permissions == permissions) || (permissions.equals(permissions))))
      {
        if (path == path) {
          break label140;
        }
        if (path.equals(path)) {
          return true;
        }
      }
      bool = false;
      label140:
      return bool;
    }
    return false;
  }
  
  public String getFolderName()
  {
    return folderName;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public List<MemberPermission> getPermissions()
  {
    return permissions;
  }
  
  public String getSharedFolderId()
  {
    return sharedFolderId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { folderName, sharedFolderId, permissions, path });
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
    extends StructSerializer<ParentFolderAccessInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public ParentFolderAccessInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str2 = null;
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
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str3 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("folder_name".equals(str3)) {
            str2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("shared_folder_id".equals(str3)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("permissions".equals(str3)) {
            localObject1 = (List)StoneSerializers.list(MemberPermission.a.a).deserialize(paramJsonParser);
          } else if ("path".equals(str3)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str2 != null)
        {
          if (str1 != null)
          {
            if (localObject1 != null)
            {
              if (localObject2 != null)
              {
                localObject1 = new ParentFolderAccessInfo(str2, str1, (List)localObject1, (String)localObject2);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"permissions\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"shared_folder_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"folder_name\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ParentFolderAccessInfo paramParentFolderAccessInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("folder_name");
      StoneSerializers.string().serialize(folderName, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_folder_id");
      StoneSerializers.string().serialize(sharedFolderId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("permissions");
      StoneSerializers.list(MemberPermission.a.a).serialize(permissions, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(path, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
