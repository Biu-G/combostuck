package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import java.util.List;

public class DbxTeamFilePropertiesRequests
{
  private final DbxRawClientV2 a;
  
  public DbxTeamFilePropertiesRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  AddTemplateResult a(AddTemplateArg paramAddTemplateArg)
    throws ModifyTemplateErrorException, DbxException
  {
    try
    {
      paramAddTemplateArg = (AddTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/add_for_team", paramAddTemplateArg, false, AddTemplateArg.Serializer.INSTANCE, AddTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
      return paramAddTemplateArg;
    }
    catch (DbxWrappedException paramAddTemplateArg)
    {
      throw new ModifyTemplateErrorException("2/file_properties/templates/add_for_team", paramAddTemplateArg.getRequestId(), paramAddTemplateArg.getUserMessage(), (ModifyTemplateError)paramAddTemplateArg.getErrorValue());
    }
  }
  
  GetTemplateResult a(GetTemplateArg paramGetTemplateArg)
    throws TemplateErrorException, DbxException
  {
    try
    {
      paramGetTemplateArg = (GetTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/get_for_team", paramGetTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return paramGetTemplateArg;
    }
    catch (DbxWrappedException paramGetTemplateArg)
    {
      throw new TemplateErrorException("2/file_properties/templates/get_for_team", paramGetTemplateArg.getRequestId(), paramGetTemplateArg.getUserMessage(), (TemplateError)paramGetTemplateArg.getErrorValue());
    }
  }
  
  UpdateTemplateResult a(UpdateTemplateArg paramUpdateTemplateArg)
    throws ModifyTemplateErrorException, DbxException
  {
    try
    {
      paramUpdateTemplateArg = (UpdateTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/update_for_team", paramUpdateTemplateArg, false, UpdateTemplateArg.Serializer.INSTANCE, UpdateTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
      return paramUpdateTemplateArg;
    }
    catch (DbxWrappedException paramUpdateTemplateArg)
    {
      throw new ModifyTemplateErrorException("2/file_properties/templates/update_for_team", paramUpdateTemplateArg.getRequestId(), paramUpdateTemplateArg.getUserMessage(), (ModifyTemplateError)paramUpdateTemplateArg.getErrorValue());
    }
  }
  
  void a(c paramC)
    throws TemplateErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/remove_for_team", paramC, false, c.a.a, StoneSerializers.void_(), TemplateError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramC)
    {
      throw new TemplateErrorException("2/file_properties/templates/remove_for_team", paramC.getRequestId(), paramC.getUserMessage(), (TemplateError)paramC.getErrorValue());
    }
  }
  
  public AddTemplateResult templatesAddForTeam(String paramString1, String paramString2, List<PropertyFieldTemplate> paramList)
    throws ModifyTemplateErrorException, DbxException
  {
    return a(new AddTemplateArg(paramString1, paramString2, paramList));
  }
  
  public GetTemplateResult templatesGetForTeam(String paramString)
    throws TemplateErrorException, DbxException
  {
    return a(new GetTemplateArg(paramString));
  }
  
  public ListTemplateResult templatesListForTeam()
    throws TemplateErrorException, DbxException
  {
    try
    {
      ListTemplateResult localListTemplateResult = (ListTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/list_for_team", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return localListTemplateResult;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      throw new TemplateErrorException("2/file_properties/templates/list_for_team", localDbxWrappedException.getRequestId(), localDbxWrappedException.getUserMessage(), (TemplateError)localDbxWrappedException.getErrorValue());
    }
  }
  
  public void templatesRemoveForTeam(String paramString)
    throws TemplateErrorException, DbxException
  {
    a(new c(paramString));
  }
  
  public UpdateTemplateResult templatesUpdateForTeam(String paramString)
    throws ModifyTemplateErrorException, DbxException
  {
    return a(new UpdateTemplateArg(paramString));
  }
  
  public TemplatesUpdateForTeamBuilder templatesUpdateForTeamBuilder(String paramString)
  {
    return new TemplatesUpdateForTeamBuilder(this, UpdateTemplateArg.newBuilder(paramString));
  }
}
