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

public final class TemplateFilterBase
{
  public static final TemplateFilterBase OTHER = new TemplateFilterBase().a(Tag.OTHER);
  private Tag a;
  private List<String> b;
  
  private TemplateFilterBase() {}
  
  private TemplateFilterBase a(Tag paramTag)
  {
    TemplateFilterBase localTemplateFilterBase = new TemplateFilterBase();
    a = paramTag;
    return localTemplateFilterBase;
  }
  
  private TemplateFilterBase a(Tag paramTag, List<String> paramList)
  {
    TemplateFilterBase localTemplateFilterBase = new TemplateFilterBase();
    a = paramTag;
    b = paramList;
    return localTemplateFilterBase;
  }
  
  public static TemplateFilterBase filterSome(List<String> paramList)
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
        return new TemplateFilterBase().a(Tag.FILTER_SOME, paramList);
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
    if ((paramObject instanceof TemplateFilterBase))
    {
      paramObject = (TemplateFilterBase)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
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
    return Arrays.hashCode(new Object[] { a, b });
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
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends UnionSerializer<TemplateFilterBase>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public TemplateFilterBase deserialize(JsonParser paramJsonParser)
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
          localObject = TemplateFilterBase.filterSome((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        else
        {
          localObject = TemplateFilterBase.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(TemplateFilterBase paramTemplateFilterBase, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (TemplateFilterBase.1.a[paramTemplateFilterBase.tag().ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("filter_some", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("filter_some");
      StoneSerializers.list(StoneSerializers.string()).serialize(TemplateFilterBase.a(paramTemplateFilterBase), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
  
  public static enum Tag
  {
    private Tag() {}
  }
}
