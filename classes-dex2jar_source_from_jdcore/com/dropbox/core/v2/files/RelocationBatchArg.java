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

class RelocationBatchArg
{
  protected final List<RelocationPath> a;
  protected final boolean b;
  protected final boolean c;
  protected final boolean d;
  
  public RelocationBatchArg(List<RelocationPath> paramList)
  {
    this(paramList, false, false, false);
  }
  
  public RelocationBatchArg(List<RelocationPath> paramList, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramList != null)
    {
      if (paramList.size() >= 1)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((RelocationPath)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'entries' is null");
          }
        }
        a = paramList;
        b = paramBoolean1;
        c = paramBoolean2;
        d = paramBoolean3;
        return;
      }
      throw new IllegalArgumentException("List 'entries' has fewer than 1 items");
    }
    throw new IllegalArgumentException("Required value for 'entries' is null");
  }
  
  public static Builder a(List<RelocationPath> paramList)
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
      paramObject = (RelocationBatchArg)paramObject;
      return ((a == a) || (a.equals(a))) && (b == b) && (c == c) && (d == d);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Boolean.valueOf(b), Boolean.valueOf(c), Boolean.valueOf(d) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected boolean allowOwnershipTransfer;
    protected boolean allowSharedFolder;
    protected boolean autorename;
    protected final List<RelocationPath> entries;
    
    protected Builder(List<RelocationPath> paramList)
    {
      if (paramList != null)
      {
        if (paramList.size() >= 1)
        {
          Iterator localIterator = paramList.iterator();
          while (localIterator.hasNext()) {
            if ((RelocationPath)localIterator.next() == null) {
              throw new IllegalArgumentException("An item in list 'entries' is null");
            }
          }
          entries = paramList;
          allowSharedFolder = false;
          autorename = false;
          allowOwnershipTransfer = false;
          return;
        }
        throw new IllegalArgumentException("List 'entries' has fewer than 1 items");
      }
      throw new IllegalArgumentException("Required value for 'entries' is null");
    }
    
    public RelocationBatchArg build()
    {
      return new RelocationBatchArg(entries, allowSharedFolder, autorename, allowOwnershipTransfer);
    }
    
    public Builder withAllowOwnershipTransfer(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        allowOwnershipTransfer = paramBoolean.booleanValue();
        return this;
      }
      allowOwnershipTransfer = false;
      return this;
    }
    
    public Builder withAllowSharedFolder(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        allowSharedFolder = paramBoolean.booleanValue();
        return this;
      }
      allowSharedFolder = false;
      return this;
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
  }
  
  static class a
    extends StructSerializer<RelocationBatchArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public RelocationBatchArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = Boolean.valueOf(false);
        localObject1 = Boolean.valueOf(false);
        Boolean localBoolean = Boolean.valueOf(false);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("entries".equals(str)) {
            localList = (List)StoneSerializers.list(RelocationPath.a.a).deserialize(paramJsonParser);
          } else if ("allow_shared_folder".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("autorename".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("allow_ownership_transfer".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList != null)
        {
          localObject1 = new RelocationBatchArg(localList, ((Boolean)localObject2).booleanValue(), ((Boolean)localObject1).booleanValue(), localBoolean.booleanValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"entries\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(RelocationBatchArg paramRelocationBatchArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("entries");
      StoneSerializers.list(RelocationPath.a.a).serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("allow_shared_folder");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(b), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("autorename");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(c), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("allow_ownership_transfer");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
