package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum LogicalOperator
{
  private LogicalOperator() {}
  
  static class a
    extends UnionSerializer<LogicalOperator>
  {
    public static final a a = new a();
    
    a() {}
    
    public LogicalOperator a(JsonParser paramJsonParser)
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
        if ("or_operator".equals(localObject)) {
          localObject = LogicalOperator.OR_OPERATOR;
        } else {
          localObject = LogicalOperator.OTHER;
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
    
    public void a(LogicalOperator paramLogicalOperator, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (LogicalOperator.1.a[paramLogicalOperator.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("or_operator");
    }
  }
}
