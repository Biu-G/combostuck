package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.fileproperties.ModifyTemplateErrorException;
import com.dropbox.core.v2.fileproperties.PropertyFieldTemplate;
import com.dropbox.core.v2.fileproperties.UpdateTemplateArg;
import com.dropbox.core.v2.fileproperties.UpdateTemplateArg.Builder;
import com.dropbox.core.v2.fileproperties.UpdateTemplateResult;
import java.util.List;

public class PropertiesTemplateUpdateBuilder
{
  private final DbxTeamTeamRequests a;
  private final UpdateTemplateArg.Builder b;
  
  PropertiesTemplateUpdateBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, UpdateTemplateArg.Builder paramBuilder)
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
  
  public UpdateTemplateResult start()
    throws ModifyTemplateErrorException, DbxException
  {
    UpdateTemplateArg localUpdateTemplateArg = b.build();
    return a.a(localUpdateTemplateArg);
  }
  
  public PropertiesTemplateUpdateBuilder withAddFields(List<PropertyFieldTemplate> paramList)
  {
    b.withAddFields(paramList);
    return this;
  }
  
  public PropertiesTemplateUpdateBuilder withDescription(String paramString)
  {
    b.withDescription(paramString);
    return this;
  }
  
  public PropertiesTemplateUpdateBuilder withName(String paramString)
  {
    b.withName(paramString);
    return this;
  }
}
