package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxException;
import java.util.List;

public class TemplatesUpdateForUserBuilder
{
  private final DbxUserFilePropertiesRequests a;
  private final UpdateTemplateArg.Builder b;
  
  TemplatesUpdateForUserBuilder(DbxUserFilePropertiesRequests paramDbxUserFilePropertiesRequests, UpdateTemplateArg.Builder paramBuilder)
  {
    if (paramDbxUserFilePropertiesRequests != null)
    {
      a = paramDbxUserFilePropertiesRequests;
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
  
  public TemplatesUpdateForUserBuilder withAddFields(List<PropertyFieldTemplate> paramList)
  {
    b.withAddFields(paramList);
    return this;
  }
  
  public TemplatesUpdateForUserBuilder withDescription(String paramString)
  {
    b.withDescription(paramString);
    return this;
  }
  
  public TemplatesUpdateForUserBuilder withName(String paramString)
  {
    b.withName(paramString);
    return this;
  }
}
