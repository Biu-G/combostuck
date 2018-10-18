package com.dropbox.core.v2.paper;

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

class ListPaperDocsArgs
{
  protected final ListPaperDocsFilterBy a;
  protected final ListPaperDocsSortBy b;
  protected final ListPaperDocsSortOrder c;
  protected final int d;
  
  public ListPaperDocsArgs()
  {
    this(ListPaperDocsFilterBy.DOCS_ACCESSED, ListPaperDocsSortBy.ACCESSED, ListPaperDocsSortOrder.ASCENDING, 1000);
  }
  
  public ListPaperDocsArgs(ListPaperDocsFilterBy paramListPaperDocsFilterBy, ListPaperDocsSortBy paramListPaperDocsSortBy, ListPaperDocsSortOrder paramListPaperDocsSortOrder, int paramInt)
  {
    if (paramListPaperDocsFilterBy != null)
    {
      a = paramListPaperDocsFilterBy;
      if (paramListPaperDocsSortBy != null)
      {
        b = paramListPaperDocsSortBy;
        if (paramListPaperDocsSortOrder != null)
        {
          c = paramListPaperDocsSortOrder;
          if (paramInt >= 1)
          {
            if (paramInt <= 1000)
            {
              d = paramInt;
              return;
            }
            throw new IllegalArgumentException("Number 'limit' is larger than 1000");
          }
          throw new IllegalArgumentException("Number 'limit' is smaller than 1");
        }
        throw new IllegalArgumentException("Required value for 'sortOrder' is null");
      }
      throw new IllegalArgumentException("Required value for 'sortBy' is null");
    }
    throw new IllegalArgumentException("Required value for 'filterBy' is null");
  }
  
  public static Builder a()
  {
    return new Builder();
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
      paramObject = (ListPaperDocsArgs)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && ((c == c) || (c.equals(c))) && (d == d);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, Integer.valueOf(d) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected ListPaperDocsFilterBy filterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
    protected int limit = 1000;
    protected ListPaperDocsSortBy sortBy = ListPaperDocsSortBy.ACCESSED;
    protected ListPaperDocsSortOrder sortOrder = ListPaperDocsSortOrder.ASCENDING;
    
    protected Builder() {}
    
    public ListPaperDocsArgs build()
    {
      return new ListPaperDocsArgs(filterBy, sortBy, sortOrder, limit);
    }
    
    public Builder withFilterBy(ListPaperDocsFilterBy paramListPaperDocsFilterBy)
    {
      if (paramListPaperDocsFilterBy != null)
      {
        filterBy = paramListPaperDocsFilterBy;
        return this;
      }
      filterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
      return this;
    }
    
    public Builder withLimit(Integer paramInteger)
    {
      if (paramInteger.intValue() >= 1)
      {
        if (paramInteger.intValue() <= 1000)
        {
          if (paramInteger != null)
          {
            limit = paramInteger.intValue();
            return this;
          }
          limit = 1000;
          return this;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000");
      }
      throw new IllegalArgumentException("Number 'limit' is smaller than 1");
    }
    
    public Builder withSortBy(ListPaperDocsSortBy paramListPaperDocsSortBy)
    {
      if (paramListPaperDocsSortBy != null)
      {
        sortBy = paramListPaperDocsSortBy;
        return this;
      }
      sortBy = ListPaperDocsSortBy.ACCESSED;
      return this;
    }
    
    public Builder withSortOrder(ListPaperDocsSortOrder paramListPaperDocsSortOrder)
    {
      if (paramListPaperDocsSortOrder != null)
      {
        sortOrder = paramListPaperDocsSortOrder;
        return this;
      }
      sortOrder = ListPaperDocsSortOrder.ASCENDING;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ListPaperDocsArgs>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListPaperDocsArgs a(JsonParser paramJsonParser, boolean paramBoolean)
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
        ListPaperDocsFilterBy localListPaperDocsFilterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
        ListPaperDocsSortBy localListPaperDocsSortBy = ListPaperDocsSortBy.ACCESSED;
        localObject2 = ListPaperDocsSortOrder.ASCENDING;
        localObject1 = Integer.valueOf(1000);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("filter_by".equals(str)) {
            localListPaperDocsFilterBy = ListPaperDocsFilterBy.a.a.a(paramJsonParser);
          } else if ("sort_by".equals(str)) {
            localListPaperDocsSortBy = ListPaperDocsSortBy.a.a.a(paramJsonParser);
          } else if ("sort_order".equals(str)) {
            localObject2 = ListPaperDocsSortOrder.a.a.a(paramJsonParser);
          } else if ("limit".equals(str)) {
            localObject1 = (Integer)StoneSerializers.int32().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new ListPaperDocsArgs(localListPaperDocsFilterBy, localListPaperDocsSortBy, (ListPaperDocsSortOrder)localObject2, ((Integer)localObject1).intValue());
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListPaperDocsArgs paramListPaperDocsArgs, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("filter_by");
      ListPaperDocsFilterBy.a.a.a(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("sort_by");
      ListPaperDocsSortBy.a.a.a(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("sort_order");
      ListPaperDocsSortOrder.a.a.a(c, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("limit");
      StoneSerializers.int32().serialize(Integer.valueOf(d), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
