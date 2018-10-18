package com.dropbox.core.v2.fileproperties;

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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class TemplateFilter
{
  public static final TemplateFilter FILTER_NONE = new TemplateFilter().a(Tag.FILTER_NONE);
  public static final TemplateFilter OTHER = new TemplateFilter().a(Tag.OTHER);
  private Tag a;
  private List<String> b;
  
  private TemplateFilter() {}
  
  private TemplateFilter a(Tag paramTag)
  {
    TemplateFilter localTemplateFilter = new TemplateFilter();
    a = paramTag;
    return localTemplateFilter;
  }
  
  private TemplateFilter a(Tag paramTag, List<String> paramList)
  {
    TemplateFilter localTemplateFilter = new TemplateFilter();
    a = paramTag;
    b = paramList;
    return localTemplateFilter;
  }
  
  public static TemplateFilter filterSome(List<String> paramList)
  {
    if (paramList != null)
    {
      if (paramList.size() >= 1)
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
                throw new IllegalArgumentException("Stringan item in list does not match pattern");
              }
            }
            else {
              throw new IllegalArgumentException("Stringan item in list is shorter than 1");
            }
          }
          else {
            throw new IllegalArgumentException("An item in list is null");
          }
        }
        return new TemplateFilter().a(Tag.FILTER_SOME, paramList);
      }
      throw new IllegalArgumentException("List has fewer than 1 items");
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
    if ((paramObject instanceof TemplateFilter))
    {
      paramObject = (TemplateFilter)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public List<String> getFilterSomeValue()
  {
    if (a == Tag.FILTER_SOME) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FILTER_SOME, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isFilterNone()
  {
    return a == Tag.FILTER_NONE;
  }
  
  public boolean isFilterSome()
  {
    return a == Tag.FILTER_SOME;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
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
    extends UnionSerializer<TemplateFilter>
  {
    public static final a a = new a();
    
    a() {}
    
    public TemplateFilter a(JsonParser paramJsonParser)
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
        if ("filter_some".equals(localObject))
        {
          expectField("filter_some", paramJsonParser);
          localObject = TemplateFilter.filterSome((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        else if ("other".equals(localObject))
        {
          localObject = TemplateFilter.OTHER;
        }
        else
        {
          if (!"filter_none".equals(localObject)) {
            break label118;
          }
          localObject = TemplateFilter.FILTER_NONE;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label118:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(TemplateFilter paramTemplateFilter, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TemplateFilter.1.a[paramTemplateFilter.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramTemplateFilter.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("filter_none");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("filter_some", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("filter_some");
      StoneSerializers.list(StoneSerializers.string()).serialize(TemplateFilter.a(paramTemplateFilter), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
