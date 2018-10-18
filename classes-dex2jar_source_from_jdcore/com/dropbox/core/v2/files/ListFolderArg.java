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

class ListFolderArg
{
  protected final String a;
  protected final boolean b;
  protected final boolean c;
  protected final boolean d;
  protected final boolean e;
  protected final boolean f;
  protected final Long g;
  protected final SharedLink h;
  protected final TemplateFilterBase i;
  
  public ListFolderArg(String paramString)
  {
    this(paramString, false, false, false, false, true, null, null, null);
  }
  
  public ListFolderArg(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, Long paramLong, SharedLink paramSharedLink, TemplateFilterBase paramTemplateFilterBase)
  {
    if (paramString != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", paramString))
      {
        a = paramString;
        b = paramBoolean1;
        c = paramBoolean2;
        d = paramBoolean3;
        e = paramBoolean4;
        f = paramBoolean5;
        if (paramLong != null) {
          if (paramLong.longValue() >= 1L)
          {
            if (paramLong.longValue() > 2000L) {
              throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
            }
          }
          else {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
          }
        }
        g = paramLong;
        h = paramSharedLink;
        i = paramTemplateFilterBase;
        return;
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
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
      paramObject = (ListFolderArg)paramObject;
      if (((a == a) || (a.equals(a))) && (b == b) && (c == c) && (d == d) && (e == e) && (f == f) && ((g == g) || ((g != null) && (g.equals(g)))) && ((h == h) || ((h != null) && (h.equals(h)))))
      {
        if (i == i) {
          break label214;
        }
        if ((i != null) && (i.equals(i))) {
          return true;
        }
      }
      bool = false;
      label214:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Boolean.valueOf(b), Boolean.valueOf(c), Boolean.valueOf(d), Boolean.valueOf(e), Boolean.valueOf(f), g, h, i });
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
    protected boolean includeMountedFolders;
    protected TemplateFilterBase includePropertyGroups;
    protected Long limit;
    protected final String path;
    protected boolean recursive;
    protected SharedLink sharedLink;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", paramString))
        {
          path = paramString;
          recursive = false;
          includeMediaInfo = false;
          includeDeleted = false;
          includeHasExplicitSharedMembers = false;
          includeMountedFolders = true;
          limit = null;
          sharedLink = null;
          includePropertyGroups = null;
          return;
        }
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public ListFolderArg build()
    {
      return new ListFolderArg(path, recursive, includeMediaInfo, includeDeleted, includeHasExplicitSharedMembers, includeMountedFolders, limit, sharedLink, includePropertyGroups);
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
    
    public Builder withIncludeMountedFolders(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        includeMountedFolders = paramBoolean.booleanValue();
        return this;
      }
      includeMountedFolders = true;
      return this;
    }
    
    public Builder withIncludePropertyGroups(TemplateFilterBase paramTemplateFilterBase)
    {
      includePropertyGroups = paramTemplateFilterBase;
      return this;
    }
    
    public Builder withLimit(Long paramLong)
    {
      if (paramLong != null) {
        if (paramLong.longValue() >= 1L)
        {
          if (paramLong.longValue() > 2000L) {
            throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
          }
        }
        else {
          throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
      }
      limit = paramLong;
      return this;
    }
    
    public Builder withRecursive(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        recursive = paramBoolean.booleanValue();
        return this;
      }
      recursive = false;
      return this;
    }
    
    public Builder withSharedLink(SharedLink paramSharedLink)
    {
      sharedLink = paramSharedLink;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ListFolderArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFolderArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Boolean localBoolean4 = Boolean.valueOf(false);
        Boolean localBoolean3 = Boolean.valueOf(false);
        Boolean localBoolean2 = Boolean.valueOf(false);
        Boolean localBoolean5 = Boolean.valueOf(false);
        Boolean localBoolean1 = Boolean.valueOf(true);
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("recursive".equals(str2)) {
            localBoolean4 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_media_info".equals(str2)) {
            localBoolean3 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_deleted".equals(str2)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_has_explicit_shared_members".equals(str2)) {
            localBoolean5 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("include_mounted_folders".equals(str2)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("limit".equals(str2)) {
            localObject1 = (Long)StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(paramJsonParser);
          } else if ("shared_link".equals(str2)) {
            localObject2 = (SharedLink)StoneSerializers.nullableStruct(SharedLink.a.a).deserialize(paramJsonParser);
          } else if ("include_property_groups".equals(str2)) {
            localObject3 = (TemplateFilterBase)StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new ListFolderArg(str1, localBoolean4.booleanValue(), localBoolean3.booleanValue(), localBoolean2.booleanValue(), localBoolean5.booleanValue(), localBoolean1.booleanValue(), (Long)localObject1, (SharedLink)localObject2, (TemplateFilterBase)localObject3);
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
    
    public void a(ListFolderArg paramListFolderArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("recursive");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_media_info");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_deleted");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_has_explicit_shared_members");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(e), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("include_mounted_folders");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(f), paramJsonGenerator);
      if (g != null)
      {
        paramJsonGenerator.writeFieldName("limit");
        StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(g, paramJsonGenerator);
      }
      if (h != null)
      {
        paramJsonGenerator.writeFieldName("shared_link");
        StoneSerializers.nullableStruct(SharedLink.a.a).serialize(h, paramJsonGenerator);
      }
      if (i != null)
      {
        paramJsonGenerator.writeFieldName("include_property_groups");
        StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).serialize(i, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
