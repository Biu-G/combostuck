package com.dropbox.core.v2.team;

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

public class GetStorageReport
  extends BaseDfbReport
{
  protected final List<List<StorageBucket>> memberStorageMap;
  protected final List<Long> sharedFolders;
  protected final List<Long> sharedUsage;
  protected final List<Long> totalUsage;
  protected final List<Long> unsharedUsage;
  
  public GetStorageReport(String paramString, List<Long> paramList1, List<Long> paramList2, List<Long> paramList3, List<Long> paramList4, List<List<StorageBucket>> paramList)
  {
    super(paramString);
    if (paramList1 != null)
    {
      paramString = paramList1.iterator();
      while (paramString.hasNext()) {
        if ((Long)paramString.next() == null) {
          throw new IllegalArgumentException("An item in list 'totalUsage' is null");
        }
      }
      totalUsage = paramList1;
      if (paramList2 != null)
      {
        paramString = paramList2.iterator();
        while (paramString.hasNext()) {
          if ((Long)paramString.next() == null) {
            throw new IllegalArgumentException("An item in list 'sharedUsage' is null");
          }
        }
        sharedUsage = paramList2;
        if (paramList3 != null)
        {
          paramString = paramList3.iterator();
          while (paramString.hasNext()) {
            if ((Long)paramString.next() == null) {
              throw new IllegalArgumentException("An item in list 'unsharedUsage' is null");
            }
          }
          unsharedUsage = paramList3;
          if (paramList4 != null)
          {
            paramString = paramList4.iterator();
            while (paramString.hasNext()) {
              if ((Long)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedFolders' is null");
              }
            }
            sharedFolders = paramList4;
            if (paramList != null)
            {
              do
              {
                paramString = paramList.iterator();
                while (!paramList1.hasNext())
                {
                  if (!paramString.hasNext()) {
                    break label298;
                  }
                  paramList1 = (List)paramString.next();
                  if (paramList1 == null) {
                    break;
                  }
                  paramList1 = paramList1.iterator();
                }
              } while ((StorageBucket)paramList1.next() != null);
              throw new IllegalArgumentException("An item in listan item in list 'memberStorageMap' is null");
              throw new IllegalArgumentException("An item in list 'memberStorageMap' is null");
              label298:
              memberStorageMap = paramList;
              return;
            }
            throw new IllegalArgumentException("Required value for 'memberStorageMap' is null");
          }
          throw new IllegalArgumentException("Required value for 'sharedFolders' is null");
        }
        throw new IllegalArgumentException("Required value for 'unsharedUsage' is null");
      }
      throw new IllegalArgumentException("Required value for 'sharedUsage' is null");
    }
    throw new IllegalArgumentException("Required value for 'totalUsage' is null");
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
      paramObject = (GetStorageReport)paramObject;
      if (((startDate == startDate) || (startDate.equals(startDate))) && ((totalUsage == totalUsage) || (totalUsage.equals(totalUsage))) && ((sharedUsage == sharedUsage) || (sharedUsage.equals(sharedUsage))) && ((unsharedUsage == unsharedUsage) || (unsharedUsage.equals(unsharedUsage))) && ((sharedFolders == sharedFolders) || (sharedFolders.equals(sharedFolders))))
      {
        if (memberStorageMap == memberStorageMap) {
          break label198;
        }
        if (memberStorageMap.equals(memberStorageMap)) {
          return true;
        }
      }
      bool = false;
      label198:
      return bool;
    }
    return false;
  }
  
  public List<List<StorageBucket>> getMemberStorageMap()
  {
    return memberStorageMap;
  }
  
  public List<Long> getSharedFolders()
  {
    return sharedFolders;
  }
  
  public List<Long> getSharedUsage()
  {
    return sharedUsage;
  }
  
  public String getStartDate()
  {
    return startDate;
  }
  
  public List<Long> getTotalUsage()
  {
    return totalUsage;
  }
  
  public List<Long> getUnsharedUsage()
  {
    return unsharedUsage;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { totalUsage, sharedUsage, unsharedUsage, sharedFolders, memberStorageMap });
    return super.hashCode() * 31 + i;
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
    extends StructSerializer<GetStorageReport>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetStorageReport a(JsonParser paramJsonParser, boolean paramBoolean)
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
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("start_date".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("total_usage".equals(str2)) {
            localObject1 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("shared_usage".equals(str2)) {
            localObject2 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("unshared_usage".equals(str2)) {
            localObject3 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("shared_folders".equals(str2)) {
            localObject4 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("member_storage_map".equals(str2)) {
            localObject5 = (List)StoneSerializers.list(StoneSerializers.list(StorageBucket.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              if (localObject3 != null)
              {
                if (localObject4 != null)
                {
                  if (localObject5 != null)
                  {
                    localObject1 = new GetStorageReport(str1, (List)localObject1, (List)localObject2, (List)localObject3, (List)localObject4, (List)localObject5);
                    if (!paramBoolean) {
                      expectEndObject(paramJsonParser);
                    }
                    return localObject1;
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"member_storage_map\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"shared_folders\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"unshared_usage\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"shared_usage\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"total_usage\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"start_date\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetStorageReport paramGetStorageReport, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("start_date");
      StoneSerializers.string().serialize(startDate, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("total_usage");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(totalUsage, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_usage");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(sharedUsage, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("unshared_usage");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(unsharedUsage, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_folders");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(sharedFolders, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("member_storage_map");
      StoneSerializers.list(StoneSerializers.list(StorageBucket.a.a)).serialize(memberStorageMap, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
