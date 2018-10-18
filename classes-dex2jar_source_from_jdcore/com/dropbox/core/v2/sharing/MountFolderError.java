package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class MountFolderError
{
  public static final MountFolderError ALREADY_MOUNTED;
  public static final MountFolderError INSIDE_SHARED_FOLDER = new MountFolderError().a(Tag.INSIDE_SHARED_FOLDER);
  public static final MountFolderError NOT_MOUNTABLE = new MountFolderError().a(Tag.NOT_MOUNTABLE);
  public static final MountFolderError NO_PERMISSION;
  public static final MountFolderError OTHER = new MountFolderError().a(Tag.OTHER);
  private Tag a;
  private SharedFolderAccessError b;
  private InsufficientQuotaAmounts c;
  
  static
  {
    ALREADY_MOUNTED = new MountFolderError().a(Tag.ALREADY_MOUNTED);
    NO_PERMISSION = new MountFolderError().a(Tag.NO_PERMISSION);
  }
  
  private MountFolderError() {}
  
  private MountFolderError a(Tag paramTag)
  {
    MountFolderError localMountFolderError = new MountFolderError();
    a = paramTag;
    return localMountFolderError;
  }
  
  private MountFolderError a(Tag paramTag, InsufficientQuotaAmounts paramInsufficientQuotaAmounts)
  {
    MountFolderError localMountFolderError = new MountFolderError();
    a = paramTag;
    c = paramInsufficientQuotaAmounts;
    return localMountFolderError;
  }
  
  private MountFolderError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    MountFolderError localMountFolderError = new MountFolderError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localMountFolderError;
  }
  
  public static MountFolderError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new MountFolderError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MountFolderError insufficientQuota(InsufficientQuotaAmounts paramInsufficientQuotaAmounts)
  {
    if (paramInsufficientQuotaAmounts != null) {
      return new MountFolderError().a(Tag.INSUFFICIENT_QUOTA, paramInsufficientQuotaAmounts);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof MountFolderError))
    {
      paramObject = (MountFolderError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 7: 
        return true;
      case 6: 
        return true;
      case 5: 
        return true;
      case 4: 
        return true;
      case 3: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        return true;
      }
      bool1 = bool2;
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
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
  
  public InsufficientQuotaAmounts getInsufficientQuotaValue()
  {
    if (a == Tag.INSUFFICIENT_QUOTA) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INSUFFICIENT_QUOTA, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isAlreadyMounted()
  {
    return a == Tag.ALREADY_MOUNTED;
  }
  
  public boolean isInsideSharedFolder()
  {
    return a == Tag.INSIDE_SHARED_FOLDER;
  }
  
  public boolean isInsufficientQuota()
  {
    return a == Tag.INSUFFICIENT_QUOTA;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isNotMountable()
  {
    return a == Tag.NOT_MOUNTABLE;
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
      ALREADY_MOUNTED = new Tag("ALREADY_MOUNTED", 3);
      NO_PERMISSION = new Tag("NO_PERMISSION", 4);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<MountFolderError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MountFolderError a(JsonParser paramJsonParser)
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
        if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = MountFolderError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("inside_shared_folder".equals(localObject))
        {
          localObject = MountFolderError.INSIDE_SHARED_FOLDER;
        }
        else if ("insufficient_quota".equals(localObject))
        {
          localObject = MountFolderError.insufficientQuota(InsufficientQuotaAmounts.a.a.a(paramJsonParser, true));
        }
        else if ("already_mounted".equals(localObject))
        {
          localObject = MountFolderError.ALREADY_MOUNTED;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = MountFolderError.NO_PERMISSION;
        }
        else if ("not_mountable".equals(localObject))
        {
          localObject = MountFolderError.NOT_MOUNTABLE;
        }
        else
        {
          localObject = MountFolderError.OTHER;
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
    
    public void a(MountFolderError paramMountFolderError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MountFolderError.1.a[paramMountFolderError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 6: 
        paramJsonGenerator.writeString("not_mountable");
        return;
      case 5: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 4: 
        paramJsonGenerator.writeString("already_mounted");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("insufficient_quota", paramJsonGenerator);
        InsufficientQuotaAmounts.a.a.a(MountFolderError.b(paramMountFolderError), paramJsonGenerator, true);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeString("inside_shared_folder");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(MountFolderError.a(paramMountFolderError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
