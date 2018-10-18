package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class ListFileMembersIndividualResult
{
  public static final ListFileMembersIndividualResult OTHER = new ListFileMembersIndividualResult().a(Tag.OTHER);
  private Tag a;
  private ListFileMembersCountResult b;
  private SharingFileAccessError c;
  
  private ListFileMembersIndividualResult() {}
  
  private ListFileMembersIndividualResult a(Tag paramTag)
  {
    ListFileMembersIndividualResult localListFileMembersIndividualResult = new ListFileMembersIndividualResult();
    a = paramTag;
    return localListFileMembersIndividualResult;
  }
  
  private ListFileMembersIndividualResult a(Tag paramTag, ListFileMembersCountResult paramListFileMembersCountResult)
  {
    ListFileMembersIndividualResult localListFileMembersIndividualResult = new ListFileMembersIndividualResult();
    a = paramTag;
    b = paramListFileMembersCountResult;
    return localListFileMembersIndividualResult;
  }
  
  private ListFileMembersIndividualResult a(Tag paramTag, SharingFileAccessError paramSharingFileAccessError)
  {
    ListFileMembersIndividualResult localListFileMembersIndividualResult = new ListFileMembersIndividualResult();
    a = paramTag;
    c = paramSharingFileAccessError;
    return localListFileMembersIndividualResult;
  }
  
  public static ListFileMembersIndividualResult accessError(SharingFileAccessError paramSharingFileAccessError)
  {
    if (paramSharingFileAccessError != null) {
      return new ListFileMembersIndividualResult().a(Tag.ACCESS_ERROR, paramSharingFileAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static ListFileMembersIndividualResult result(ListFileMembersCountResult paramListFileMembersCountResult)
  {
    if (paramListFileMembersCountResult != null) {
      return new ListFileMembersIndividualResult().a(Tag.RESULT, paramListFileMembersCountResult);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof ListFileMembersIndividualResult))
    {
      paramObject = (ListFileMembersIndividualResult)paramObject;
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
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool2;
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
    }
    return false;
  }
  
  public SharingFileAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public ListFileMembersCountResult getResultValue()
  {
    if (a == Tag.RESULT) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.RESULT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isResult()
  {
    return a == Tag.RESULT;
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
    extends UnionSerializer<ListFileMembersIndividualResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFileMembersIndividualResult a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      Object localObject;
      int i;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
        i = 1;
      }
      else
      {
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
        i = 0;
      }
      if (localObject != null)
      {
        if ("result".equals(localObject))
        {
          localObject = ListFileMembersIndividualResult.result(ListFileMembersCountResult.a.a.a(paramJsonParser, true));
        }
        else if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = ListFileMembersIndividualResult.accessError(SharingFileAccessError.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = ListFileMembersIndividualResult.OTHER;
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
    
    public void a(ListFileMembersIndividualResult paramListFileMembersIndividualResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListFileMembersIndividualResult.1.a[paramListFileMembersIndividualResult.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("access_error", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("access_error");
        SharingFileAccessError.a.a.a(ListFileMembersIndividualResult.b(paramListFileMembersIndividualResult), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("result", paramJsonGenerator);
      ListFileMembersCountResult.a.a.a(ListFileMembersIndividualResult.a(paramListFileMembersIndividualResult), paramJsonGenerator, true);
      paramJsonGenerator.writeEndObject();
    }
  }
}
