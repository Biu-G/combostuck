package com.dropbox.core.v2.team;

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

public final class MembersAddJobStatus
{
  public static final MembersAddJobStatus IN_PROGRESS = new MembersAddJobStatus().a(Tag.IN_PROGRESS);
  private Tag a;
  private List<MemberAddResult> b;
  private String c;
  
  private MembersAddJobStatus() {}
  
  private MembersAddJobStatus a(Tag paramTag)
  {
    MembersAddJobStatus localMembersAddJobStatus = new MembersAddJobStatus();
    a = paramTag;
    return localMembersAddJobStatus;
  }
  
  private MembersAddJobStatus a(Tag paramTag, String paramString)
  {
    MembersAddJobStatus localMembersAddJobStatus = new MembersAddJobStatus();
    a = paramTag;
    c = paramString;
    return localMembersAddJobStatus;
  }
  
  private MembersAddJobStatus a(Tag paramTag, List<MemberAddResult> paramList)
  {
    MembersAddJobStatus localMembersAddJobStatus = new MembersAddJobStatus();
    a = paramTag;
    b = paramList;
    return localMembersAddJobStatus;
  }
  
  public static MembersAddJobStatus complete(List<MemberAddResult> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((MemberAddResult)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new MembersAddJobStatus().a(Tag.COMPLETE, paramList);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static MembersAddJobStatus failed(String paramString)
  {
    if (paramString != null) {
      return new MembersAddJobStatus().a(Tag.FAILED, paramString);
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
    if ((paramObject instanceof MembersAddJobStatus))
    {
      paramObject = (MembersAddJobStatus)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 3: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
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
      return true;
    }
    return false;
  }
  
  public List<MemberAddResult> getCompleteValue()
  {
    if (a == Tag.COMPLETE) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.COMPLETE, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public String getFailedValue()
  {
    if (a == Tag.FAILED) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.FAILED, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isComplete()
  {
    return a == Tag.COMPLETE;
  }
  
  public boolean isFailed()
  {
    return a == Tag.FAILED;
  }
  
  public boolean isInProgress()
  {
    return a == Tag.IN_PROGRESS;
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
    extends UnionSerializer<MembersAddJobStatus>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersAddJobStatus a(JsonParser paramJsonParser)
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
        if ("in_progress".equals(localObject))
        {
          localObject = MembersAddJobStatus.IN_PROGRESS;
        }
        else if ("complete".equals(localObject))
        {
          expectField("complete", paramJsonParser);
          localObject = MembersAddJobStatus.complete((List)StoneSerializers.list(MemberAddResult.a.a).deserialize(paramJsonParser));
        }
        else
        {
          if (!"failed".equals(localObject)) {
            break label134;
          }
          expectField("failed", paramJsonParser);
          localObject = MembersAddJobStatus.failed((String)StoneSerializers.string().deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label134:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MembersAddJobStatus paramMembersAddJobStatus, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersAddJobStatus.1.a[paramMembersAddJobStatus.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramMembersAddJobStatus.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("failed", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("failed");
        StoneSerializers.string().serialize(MembersAddJobStatus.b(paramMembersAddJobStatus), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("complete", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("complete");
        StoneSerializers.list(MemberAddResult.a.a).serialize(MembersAddJobStatus.a(paramMembersAddJobStatus), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
