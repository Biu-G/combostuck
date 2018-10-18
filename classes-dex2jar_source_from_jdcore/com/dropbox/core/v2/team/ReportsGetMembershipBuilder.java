package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import java.util.Date;

public class ReportsGetMembershipBuilder
{
  private final DbxTeamTeamRequests a;
  private final DateRange.Builder b;
  
  ReportsGetMembershipBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, DateRange.Builder paramBuilder)
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
  
  public GetMembershipReport start()
    throws DateRangeErrorException, DbxException
  {
    DateRange localDateRange = b.build();
    return a.c(localDateRange);
  }
  
  public ReportsGetMembershipBuilder withEndDate(Date paramDate)
  {
    b.withEndDate(paramDate);
    return this;
  }
  
  public ReportsGetMembershipBuilder withStartDate(Date paramDate)
  {
    b.withStartDate(paramDate);
    return this;
  }
}
