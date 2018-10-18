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

public class PropertiesSearchQuery
{
  protected final LogicalOperator logicalOperator;
  protected final PropertiesSearchMode mode;
  protected final String query;
  
  public PropertiesSearchQuery(String paramString, PropertiesSearchMode paramPropertiesSearchMode)
  {
    this(paramString, paramPropertiesSearchMode, LogicalOperator.OR_OPERATOR);
  }
  
  public PropertiesSearchQuery(String paramString, PropertiesSearchMode paramPropertiesSearchMode, LogicalOperator paramLogicalOperator)
  {
    if (paramString != null)
    {
      query = paramString;
      if (paramPropertiesSearchMode != null)
      {
        mode = paramPropertiesSearchMode;
        if (paramLogicalOperator != null)
        {
          logicalOperator = paramLogicalOperator;
          return;
        }
        throw new IllegalArgumentException("Required value for 'logicalOperator' is null");
      }
      throw new IllegalArgumentException("Required value for 'mode' is null");
    }
    throw new IllegalArgumentException("Required value for 'query' is null");
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
      paramObject = (PropertiesSearchQuery)paramObject;
      if (((query == query) || (query.equals(query))) && ((mode == mode) || (mode.equals(mode))))
      {
        if (logicalOperator == logicalOperator) {
          break label113;
        }
        if (logicalOperator.equals(logicalOperator)) {
          return true;
        }
      }
      bool = false;
      label113:
      return bool;
    }
    return false;
  }
  
  public LogicalOperator getLogicalOperator()
  {
    return logicalOperator;
  }
  
  public PropertiesSearchMode getMode()
  {
    return mode;
  }
  
  public String getQuery()
  {
    return query;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { query, mode, logicalOperator });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<PropertiesSearchQuery>
  {
    public static final a a = new a();
    
    a() {}
    
    public PropertiesSearchQuery a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
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
        localObject1 = LogicalOperator.OR_OPERATOR;
        localObject2 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("query".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("mode".equals(str2)) {
            localObject2 = PropertiesSearchMode.a.a.a(paramJsonParser);
          } else if ("logical_operator".equals(str2)) {
            localObject1 = LogicalOperator.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new PropertiesSearchQuery(str1, (PropertiesSearchMode)localObject2, (LogicalOperator)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"mode\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"query\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(PropertiesSearchQuery paramPropertiesSearchQuery, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("query");
      StoneSerializers.string().serialize(query, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("mode");
      PropertiesSearchMode.a.a.a(mode, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("logical_operator");
      LogicalOperator.a.a.a(logicalOperator, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
