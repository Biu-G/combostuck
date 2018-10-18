package com.dropbox.core.v2.files;

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

public final class WriteMode
{
  public static final WriteMode ADD = new WriteMode().a(Tag.ADD);
  public static final WriteMode OVERWRITE = new WriteMode().a(Tag.OVERWRITE);
  private Tag a;
  private String b;
  
  private WriteMode() {}
  
  private WriteMode a(Tag paramTag)
  {
    WriteMode localWriteMode = new WriteMode();
    a = paramTag;
    return localWriteMode;
  }
  
  private WriteMode a(Tag paramTag, String paramString)
  {
    WriteMode localWriteMode = new WriteMode();
    a = paramTag;
    b = paramString;
    return localWriteMode;
  }
  
  public static WriteMode update(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 9)
      {
        if (Pattern.matches("[0-9a-f]+", paramString)) {
          return new WriteMode().a(Tag.UPDATE, paramString);
        }
        throw new IllegalArgumentException("String does not match pattern");
      }
      throw new IllegalArgumentException("String is shorter than 9");
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
    if ((paramObject instanceof WriteMode))
    {
      paramObject = (WriteMode)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool = false;
        }
        return bool;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public String getUpdateValue()
  {
    if (a == Tag.UPDATE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.UPDATE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public boolean isAdd()
  {
    return a == Tag.ADD;
  }
  
  public boolean isOverwrite()
  {
    return a == Tag.OVERWRITE;
  }
  
  public boolean isUpdate()
  {
    return a == Tag.UPDATE;
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
    extends UnionSerializer<WriteMode>
  {
    public static final a a = new a();
    
    a() {}
    
    public WriteMode a(JsonParser paramJsonParser)
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
        if ("add".equals(localObject))
        {
          localObject = WriteMode.ADD;
        }
        else if ("overwrite".equals(localObject))
        {
          localObject = WriteMode.OVERWRITE;
        }
        else
        {
          if (!"update".equals(localObject)) {
            break label115;
          }
          expectField("update", paramJsonParser);
          localObject = WriteMode.update((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label115:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(WriteMode paramWriteMode, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (WriteMode.1.a[paramWriteMode.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramWriteMode.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("update", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("update");
        StoneSerializers.string().serialize(WriteMode.a(paramWriteMode), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeString("overwrite");
        return;
      }
      paramJsonGenerator.writeString("add");
    }
  }
}
