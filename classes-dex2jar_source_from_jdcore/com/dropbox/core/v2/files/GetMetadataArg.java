package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.fileproperties.TemplateFilterBase;
import com.dropbox.core.v2.fileproperties.TemplateFilterBase.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

class GetMetadataArg
{
  protected final String b;
  protected final boolean c;
  protected final boolean d;
  protected final boolean e;
  protected final TemplateFilterBase f;
  
  public GetMetadataArg(String paramString)
  {
    this(paramString, false, false, false, null);
  }
  
  public GetMetadataArg(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, TemplateFilterBase paramTemplateFilterBase)
  {
    if (paramString != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", paramString))
      {
        b = paramString;
        c = paramBoolean1;
        d = paramBoolean2;
        e = paramBoolean3;
        f = paramTemplateFilterBase;
        return;
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
  }
  
  public static Builder b(String paramString)
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
      paramObject = (GetMetadataArg)paramObject;
      if (((b == b) || (b.equals(b))) && (c == c) && (d == d) && (e == e))
      {
        if (f == f) {
          break label128;
        }
        if ((f != null) && (f.equals(f))) {
          return true;
        }
      }
      bool = false;
      label128:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { b, Boolean.valueOf(c), Boolean.valueOf(d), Boolean.valueOf(e), f });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected boolean includeDeleted;
    protected boolean includeHasExplicitSharedMembers;
    protected boolean includeMediaInfo;
    protected TemplateFilterBase includePropertyGroups;
    protected final String path;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", paramString))
        {
          path = paramString;
          includeMediaInfo = false;
          includeDeleted = false;
          includeHasExplicitSharedMembers = false;
          includePropertyGroups = null;
          return;
        }
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public GetMetadataArg build()
    {
      return new GetMetadataArg(path, includeMediaInfo, includeDeleted, includeHasExplicitSharedMembers, includePropertyGroups);
    }
    
    public Builder withIncludeDeleted(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeDeleted = paramBoolean.booleanValue();
        return this;
      }
      includeDeleted = false;
      return this;
    }
    
    public Builder withIncludeHasExplicitSharedMembers(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeHasExplicitSharedMembers = paramBoolean.booleanValue();
        return this;
      }
      includeHasExplicitSharedMembers = false;
      return this;
    }
    
    public Builder withIncludeMediaInfo(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeMediaInfo = paramBoolean.booleanValue();
        return this;
      }
      includeMediaInfo = false;
      return this;
    }
    
    public Builder withIncludePropertyGroups(TemplateFilterBase paramTemplateFilterBase)
    {
      includePropertyGroups = paramTemplateFilterBase;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<GetMetadataArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetMetadataArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("path".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("include_media_info".equals(str)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_deleted".equals(str)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_has_explicit_shared_members".equals(str)) {
            localBoolean3 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_property_groups".equals(str)) {
            localObject1 = (TemplateFilterBase)StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new GetMetadataArg((String)localObject2, localBoolean2.booleanValue(), localBoolean1.booleanValue(), localBoolean3.booleanValue(), (TemplateFilterBase)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetMetadataArg paramGetMetadataArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_media_info");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_deleted");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_has_explicit_shared_members");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(e), paramJsonGenerator);
      if (f != null)
      {
        paramJsonGenerator.writeFieldName("include_property_groups");
        StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).serialize(f, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
