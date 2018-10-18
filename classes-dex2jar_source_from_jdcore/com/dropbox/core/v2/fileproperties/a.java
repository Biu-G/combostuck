package com.dropbox.core.v2.fileproperties;

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

class a
{
  protected final List<PropertiesSearchQuery> a;
  protected final TemplateFilter b;
  
  public a(List<PropertiesSearchQuery> paramList)
  {
    this(paramList, TemplateFilter.FILTER_NONE);
  }
  
  public a(List<PropertiesSearchQuery> paramList, TemplateFilter paramTemplateFilter)
  {
    if (paramList != null)
    {
      if (paramList.size() >= 1)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((PropertiesSearchQuery)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'queries' is null");
          }
        }
        a = paramList;
        if (paramTemplateFilter != null)
        {
          b = paramTemplateFilter;
          return;
        }
        throw new IllegalArgumentException("Required value for 'templateFilter' is null");
      }
      throw new IllegalArgumentException("List 'queries' has fewer than 1 items");
    }
    throw new IllegalArgumentException("Required value for 'queries' is null");
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
      paramObject = (a)paramObject;
      if ((a == a) || (a.equals(a)))
      {
        if (b == b) {
          break label90;
        }
        if (b.equals(b)) {
          return true;
        }
      }
      bool = false;
      label90:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<a>
  {
    public static final a a = new a();
    
    a() {}
    
    public a a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
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
        localObject1 = TemplateFilter.FILTER_NONE;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("queries".equals(str)) {
            localObject2 = (List)StoneSerializers.list(PropertiesSearchQuery.a.a).deserialize(paramJsonParser);
          } else if ("template_filter".equals(str)) {
            localObject1 = TemplateFilter.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new a((List)localObject2, (TemplateFilter)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"queries\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(a paramA, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("queries");
      StoneSerializers.list(PropertiesSearchQuery.a.a).serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("template_filter");
      TemplateFilter.a.a.a(b, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
