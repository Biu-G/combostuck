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

public class GetActivityReport
  extends BaseDfbReport
{
  protected final List<Long> activeSharedFolders1Day;
  protected final List<Long> activeSharedFolders28Day;
  protected final List<Long> activeSharedFolders7Day;
  protected final List<Long> activeUsers1Day;
  protected final List<Long> activeUsers28Day;
  protected final List<Long> activeUsers7Day;
  protected final List<Long> adds;
  protected final List<Long> deletes;
  protected final List<Long> edits;
  protected final List<Long> sharedLinksCreated;
  protected final List<Long> sharedLinksViewedByNotLoggedIn;
  protected final List<Long> sharedLinksViewedByOutsideUser;
  protected final List<Long> sharedLinksViewedByTeam;
  protected final List<Long> sharedLinksViewedTotal;
  
  public GetActivityReport(String paramString, List<Long> paramList1, List<Long> paramList2, List<Long> paramList3, List<Long> paramList4, List<Long> paramList5, List<Long> paramList6, List<Long> paramList7, List<Long> paramList8, List<Long> paramList9, List<Long> paramList10, List<Long> paramList11, List<Long> paramList12, List<Long> paramList13, List<Long> paramList14)
  {
    super(paramString);
    if (paramList1 != null)
    {
      paramString = paramList1.iterator();
      while (paramString.hasNext()) {
        if ((Long)paramString.next() == null) {
          throw new IllegalArgumentException("An item in list 'adds' is null");
        }
      }
      adds = paramList1;
      if (paramList2 != null)
      {
        paramString = paramList2.iterator();
        while (paramString.hasNext()) {
          if ((Long)paramString.next() == null) {
            throw new IllegalArgumentException("An item in list 'edits' is null");
          }
        }
        edits = paramList2;
        if (paramList3 != null)
        {
          paramString = paramList3.iterator();
          while (paramString.hasNext()) {
            if ((Long)paramString.next() == null) {
              throw new IllegalArgumentException("An item in list 'deletes' is null");
            }
          }
          deletes = paramList3;
          if (paramList4 != null)
          {
            paramString = paramList4.iterator();
            while (paramString.hasNext()) {
              if ((Long)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeUsers28Day' is null");
              }
            }
            activeUsers28Day = paramList4;
            if (paramList5 != null)
            {
              paramString = paramList5.iterator();
              while (paramString.hasNext()) {
                if ((Long)paramString.next() == null) {
                  throw new IllegalArgumentException("An item in list 'activeUsers7Day' is null");
                }
              }
              activeUsers7Day = paramList5;
              if (paramList6 != null)
              {
                paramString = paramList6.iterator();
                while (paramString.hasNext()) {
                  if ((Long)paramString.next() == null) {
                    throw new IllegalArgumentException("An item in list 'activeUsers1Day' is null");
                  }
                }
                activeUsers1Day = paramList6;
                if (paramList7 != null)
                {
                  paramString = paramList7.iterator();
                  while (paramString.hasNext()) {
                    if ((Long)paramString.next() == null) {
                      throw new IllegalArgumentException("An item in list 'activeSharedFolders28Day' is null");
                    }
                  }
                  activeSharedFolders28Day = paramList7;
                  if (paramList8 != null)
                  {
                    paramString = paramList8.iterator();
                    while (paramString.hasNext()) {
                      if ((Long)paramString.next() == null) {
                        throw new IllegalArgumentException("An item in list 'activeSharedFolders7Day' is null");
                      }
                    }
                    activeSharedFolders7Day = paramList8;
                    if (paramList9 != null)
                    {
                      paramString = paramList9.iterator();
                      while (paramString.hasNext()) {
                        if ((Long)paramString.next() == null) {
                          throw new IllegalArgumentException("An item in list 'activeSharedFolders1Day' is null");
                        }
                      }
                      activeSharedFolders1Day = paramList9;
                      if (paramList10 != null)
                      {
                        paramString = paramList10.iterator();
                        while (paramString.hasNext()) {
                          if ((Long)paramString.next() == null) {
                            throw new IllegalArgumentException("An item in list 'sharedLinksCreated' is null");
                          }
                        }
                        sharedLinksCreated = paramList10;
                        if (paramList11 != null)
                        {
                          paramString = paramList11.iterator();
                          while (paramString.hasNext()) {
                            if ((Long)paramString.next() == null) {
                              throw new IllegalArgumentException("An item in list 'sharedLinksViewedByTeam' is null");
                            }
                          }
                          sharedLinksViewedByTeam = paramList11;
                          if (paramList12 != null)
                          {
                            paramString = paramList12.iterator();
                            while (paramString.hasNext()) {
                              if ((Long)paramString.next() == null) {
                                throw new IllegalArgumentException("An item in list 'sharedLinksViewedByOutsideUser' is null");
                              }
                            }
                            sharedLinksViewedByOutsideUser = paramList12;
                            if (paramList13 != null)
                            {
                              paramString = paramList13.iterator();
                              while (paramString.hasNext()) {
                                if ((Long)paramString.next() == null) {
                                  throw new IllegalArgumentException("An item in list 'sharedLinksViewedByNotLoggedIn' is null");
                                }
                              }
                              sharedLinksViewedByNotLoggedIn = paramList13;
                              if (paramList14 != null)
                              {
                                paramString = paramList14.iterator();
                                while (paramString.hasNext()) {
                                  if ((Long)paramString.next() == null) {
                                    throw new IllegalArgumentException("An item in list 'sharedLinksViewedTotal' is null");
                                  }
                                }
                                sharedLinksViewedTotal = paramList14;
                                return;
                              }
                              throw new IllegalArgumentException("Required value for 'sharedLinksViewedTotal' is null");
                            }
                            throw new IllegalArgumentException("Required value for 'sharedLinksViewedByNotLoggedIn' is null");
                          }
                          throw new IllegalArgumentException("Required value for 'sharedLinksViewedByOutsideUser' is null");
                        }
                        throw new IllegalArgumentException("Required value for 'sharedLinksViewedByTeam' is null");
                      }
                      throw new IllegalArgumentException("Required value for 'sharedLinksCreated' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'activeSharedFolders1Day' is null");
                  }
                  throw new IllegalArgumentException("Required value for 'activeSharedFolders7Day' is null");
                }
                throw new IllegalArgumentException("Required value for 'activeSharedFolders28Day' is null");
              }
              throw new IllegalArgumentException("Required value for 'activeUsers1Day' is null");
            }
            throw new IllegalArgumentException("Required value for 'activeUsers7Day' is null");
          }
          throw new IllegalArgumentException("Required value for 'activeUsers28Day' is null");
        }
        throw new IllegalArgumentException("Required value for 'deletes' is null");
      }
      throw new IllegalArgumentException("Required value for 'edits' is null");
    }
    throw new IllegalArgumentException("Required value for 'adds' is null");
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
      paramObject = (GetActivityReport)paramObject;
      if (((startDate == startDate) || (startDate.equals(startDate))) && ((adds == adds) || (adds.equals(adds))) && ((edits == edits) || (edits.equals(edits))) && ((deletes == deletes) || (deletes.equals(deletes))) && ((activeUsers28Day == activeUsers28Day) || (activeUsers28Day.equals(activeUsers28Day))) && ((activeUsers7Day == activeUsers7Day) || (activeUsers7Day.equals(activeUsers7Day))) && ((activeUsers1Day == activeUsers1Day) || (activeUsers1Day.equals(activeUsers1Day))) && ((activeSharedFolders28Day == activeSharedFolders28Day) || (activeSharedFolders28Day.equals(activeSharedFolders28Day))) && ((activeSharedFolders7Day == activeSharedFolders7Day) || (activeSharedFolders7Day.equals(activeSharedFolders7Day))) && ((activeSharedFolders1Day == activeSharedFolders1Day) || (activeSharedFolders1Day.equals(activeSharedFolders1Day))) && ((sharedLinksCreated == sharedLinksCreated) || (sharedLinksCreated.equals(sharedLinksCreated))) && ((sharedLinksViewedByTeam == sharedLinksViewedByTeam) || (sharedLinksViewedByTeam.equals(sharedLinksViewedByTeam))) && ((sharedLinksViewedByOutsideUser == sharedLinksViewedByOutsideUser) || (sharedLinksViewedByOutsideUser.equals(sharedLinksViewedByOutsideUser))) && ((sharedLinksViewedByNotLoggedIn == sharedLinksViewedByNotLoggedIn) || (sharedLinksViewedByNotLoggedIn.equals(sharedLinksViewedByNotLoggedIn))))
      {
        if (sharedLinksViewedTotal == sharedLinksViewedTotal) {
          break label441;
        }
        if (sharedLinksViewedTotal.equals(sharedLinksViewedTotal)) {
          return true;
        }
      }
      bool = false;
      label441:
      return bool;
    }
    return false;
  }
  
  public List<Long> getActiveSharedFolders1Day()
  {
    return activeSharedFolders1Day;
  }
  
  public List<Long> getActiveSharedFolders28Day()
  {
    return activeSharedFolders28Day;
  }
  
  public List<Long> getActiveSharedFolders7Day()
  {
    return activeSharedFolders7Day;
  }
  
  public List<Long> getActiveUsers1Day()
  {
    return activeUsers1Day;
  }
  
  public List<Long> getActiveUsers28Day()
  {
    return activeUsers28Day;
  }
  
  public List<Long> getActiveUsers7Day()
  {
    return activeUsers7Day;
  }
  
  public List<Long> getAdds()
  {
    return adds;
  }
  
  public List<Long> getDeletes()
  {
    return deletes;
  }
  
  public List<Long> getEdits()
  {
    return edits;
  }
  
  public List<Long> getSharedLinksCreated()
  {
    return sharedLinksCreated;
  }
  
  public List<Long> getSharedLinksViewedByNotLoggedIn()
  {
    return sharedLinksViewedByNotLoggedIn;
  }
  
  public List<Long> getSharedLinksViewedByOutsideUser()
  {
    return sharedLinksViewedByOutsideUser;
  }
  
  public List<Long> getSharedLinksViewedByTeam()
  {
    return sharedLinksViewedByTeam;
  }
  
  public List<Long> getSharedLinksViewedTotal()
  {
    return sharedLinksViewedTotal;
  }
  
  public String getStartDate()
  {
    return startDate;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { adds, edits, deletes, activeUsers28Day, activeUsers7Day, activeUsers1Day, activeSharedFolders28Day, activeSharedFolders7Day, activeSharedFolders1Day, sharedLinksCreated, sharedLinksViewedByTeam, sharedLinksViewedByOutsideUser, sharedLinksViewedByNotLoggedIn, sharedLinksViewedTotal });
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
    extends StructSerializer<GetActivityReport>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetActivityReport a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Object localObject6 = localObject5;
        Object localObject7 = localObject6;
        Object localObject8 = localObject7;
        Object localObject9 = localObject8;
        Object localObject10 = localObject9;
        Object localObject11 = localObject10;
        Object localObject12 = localObject11;
        Object localObject13 = localObject12;
        Object localObject14 = localObject13;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("start_date".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("adds".equals(str2)) {
            localObject1 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("edits".equals(str2)) {
            localObject2 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("deletes".equals(str2)) {
            localObject3 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("active_users_28_day".equals(str2)) {
            localObject4 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("active_users_7_day".equals(str2)) {
            localObject5 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("active_users_1_day".equals(str2)) {
            localObject6 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("active_shared_folders_28_day".equals(str2)) {
            localObject7 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("active_shared_folders_7_day".equals(str2)) {
            localObject8 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("active_shared_folders_1_day".equals(str2)) {
            localObject9 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("shared_links_created".equals(str2)) {
            localObject10 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("shared_links_viewed_by_team".equals(str2)) {
            localObject11 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("shared_links_viewed_by_outside_user".equals(str2)) {
            localObject12 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("shared_links_viewed_by_not_logged_in".equals(str2)) {
            localObject13 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
          } else if ("shared_links_viewed_total".equals(str2)) {
            localObject14 = (List)StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(paramJsonParser);
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
                    if (localObject6 != null)
                    {
                      if (localObject7 != null)
                      {
                        if (localObject8 != null)
                        {
                          if (localObject9 != null)
                          {
                            if (localObject10 != null)
                            {
                              if (localObject11 != null)
                              {
                                if (localObject12 != null)
                                {
                                  if (localObject13 != null)
                                  {
                                    if (localObject14 != null)
                                    {
                                      localObject1 = new GetActivityReport(str1, (List)localObject1, (List)localObject2, (List)localObject3, (List)localObject4, (List)localObject5, (List)localObject6, (List)localObject7, (List)localObject8, (List)localObject9, (List)localObject10, (List)localObject11, (List)localObject12, (List)localObject13, (List)localObject14);
                                      if (!paramBoolean) {
                                        expectEndObject(paramJsonParser);
                                      }
                                      return localObject1;
                                    }
                                    throw new JsonParseException(paramJsonParser, "Required field \"shared_links_viewed_total\" missing.");
                                  }
                                  throw new JsonParseException(paramJsonParser, "Required field \"shared_links_viewed_by_not_logged_in\" missing.");
                                }
                                throw new JsonParseException(paramJsonParser, "Required field \"shared_links_viewed_by_outside_user\" missing.");
                              }
                              throw new JsonParseException(paramJsonParser, "Required field \"shared_links_viewed_by_team\" missing.");
                            }
                            throw new JsonParseException(paramJsonParser, "Required field \"shared_links_created\" missing.");
                          }
                          throw new JsonParseException(paramJsonParser, "Required field \"active_shared_folders_1_day\" missing.");
                        }
                        throw new JsonParseException(paramJsonParser, "Required field \"active_shared_folders_7_day\" missing.");
                      }
                      throw new JsonParseException(paramJsonParser, "Required field \"active_shared_folders_28_day\" missing.");
                    }
                    throw new JsonParseException(paramJsonParser, "Required field \"active_users_1_day\" missing.");
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"active_users_7_day\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"active_users_28_day\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"deletes\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"edits\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"adds\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"start_date\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GetActivityReport paramGetActivityReport, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("start_date");
      StoneSerializers.string().serialize(startDate, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("adds");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(adds, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("edits");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(edits, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("deletes");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(deletes, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_users_28_day");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(activeUsers28Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_users_7_day");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(activeUsers7Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_users_1_day");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(activeUsers1Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_shared_folders_28_day");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(activeSharedFolders28Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_shared_folders_7_day");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(activeSharedFolders7Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("active_shared_folders_1_day");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(activeSharedFolders1Day, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_links_created");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(sharedLinksCreated, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_links_viewed_by_team");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(sharedLinksViewedByTeam, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_links_viewed_by_outside_user");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(sharedLinksViewedByOutsideUser, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_links_viewed_by_not_logged_in");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(sharedLinksViewedByNotLoggedIn, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("shared_links_viewed_total");
      StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize(sharedLinksViewedTotal, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
