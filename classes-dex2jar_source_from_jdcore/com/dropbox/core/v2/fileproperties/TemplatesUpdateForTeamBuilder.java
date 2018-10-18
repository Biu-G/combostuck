package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxException;
import java.util.List;

public class TemplatesUpdateForTeamBuilder
{
  private final DbxTeamFilePropertiesRequests a;
  private final UpdateTemplateArg.Builder b;
  
  TemplatesUpdateForTeamBuilder(DbxTeamFilePropertiesRequests paramDbxTeamFilePropertiesRequests, UpdateTemplateArg.Builder paramBuilder)
  {
    if (paramDbxTeamFilePropertiesRequests != null)
    {
      a = paramDbxTeamFilePropertiesRequests;
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
  
  public TemplatesUpdateForTeamBuilder withAddFields(List<PropertyFieldTemplate> paramList)
  {
    b.withAddFields(paramList);
    return this;
  }
  
  public TemplatesUpdateForTeamBuilder withDescription(String paramString)
  {
    b.withDescription(paramString);
    return this;
  }
  
  public TemplatesUpdateForTeamBuilder withName(String paramString)
  {
    b.withName(paramString);
    return this;
  }
}
