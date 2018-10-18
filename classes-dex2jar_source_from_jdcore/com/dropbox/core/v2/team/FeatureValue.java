package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public final class FeatureValue
{
  public static final FeatureValue OTHER = new FeatureValue().a(Tag.OTHER);
  private Tag a;
  private UploadApiRateLimitValue b;
  private HasTeamSharedDropboxValue c;
  private HasTeamFileEventsValue d;
  private HasTeamSelectiveSyncValue e;
  
  private FeatureValue() {}
  
  private FeatureValue a(Tag paramTag)
  {
    FeatureValue localFeatureValue = new FeatureValue();
    a = paramTag;
    return localFeatureValue;
  }
  
  private FeatureValue a(Tag paramTag, HasTeamFileEventsValue paramHasTeamFileEventsValue)
  {
    FeatureValue localFeatureValue = new FeatureValue();
    a = paramTag;
    d = paramHasTeamFileEventsValue;
    return localFeatureValue;
  }
  
  private FeatureValue a(Tag paramTag, HasTeamSelectiveSyncValue paramHasTeamSelectiveSyncValue)
  {
    FeatureValue localFeatureValue = new FeatureValue();
    a = paramTag;
    e = paramHasTeamSelectiveSyncValue;
    return localFeatureValue;
  }
  
  private FeatureValue a(Tag paramTag, HasTeamSharedDropboxValue paramHasTeamSharedDropboxValue)
  {
    FeatureValue localFeatureValue = new FeatureValue();
    a = paramTag;
    c = paramHasTeamSharedDropboxValue;
    return localFeatureValue;
  }
  
  private FeatureValue a(Tag paramTag, UploadApiRateLimitValue paramUploadApiRateLimitValue)
  {
    FeatureValue localFeatureValue = new FeatureValue();
    a = paramTag;
    b = paramUploadApiRateLimitValue;
    return localFeatureValue;
  }
  
  public static FeatureValue hasTeamFileEvents(HasTeamFileEventsValue paramHasTeamFileEventsValue)
  {
    if (paramHasTeamFileEventsValue != null) {
      return new FeatureValue().a(Tag.HAS_TEAM_FILE_EVENTS, paramHasTeamFileEventsValue);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static FeatureValue hasTeamSelectiveSync(HasTeamSelectiveSyncValue paramHasTeamSelectiveSyncValue)
  {
    if (paramHasTeamSelectiveSyncValue != null) {
      return new FeatureValue().a(Tag.HAS_TEAM_SELECTIVE_SYNC, paramHasTeamSelectiveSyncValue);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static FeatureValue hasTeamSharedDropbox(HasTeamSharedDropboxValue paramHasTeamSharedDropboxValue)
  {
    if (paramHasTeamSharedDropboxValue != null) {
      return new FeatureValue().a(Tag.HAS_TEAM_SHARED_DROPBOX, paramHasTeamSharedDropboxValue);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static FeatureValue uploadApiRateLimit(UploadApiRateLimitValue paramUploadApiRateLimitValue)
  {
    if (paramUploadApiRateLimitValue != null) {
      return new FeatureValue().a(Tag.UPLOAD_API_RATE_LIMIT, paramUploadApiRateLimitValue);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof FeatureValue))
    {
      paramObject = (FeatureValue)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 5: 
        return true;
      case 4: 
        if (e != e)
        {
          if (e.equals(e)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 3: 
        bool1 = bool2;
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        bool1 = bool3;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      bool1 = bool4;
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
  
  public HasTeamFileEventsValue getHasTeamFileEventsValue()
  {
    if (a == Tag.HAS_TEAM_FILE_EVENTS) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.HAS_TEAM_FILE_EVENTS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public HasTeamSelectiveSyncValue getHasTeamSelectiveSyncValue()
  {
    if (a == Tag.HAS_TEAM_SELECTIVE_SYNC) {
      return e;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.HAS_TEAM_SELECTIVE_SYNC, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public HasTeamSharedDropboxValue getHasTeamSharedDropboxValue()
  {
    if (a == Tag.HAS_TEAM_SHARED_DROPBOX) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public UploadApiRateLimitValue getUploadApiRateLimitValue()
  {
    if (a == Tag.UPLOAD_API_RATE_LIMIT) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.UPLOAD_API_RATE_LIMIT, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d, e });
  }
  
  public boolean isHasTeamFileEvents()
  {
    return a == Tag.HAS_TEAM_FILE_EVENTS;
  }
  
  public boolean isHasTeamSelectiveSync()
  {
    return a == Tag.HAS_TEAM_SELECTIVE_SYNC;
  }
  
  public boolean isHasTeamSharedDropbox()
  {
    return a == Tag.HAS_TEAM_SHARED_DROPBOX;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isUploadApiRateLimit()
  {
    return a == Tag.UPLOAD_API_RATE_LIMIT;
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
    static
    {
      HAS_TEAM_SHARED_DROPBOX = new Tag("HAS_TEAM_SHARED_DROPBOX", 1);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<FeatureValue>
  {
    public static final a a = new a();
    
    a() {}
    
    public FeatureValue a(JsonParser paramJsonParser)
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
        if ("upload_api_rate_limit".equals(localObject))
        {
          expectField("upload_api_rate_limit", paramJsonParser);
          localObject = FeatureValue.uploadApiRateLimit(UploadApiRateLimitValue.a.a.a(paramJsonParser));
        }
        else if ("has_team_shared_dropbox".equals(localObject))
        {
          expectField("has_team_shared_dropbox", paramJsonParser);
          localObject = FeatureValue.hasTeamSharedDropbox(HasTeamSharedDropboxValue.a.a.a(paramJsonParser));
        }
        else if ("has_team_file_events".equals(localObject))
        {
          expectField("has_team_file_events", paramJsonParser);
          localObject = FeatureValue.hasTeamFileEvents(HasTeamFileEventsValue.a.a.a(paramJsonParser));
        }
        else if ("has_team_selective_sync".equals(localObject))
        {
          expectField("has_team_selective_sync", paramJsonParser);
          localObject = FeatureValue.hasTeamSelectiveSync(HasTeamSelectiveSyncValue.a.a.a(paramJsonParser));
        }
        else
        {
          localObject = FeatureValue.OTHER;
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
    
    public void a(FeatureValue paramFeatureValue, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (FeatureValue.1.a[paramFeatureValue.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeStartObject();
        writeTag("has_team_selective_sync", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("has_team_selective_sync");
        HasTeamSelectiveSyncValue.a.a.a(FeatureValue.d(paramFeatureValue), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("has_team_file_events", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("has_team_file_events");
        HasTeamFileEventsValue.a.a.a(FeatureValue.c(paramFeatureValue), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeStartObject();
        writeTag("has_team_shared_dropbox", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("has_team_shared_dropbox");
        HasTeamSharedDropboxValue.a.a.a(FeatureValue.b(paramFeatureValue), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("upload_api_rate_limit", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("upload_api_rate_limit");
      UploadApiRateLimitValue.a.a.a(FeatureValue.a(paramFeatureValue), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
