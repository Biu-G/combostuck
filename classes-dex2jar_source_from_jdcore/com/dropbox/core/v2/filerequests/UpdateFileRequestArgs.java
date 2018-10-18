package com.dropbox.core.v2.filerequests;

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

class UpdateFileRequestArgs
{
  protected final String a;
  protected final String b;
  protected final String c;
  protected final UpdateFileRequestDeadline d;
  protected final Boolean e;
  
  public UpdateFileRequestArgs(String paramString)
  {
    this(paramString, null, null, UpdateFileRequestDeadline.NO_UPDATE, null);
  }
  
  public UpdateFileRequestArgs(String paramString1, String paramString2, String paramString3, UpdateFileRequestDeadline paramUpdateFileRequestDeadline, Boolean paramBoolean)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() >= 1)
      {
        if (Pattern.matches("[-_0-9a-zA-Z]+", paramString1))
        {
          a = paramString1;
          if ((paramString2 != null) && (paramString2.length() < 1)) {
            throw new IllegalArgumentException("String 'title' is shorter than 1");
          }
          b = paramString2;
          if ((paramString3 != null) && (!Pattern.matches("/(.|[\\r\\n])*", paramString3))) {
            throw new IllegalArgumentException("String 'destination' does not match pattern");
          }
          c = paramString3;
          if (paramUpdateFileRequestDeadline != null)
          {
            d = paramUpdateFileRequestDeadline;
            e = paramBoolean;
            return;
          }
          throw new IllegalArgumentException("Required value for 'deadline' is null");
        }
        throw new IllegalArgumentException("String 'id' does not match pattern");
      }
      throw new IllegalArgumentException("String 'id' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'id' is null");
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (UpdateFileRequestArgs)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))) && ((c == c) || ((c != null) && (c.equals(c)))) && ((d == d) || (d.equals(d))))
      {
        if (e == e) {
          break label184;
        }
        if ((e != null) && (e.equals(e))) {
          return true;
        }
      }
      bool = false;
      label184:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d, e });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected UpdateFileRequestDeadline deadline;
    protected String destination;
    protected final String id;
    protected Boolean open;
    protected String title;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (paramString.length() >= 1)
        {
          if (Pattern.matches("[-_0-9a-zA-Z]+", paramString))
          {
            id = paramString;
            title = null;
            destination = null;
            deadline = UpdateFileRequestDeadline.NO_UPDATE;
            open = null;
            return;
          }
          throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        throw new IllegalArgumentException("String 'id' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'id' is null");
    }
    
    public UpdateFileRequestArgs build()
    {
      return new UpdateFileRequestArgs(id, title, destination, deadline, open);
    }
    
    public Builder withDeadline(UpdateFileRequestDeadline paramUpdateFileRequestDeadline)
    {
      if (paramUpdateFileRequestDeadline != null)
      {
        deadline = paramUpdateFileRequestDeadline;
        return this;
      }
      deadline = UpdateFileRequestDeadline.NO_UPDATE;
      return this;
    }
    
    public Builder withDestination(String paramString)
    {
      if ((paramString != null) && (!Pattern.matches("/(.|[\\r\\n])*", paramString))) {
        throw new IllegalArgumentException("String 'destination' does not match pattern");
      }
      destination = paramString;
      return this;
    }
    
    public Builder withOpen(Boolean paramBoolean)
    {
      open = paramBoolean;
      return this;
    }
    
    public Builder withTitle(String paramString)
    {
      if ((paramString != null) && (paramString.length() < 1)) {
        throw new IllegalArgumentException("String 'title' is shorter than 1");
      }
      title = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<UpdateFileRequestArgs>
  {
    public static final a a = new a();
    
    a() {}
    
    public UpdateFileRequestArgs a(JsonParser paramJsonParser, boolean paramBoolean)
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
        UpdateFileRequestDeadline localUpdateFileRequestDeadline = UpdateFileRequestDeadline.NO_UPDATE;
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("title".equals(str2)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("destination".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("deadline".equals(str2)) {
            localUpdateFileRequestDeadline = UpdateFileRequestDeadline.a.a.a(paramJsonParser);
          } else if ("open".equals(str2)) {
            localObject3 = (Boolean)StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new UpdateFileRequestArgs(str1, (String)localObject1, (String)localObject2, localUpdateFileRequestDeadline, (Boolean)localObject3);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UpdateFileRequestArgs paramUpdateFileRequestArgs, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("id");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("title");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(b, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("destination");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(c, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("deadline");
      UpdateFileRequestDeadline.a.a.a(d, paramJsonGenerator);
      if (e != null)
      {
        paramJsonGenerator.writeFieldName("open");
        StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(e, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
