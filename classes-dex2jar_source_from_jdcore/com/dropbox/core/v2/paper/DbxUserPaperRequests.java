package com.dropbox.core.v2.paper;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.LocalizedText;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.util.Collections;
import java.util.List;

public class DbxUserPaperRequests
{
  private final DbxRawClientV2 a;
  
  public DbxUserPaperRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  DbxDownloader<PaperDocExportResult> a(f paramF, List<HttpRequestor.Header> paramList)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      paramF = a.downloadStyle(a.getHost().getApi(), "2/paper/docs/download", paramF, false, paramList, f.a.a, PaperDocExportResult.a.a, DocLookupError.a.a);
      return paramF;
    }
    catch (DbxWrappedException paramF)
    {
      throw new DocLookupErrorException("2/paper/docs/download", paramF.getRequestId(), paramF.getUserMessage(), (DocLookupError)paramF.getErrorValue());
    }
  }
  
  DocsCreateUploader a(e paramE)
    throws DbxException
  {
    return new DocsCreateUploader(a.uploadStyle(a.getHost().getApi(), "2/paper/docs/create", paramE, false, e.a.a), a.getUserId());
  }
  
  DocsUpdateUploader a(h paramH)
    throws DbxException
  {
    return new DocsUpdateUploader(a.uploadStyle(a.getHost().getApi(), "2/paper/docs/update", paramH, false, h.a.a), a.getUserId());
  }
  
  ListPaperDocsResponse a(ListPaperDocsArgs paramListPaperDocsArgs)
    throws DbxApiException, DbxException
  {
    try
    {
      paramListPaperDocsArgs = (ListPaperDocsResponse)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/list", paramListPaperDocsArgs, false, ListPaperDocsArgs.a.a, ListPaperDocsResponse.a.a, StoneSerializers.void_());
      return paramListPaperDocsArgs;
    }
    catch (DbxWrappedException paramListPaperDocsArgs)
    {
      String str = paramListPaperDocsArgs.getRequestId();
      LocalizedText localLocalizedText = paramListPaperDocsArgs.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"docs/list\":");
      localStringBuilder.append(paramListPaperDocsArgs.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  ListPaperDocsResponse a(a paramA)
    throws ListDocsCursorErrorException, DbxException
  {
    try
    {
      paramA = (ListPaperDocsResponse)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/list/continue", paramA, false, a.a.a, ListPaperDocsResponse.a.a, ListDocsCursorError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new ListDocsCursorErrorException("2/paper/docs/list/continue", paramA.getRequestId(), paramA.getUserMessage(), (ListDocsCursorError)paramA.getErrorValue());
    }
  }
  
  ListUsersOnFolderResponse a(b paramB)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      paramB = (ListUsersOnFolderResponse)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/folder_users/list", paramB, false, b.a.a, ListUsersOnFolderResponse.a.a, DocLookupError.a.a);
      return paramB;
    }
    catch (DbxWrappedException paramB)
    {
      throw new DocLookupErrorException("2/paper/docs/folder_users/list", paramB.getRequestId(), paramB.getUserMessage(), (DocLookupError)paramB.getErrorValue());
    }
  }
  
  ListUsersOnFolderResponse a(c paramC)
    throws ListUsersCursorErrorException, DbxException
  {
    try
    {
      paramC = (ListUsersOnFolderResponse)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/folder_users/list/continue", paramC, false, c.a.a, ListUsersOnFolderResponse.a.a, ListUsersCursorError.a.a);
      return paramC;
    }
    catch (DbxWrappedException paramC)
    {
      throw new ListUsersCursorErrorException("2/paper/docs/folder_users/list/continue", paramC.getRequestId(), paramC.getUserMessage(), (ListUsersCursorError)paramC.getErrorValue());
    }
  }
  
  ListUsersOnPaperDocResponse a(ListUsersOnPaperDocArgs paramListUsersOnPaperDocArgs)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      paramListUsersOnPaperDocArgs = (ListUsersOnPaperDocResponse)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/users/list", paramListUsersOnPaperDocArgs, false, ListUsersOnPaperDocArgs.a.a, ListUsersOnPaperDocResponse.a.a, DocLookupError.a.a);
      return paramListUsersOnPaperDocArgs;
    }
    catch (DbxWrappedException paramListUsersOnPaperDocArgs)
    {
      throw new DocLookupErrorException("2/paper/docs/users/list", paramListUsersOnPaperDocArgs.getRequestId(), paramListUsersOnPaperDocArgs.getUserMessage(), (DocLookupError)paramListUsersOnPaperDocArgs.getErrorValue());
    }
  }
  
  ListUsersOnPaperDocResponse a(d paramD)
    throws ListUsersCursorErrorException, DbxException
  {
    try
    {
      paramD = (ListUsersOnPaperDocResponse)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/users/list/continue", paramD, false, d.a.a, ListUsersOnPaperDocResponse.a.a, ListUsersCursorError.a.a);
      return paramD;
    }
    catch (DbxWrappedException paramD)
    {
      throw new ListUsersCursorErrorException("2/paper/docs/users/list/continue", paramD.getRequestId(), paramD.getUserMessage(), (ListUsersCursorError)paramD.getErrorValue());
    }
  }
  
  List<AddPaperDocUserMemberResult> a(AddPaperDocUser paramAddPaperDocUser)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      paramAddPaperDocUser = (List)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/users/add", paramAddPaperDocUser, false, AddPaperDocUser.a.a, StoneSerializers.list(AddPaperDocUserMemberResult.a.a), DocLookupError.a.a);
      return paramAddPaperDocUser;
    }
    catch (DbxWrappedException paramAddPaperDocUser)
    {
      throw new DocLookupErrorException("2/paper/docs/users/add", paramAddPaperDocUser.getRequestId(), paramAddPaperDocUser.getUserMessage(), (DocLookupError)paramAddPaperDocUser.getErrorValue());
    }
  }
  
  void a(g paramG)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/paper/docs/sharing_policy/set", paramG, false, g.a.a, StoneSerializers.void_(), DocLookupError.a.a);
      return;
    }
    catch (DbxWrappedException paramG)
    {
      throw new DocLookupErrorException("2/paper/docs/sharing_policy/set", paramG.getRequestId(), paramG.getUserMessage(), (DocLookupError)paramG.getErrorValue());
    }
  }
  
  void a(i paramI)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/paper/docs/archive", paramI, false, i.a.a, StoneSerializers.void_(), DocLookupError.a.a);
      return;
    }
    catch (DbxWrappedException paramI)
    {
      throw new DocLookupErrorException("2/paper/docs/archive", paramI.getRequestId(), paramI.getUserMessage(), (DocLookupError)paramI.getErrorValue());
    }
  }
  
  void a(j paramJ)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/paper/docs/users/remove", paramJ, false, j.a.a, StoneSerializers.void_(), DocLookupError.a.a);
      return;
    }
    catch (DbxWrappedException paramJ)
    {
      throw new DocLookupErrorException("2/paper/docs/users/remove", paramJ.getRequestId(), paramJ.getUserMessage(), (DocLookupError)paramJ.getErrorValue());
    }
  }
  
  FoldersContainingPaperDoc b(i paramI)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      paramI = (FoldersContainingPaperDoc)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/get_folder_info", paramI, false, i.a.a, FoldersContainingPaperDoc.a.a, DocLookupError.a.a);
      return paramI;
    }
    catch (DbxWrappedException paramI)
    {
      throw new DocLookupErrorException("2/paper/docs/get_folder_info", paramI.getRequestId(), paramI.getUserMessage(), (DocLookupError)paramI.getErrorValue());
    }
  }
  
  void c(i paramI)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/paper/docs/permanently_delete", paramI, false, i.a.a, StoneSerializers.void_(), DocLookupError.a.a);
      return;
    }
    catch (DbxWrappedException paramI)
    {
      throw new DocLookupErrorException("2/paper/docs/permanently_delete", paramI.getRequestId(), paramI.getUserMessage(), (DocLookupError)paramI.getErrorValue());
    }
  }
  
  SharingPolicy d(i paramI)
    throws DocLookupErrorException, DbxException
  {
    try
    {
      paramI = (SharingPolicy)a.rpcStyle(a.getHost().getApi(), "2/paper/docs/sharing_policy/get", paramI, false, i.a.a, SharingPolicy.a.a, DocLookupError.a.a);
      return paramI;
    }
    catch (DbxWrappedException paramI)
    {
      throw new DocLookupErrorException("2/paper/docs/sharing_policy/get", paramI.getRequestId(), paramI.getUserMessage(), (DocLookupError)paramI.getErrorValue());
    }
  }
  
  public void docsArchive(String paramString)
    throws DocLookupErrorException, DbxException
  {
    a(new i(paramString));
  }
  
  public DocsCreateUploader docsCreate(ImportFormat paramImportFormat)
    throws DbxException
  {
    return a(new e(paramImportFormat));
  }
  
  public DocsCreateUploader docsCreate(ImportFormat paramImportFormat, String paramString)
    throws DbxException
  {
    return a(new e(paramImportFormat, paramString));
  }
  
  public DbxDownloader<PaperDocExportResult> docsDownload(String paramString, ExportFormat paramExportFormat)
    throws DocLookupErrorException, DbxException
  {
    return a(new f(paramString, paramExportFormat), Collections.emptyList());
  }
  
  public DocsDownloadBuilder docsDownloadBuilder(String paramString, ExportFormat paramExportFormat)
  {
    return new DocsDownloadBuilder(this, paramString, paramExportFormat);
  }
  
  public ListUsersOnFolderResponse docsFolderUsersList(String paramString)
    throws DocLookupErrorException, DbxException
  {
    return a(new b(paramString));
  }
  
  public ListUsersOnFolderResponse docsFolderUsersList(String paramString, int paramInt)
    throws DocLookupErrorException, DbxException
  {
    if (paramInt >= 1)
    {
      if (paramInt <= 1000) {
        return a(new b(paramString, paramInt));
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1");
  }
  
  public ListUsersOnFolderResponse docsFolderUsersListContinue(String paramString1, String paramString2)
    throws ListUsersCursorErrorException, DbxException
  {
    return a(new c(paramString1, paramString2));
  }
  
  public FoldersContainingPaperDoc docsGetFolderInfo(String paramString)
    throws DocLookupErrorException, DbxException
  {
    return b(new i(paramString));
  }
  
  public ListPaperDocsResponse docsList()
    throws DbxApiException, DbxException
  {
    return a(new ListPaperDocsArgs());
  }
  
  public DocsListBuilder docsListBuilder()
  {
    return new DocsListBuilder(this, ListPaperDocsArgs.a());
  }
  
  public ListPaperDocsResponse docsListContinue(String paramString)
    throws ListDocsCursorErrorException, DbxException
  {
    return a(new a(paramString));
  }
  
  public void docsPermanentlyDelete(String paramString)
    throws DocLookupErrorException, DbxException
  {
    c(new i(paramString));
  }
  
  public SharingPolicy docsSharingPolicyGet(String paramString)
    throws DocLookupErrorException, DbxException
  {
    return d(new i(paramString));
  }
  
  public void docsSharingPolicySet(String paramString, SharingPolicy paramSharingPolicy)
    throws DocLookupErrorException, DbxException
  {
    a(new g(paramString, paramSharingPolicy));
  }
  
  public DocsUpdateUploader docsUpdate(String paramString, PaperDocUpdatePolicy paramPaperDocUpdatePolicy, long paramLong, ImportFormat paramImportFormat)
    throws DbxException
  {
    return a(new h(paramString, paramPaperDocUpdatePolicy, paramLong, paramImportFormat));
  }
  
  public List<AddPaperDocUserMemberResult> docsUsersAdd(String paramString, List<AddMember> paramList)
    throws DocLookupErrorException, DbxException
  {
    return a(new AddPaperDocUser(paramString, paramList));
  }
  
  public DocsUsersAddBuilder docsUsersAddBuilder(String paramString, List<AddMember> paramList)
  {
    return new DocsUsersAddBuilder(this, AddPaperDocUser.a(paramString, paramList));
  }
  
  public ListUsersOnPaperDocResponse docsUsersList(String paramString)
    throws DocLookupErrorException, DbxException
  {
    return a(new ListUsersOnPaperDocArgs(paramString));
  }
  
  public DocsUsersListBuilder docsUsersListBuilder(String paramString)
  {
    return new DocsUsersListBuilder(this, ListUsersOnPaperDocArgs.a(paramString));
  }
  
  public ListUsersOnPaperDocResponse docsUsersListContinue(String paramString1, String paramString2)
    throws ListUsersCursorErrorException, DbxException
  {
    return a(new d(paramString1, paramString2));
  }
  
  public void docsUsersRemove(String paramString, MemberSelector paramMemberSelector)
    throws DocLookupErrorException, DbxException
  {
    a(new j(paramString, paramMemberSelector));
  }
}
