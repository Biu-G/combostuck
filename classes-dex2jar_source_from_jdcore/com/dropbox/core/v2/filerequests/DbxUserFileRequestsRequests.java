package com.dropbox.core.v2.filerequests;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;

public class DbxUserFileRequestsRequests
{
  private final DbxRawClientV2 a;
  
  public DbxUserFileRequestsRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  FileRequest a(CreateFileRequestArgs paramCreateFileRequestArgs)
    throws CreateFileRequestErrorException, DbxException
  {
    try
    {
      paramCreateFileRequestArgs = (FileRequest)a.rpcStyle(a.getHost().getApi(), "2/file_requests/create", paramCreateFileRequestArgs, false, CreateFileRequestArgs.a.a, FileRequest.a.a, CreateFileRequestError.a.a);
      return paramCreateFileRequestArgs;
    }
    catch (DbxWrappedException paramCreateFileRequestArgs)
    {
      throw new CreateFileRequestErrorException("2/file_requests/create", paramCreateFileRequestArgs.getRequestId(), paramCreateFileRequestArgs.getUserMessage(), (CreateFileRequestError)paramCreateFileRequestArgs.getErrorValue());
    }
  }
  
  FileRequest a(UpdateFileRequestArgs paramUpdateFileRequestArgs)
    throws UpdateFileRequestErrorException, DbxException
  {
    try
    {
      paramUpdateFileRequestArgs = (FileRequest)a.rpcStyle(a.getHost().getApi(), "2/file_requests/update", paramUpdateFileRequestArgs, false, UpdateFileRequestArgs.a.a, FileRequest.a.a, UpdateFileRequestError.a.a);
      return paramUpdateFileRequestArgs;
    }
    catch (DbxWrappedException paramUpdateFileRequestArgs)
    {
      throw new UpdateFileRequestErrorException("2/file_requests/update", paramUpdateFileRequestArgs.getRequestId(), paramUpdateFileRequestArgs.getUserMessage(), (UpdateFileRequestError)paramUpdateFileRequestArgs.getErrorValue());
    }
  }
  
  FileRequest a(a paramA)
    throws GetFileRequestErrorException, DbxException
  {
    try
    {
      paramA = (FileRequest)a.rpcStyle(a.getHost().getApi(), "2/file_requests/get", paramA, false, a.a.a, FileRequest.a.a, GetFileRequestError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new GetFileRequestErrorException("2/file_requests/get", paramA.getRequestId(), paramA.getUserMessage(), (GetFileRequestError)paramA.getErrorValue());
    }
  }
  
  public FileRequest create(String paramString1, String paramString2)
    throws CreateFileRequestErrorException, DbxException
  {
    return a(new CreateFileRequestArgs(paramString1, paramString2));
  }
  
  public CreateBuilder createBuilder(String paramString1, String paramString2)
  {
    return new CreateBuilder(this, CreateFileRequestArgs.a(paramString1, paramString2));
  }
  
  public FileRequest get(String paramString)
    throws GetFileRequestErrorException, DbxException
  {
    return a(new a(paramString));
  }
  
  public ListFileRequestsResult list()
    throws ListFileRequestsErrorException, DbxException
  {
    try
    {
      ListFileRequestsResult localListFileRequestsResult = (ListFileRequestsResult)a.rpcStyle(a.getHost().getApi(), "2/file_requests/list", null, false, StoneSerializers.void_(), ListFileRequestsResult.a.a, ListFileRequestsError.a.a);
      return localListFileRequestsResult;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      throw new ListFileRequestsErrorException("2/file_requests/list", localDbxWrappedException.getRequestId(), localDbxWrappedException.getUserMessage(), (ListFileRequestsError)localDbxWrappedException.getErrorValue());
    }
  }
  
  public FileRequest update(String paramString)
    throws UpdateFileRequestErrorException, DbxException
  {
    return a(new UpdateFileRequestArgs(paramString));
  }
  
  public UpdateBuilder updateBuilder(String paramString)
  {
    return new UpdateBuilder(this, UpdateFileRequestArgs.a(paramString));
  }
}
