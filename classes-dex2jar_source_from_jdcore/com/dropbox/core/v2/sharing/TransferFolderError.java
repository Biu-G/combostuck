package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class TransferFolderError
{
  public static final TransferFolderError INVALID_DROPBOX_ID = new TransferFolderError().a(Tag.INVALID_DROPBOX_ID);
  public static final TransferFolderError NEW_OWNER_EMAIL_UNVERIFIED;
  public static final TransferFolderError NEW_OWNER_NOT_A_MEMBER = new TransferFolderError().a(Tag.NEW_OWNER_NOT_A_MEMBER);
  public static final TransferFolderError NEW_OWNER_UNMOUNTED = new TransferFolderError().a(Tag.NEW_OWNER_UNMOUNTED);
  public static final TransferFolderError NO_PERMISSION = new TransferFolderError().a(Tag.NO_PERMISSION);
  public static final TransferFolderError OTHER = new TransferFolderError().a(Tag.OTHER);
  public static final TransferFolderError TEAM_FOLDER;
  private Tag a;
  private SharedFolderAccessError b;
  
  static
  {
    NEW_OWNER_EMAIL_UNVERIFIED = new TransferFolderError().a(Tag.NEW_OWNER_EMAIL_UNVERIFIED);
    TEAM_FOLDER = new TransferFolderError().a(Tag.TEAM_FOLDER);
  }
  
  private TransferFolderError() {}
  
  private TransferFolderError a(Tag paramTag)
  {
    TransferFolderError localTransferFolderError = new TransferFolderError();
    a = paramTag;
    return localTransferFolderError;
  }
  
  private TransferFolderError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    TransferFolderError localTransferFolderError = new TransferFolderError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localTransferFolderError;
  }
  
  public static TransferFolderError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new TransferFolderError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
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
    if ((paramObject instanceof TransferFolderError))
    {
      paramObject = (TransferFolderError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public SharedFolderAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isInvalidDropboxId()
  {
    return a == Tag.INVALID_DROPBOX_ID;
  }
  
  public boolean isNewOwnerEmailUnverified()
  {
    return a == Tag.NEW_OWNER_EMAIL_UNVERIFIED;
  }
  
  public boolean isNewOwnerNotAMember()
  {
    return a == Tag.NEW_OWNER_NOT_A_MEMBER;
  }
  
  public boolean isNewOwnerUnmounted()
  {
    return a == Tag.NEW_OWNER_UNMOUNTED;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isTeamFolder()
  {
    return a == Tag.TEAM_FOLDER;
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
      NEW_OWNER_EMAIL_UNVERIFIED = new Tag("NEW_OWNER_EMAIL_UNVERIFIED", 4);
      TEAM_FOLDER = new Tag("TEAM_FOLDER", 5);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<TransferFolderError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TransferFolderError a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = TransferFolderError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("invalid_dropbox_id".equals(localObject))
        {
          localObject = TransferFolderError.INVALID_DROPBOX_ID;
        }
        else if ("new_owner_not_a_member".equals(localObject))
        {
          localObject = TransferFolderError.NEW_OWNER_NOT_A_MEMBER;
        }
        else if ("new_owner_unmounted".equals(localObject))
        {
          localObject = TransferFolderError.NEW_OWNER_UNMOUNTED;
        }
        else if ("new_owner_email_unverified".equals(localObject))
        {
          localObject = TransferFolderError.NEW_OWNER_EMAIL_UNVERIFIED;
        }
        else if ("team_folder".equals(localObject))
        {
          localObject = TransferFolderError.TEAM_FOLDER;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = TransferFolderError.NO_PERMISSION;
        }
        else
        {
          localObject = TransferFolderError.OTHER;
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
    
    public void a(TransferFolderError paramTransferFolderError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TransferFolderError.1.a[paramTransferFolderError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 7: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 6: 
        paramJsonGenerator.writeString("team_folder");
        return;
      case 5: 
        paramJsonGenerator.writeString("new_owner_email_unverified");
        return;
      case 4: 
        paramJsonGenerator.writeString("new_owner_unmounted");
        return;
      case 3: 
        paramJsonGenerator.writeString("new_owner_not_a_member");
        return;
      case 2: 
        paramJsonGenerator.writeString("invalid_dropbox_id");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(TransferFolderError.a(paramTransferFolderError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
