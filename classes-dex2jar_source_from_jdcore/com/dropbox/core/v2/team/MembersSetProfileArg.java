package com.dropbox.core.v2.team;

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
import java.util.regex.Pattern;

class MembersSetProfileArg
{
  protected final UserSelectorArg a;
  protected final String b;
  protected final String c;
  protected final String d;
  protected final String e;
  protected final String f;
  protected final Boolean g;
  
  public MembersSetProfileArg(UserSelectorArg paramUserSelectorArg)
  {
    this(paramUserSelectorArg, null, null, null, null, null, null);
  }
  
  public MembersSetProfileArg(UserSelectorArg paramUserSelectorArg, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Boolean paramBoolean)
  {
    if (paramUserSelectorArg != null)
    {
      a = paramUserSelectorArg;
      if (paramString1 != null) {
        if (paramString1.length() <= 255)
        {
          if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString1)) {
            throw new IllegalArgumentException("String 'newEmail' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'newEmail' is longer than 255");
        }
      }
      b = paramString1;
      if ((paramString2 != null) && (paramString2.length() > 64)) {
        throw new IllegalArgumentException("String 'newExternalId' is longer than 64");
      }
      c = paramString2;
      if (paramString3 != null) {
        if (paramString3.length() <= 100)
        {
          if (!Pattern.matches("[^/:?*<>\"|]*", paramString3)) {
            throw new IllegalArgumentException("String 'newGivenName' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'newGivenName' is longer than 100");
        }
      }
      d = paramString3;
      if (paramString4 != null) {
        if (paramString4.length() <= 100)
        {
          if (!Pattern.matches("[^/:?*<>\"|]*", paramString4)) {
            throw new IllegalArgumentException("String 'newSurname' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'newSurname' is longer than 100");
        }
      }
      e = paramString4;
      f = paramString5;
      g = paramBoolean;
      return;
    }
    throw new IllegalArgumentException("Required value for 'user' is null");
  }
  
  public static Builder a(UserSelectorArg paramUserSelectorArg)
  {
    return new Builder(paramUserSelectorArg);
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
      paramObject = (MembersSetProfileArg)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))) && ((c == c) || ((c != null) && (c.equals(c)))) && ((d == d) || ((d != null) && (d.equals(d)))) && ((e == e) || ((e != null) && (e.equals(e)))) && ((f == f) || ((f != null) && (f.equals(f)))))
      {
        if (g == g) {
          break label255;
        }
        if ((g != null) && (g.equals(g))) {
          return true;
        }
      }
      bool = false;
      label255:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d, e, f, g });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected String newEmail;
    protected String newExternalId;
    protected String newGivenName;
    protected Boolean newIsDirectoryRestricted;
    protected String newPersistentId;
    protected String newSurname;
    protected final UserSelectorArg user;
    
    protected Builder(UserSelectorArg paramUserSelectorArg)
    {
      if (paramUserSelectorArg != null)
      {
        user = paramUserSelectorArg;
        newEmail = null;
        newExternalId = null;
        newGivenName = null;
        newSurname = null;
        newPersistentId = null;
        newIsDirectoryRestricted = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'user' is null");
    }
    
    public MembersSetProfileArg build()
    {
      return new MembersSetProfileArg(user, newEmail, newExternalId, newGivenName, newSurname, newPersistentId, newIsDirectoryRestricted);
    }
    
    public Builder withNewEmail(String paramString)
    {
      if (paramString != null) {
        if (paramString.length() <= 255)
        {
          if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", paramString)) {
            throw new IllegalArgumentException("String 'newEmail' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'newEmail' is longer than 255");
        }
      }
      newEmail = paramString;
      return this;
    }
    
    public Builder withNewExternalId(String paramString)
    {
      if ((paramString != null) && (paramString.length() > 64)) {
        throw new IllegalArgumentException("String 'newExternalId' is longer than 64");
      }
      newExternalId = paramString;
      return this;
    }
    
    public Builder withNewGivenName(String paramString)
    {
      if (paramString != null) {
        if (paramString.length() <= 100)
        {
          if (!Pattern.matches("[^/:?*<>\"|]*", paramString)) {
            throw new IllegalArgumentException("String 'newGivenName' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'newGivenName' is longer than 100");
        }
      }
      newGivenName = paramString;
      return this;
    }
    
    public Builder withNewIsDirectoryRestricted(Boolean paramBoolean)
    {
      newIsDirectoryRestricted = paramBoolean;
      return this;
    }
    
    public Builder withNewPersistentId(String paramString)
    {
      newPersistentId = paramString;
      return this;
    }
    
    public Builder withNewSurname(String paramString)
    {
      if (paramString != null) {
        if (paramString.length() <= 100)
        {
          if (!Pattern.matches("[^/:?*<>\"|]*", paramString)) {
            throw new IllegalArgumentException("String 'newSurname' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("String 'newSurname' is longer than 100");
        }
      }
      newSurname = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MembersSetProfileArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersSetProfileArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        UserSelectorArg localUserSelectorArg = null;
        localObject1 = localUserSelectorArg;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("user".equals(str)) {
            localUserSelectorArg = UserSelectorArg.a.a.a(paramJsonParser);
          } else if ("new_email".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("new_external_id".equals(str)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("new_given_name".equals(str)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("new_surname".equals(str)) {
            localObject4 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("new_persistent_id".equals(str)) {
            localObject5 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("new_is_directory_restricted".equals(str)) {
            localObject6 = (Boolean)StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localUserSelectorArg != null)
        {
          localObject1 = new MembersSetProfileArg(localUserSelectorArg, (String)localObject1, (String)localObject2, (String)localObject3, (String)localObject4, (String)localObject5, (Boolean)localObject6);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MembersSetProfileArg paramMembersSetProfileArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("user");
      UserSelectorArg.a.a.a(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("new_email");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(b, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("new_external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(c, paramJsonGenerator);
      }
      if (d != null)
      {
        paramJsonGenerator.writeFieldName("new_given_name");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(d, paramJsonGenerator);
      }
      if (e != null)
      {
        paramJsonGenerator.writeFieldName("new_surname");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(e, paramJsonGenerator);
      }
      if (f != null)
      {
        paramJsonGenerator.writeFieldName("new_persistent_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(f, paramJsonGenerator);
      }
      if (g != null)
      {
        paramJsonGenerator.writeFieldName("new_is_directory_restricted");
        StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(g, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
