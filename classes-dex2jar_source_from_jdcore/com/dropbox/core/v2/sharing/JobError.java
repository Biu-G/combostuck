package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class JobError
{
  public static final JobError OTHER = new JobError().a(Tag.OTHER);
  private Tag a;
  private UnshareFolderError b;
  private RemoveFolderMemberError c;
  private RelinquishFolderMembershipError d;
  
  private JobError() {}
  
  private JobError a(Tag paramTag)
  {
    JobError localJobError = new JobError();
    a = paramTag;
    return localJobError;
  }
  
  private JobError a(Tag paramTag, RelinquishFolderMembershipError paramRelinquishFolderMembershipError)
  {
    JobError localJobError = new JobError();
    a = paramTag;
    d = paramRelinquishFolderMembershipError;
    return localJobError;
  }
  
  private JobError a(Tag paramTag, RemoveFolderMemberError paramRemoveFolderMemberError)
  {
    JobError localJobError = new JobError();
    a = paramTag;
    c = paramRemoveFolderMemberError;
    return localJobError;
  }
  
  private JobError a(Tag paramTag, UnshareFolderError paramUnshareFolderError)
  {
    JobError localJobError = new JobError();
    a = paramTag;
    b = paramUnshareFolderError;
    return localJobError;
  }
  
  public static JobError relinquishFolderMembershipError(RelinquishFolderMembershipError paramRelinquishFolderMembershipError)
  {
    if (paramRelinquishFolderMembershipError != null) {
      return new JobError().a(Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, paramRelinquishFolderMembershipError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static JobError removeFolderMemberError(RemoveFolderMemberError paramRemoveFolderMemberError)
  {
    if (paramRemoveFolderMemberError != null) {
      return new JobError().a(Tag.REMOVE_FOLDER_MEMBER_ERROR, paramRemoveFolderMemberError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static JobError unshareFolderError(UnshareFolderError paramUnshareFolderError)
  {
    if (paramUnshareFolderError != null) {
      return new JobError().a(Tag.UNSHARE_FOLDER_ERROR, paramUnshareFolderError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof JobError))
    {
      paramObject = (JobError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 4: 
        return true;
      case 3: 
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool2;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool3;
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
  
  public RelinquishFolderMembershipError getRelinquishFolderMembershipErrorValue()
  {
    if (a == Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public RemoveFolderMemberError getRemoveFolderMemberErrorValue()
  {
    if (a == Tag.REMOVE_FOLDER_MEMBER_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.REMOVE_FOLDER_MEMBER_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public UnshareFolderError getUnshareFolderErrorValue()
  {
    if (a == Tag.UNSHARE_FOLDER_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.UNSHARE_FOLDER_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d });
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isRelinquishFolderMembershipError()
  {
    return a == Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR;
  }
  
  public boolean isRemoveFolderMemberError()
  {
    return a == Tag.REMOVE_FOLDER_MEMBER_ERROR;
  }
  
  public boolean isUnshareFolderError()
  {
    return a == Tag.UNSHARE_FOLDER_ERROR;
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
      REMOVE_FOLDER_MEMBER_ERROR = new Tag("REMOVE_FOLDER_MEMBER_ERROR", 1);
      RELINQUISH_FOLDER_MEMBERSHIP_ERROR = new Tag("RELINQUISH_FOLDER_MEMBERSHIP_ERROR", 2);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<JobError>
  {
    public static final a a = new a();
    
    a() {}
    
    public JobError a(JsonParser paramJsonParser)
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
        if ("unshare_folder_error".equals(localObject))
        {
          expectField("unshare_folder_error", paramJsonParser);
          localObject = JobError.unshareFolderError(UnshareFolderError.a.a.a(paramJsonParser));
        }
        else if ("remove_folder_member_error".equals(localObject))
        {
          expectField("remove_folder_member_error", paramJsonParser);
          localObject = JobError.removeFolderMemberError(RemoveFolderMemberError.a.a.a(paramJsonParser));
        }
        else if ("relinquish_folder_membership_error".equals(localObject))
        {
          expectField("relinquish_folder_membership_error", paramJsonParser);
          localObject = JobError.relinquishFolderMembershipError(RelinquishFolderMembershipError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = JobError.OTHER;
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
    
    public void a(JobError paramJobError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (JobError.1.a[paramJobError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("relinquish_folder_membership_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("relinquish_folder_membership_error");
        RelinquishFolderMembershipError.a.a.a(JobError.c(paramJobError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("remove_folder_member_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("remove_folder_member_error");
        RemoveFolderMemberError.a.a.a(JobError.b(paramJobError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("unshare_folder_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("unshare_folder_error");
      UnshareFolderError.a.a.a(JobError.a(paramJobError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
