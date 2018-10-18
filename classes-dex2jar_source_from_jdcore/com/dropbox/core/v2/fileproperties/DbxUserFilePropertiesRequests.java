package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import java.util.List;

public class DbxUserFilePropertiesRequests
{
  private final DbxRawClientV2 a;
  
  public DbxUserFilePropertiesRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  AddTemplateResult a(AddTemplateArg paramAddTemplateArg)
    throws ModifyTemplateErrorException, DbxException
  {
    try
    {
      paramAddTemplateArg = (AddTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/add_for_user", paramAddTemplateArg, false, AddTemplateArg.Serializer.INSTANCE, AddTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
      return paramAddTemplateArg;
    }
    catch (DbxWrappedException paramAddTemplateArg)
    {
      throw new ModifyTemplateErrorException("2/file_properties/templates/add_for_user", paramAddTemplateArg.getRequestId(), paramAddTemplateArg.getUserMessage(), (ModifyTemplateError)paramAddTemplateArg.getErrorValue());
    }
  }
  
  GetTemplateResult a(GetTemplateArg paramGetTemplateArg)
    throws TemplateErrorException, DbxException
  {
    try
    {
      paramGetTemplateArg = (GetTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/get_for_user", paramGetTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return paramGetTemplateArg;
    }
    catch (DbxWrappedException paramGetTemplateArg)
    {
      throw new TemplateErrorException("2/file_properties/templates/get_for_user", paramGetTemplateArg.getRequestId(), paramGetTemplateArg.getUserMessage(), (TemplateError)paramGetTemplateArg.getErrorValue());
    }
  }
  
  PropertiesSearchResult a(a paramA)
    throws PropertiesSearchErrorException, DbxException
  {
    try
    {
      paramA = (PropertiesSearchResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/properties/search", paramA, false, a.a.a, PropertiesSearchResult.a.a, PropertiesSearchError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new PropertiesSearchErrorException("2/file_properties/properties/search", paramA.getRequestId(), paramA.getUserMessage(), (PropertiesSearchError)paramA.getErrorValue());
    }
  }
  
  PropertiesSearchResult a(b paramB)
    throws PropertiesSearchContinueErrorException, DbxException
  {
    try
    {
      paramB = (PropertiesSearchResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/properties/search/continue", paramB, false, b.a.a, PropertiesSearchResult.a.a, PropertiesSearchContinueError.a.a);
      return paramB;
    }
    catch (DbxWrappedException paramB)
    {
      throw new PropertiesSearchContinueErrorException("2/file_properties/properties/search/continue", paramB.getRequestId(), paramB.getUserMessage(), (PropertiesSearchContinueError)paramB.getErrorValue());
    }
  }
  
  UpdateTemplateResult a(UpdateTemplateArg paramUpdateTemplateArg)
    throws ModifyTemplateErrorException, DbxException
  {
    try
    {
      paramUpdateTemplateArg = (UpdateTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/update_for_user", paramUpdateTemplateArg, false, UpdateTemplateArg.Serializer.INSTANCE, UpdateTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
      return paramUpdateTemplateArg;
    }
    catch (DbxWrappedException paramUpdateTemplateArg)
    {
      throw new ModifyTemplateErrorException("2/file_properties/templates/update_for_user", paramUpdateTemplateArg.getRequestId(), paramUpdateTemplateArg.getUserMessage(), (ModifyTemplateError)paramUpdateTemplateArg.getErrorValue());
    }
  }
  
  void a(AddPropertiesArg paramAddPropertiesArg)
    throws AddPropertiesErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/file_properties/properties/add", paramAddPropertiesArg, false, AddPropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), AddPropertiesError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramAddPropertiesArg)
    {
      throw new AddPropertiesErrorException("2/file_properties/properties/add", paramAddPropertiesArg.getRequestId(), paramAddPropertiesArg.getUserMessage(), (AddPropertiesError)paramAddPropertiesArg.getErrorValue());
    }
  }
  
  void a(OverwritePropertyGroupArg paramOverwritePropertyGroupArg)
    throws InvalidPropertyGroupErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/file_properties/properties/overwrite", paramOverwritePropertyGroupArg, false, OverwritePropertyGroupArg.Serializer.INSTANCE, StoneSerializers.void_(), InvalidPropertyGroupError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramOverwritePropertyGroupArg)
    {
      throw new InvalidPropertyGroupErrorException("2/file_properties/properties/overwrite", paramOverwritePropertyGroupArg.getRequestId(), paramOverwritePropertyGroupArg.getUserMessage(), (InvalidPropertyGroupError)paramOverwritePropertyGroupArg.getErrorValue());
    }
  }
  
  void a(RemovePropertiesArg paramRemovePropertiesArg)
    throws RemovePropertiesErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/file_properties/properties/remove", paramRemovePropertiesArg, false, RemovePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), RemovePropertiesError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramRemovePropertiesArg)
    {
      throw new RemovePropertiesErrorException("2/file_properties/properties/remove", paramRemovePropertiesArg.getRequestId(), paramRemovePropertiesArg.getUserMessage(), (RemovePropertiesError)paramRemovePropertiesArg.getErrorValue());
    }
  }
  
  void a(UpdatePropertiesArg paramUpdatePropertiesArg)
    throws UpdatePropertiesErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/file_properties/properties/update", paramUpdatePropertiesArg, false, UpdatePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), UpdatePropertiesError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramUpdatePropertiesArg)
    {
      throw new UpdatePropertiesErrorException("2/file_properties/properties/update", paramUpdatePropertiesArg.getRequestId(), paramUpdatePropertiesArg.getUserMessage(), (UpdatePropertiesError)paramUpdatePropertiesArg.getErrorValue());
    }
  }
  
  void a(c paramC)
    throws TemplateErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/remove_for_user", paramC, false, c.a.a, StoneSerializers.void_(), TemplateError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramC)
    {
      throw new TemplateErrorException("2/file_properties/templates/remove_for_user", paramC.getRequestId(), paramC.getUserMessage(), (TemplateError)paramC.getErrorValue());
    }
  }
  
