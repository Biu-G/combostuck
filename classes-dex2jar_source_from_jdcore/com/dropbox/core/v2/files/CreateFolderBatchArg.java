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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

class CreateFolderBatchArg
{
  protected final List<String> a;
  protected final boolean b;
  protected final boolean c;
  
  public CreateFolderBatchArg(List<String> paramList)
  {
    this(paramList, false, false);
  }
  
  public CreateFolderBatchArg(List<String> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str != null)
        {
          if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("Stringan item in list 'paths' does not match pattern");
          }
        }
        else {
          throw new IllegalArgumentException("An item in list 'paths' is null");
        }
      }
      a = paramList;
      b = paramBoolean1;
      c = paramBoolean2;
      return;
    }
    throw new IllegalArgumentException("Required value for 'paths' is null");
  }
  
  public static Builder a(List<String> paramList)
  {
    return new Builder(paramList);
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
      paramObject = (CreateFolderBatchArg)paramObject;
      return ((a == a) || (a.equals(a))) && (b == b) && (c == c);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Boolean.valueOf(b), Boolean.valueOf(c) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected boolean autorename;
    protected boolean forceAsync;
    protected final List<String> paths;
    
    protected Builder(List<String> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
          {
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
              throw new IllegalArgumentException("Stringan item in list 'paths' does not match pattern");
            }
          }
          else {
            throw new IllegalArgumentException("An item in list 'paths' is null");
          }
        }
        paths = paramList;
        autorename = false;
        forceAsync = false;
        return;
      }
      throw new IllegalArgumentException("Required value for 'paths' is null");
    }
    
    public CreateFolderBatchArg build()
    {
      return new CreateFolderBatchArg(paths, autorename, forceAsync);
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
    
    public Builder withForceAsync(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        forceAsync = paramBoolean.booleanValue();
        return this;
      }
      forceAsync = false;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<CreateFolderBatchArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFolderBatchArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      List localList = null;
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
        localObject1 = Boolean.valueOf(false);
        localObject2 = Boolean.valueOf(false);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("paths".equals(str)) {
            localList = (List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("autorename".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("force_async".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList != null)
        {
          localObject1 = new CreateFolderBatchArg(localList, ((Boolean)localObject1).booleanValue(), ((Boolean)localObject2).booleanValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"paths\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(CreateFolderBatchArg paramCreateFolderBatchArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("paths");
      StoneSerializers.list(StoneSerializers.string()).serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("autorename");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("force_async");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
