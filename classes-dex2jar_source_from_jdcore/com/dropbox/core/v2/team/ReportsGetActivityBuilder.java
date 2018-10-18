package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import java.util.Date;

public class ReportsGetActivityBuilder
{
  private final DbxTeamTeamRequests a;
  private final DateRange.Builder b;
  
  ReportsGetActivityBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, DateRange.Builder paramBuilder)
  {
    if (paramDbxTeamTeamRequests != null)
    {
      a = paramDbxTeamTeamRequests;
      if (paramBuilder != null)
      {
        b = paramBuilder;
        return;
      }
      throw new NullPointerException("_builder");
    }
    throw new NullPointerException("_client");
  }
  
  public GetActivityReport start()
    throws DateRangeErrorException, DbxException
  {
    DateRange localDateRange = b.build();
    return a.a(localDateRange);
  }
  
  public ReportsGetActivityBuilder withEndDate(Date paramDate)
  {
    b.withEndDate(paramDate);
    return this;
  }
  
  public ReportsGetActivityBuilder withStartDate(Date paramDate)
  {
    b.withStartDate(paramDate);
    return this;
  }
}
