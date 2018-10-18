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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

class AlphaGetMetadataArg
  extends GetMetadataArg
{
  protected final List<String> a;
  
  public AlphaGetMetadataArg(String paramString)
  {
    this(paramString, false, false, false, null, null);
  }
  
  public AlphaGetMetadataArg(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, TemplateFilterBase paramTemplateFilterBase, List<String> paramList)
  {
    super(paramString, paramBoolean1, paramBoolean2, paramBoolean3, paramTemplateFilterBase);
    if (paramList != null)
    {
      paramString = paramList.iterator();
      while (paramString.hasNext())
      {
        paramTemplateFilterBase = (String)paramString.next();
        if (paramTemplateFilterBase != null)
        {
          if (paramTemplateFilterBase.length() >= 1)
          {
            if (!Pattern.matches("(/|ptid:).*", paramTemplateFilterBase)) {
              throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' does not match pattern");
            }
          }
          else {
            throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' is shorter than 1");
          }
        }
        else {
          throw new IllegalArgumentException("An item in list 'includePropertyTemplates' is null");
        }
      }
    }
    a = paramList;
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
      paramObject = (AlphaGetMetadataArg)paramObject;
      if (((b == b) || (b.equals(b))) && (c == c) && (d == d) && (e == e) && ((f == f) || ((f != null) && (f.equals(f)))))
      {
        if (a == a) {
          break label162;
        }
        if ((a != null) && (a.equals(a))) {
          return true;
        }
      }
      bool = false;
      label162:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a });
    return super.hashCode() * 31 + i;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
    extends GetMetadataArg.Builder
  {
    protected List<String> includePropertyTemplates = null;
    
    protected Builder(String paramString)
    {
      super();
    }
    
    public AlphaGetMetadataArg build()
    {
      return new AlphaGetMetadataArg(path, includeMediaInfo, includeDeleted, includeHasExplicitSharedMembers, includePropertyGroups, includePropertyTemplates);
    }
    
    public Builder withIncludeDeleted(Boolean paramBoolean)
    {
      super.withIncludeDeleted(paramBoolean);
      return this;
    }
    
    public Builder withIncludeHasExplicitSharedMembers(Boolean paramBoolean)
    {
      super.withIncludeHasExplicitSharedMembers(paramBoolean);
      return this;
    }
    
    public Builder withIncludeMediaInfo(Boolean paramBoolean)
    {
      super.withIncludeMediaInfo(paramBoolean);
      return this;
    }
    
    public Builder withIncludePropertyGroups(TemplateFilterBase paramTemplateFilterBase)
    {
      super.withIncludePropertyGroups(paramTemplateFilterBase);
      return this;
    }
    
    public Builder withIncludePropertyTemplates(List<String> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
          {
            if (str.length() >= 1)
            {
              if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' does not match pattern");
              }
            }
            else {
              throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' is shorter than 1");
            }
          }
          else {
            throw new IllegalArgumentException("An item in list 'includePropertyTemplates' is null");
          }
        }
      }
      includePropertyTemplates = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<AlphaGetMetadataArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public AlphaGetMetadataArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("include_media_info".equals(str2)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_deleted".equals(str2)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_has_explicit_shared_members".equals(str2)) {
            localBoolean3 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_property_groups".equals(str2)) {
            localObject1 = (TemplateFilterBase)StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("include_property_templates".equals(str2)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new AlphaGetMetadataArg(str1, localBoolean2.booleanValue(), localBoolean1.booleanValue(), localBoolean3.booleanValue(), (TemplateFilterBase)localObject1, (List)localObject2);
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
    
    public void a(AlphaGetMetadataArg paramAlphaGetMetadataArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
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
      if (a != null)
      {
        paramJsonGenerator.writeFieldName("include_property_templates");
        StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(a, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
