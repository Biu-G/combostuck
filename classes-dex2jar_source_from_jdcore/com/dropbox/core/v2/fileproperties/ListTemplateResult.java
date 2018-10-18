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
import java.util.regex.Pattern;

public class ListTemplateResult
{
  protected final List<String> templateIds;
  
  public ListTemplateResult(List<String> paramList)
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
              throw new IllegalArgumentException("Stringan item in list 'templateIds' does not match pattern");
            }
          }
          else {
            throw new IllegalArgumentException("Stringan item in list 'templateIds' is shorter than 1");
          }
        }
        else {
          throw new IllegalArgumentException("An item in list 'templateIds' is null");
        }
      }
      templateIds = paramList;
      return;
    }
    throw new IllegalArgumentException("Required value for 'templateIds' is null");
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
      paramObject = (ListTemplateResult)paramObject;
      if (templateIds != templateIds)
      {
        if (templateIds.equals(templateIds)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public List<String> getTemplateIds()
  {
    return templateIds;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { templateIds });
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
    extends StructSerializer<ListTemplateResult>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public ListTemplateResult deserialize(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          localObject2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("template_ids".equals(localObject2)) {
            localObject1 = (List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          localObject1 = new ListTemplateResult((List)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"template_ids\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(ListTemplateResult paramListTemplateResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("template_ids");
      StoneSerializers.list(StoneSerializers.string()).serialize(templateIds, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
