package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class SharePathError
{
  public static final SharePathError CONTAINS_APP_FOLDER;
  public static final SharePathError CONTAINS_SHARED_FOLDER;
  public static final SharePathError CONTAINS_TEAM_FOLDER;
  public static final SharePathError INSIDE_APP_FOLDER;
  public static final SharePathError INSIDE_OSX_PACKAGE = new SharePathError().a(Tag.INSIDE_OSX_PACKAGE);
  public static final SharePathError INSIDE_PUBLIC_FOLDER;
  public static final SharePathError INSIDE_SHARED_FOLDER;
  public static final SharePathError INVALID_PATH;
  public static final SharePathError IS_APP_FOLDER;
  public static final SharePathError IS_FILE = new SharePathError().a(Tag.IS_FILE);
  public static final SharePathError IS_OSX_PACKAGE;
  public static final SharePathError IS_PUBLIC_FOLDER;
  public static final SharePathError OTHER = new SharePathError().a(Tag.OTHER);
  private Tag a;
  private SharedFolderMetadata b;
  
  static
  {
    INSIDE_SHARED_FOLDER = new SharePathError().a(Tag.INSIDE_SHARED_FOLDER);
    CONTAINS_SHARED_FOLDER = new SharePathError().a(Tag.CONTAINS_SHARED_FOLDER);
    CONTAINS_APP_FOLDER = new SharePathError().a(Tag.CONTAINS_APP_FOLDER);
    CONTAINS_TEAM_FOLDER = new SharePathError().a(Tag.CONTAINS_TEAM_FOLDER);
    IS_APP_FOLDER = new SharePathError().a(Tag.IS_APP_FOLDER);
    INSIDE_APP_FOLDER = new SharePathError().a(Tag.INSIDE_APP_FOLDER);
    IS_PUBLIC_FOLDER = new SharePathError().a(Tag.IS_PUBLIC_FOLDER);
    INSIDE_PUBLIC_FOLDER = new SharePathError().a(Tag.INSIDE_PUBLIC_FOLDER);
    INVALID_PATH = new SharePathError().a(Tag.INVALID_PATH);
    IS_OSX_PACKAGE = new SharePathError().a(Tag.IS_OSX_PACKAGE);
  }
  
  private SharePathError() {}
  
  private SharePathError a(Tag paramTag)
  {
    SharePathError localSharePathError = new SharePathError();
    a = paramTag;
    return localSharePathError;
  }
  
  private SharePathError a(Tag paramTag, SharedFolderMetadata paramSharedFolderMetadata)
  {
    SharePathError localSharePathError = new SharePathError();
    a = paramTag;
    b = paramSharedFolderMetadata;
    return localSharePathError;
  }
  
  public static SharePathError alreadyShared(SharedFolderMetadata paramSharedFolderMetadata)
  {
    if (paramSharedFolderMetadata != null) {
      return new SharePathError().a(Tag.ALREADY_SHARED, paramSharedFolderMetadata);
    }
    throw new IllegalArgumentException("Value is null");
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
    if ((paramObject instanceof SharePathError))
    {
      paramObject = (SharePathError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 14: 
        return true;
      case 13: 
        return true;
      case 12: 
        return true;
      case 11: 
        return true;
      case 10: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 9: 
        return true;
      case 8: 
        return true;
      case 7: 
        return true;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        return true;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public SharedFolderMetadata getAlreadySharedValue()
  {
    if (a == Tag.ALREADY_SHARED) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ALREADY_SHARED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isAlreadyShared()
  {
    return a == Tag.ALREADY_SHARED;
  }
  
  public boolean isContainsAppFolder()
  {
    return a == Tag.CONTAINS_APP_FOLDER;
  }
  
  public boolean isContainsSharedFolder()
  {
    return a == Tag.CONTAINS_SHARED_FOLDER;
  }
  
  public boolean isContainsTeamFolder()
  {
    return a == Tag.CONTAINS_TEAM_FOLDER;
  }
  
  public boolean isInsideAppFolder()
  {
    return a == Tag.INSIDE_APP_FOLDER;
  }
  
  public boolean isInsideOsxPackage()
  {
    return a == Tag.INSIDE_OSX_PACKAGE;
  }
  
  public boolean isInsidePublicFolder()
  {
    return a == Tag.INSIDE_PUBLIC_FOLDER;
  }
  
  public boolean isInsideSharedFolder()
  {
    return a == Tag.INSIDE_SHARED_FOLDER;
  }
  
  public boolean isInvalidPath()
  {
    return a == Tag.INVALID_PATH;
  }
  
  public boolean isIsAppFolder()
  {
    return a == Tag.IS_APP_FOLDER;
  }
  
  public boolean isIsFile()
  {
    return a == Tag.IS_FILE;
  }
  
  public boolean isIsOsxPackage()
  {
    return a == Tag.IS_OSX_PACKAGE;
  }
  
  public boolean isIsPublicFolder()
  {
    return a == Tag.IS_PUBLIC_FOLDER;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static enum Tag
  {
    static
    {
      INSIDE_SHARED_FOLDER = new Tag("INSIDE_SHARED_FOLDER", 1);
      CONTAINS_SHARED_FOLDER = new Tag("CONTAINS_SHARED_FOLDER", 2);
      CONTAINS_APP_FOLDER = new Tag("CONTAINS_APP_FOLDER", 3);
      CONTAINS_TEAM_FOLDER = new Tag("CONTAINS_TEAM_FOLDER", 4);
      IS_APP_FOLDER = new Tag("IS_APP_FOLDER", 5);
      INSIDE_APP_FOLDER = new Tag("INSIDE_APP_FOLDER", 6);
      IS_PUBLIC_FOLDER = new Tag("IS_PUBLIC_FOLDER", 7);
      INSIDE_PUBLIC_FOLDER = new Tag("INSIDE_PUBLIC_FOLDER", 8);
      ALREADY_SHARED = new Tag("ALREADY_SHARED", 9);
      INVALID_PATH = new Tag("INVALID_PATH", 10);
      IS_OSX_PACKAGE = new Tag("IS_OSX_PACKAGE", 11);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<SharePathError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharePathError a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      Object localObject;
      int i;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
        i = 1;
      }
      else
      {
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
        i = 0;
      }
      if (localObject != null)
      {
        if ("is_file".equals(localObject)) {
          localObject = SharePathError.IS_FILE;
        } else if ("inside_shared_folder".equals(localObject)) {
          localObject = SharePathError.INSIDE_SHARED_FOLDER;
        } else if ("contains_shared_folder".equals(localObject)) {
          localObject = SharePathError.CONTAINS_SHARED_FOLDER;
        } else if ("contains_app_folder".equals(localObject)) {
          localObject = SharePathError.CONTAINS_APP_FOLDER;
        } else if ("contains_team_folder".equals(localObject)) {
          localObject = SharePathError.CONTAINS_TEAM_FOLDER;
        } else if ("is_app_folder".equals(localObject)) {
          localObject = SharePathError.IS_APP_FOLDER;
        } else if ("inside_app_folder".equals(localObject)) {
          localObject = SharePathError.INSIDE_APP_FOLDER;
        } else if ("is_public_folder".equals(localObject)) {
          localObject = SharePathError.IS_PUBLIC_FOLDER;
        } else if ("inside_public_folder".equals(localObject)) {
          localObject = SharePathError.INSIDE_PUBLIC_FOLDER;
        } else if ("already_shared".equals(localObject)) {
          localObject = SharePathError.alreadyShared(SharedFolderMetadata.a.a.a(paramJsonParser, true));
        } else if ("invalid_path".equals(localObject)) {
          localObject = SharePathError.INVALID_PATH;
        } else if ("is_osx_package".equals(localObject)) {
          localObject = SharePathError.IS_OSX_PACKAGE;
        } else if ("inside_osx_package".equals(localObject)) {
          localObject = SharePathError.INSIDE_OSX_PACKAGE;
        } else {
          localObject = SharePathError.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(SharePathError paramSharePathError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharePathError.1.a[paramSharePathError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 13: 
        paramJsonGenerator.writeString("inside_osx_package");
        return;
      case 12: 
        paramJsonGenerator.writeString("is_osx_package");
        return;
      case 11: 
        paramJsonGenerator.writeString("invalid_path");
        return;
      case 10: 
        paramJsonGenerator.writeStartObject();
        writeTag("already_shared", paramJsonGenerator);
        SharedFolderMetadata.a.a.a(SharePathError.a(paramSharePathError), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 9: 
        paramJsonGenerator.writeString("inside_public_folder");
        return;
      case 8: 
        paramJsonGenerator.writeString("is_public_folder");
        return;
      case 7: 
        paramJsonGenerator.writeString("inside_app_folder");
        return;
      case 6: 
        paramJsonGenerator.writeString("is_app_folder");
        return;
      case 5: 
        paramJsonGenerator.writeString("contains_team_folder");
        return;
      case 4: 
        paramJsonGenerator.writeString("contains_app_folder");
        return;
      case 3: 
        paramJsonGenerator.writeString("contains_shared_folder");
        return;
      case 2: 
        paramJsonGenerator.writeString("inside_shared_folder");
        return;
      }
      paramJsonGenerator.writeString("is_file");
    }
  }
}
