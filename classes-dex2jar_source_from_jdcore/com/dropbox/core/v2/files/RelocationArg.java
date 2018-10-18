package com.dropbox.core.v2.files;

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

class RelocationArg
  extends RelocationPath
{
  protected final boolean a;
  protected final boolean b;
  protected final boolean c;
  
  public RelocationArg(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, false, false, false);
  }
  
  public RelocationArg(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramString1, paramString2);
    a = paramBoolean1;
    b = paramBoolean2;
    c = paramBoolean3;
  }
  
  public static Builder a(String paramString1, String paramString2)
  {
    return new Builder(paramString1, paramString2);
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
      paramObject = (RelocationArg)paramObject;
      return ((fromPath == fromPath) || (fromPath.equals(fromPath))) && ((toPath == toPath) || (toPath.equals(toPath))) && (a == a) && (b == b) && (c == c);
    }
    return false;
  }
  
  public String getFromPath()
  {
    return fromPath;
  }
  
  public String getToPath()
  {
    return toPath;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { Boolean.valueOf(a), Boolean.valueOf(b), Boolean.valueOf(c) });
    return super.hashCode() * 31 + i;
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
    protected boolean allowOwnershipTransfer;
    protected boolean allowSharedFolder;
    protected boolean autorename;
    protected final String fromPath;
    protected final String toPath;
    
    protected Builder(String paramString1, String paramString2)
    {
      if (paramString1 != null)
      {
        if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", paramString1))
        {
          fromPath = paramString1;
          if (paramString2 != null)
          {
            if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", paramString2))
            {
              toPath = paramString2;
              allowSharedFolder = false;
              autorename = false;
              allowOwnershipTransfer = false;
              return;
            }
            throw new IllegalArgumentException("String 'toPath' does not match pattern");
          }
          throw new IllegalArgumentException("Required value for 'toPath' is null");
        }
        throw new IllegalArgumentException("String 'fromPath' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'fromPath' is null");
    }
    
    public RelocationArg build()
    {
      return new RelocationArg(fromPath, toPath, allowSharedFolder, autorename, allowOwnershipTransfer);
    }
    
    public Builder withAllowOwnershipTransfer(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        allowOwnershipTransfer = paramBoolean.booleanValue();
        return this;
      }
      allowOwnershipTransfer = false;
      return this;
    }
    
    public Builder withAllowSharedFolder(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        allowSharedFolder = paramBoolean.booleanValue();
        return this;
      }
      allowSharedFolder = false;
      return this;
    }
    
    public Builder withAutorename(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        autorename = paramBoolean.booleanValue();
        return this;
      }
      autorename = false;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<RelocationArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public RelocationArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Boolean localBoolean2 = Boolean.valueOf(false);
        Boolean localBoolean1 = Boolean.valueOf(false);
        Boolean localBoolean3 = Boolean.valueOf(false);
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("from_path".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("to_path".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("allow_shared_folder".equals(str)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("autorename".equals(str)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("allow_ownership_transfer".equals(str)) {
            localBoolean3 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new RelocationArg((String)localObject2, (String)localObject1, localBoolean2.booleanValue(), localBoolean1.booleanValue(), localBoolean3.booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"to_path\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"from_path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(RelocationArg paramRelocationArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("from_path");
      StoneSerializers.string().serialize(fromPath, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("to_path");
      StoneSerializers.string().serialize(toPath, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("allow_shared_folder");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(a), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("autorename");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("allow_ownership_transfer");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
