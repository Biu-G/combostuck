package com.dropbox.core.v2.sharing;

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

public class MemberAccessLevelResult
{
  protected final List<ParentFolderAccessInfo> accessDetails;
  protected final AccessLevel accessLevel;
  protected final String warning;
  
  public MemberAccessLevelResult()
  {
    this(null, null, null);
  }
  
  public MemberAccessLevelResult(AccessLevel paramAccessLevel, String paramString, List<ParentFolderAccessInfo> paramList)
  {
    accessLevel = paramAccessLevel;
    warning = paramString;
    if (paramList != null)
    {
      paramAccessLevel = paramList.iterator();
      while (paramAccessLevel.hasNext()) {
        if ((ParentFolderAccessInfo)paramAccessLevel.next() == null) {
          throw new IllegalArgumentException("An item in list 'accessDetails' is null");
        }
      }
    }
    accessDetails = paramList;
  }
  
  public static Builder newBuilder()
  {
    return new Builder();
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
      paramObject = (MemberAccessLevelResult)paramObject;
      if (((accessLevel == accessLevel) || ((accessLevel != null) && (accessLevel.equals(accessLevel)))) && ((warning == warning) || ((warning != null) && (warning.equals(warning)))))
      {
        if (accessDetails == accessDetails) {
          break label136;
        }
        if ((accessDetails != null) && (accessDetails.equals(accessDetails))) {
          return true;
        }
      }
      bool = false;
      label136:
      return bool;
    }
    return false;
  }
  
  public List<ParentFolderAccessInfo> getAccessDetails()
  {
    return accessDetails;
  }
  
  public AccessLevel getAccessLevel()
  {
    return accessLevel;
  }
  
  public String getWarning()
  {
    return warning;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { accessLevel, warning, accessDetails });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected List<ParentFolderAccessInfo> accessDetails = null;
    protected AccessLevel accessLevel = null;
    protected String warning = null;
    
    protected Builder() {}
    
    public MemberAccessLevelResult build()
    {
      return new MemberAccessLevelResult(accessLevel, warning, accessDetails);
    }
    
    public Builder withAccessDetails(List<ParentFolderAccessInfo> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((ParentFolderAccessInfo)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'accessDetails' is null");
          }
        }
      }
      accessDetails = paramList;
      return this;
    }
    
    public Builder withAccessLevel(AccessLevel paramAccessLevel)
    {
      accessLevel = paramAccessLevel;
      return this;
    }
    
    public Builder withWarning(String paramString)
    {
      warning = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<MemberAccessLevelResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberAccessLevelResult a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      AccessLevel localAccessLevel = null;
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("access_level".equals(str)) {
            localAccessLevel = (AccessLevel)StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("warning".equals(str)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("access_details".equals(str)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(ParentFolderAccessInfo.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new MemberAccessLevelResult(localAccessLevel, (String)localObject2, (List)localObject1);
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
    
    public void a(MemberAccessLevelResult paramMemberAccessLevelResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (accessLevel != null)
      {
        paramJsonGenerator.writeFieldName("access_level");
        StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(accessLevel, paramJsonGenerator);
      }
      if (warning != null)
      {
        paramJsonGenerator.writeFieldName("warning");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(warning, paramJsonGenerator);
      }
      if (accessDetails != null)
      {
        paramJsonGenerator.writeFieldName("access_details");
        StoneSerializers.nullable(StoneSerializers.list(ParentFolderAccessInfo.a.a)).serialize(accessDetails, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
