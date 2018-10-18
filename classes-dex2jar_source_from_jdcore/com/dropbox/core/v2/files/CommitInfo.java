package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.fileproperties.PropertyGroup.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class CommitInfo
{
  protected final boolean autorename;
  protected final Date clientModified;
  protected final WriteMode mode;
  protected final boolean mute;
  protected final String path;
  protected final List<PropertyGroup> propertyGroups;
  
  public CommitInfo(String paramString)
  {
    this(paramString, WriteMode.ADD, false, null, false, null);
  }
  
  public CommitInfo(String paramString, WriteMode paramWriteMode, boolean paramBoolean1, Date paramDate, boolean paramBoolean2, List<PropertyGroup> paramList)
  {
    if (paramString != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", paramString))
      {
        path = paramString;
        if (paramWriteMode != null)
        {
          mode = paramWriteMode;
          autorename = paramBoolean1;
          clientModified = LangUtil.truncateMillis(paramDate);
          mute = paramBoolean2;
          if (paramList != null)
          {
            paramString = paramList.iterator();
            while (paramString.hasNext()) {
              if ((PropertyGroup)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
              }
            }
          }
          propertyGroups = paramList;
          return;
        }
        throw new IllegalArgumentException("Required value for 'mode' is null");
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
  }
  
  public static Builder newBuilder(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (CommitInfo)paramObject;
      if (((path == path) || (path.equals(path))) && ((mode == mode) || (mode.equals(mode))) && (autorename == autorename) && ((clientModified == clientModified) || ((clientModified != null) && (clientModified.equals(clientModified)))) && (mute == mute))
      {
        if (propertyGroups == propertyGroups) {
          break label176;
        }
        if ((propertyGroups != null) && (propertyGroups.equals(propertyGroups))) {
          return true;
        }
      }
      bool = false;
      label176:
      return bool;
    }
    return false;
  }
  
  public boolean getAutorename()
  {
    return autorename;
  }
  
  public Date getClientModified()
  {
    return clientModified;
  }
  
  public WriteMode getMode()
  {
    return mode;
  }
  
  public boolean getMute()
  {
    return mute;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public List<PropertyGroup> getPropertyGroups()
  {
    return propertyGroups;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { path, mode, Boolean.valueOf(autorename), clientModified, Boolean.valueOf(mute), propertyGroups });
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
    protected boolean autorename;
    protected Date clientModified;
    protected WriteMode mode;
    protected boolean mute;
    protected final String path;
    protected List<PropertyGroup> propertyGroups;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", paramString))
        {
          path = paramString;
          mode = WriteMode.ADD;
          autorename = false;
          clientModified = null;
          mute = false;
          propertyGroups = null;
          return;
        }
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public CommitInfo build()
    {
      return new CommitInfo(path, mode, autorename, clientModified, mute, propertyGroups);
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
    
    public Builder withClientModified(Date paramDate)
    {
      clientModified = LangUtil.truncateMillis(paramDate);
      return this;
    }
    
    public Builder withMode(WriteMode paramWriteMode)
    {
      if (paramWriteMode != null)
      {
        mode = paramWriteMode;
        return this;
      }
      mode = WriteMode.ADD;
      return this;
    }
    
    public Builder withMute(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        mute = paramBoolean.booleanValue();
        return this;
      }
      mute = false;
      return this;
    }
    
    public Builder withPropertyGroups(List<PropertyGroup> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((PropertyGroup)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
          }
        }
      }
      propertyGroups = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<CommitInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public CommitInfo a(JsonParser paramJsonParser, boolean paramBoolean)
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
        WriteMode localWriteMode = WriteMode.ADD;
        Boolean localBoolean1 = Boolean.valueOf(false);
        Boolean localBoolean2 = Boolean.valueOf(false);
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("mode".equals(str2)) {
            localWriteMode = WriteMode.a.a.a(paramJsonParser);
          } else if ("autorename".equals(str2)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("client_modified".equals(str2)) {
            localObject1 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("mute".equals(str2)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("property_groups".equals(str2)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new CommitInfo(str1, localWriteMode, localBoolean1.booleanValue(), (Date)localObject1, localBoolean2.booleanValue(), (List)localObject2);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(CommitInfo paramCommitInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(path, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("mode");
      WriteMode.a.a.a(mode, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("autorename");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(autorename), paramJsonGenerator);
      if (clientModified != null)
      {
        paramJsonGenerator.writeFieldName("client_modified");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(clientModified, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("mute");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(mute), paramJsonGenerator);
      if (propertyGroups != null)
      {
        paramJsonGenerator.writeFieldName("property_groups");
        StoneSerializers.nullable(StoneSerializers.list(PropertyGroup.Serializer.INSTANCE)).serialize(propertyGroups, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
