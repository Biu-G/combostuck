package com.dropbox.core.v2.paper;

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

public class FoldersContainingPaperDoc
{
  protected final FolderSharingPolicyType folderSharingPolicyType;
  protected final List<Folder> folders;
  
  public FoldersContainingPaperDoc()
  {
    this(null, null);
  }
  
  public FoldersContainingPaperDoc(FolderSharingPolicyType paramFolderSharingPolicyType, List<Folder> paramList)
  {
    folderSharingPolicyType = paramFolderSharingPolicyType;
    if (paramList != null)
    {
      paramFolderSharingPolicyType = paramList.iterator();
      while (paramFolderSharingPolicyType.hasNext()) {
        if ((Folder)paramFolderSharingPolicyType.next() == null) {
          throw new IllegalArgumentException("An item in list 'folders' is null");
        }
      }
    }
    folders = paramList;
  }
  
  public static Builder newBuilder()
  {
    return new Builder();
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
      paramObject = (FoldersContainingPaperDoc)paramObject;
      if ((folderSharingPolicyType == folderSharingPolicyType) || ((folderSharingPolicyType != null) && (folderSharingPolicyType.equals(folderSharingPolicyType))))
      {
        if (folders == folders) {
          break label104;
        }
        if ((folders != null) && (folders.equals(folders))) {
          return true;
        }
      }
      bool = false;
      label104:
      return bool;
    }
    return false;
  }
  
  public FolderSharingPolicyType getFolderSharingPolicyType()
  {
    return folderSharingPolicyType;
  }
  
  public List<Folder> getFolders()
  {
    return folders;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { folderSharingPolicyType, folders });
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
    protected FolderSharingPolicyType folderSharingPolicyType = null;
    protected List<Folder> folders = null;
    
    protected Builder() {}
    
    public FoldersContainingPaperDoc build()
    {
      return new FoldersContainingPaperDoc(folderSharingPolicyType, folders);
    }
    
    public Builder withFolderSharingPolicyType(FolderSharingPolicyType paramFolderSharingPolicyType)
    {
      folderSharingPolicyType = paramFolderSharingPolicyType;
      return this;
    }
    
    public Builder withFolders(List<Folder> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((Folder)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'folders' is null");
          }
        }
      }
      folders = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<FoldersContainingPaperDoc>
  {
    public static final a a = new a();
    
    a() {}
    
    public FoldersContainingPaperDoc a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("folder_sharing_policy_type".equals(str)) {
            localObject2 = (FolderSharingPolicyType)StoneSerializers.nullable(FolderSharingPolicyType.a.a).deserialize(paramJsonParser);
          } else if ("folders".equals(str)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(Folder.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new FoldersContainingPaperDoc((FolderSharingPolicyType)localObject2, (List)localObject1);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(FoldersContainingPaperDoc paramFoldersContainingPaperDoc, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (folderSharingPolicyType != null)
      {
        paramJsonGenerator.writeFieldName("folder_sharing_policy_type");
        StoneSerializers.nullable(FolderSharingPolicyType.a.a).serialize(folderSharingPolicyType, paramJsonGenerator);
      }
      if (folders != null)
      {
        paramJsonGenerator.writeFieldName("folders");
        StoneSerializers.nullable(StoneSerializers.list(Folder.a.a)).serialize(folders, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