  public void propertiesAdd(String paramString, List<PropertyGroup> paramList)
    throws AddPropertiesErrorException, DbxException
  {
    a(new AddPropertiesArg(paramString, paramList));
  }
  
  public void propertiesOverwrite(String paramString, List<PropertyGroup> paramList)
    throws InvalidPropertyGroupErrorException, DbxException
  {
    a(new OverwritePropertyGroupArg(paramString, paramList));
  }
  
  public void propertiesRemove(String paramString, List<String> paramList)
    throws RemovePropertiesErrorException, DbxException
  {
    a(new RemovePropertiesArg(paramString, paramList));
  }
  
  public PropertiesSearchResult propertiesSearch(List<PropertiesSearchQuery> paramList)
    throws PropertiesSearchErrorException, DbxException
  {
    return a(new a(paramList));
  }
  
  public PropertiesSearchResult propertiesSearch(List<PropertiesSearchQuery> paramList, TemplateFilter paramTemplateFilter)
    throws PropertiesSearchErrorException, DbxException
  {
    if (paramTemplateFilter != null) {
      return a(new a(paramList, paramTemplateFilter));
    }
    throw new IllegalArgumentException("Required value for 'templateFilter' is null");
  }
  
  public PropertiesSearchResult propertiesSearchContinue(String paramString)
    throws PropertiesSearchContinueErrorException, DbxException
  {
    return a(new b(paramString));
  }
  
  public void propertiesUpdate(String paramString, List<PropertyGroupUpdate> paramList)
    throws UpdatePropertiesErrorException, DbxException
  {
    a(new UpdatePropertiesArg(paramString, paramList));
  }
  
  public AddTemplateResult templatesAddForUser(String paramString1, String paramString2, List<PropertyFieldTemplate> paramList)
    throws ModifyTemplateErrorException, DbxException
  {
    return a(new AddTemplateArg(paramString1, paramString2, paramList));
  }
  
  public GetTemplateResult templatesGetForUser(String paramString)
    throws TemplateErrorException, DbxException
  {
    return a(new GetTemplateArg(paramString));
  }
  
  public ListTemplateResult templatesListForUser()
    throws TemplateErrorException, DbxException
  {
    try
    {
      ListTemplateResult localListTemplateResult = (ListTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/file_properties/templates/list_for_user", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return localListTemplateResult;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      throw new TemplateErrorException("2/file_properties/templates/list_for_user", localDbxWrappedException.getRequestId(), localDbxWrappedException.getUserMessage(), (TemplateError)localDbxWrappedException.getErrorValue());
    }
  }
  
  public void templatesRemoveForUser(String paramString)
    throws TemplateErrorException, DbxException
  {
    a(new c(paramString));
  }
  
  public UpdateTemplateResult templatesUpdateForUser(String paramString)
    throws ModifyTemplateErrorException, DbxException
  {
    return a(new UpdateTemplateArg(paramString));
  }
  
  public TemplatesUpdateForUserBuilder templatesUpdateForUserBuilder(String paramString)
  {
    return new TemplatesUpdateForUserBuilder(this, UpdateTemplateArg.newBuilder(paramString));
  }
}
