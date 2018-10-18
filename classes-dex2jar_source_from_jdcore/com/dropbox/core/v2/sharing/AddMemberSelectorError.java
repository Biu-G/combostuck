package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

public final class AddMemberSelectorError
{
  public static final AddMemberSelectorError AUTOMATIC_GROUP = new AddMemberSelectorError().a(Tag.AUTOMATIC_GROUP);
  public static final AddMemberSelectorError GROUP_DELETED = new AddMemberSelectorError().a(Tag.GROUP_DELETED);
  public static final AddMemberSelectorError GROUP_NOT_ON_TEAM = new AddMemberSelectorError().a(Tag.GROUP_NOT_ON_TEAM);
  public static final AddMemberSelectorError OTHER = new AddMemberSelectorError().a(Tag.OTHER);
  private Tag a;
  private String b;
  private String c;
  private String d;
  
  private AddMemberSelectorError() {}
  
  private AddMemberSelectorError a(Tag paramTag)
  {
    AddMemberSelectorError localAddMemberSelectorError = new AddMemberSelectorError();
    a = paramTag;
    return localAddMemberSelectorError;
  }
  
  private AddMemberSelectorError a(Tag paramTag, String paramString)
  {
    AddMemberSelectorError localAddMemberSelectorError = new AddMemberSelectorError();
    a = paramTag;
    b = paramString;
    return localAddMemberSelectorError;
  }
  
  private AddMemberSelectorError b(Tag paramTag, String paramString)
  {
    AddMemberSelectorError localAddMemberSelectorError = new AddMemberSelectorError();
    a = paramTag;
    c = paramString;
    return localAddMemberSelectorError;
  }
  
  private AddMemberSelectorError c(Tag paramTag, String paramString)
  {
    AddMemberSelectorError localAddMemberSelectorError = new AddMemberSelectorError();
    a = paramTag;
    d = paramString;
    return localAddMemberSelectorError;
  }
  
  public static AddMemberSelectorError invalidDropboxId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new AddMemberSelectorError().a(Tag.INVALID_DROPBOX_ID, paramString);
      }
      throw new IllegalArgumentException("String is shorter than 1");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static AddMemberSelectorError invalidEmail(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() <= 255)
      {
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
          return new AddMemberSelectorError().b(Tag.INVALID_EMAIL, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is longer than 255");
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static AddMemberSelectorError unverifiedDropboxId(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1) {
        return new AddMemberSelectorError().c(Tag.UNVERIFIED_DROPBOX_ID, paramString);
      }
      throw new IllegalArgumentException("String is shorter than 1");
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
    if ((paramObject instanceof AddMemberSelectorError))
    {
      paramObject = (AddMemberSelectorError)paramObject;
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
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 3: 
        bool1 = bool2;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
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
      return true;
    }
    return false;
  }
  
  public String getInvalidDropboxIdValue()
  {
    if (a == Tag.INVALID_DROPBOX_ID) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INVALID_DROPBOX_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getInvalidEmailValue()
  {
    if (a == Tag.INVALID_EMAIL) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.INVALID_EMAIL, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getUnverifiedDropboxIdValue()
  {
    if (a == Tag.UNVERIFIED_DROPBOX_ID) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.UNVERIFIED_DROPBOX_ID, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d });
  }
  
  public boolean isAutomaticGroup()
  {
    return a == Tag.AUTOMATIC_GROUP;
  }
  
  public boolean isGroupDeleted()
  {
    return a == Tag.GROUP_DELETED;
  }
  
  public boolean isGroupNotOnTeam()
  {
    return a == Tag.GROUP_NOT_ON_TEAM;
  }
  
  public boolean isInvalidDropboxId()
  {
    return a == Tag.INVALID_DROPBOX_ID;
  }
  
  public boolean isInvalidEmail()
  {
    return a == Tag.INVALID_EMAIL;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isUnverifiedDropboxId()
  {
    return a == Tag.UNVERIFIED_DROPBOX_ID;
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
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<AddMemberSelectorError>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddMemberSelectorError a(JsonParser paramJsonParser)
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
        if ("automatic_group".equals(localObject))
        {
          localObject = AddMemberSelectorError.AUTOMATIC_GROUP;
        }
        else if ("invalid_dropbox_id".equals(localObject))
        {
          expectField("invalid_dropbox_id", paramJsonParser);
          localObject = AddMemberSelectorError.invalidDropboxId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("invalid_email".equals(localObject))
        {
          expectField("invalid_email", paramJsonParser);
          localObject = AddMemberSelectorError.invalidEmail((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("unverified_dropbox_id".equals(localObject))
        {
          expectField("unverified_dropbox_id", paramJsonParser);
          localObject = AddMemberSelectorError.unverifiedDropboxId((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        else if ("group_deleted".equals(localObject))
        {
          localObject = AddMemberSelectorError.GROUP_DELETED;
        }
        else if ("group_not_on_team".equals(localObject))
        {
          localObject = AddMemberSelectorError.GROUP_NOT_ON_TEAM;
        }
        else
        {
          localObject = AddMemberSelectorError.OTHER;
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
    
    public void a(AddMemberSelectorError paramAddMemberSelectorError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AddMemberSelectorError.1.a[paramAddMemberSelectorError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 6: 
        paramJsonGenerator.writeString("group_not_on_team");
        return;
      case 5: 
        paramJsonGenerator.writeString("group_deleted");
        return;
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("unverified_dropbox_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("unverified_dropbox_id");
        StoneSerializers.string().serialize(AddMemberSelectorError.c(paramAddMemberSelectorError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("invalid_email", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("invalid_email");
        StoneSerializers.string().serialize(AddMemberSelectorError.b(paramAddMemberSelectorError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("invalid_dropbox_id", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("invalid_dropbox_id");
        StoneSerializers.string().serialize(AddMemberSelectorError.a(paramAddMemberSelectorError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("automatic_group");
    }
  }
}
