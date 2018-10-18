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

class AddFileMemberArgs
{
  protected final String a;
  protected final List<MemberSelector> b;
  protected final String c;
  protected final boolean d;
  protected final AccessLevel e;
  protected final boolean f;
  
  public AddFileMemberArgs(String paramString, List<MemberSelector> paramList)
  {
    this(paramString, paramList, null, false, AccessLevel.VIEWER, false);
  }
  
  public AddFileMemberArgs(String paramString1, List<MemberSelector> paramList, String paramString2, boolean paramBoolean1, AccessLevel paramAccessLevel, boolean paramBoolean2)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() >= 1)
      {
        if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", paramString1))
        {
          a = paramString1;
          if (paramList != null)
          {
            paramString1 = paramList.iterator();
            while (paramString1.hasNext()) {
              if ((MemberSelector)paramString1.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
              }
            }
            b = paramList;
            c = paramString2;
            d = paramBoolean1;
            if (paramAccessLevel != null)
            {
              e = paramAccessLevel;
              f = paramBoolean2;
              return;
            }
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
          }
          throw new IllegalArgumentException("Required value for 'members' is null");
        }
        throw new IllegalArgumentException("String 'file' does not match pattern");
      }
      throw new IllegalArgumentException("String 'file' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'file' is null");
  }
  
  public static Builder a(String paramString, List<MemberSelector> paramList)
  {
    return new Builder(paramString, paramList);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (AddFileMemberArgs)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && ((c == c) || ((c != null) && (c.equals(c)))) && (d == d) && ((e == e) || (e.equals(e))) && (f == f);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, Boolean.valueOf(d), e, Boolean.valueOf(f) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected AccessLevel accessLevel;
    protected boolean addMessageAsComment;
    protected String customMessage;
    protected final String file;
    protected final List<MemberSelector> members;
    protected boolean quiet;
    
    protected Builder(String paramString, List<MemberSelector> paramList)
    {
      if (paramString != null)
      {
        if (paramString.length() >= 1)
        {
          if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", paramString))
          {
            file = paramString;
            if (paramList != null)
            {
              paramString = paramList.iterator();
              while (paramString.hasNext()) {
                if ((MemberSelector)paramString.next() == null) {
                  throw new IllegalArgumentException("An item in list 'members' is null");
                }
              }
              members = paramList;
              customMessage = null;
              quiet = false;
              accessLevel = AccessLevel.VIEWER;
              addMessageAsComment = false;
              return;
            }
            throw new IllegalArgumentException("Required value for 'members' is null");
          }
          throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        throw new IllegalArgumentException("String 'file' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'file' is null");
    }
    
    public AddFileMemberArgs build()
    {
      return new AddFileMemberArgs(file, members, customMessage, quiet, accessLevel, addMessageAsComment);
    }
    
    public Builder withAccessLevel(AccessLevel paramAccessLevel)
    {
      if (paramAccessLevel != null)
      {
        accessLevel = paramAccessLevel;
        return this;
      }
      accessLevel = AccessLevel.VIEWER;
      return this;
    }
    
    public Builder withAddMessageAsComment(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        addMessageAsComment = paramBoolean.booleanValue();
        return this;
      }
      addMessageAsComment = false;
      return this;
    }
    
    public Builder withCustomMessage(String paramString)
    {
      customMessage = paramString;
      return this;
    }
    
    public Builder withQuiet(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        quiet = paramBoolean.booleanValue();
        return this;
      }
      quiet = false;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<AddFileMemberArgs>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddFileMemberArgs a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Boolean localBoolean1 = Boolean.valueOf(false);
        localObject2 = AccessLevel.VIEWER;
        Boolean localBoolean2 = Boolean.valueOf(false);
        String str1 = null;
        localObject1 = str1;
        Object localObject3 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("file".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("members".equals(str2)) {
            localObject1 = (List)StoneSerializers.list(MemberSelector.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("custom_message".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("quiet".equals(str2)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("access_level".equals(str2)) {
            localObject2 = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("add_message_as_comment".equals(str2)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new AddFileMemberArgs(str1, (List)localObject1, (String)localObject3, localBoolean1.booleanValue(), (AccessLevel)localObject2, localBoolean2.booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"members\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"file\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(AddFileMemberArgs paramAddFileMemberArgs, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("file");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("members");
      StoneSerializers.list(MemberSelector.Serializer.INSTANCE).serialize(b, paramJsonGenerator);
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("custom_message");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(c, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("quiet");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_level");
      AccessLevel.Serializer.INSTANCE.serialize(e, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("add_message_as_comment");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(f), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
