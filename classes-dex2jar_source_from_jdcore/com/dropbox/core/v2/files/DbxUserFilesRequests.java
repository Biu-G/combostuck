package com.dropbox.core.v2.files;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.LocalizedText;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.async.PollArg;
import com.dropbox.core.v2.async.PollArg.Serializer;
import com.dropbox.core.v2.async.PollError;
import com.dropbox.core.v2.async.PollError.Serializer;
import com.dropbox.core.v2.async.PollErrorException;
import com.dropbox.core.v2.fileproperties.AddPropertiesArg;
import com.dropbox.core.v2.fileproperties.AddPropertiesArg.Serializer;
import com.dropbox.core.v2.fileproperties.AddPropertiesError;
import com.dropbox.core.v2.fileproperties.AddPropertiesError.Serializer;
import com.dropbox.core.v2.fileproperties.AddPropertiesErrorException;
import com.dropbox.core.v2.fileproperties.GetTemplateArg;
import com.dropbox.core.v2.fileproperties.GetTemplateArg.Serializer;
import com.dropbox.core.v2.fileproperties.GetTemplateResult;
import com.dropbox.core.v2.fileproperties.GetTemplateResult.Serializer;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupError.Serializer;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupErrorException;
import com.dropbox.core.v2.fileproperties.ListTemplateResult;
import com.dropbox.core.v2.fileproperties.ListTemplateResult.Serializer;
import com.dropbox.core.v2.fileproperties.OverwritePropertyGroupArg;
import com.dropbox.core.v2.fileproperties.OverwritePropertyGroupArg.Serializer;
import com.dropbox.core.v2.fileproperties.PropertyGroup;
import com.dropbox.core.v2.fileproperties.PropertyGroupUpdate;
import com.dropbox.core.v2.fileproperties.RemovePropertiesArg;
import com.dropbox.core.v2.fileproperties.RemovePropertiesArg.Serializer;
import com.dropbox.core.v2.fileproperties.RemovePropertiesError;
import com.dropbox.core.v2.fileproperties.RemovePropertiesError.Serializer;
import com.dropbox.core.v2.fileproperties.RemovePropertiesErrorException;
import com.dropbox.core.v2.fileproperties.TemplateError;
import com.dropbox.core.v2.fileproperties.TemplateError.Serializer;
import com.dropbox.core.v2.fileproperties.TemplateErrorException;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesArg;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesArg.Serializer;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesError;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesError.Serializer;
import com.dropbox.core.v2.fileproperties.UpdatePropertiesErrorException;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

public class DbxUserFilesRequests
{
  private final DbxRawClientV2 a;
  
  public DbxUserFilesRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  DbxDownloader<FileMetadata> a(ThumbnailArg paramThumbnailArg, List<HttpRequestor.Header> paramList)
    throws ThumbnailErrorException, DbxException
  {
    try
    {
      paramThumbnailArg = a.downloadStyle(a.getHost().getContent(), "2/files/get_thumbnail", paramThumbnailArg, false, paramList, ThumbnailArg.a.a, FileMetadata.a.a, ThumbnailError.a.a);
      return paramThumbnailArg;
    }
    catch (DbxWrappedException paramThumbnailArg)
    {
      throw new ThumbnailErrorException("2/files/get_thumbnail", paramThumbnailArg.getRequestId(), paramThumbnailArg.getUserMessage(), (ThumbnailError)paramThumbnailArg.getErrorValue());
    }
  }
  
  DbxDownloader<FileMetadata> a(c paramC, List<HttpRequestor.Header> paramList)
    throws DownloadErrorException, DbxException
  {
    try
    {
      paramC = a.downloadStyle(a.getHost().getContent(), "2/files/download", paramC, false, paramList, c.a.a, FileMetadata.a.a, DownloadError.a.a);
      return paramC;
    }
    catch (DbxWrappedException paramC)
    {
      throw new DownloadErrorException("2/files/download", paramC.getRequestId(), paramC.getUserMessage(), (DownloadError)paramC.getErrorValue());
    }
  }
  
  DbxDownloader<DownloadZipResult> a(d paramD, List<HttpRequestor.Header> paramList)
    throws DownloadZipErrorException, DbxException
  {
    try
    {
      paramD = a.downloadStyle(a.getHost().getContent(), "2/files/download_zip", paramD, false, paramList, d.a.a, DownloadZipResult.a.a, DownloadZipError.a.a);
      return paramD;
    }
    catch (DbxWrappedException paramD)
    {
      throw new DownloadZipErrorException("2/files/download_zip", paramD.getRequestId(), paramD.getUserMessage(), (DownloadZipError)paramD.getErrorValue());
    }
  }
  
  DbxDownloader<FileMetadata> a(j paramJ, List<HttpRequestor.Header> paramList)
    throws PreviewErrorException, DbxException
  {
    try
    {
      paramJ = a.downloadStyle(a.getHost().getContent(), "2/files/get_preview", paramJ, false, paramList, j.a.a, FileMetadata.a.a, PreviewError.a.a);
      return paramJ;
    }
    catch (DbxWrappedException paramJ)
    {
      throw new PreviewErrorException("2/files/get_preview", paramJ.getRequestId(), paramJ.getUserMessage(), (PreviewError)paramJ.getErrorValue());
    }
  }
  
  GetTemplateResult a(GetTemplateArg paramGetTemplateArg)
    throws TemplateErrorException, DbxException
  {
    try
    {
      paramGetTemplateArg = (GetTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/files/properties/template/get", paramGetTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return paramGetTemplateArg;
    }
    catch (DbxWrappedException paramGetTemplateArg)
    {
      throw new TemplateErrorException("2/files/properties/template/get", paramGetTemplateArg.getRequestId(), paramGetTemplateArg.getUserMessage(), (TemplateError)paramGetTemplateArg.getErrorValue());
    }
  }
  
  AlphaUploadUploader a(CommitInfoWithProperties paramCommitInfoWithProperties)
    throws DbxException
  {
    return new AlphaUploadUploader(a.uploadStyle(a.getHost().getContent(), "2/files/alpha/upload", paramCommitInfoWithProperties, false, CommitInfoWithProperties.a.a), a.getUserId());
  }
  
  CreateFolderBatchLaunch a(CreateFolderBatchArg paramCreateFolderBatchArg)
    throws DbxApiException, DbxException
  {
    try
    {
      paramCreateFolderBatchArg = (CreateFolderBatchLaunch)a.rpcStyle(a.getHost().getApi(), "2/files/create_folder_batch", paramCreateFolderBatchArg, false, CreateFolderBatchArg.a.a, CreateFolderBatchLaunch.a.a, StoneSerializers.void_());
      return paramCreateFolderBatchArg;
    }
    catch (DbxWrappedException paramCreateFolderBatchArg)
    {
      String str = paramCreateFolderBatchArg.getRequestId();
      LocalizedText localLocalizedText = paramCreateFolderBatchArg.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"create_folder_batch\":");
      localStringBuilder.append(paramCreateFolderBatchArg.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  DeleteBatchLaunch a(b paramB)
    throws DbxApiException, DbxException
  {
    try
    {
      paramB = (DeleteBatchLaunch)a.rpcStyle(a.getHost().getApi(), "2/files/delete_batch", paramB, false, b.a.a, DeleteBatchLaunch.a.a, StoneSerializers.void_());
      return paramB;
    }
    catch (DbxWrappedException paramB)
    {
      String str = paramB.getRequestId();
      LocalizedText localLocalizedText = paramB.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"delete_batch\":");
      localStringBuilder.append(paramB.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  FileMetadata a(k paramK)
    throws RestoreErrorException, DbxException
  {
    try
    {
      paramK = (FileMetadata)a.rpcStyle(a.getHost().getApi(), "2/files/restore", paramK, false, k.a.a, FileMetadata.a.a, RestoreError.a.a);
      return paramK;
    }
    catch (DbxWrappedException paramK)
    {
      throw new RestoreErrorException("2/files/restore", paramK.getRequestId(), paramK.getUserMessage(), (RestoreError)paramK.getErrorValue());
    }
  }
  
  FolderMetadata a(a paramA)
    throws CreateFolderErrorException, DbxException
  {
    try
    {
      paramA = (FolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/files/create_folder", paramA, false, a.a.a, FolderMetadata.a.a, CreateFolderError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new CreateFolderErrorException("2/files/create_folder", paramA.getRequestId(), paramA.getUserMessage(), (CreateFolderError)paramA.getErrorValue());
    }
  }
  
  GetCopyReferenceResult a(e paramE)
    throws GetCopyReferenceErrorException, DbxException
  {
    try
    {
      paramE = (GetCopyReferenceResult)a.rpcStyle(a.getHost().getApi(), "2/files/copy_reference/get", paramE, false, e.a.a, GetCopyReferenceResult.a.a, GetCopyReferenceError.a.a);
      return paramE;
    }
    catch (DbxWrappedException paramE)
    {
      throw new GetCopyReferenceErrorException("2/files/copy_reference/get", paramE.getRequestId(), paramE.getUserMessage(), (GetCopyReferenceError)paramE.getErrorValue());
    }
  }
  
  GetTemporaryLinkResult a(f paramF)
    throws GetTemporaryLinkErrorException, DbxException
  {
    try
    {
      paramF = (GetTemporaryLinkResult)a.rpcStyle(a.getHost().getApi(), "2/files/get_temporary_link", paramF, false, f.a.a, GetTemporaryLinkResult.a.a, GetTemporaryLinkError.a.a);
      return paramF;
    }
    catch (DbxWrappedException paramF)
    {
      throw new GetTemporaryLinkErrorException("2/files/get_temporary_link", paramF.getRequestId(), paramF.getUserMessage(), (GetTemporaryLinkError)paramF.getErrorValue());
    }
  }
  
  GetThumbnailBatchResult a(g paramG)
    throws GetThumbnailBatchErrorException, DbxException
  {
    try
    {
      paramG = (GetThumbnailBatchResult)a.rpcStyle(a.getHost().getContent(), "2/files/get_thumbnail_batch", paramG, false, g.a.a, GetThumbnailBatchResult.a.a, GetThumbnailBatchError.a.a);
      return paramG;
    }
    catch (DbxWrappedException paramG)
    {
      throw new GetThumbnailBatchErrorException("2/files/get_thumbnail_batch", paramG.getRequestId(), paramG.getUserMessage(), (GetThumbnailBatchError)paramG.getErrorValue());
    }
  }
  
  ListFolderLongpollResult a(i paramI)
    throws ListFolderLongpollErrorException, DbxException
  {
    try
    {
      paramI = (ListFolderLongpollResult)a.rpcStyle(a.getHost().getNotify(), "2/files/list_folder/longpoll", paramI, true, i.a.a, ListFolderLongpollResult.a.a, ListFolderLongpollError.a.a);
      return paramI;
    }
    catch (DbxWrappedException paramI)
    {
      throw new ListFolderLongpollErrorException("2/files/list_folder/longpoll", paramI.getRequestId(), paramI.getUserMessage(), (ListFolderLongpollError)paramI.getErrorValue());
    }
  }
  
  ListFolderResult a(ListFolderArg paramListFolderArg)
    throws ListFolderErrorException, DbxException
  {
    try
    {
      paramListFolderArg = (ListFolderResult)a.rpcStyle(a.getHost().getApi(), "2/files/list_folder", paramListFolderArg, false, ListFolderArg.a.a, ListFolderResult.a.a, ListFolderError.a.a);
      return paramListFolderArg;
    }
    catch (DbxWrappedException paramListFolderArg)
    {
      throw new ListFolderErrorException("2/files/list_folder", paramListFolderArg.getRequestId(), paramListFolderArg.getUserMessage(), (ListFolderError)paramListFolderArg.getErrorValue());
    }
  }
  
  ListFolderResult a(h paramH)
    throws ListFolderContinueErrorException, DbxException
  {
    try
    {
      paramH = (ListFolderResult)a.rpcStyle(a.getHost().getApi(), "2/files/list_folder/continue", paramH, false, h.a.a, ListFolderResult.a.a, ListFolderContinueError.a.a);
      return paramH;
    }
    catch (DbxWrappedException paramH)
    {
      throw new ListFolderContinueErrorException("2/files/list_folder/continue", paramH.getRequestId(), paramH.getUserMessage(), (ListFolderContinueError)paramH.getErrorValue());
    }
  }
  
  ListRevisionsResult a(ListRevisionsArg paramListRevisionsArg)
    throws ListRevisionsErrorException, DbxException
  {
    try
    {
      paramListRevisionsArg = (ListRevisionsResult)a.rpcStyle(a.getHost().getApi(), "2/files/list_revisions", paramListRevisionsArg, false, ListRevisionsArg.a.a, ListRevisionsResult.a.a, ListRevisionsError.a.a);
      return paramListRevisionsArg;
    }
    catch (DbxWrappedException paramListRevisionsArg)
    {
      throw new ListRevisionsErrorException("2/files/list_revisions", paramListRevisionsArg.getRequestId(), paramListRevisionsArg.getUserMessage(), (ListRevisionsError)paramListRevisionsArg.getErrorValue());
    }
  }
  
  Metadata a(AlphaGetMetadataArg paramAlphaGetMetadataArg)
    throws AlphaGetMetadataErrorException, DbxException
  {
    try
    {
      paramAlphaGetMetadataArg = (Metadata)a.rpcStyle(a.getHost().getApi(), "2/files/alpha/get_metadata", paramAlphaGetMetadataArg, false, AlphaGetMetadataArg.a.a, Metadata.a.a, AlphaGetMetadataError.a.a);
      return paramAlphaGetMetadataArg;
    }
    catch (DbxWrappedException paramAlphaGetMetadataArg)
    {
      throw new AlphaGetMetadataErrorException("2/files/alpha/get_metadata", paramAlphaGetMetadataArg.getRequestId(), paramAlphaGetMetadataArg.getUserMessage(), (AlphaGetMetadataError)paramAlphaGetMetadataArg.getErrorValue());
    }
  }
  
  Metadata a(DeleteArg paramDeleteArg)
    throws DeleteErrorException, DbxException
  {
    try
    {
      paramDeleteArg = (Metadata)a.rpcStyle(a.getHost().getApi(), "2/files/delete", paramDeleteArg, false, DeleteArg.a.a, Metadata.a.a, DeleteError.a.a);
      return paramDeleteArg;
    }
    catch (DbxWrappedException paramDeleteArg)
    {
      throw new DeleteErrorException("2/files/delete", paramDeleteArg.getRequestId(), paramDeleteArg.getUserMessage(), (DeleteError)paramDeleteArg.getErrorValue());
    }
  }
  
  Metadata a(GetMetadataArg paramGetMetadataArg)
    throws GetMetadataErrorException, DbxException
  {
    try
    {
      paramGetMetadataArg = (Metadata)a.rpcStyle(a.getHost().getApi(), "2/files/get_metadata", paramGetMetadataArg, false, GetMetadataArg.a.a, Metadata.a.a, GetMetadataError.a.a);
      return paramGetMetadataArg;
    }
    catch (DbxWrappedException paramGetMetadataArg)
    {
      throw new GetMetadataErrorException("2/files/get_metadata", paramGetMetadataArg.getRequestId(), paramGetMetadataArg.getUserMessage(), (GetMetadataError)paramGetMetadataArg.getErrorValue());
    }
  }
  
  Metadata a(RelocationArg paramRelocationArg)
    throws RelocationErrorException, DbxException
  {
    try
    {
      paramRelocationArg = (Metadata)a.rpcStyle(a.getHost().getApi(), "2/files/copy", paramRelocationArg, false, RelocationArg.a.a, Metadata.a.a, RelocationError.a.a);
      return paramRelocationArg;
    }
    catch (DbxWrappedException paramRelocationArg)
    {
      throw new RelocationErrorException("2/files/copy", paramRelocationArg.getRequestId(), paramRelocationArg.getUserMessage(), (RelocationError)paramRelocationArg.getErrorValue());
    }
  }
  
  RelocationBatchJobStatus a(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (RelocationBatchJobStatus)a.rpcStyle(a.getHost().getApi(), "2/files/copy_batch/check", paramPollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/files/copy_batch/check", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  RelocationBatchLaunch a(RelocationBatchArg paramRelocationBatchArg)
    throws DbxApiException, DbxException
  {
    try
    {
      paramRelocationBatchArg = (RelocationBatchLaunch)a.rpcStyle(a.getHost().getApi(), "2/files/copy_batch", paramRelocationBatchArg, false, RelocationBatchArg.a.a, RelocationBatchLaunch.a.a, StoneSerializers.void_());
      return paramRelocationBatchArg;
    }
    catch (DbxWrappedException paramRelocationBatchArg)
    {
      String str = paramRelocationBatchArg.getRequestId();
      LocalizedText localLocalizedText = paramRelocationBatchArg.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"copy_batch\":");
      localStringBuilder.append(paramRelocationBatchArg.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  SaveCopyReferenceResult a(l paramL)
    throws SaveCopyReferenceErrorException, DbxException
  {
    try
    {
      paramL = (SaveCopyReferenceResult)a.rpcStyle(a.getHost().getApi(), "2/files/copy_reference/save", paramL, false, l.a.a, SaveCopyReferenceResult.a.a, SaveCopyReferenceError.a.a);
      return paramL;
    }
    catch (DbxWrappedException paramL)
    {
      throw new SaveCopyReferenceErrorException("2/files/copy_reference/save", paramL.getRequestId(), paramL.getUserMessage(), (SaveCopyReferenceError)paramL.getErrorValue());
    }
  }
  
  SaveUrlResult a(m paramM)
    throws SaveUrlErrorException, DbxException
  {
    try
    {
      paramM = (SaveUrlResult)a.rpcStyle(a.getHost().getApi(), "2/files/save_url", paramM, false, m.a.a, SaveUrlResult.a.a, SaveUrlError.a.a);
      return paramM;
    }
    catch (DbxWrappedException paramM)
    {
      throw new SaveUrlErrorException("2/files/save_url", paramM.getRequestId(), paramM.getUserMessage(), (SaveUrlError)paramM.getErrorValue());
    }
  }
  
  SearchResult a(SearchArg paramSearchArg)
    throws SearchErrorException, DbxException
  {
    try
    {
      paramSearchArg = (SearchResult)a.rpcStyle(a.getHost().getApi(), "2/files/search", paramSearchArg, false, SearchArg.a.a, SearchResult.a.a, SearchError.a.a);
      return paramSearchArg;
    }
    catch (DbxWrappedException paramSearchArg)
    {
      throw new SearchErrorException("2/files/search", paramSearchArg.getRequestId(), paramSearchArg.getUserMessage(), (SearchError)paramSearchArg.getErrorValue());
    }
  }
  
  UploadSessionAppendUploader a(UploadSessionCursor paramUploadSessionCursor)
    throws DbxException
  {
    return new UploadSessionAppendUploader(a.uploadStyle(a.getHost().getContent(), "2/files/upload_session/append", paramUploadSessionCursor, false, UploadSessionCursor.a.a), a.getUserId());
  }
  
  UploadSessionAppendV2Uploader a(n paramN)
    throws DbxException
  {
    return new UploadSessionAppendV2Uploader(a.uploadStyle(a.getHost().getContent(), "2/files/upload_session/append_v2", paramN, false, n.a.a), a.getUserId());
  }
  
  UploadSessionFinishBatchLaunch a(o paramO)
    throws DbxApiException, DbxException
  {
    try
    {
      paramO = (UploadSessionFinishBatchLaunch)a.rpcStyle(a.getHost().getApi(), "2/files/upload_session/finish_batch", paramO, false, o.a.a, UploadSessionFinishBatchLaunch.a.a, StoneSerializers.void_());
      return paramO;
    }
    catch (DbxWrappedException paramO)
    {
      String str = paramO.getRequestId();
      LocalizedText localLocalizedText = paramO.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"upload_session/finish_batch\":");
      localStringBuilder.append(paramO.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  UploadSessionFinishUploader a(UploadSessionFinishArg paramUploadSessionFinishArg)
    throws DbxException
  {
    return new UploadSessionFinishUploader(a.uploadStyle(a.getHost().getContent(), "2/files/upload_session/finish", paramUploadSessionFinishArg, false, UploadSessionFinishArg.a.a), a.getUserId());
  }
  
  UploadSessionStartUploader a(p paramP)
    throws DbxException
  {
    return new UploadSessionStartUploader(a.uploadStyle(a.getHost().getContent(), "2/files/upload_session/start", paramP, false, p.a.a), a.getUserId());
  }
  
  UploadUploader a(CommitInfo paramCommitInfo)
    throws DbxException
  {
    return new UploadUploader(a.uploadStyle(a.getHost().getContent(), "2/files/upload", paramCommitInfo, false, CommitInfo.a.a), a.getUserId());
  }
  
  void a(AddPropertiesArg paramAddPropertiesArg)
    throws AddPropertiesErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/files/properties/add", paramAddPropertiesArg, false, AddPropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), AddPropertiesError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramAddPropertiesArg)
    {
      throw new AddPropertiesErrorException("2/files/properties/add", paramAddPropertiesArg.getRequestId(), paramAddPropertiesArg.getUserMessage(), (AddPropertiesError)paramAddPropertiesArg.getErrorValue());
    }
  }
  
  void a(OverwritePropertyGroupArg paramOverwritePropertyGroupArg)
    throws InvalidPropertyGroupErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/files/properties/overwrite", paramOverwritePropertyGroupArg, false, OverwritePropertyGroupArg.Serializer.INSTANCE, StoneSerializers.void_(), InvalidPropertyGroupError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramOverwritePropertyGroupArg)
    {
      throw new InvalidPropertyGroupErrorException("2/files/properties/overwrite", paramOverwritePropertyGroupArg.getRequestId(), paramOverwritePropertyGroupArg.getUserMessage(), (InvalidPropertyGroupError)paramOverwritePropertyGroupArg.getErrorValue());
    }
  }
  
  void a(RemovePropertiesArg paramRemovePropertiesArg)
    throws RemovePropertiesErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/files/properties/remove", paramRemovePropertiesArg, false, RemovePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), RemovePropertiesError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramRemovePropertiesArg)
    {
      throw new RemovePropertiesErrorException("2/files/properties/remove", paramRemovePropertiesArg.getRequestId(), paramRemovePropertiesArg.getUserMessage(), (RemovePropertiesError)paramRemovePropertiesArg.getErrorValue());
    }
  }
  
  void a(UpdatePropertiesArg paramUpdatePropertiesArg)
    throws UpdatePropertiesErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/files/properties/update", paramUpdatePropertiesArg, false, UpdatePropertiesArg.Serializer.INSTANCE, StoneSerializers.void_(), UpdatePropertiesError.Serializer.INSTANCE);
      return;
    }
    catch (DbxWrappedException paramUpdatePropertiesArg)
    {
      throw new UpdatePropertiesErrorException("2/files/properties/update", paramUpdatePropertiesArg.getRequestId(), paramUpdatePropertiesArg.getUserMessage(), (UpdatePropertiesError)paramUpdatePropertiesArg.getErrorValue());
    }
  }
  
  @Deprecated
  public Metadata alphaGetMetadata(String paramString)
    throws AlphaGetMetadataErrorException, DbxException
  {
    return a(new AlphaGetMetadataArg(paramString));
  }
  
  @Deprecated
  public AlphaGetMetadataBuilder alphaGetMetadataBuilder(String paramString)
  {
    return new AlphaGetMetadataBuilder(this, AlphaGetMetadataArg.a(paramString));
  }
  
  @Deprecated
  public AlphaUploadUploader alphaUpload(String paramString)
    throws DbxException
  {
    return a(new CommitInfoWithProperties(paramString));
  }
  
  @Deprecated
  public AlphaUploadBuilder alphaUploadBuilder(String paramString)
  {
    return new AlphaUploadBuilder(this, CommitInfoWithProperties.a(paramString));
  }
  
  CreateFolderBatchJobStatus b(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (CreateFolderBatchJobStatus)a.rpcStyle(a.getHost().getApi(), "2/files/create_folder_batch/check", paramPollArg, false, PollArg.Serializer.INSTANCE, CreateFolderBatchJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/files/create_folder_batch/check", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  CreateFolderResult b(a paramA)
    throws CreateFolderErrorException, DbxException
  {
    try
    {
      paramA = (CreateFolderResult)a.rpcStyle(a.getHost().getApi(), "2/files/create_folder_v2", paramA, false, a.a.a, CreateFolderResult.a.a, CreateFolderError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new CreateFolderErrorException("2/files/create_folder_v2", paramA.getRequestId(), paramA.getUserMessage(), (CreateFolderError)paramA.getErrorValue());
    }
  }
  
  DeleteResult b(DeleteArg paramDeleteArg)
    throws DeleteErrorException, DbxException
  {
    try
    {
      paramDeleteArg = (DeleteResult)a.rpcStyle(a.getHost().getApi(), "2/files/delete_v2", paramDeleteArg, false, DeleteArg.a.a, DeleteResult.a.a, DeleteError.a.a);
      return paramDeleteArg;
    }
    catch (DbxWrappedException paramDeleteArg)
    {
      throw new DeleteErrorException("2/files/delete_v2", paramDeleteArg.getRequestId(), paramDeleteArg.getUserMessage(), (DeleteError)paramDeleteArg.getErrorValue());
    }
  }
  
  ListFolderGetLatestCursorResult b(ListFolderArg paramListFolderArg)
    throws ListFolderErrorException, DbxException
  {
    try
    {
      paramListFolderArg = (ListFolderGetLatestCursorResult)a.rpcStyle(a.getHost().getApi(), "2/files/list_folder/get_latest_cursor", paramListFolderArg, false, ListFolderArg.a.a, ListFolderGetLatestCursorResult.a.a, ListFolderError.a.a);
      return paramListFolderArg;
    }
    catch (DbxWrappedException paramListFolderArg)
    {
      throw new ListFolderErrorException("2/files/list_folder/get_latest_cursor", paramListFolderArg.getRequestId(), paramListFolderArg.getUserMessage(), (ListFolderError)paramListFolderArg.getErrorValue());
    }
  }
  
  RelocationBatchLaunch b(RelocationBatchArg paramRelocationBatchArg)
    throws DbxApiException, DbxException
  {
    try
    {
      paramRelocationBatchArg = (RelocationBatchLaunch)a.rpcStyle(a.getHost().getApi(), "2/files/move_batch", paramRelocationBatchArg, false, RelocationBatchArg.a.a, RelocationBatchLaunch.a.a, StoneSerializers.void_());
      return paramRelocationBatchArg;
    }
    catch (DbxWrappedException paramRelocationBatchArg)
    {
      String str = paramRelocationBatchArg.getRequestId();
      LocalizedText localLocalizedText = paramRelocationBatchArg.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"move_batch\":");
      localStringBuilder.append(paramRelocationBatchArg.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  RelocationResult b(RelocationArg paramRelocationArg)
    throws RelocationErrorException, DbxException
  {
    try
    {
      paramRelocationArg = (RelocationResult)a.rpcStyle(a.getHost().getApi(), "2/files/copy_v2", paramRelocationArg, false, RelocationArg.a.a, RelocationResult.a.a, RelocationError.a.a);
      return paramRelocationArg;
    }
    catch (DbxWrappedException paramRelocationArg)
    {
      throw new RelocationErrorException("2/files/copy_v2", paramRelocationArg.getRequestId(), paramRelocationArg.getUserMessage(), (RelocationError)paramRelocationArg.getErrorValue());
    }
  }
  
  DeleteBatchJobStatus c(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (DeleteBatchJobStatus)a.rpcStyle(a.getHost().getApi(), "2/files/delete_batch/check", paramPollArg, false, PollArg.Serializer.INSTANCE, DeleteBatchJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/files/delete_batch/check", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  Metadata c(RelocationArg paramRelocationArg)
    throws RelocationErrorException, DbxException
  {
    try
    {
      paramRelocationArg = (Metadata)a.rpcStyle(a.getHost().getApi(), "2/files/move", paramRelocationArg, false, RelocationArg.a.a, Metadata.a.a, RelocationError.a.a);
      return paramRelocationArg;
    }
    catch (DbxWrappedException paramRelocationArg)
    {
      throw new RelocationErrorException("2/files/move", paramRelocationArg.getRequestId(), paramRelocationArg.getUserMessage(), (RelocationError)paramRelocationArg.getErrorValue());
    }
  }
  
  void c(DeleteArg paramDeleteArg)
    throws DeleteErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/files/permanently_delete", paramDeleteArg, false, DeleteArg.a.a, StoneSerializers.void_(), DeleteError.a.a);
      return;
    }
    catch (DbxWrappedException paramDeleteArg)
    {
      throw new DeleteErrorException("2/files/permanently_delete", paramDeleteArg.getRequestId(), paramDeleteArg.getUserMessage(), (DeleteError)paramDeleteArg.getErrorValue());
    }
  }
  
  @Deprecated
  public Metadata copy(String paramString1, String paramString2)
    throws RelocationErrorException, DbxException
  {
    return a(new RelocationArg(paramString1, paramString2));
  }
  
  public RelocationBatchLaunch copyBatch(List<RelocationPath> paramList)
    throws DbxApiException, DbxException
  {
    return a(new RelocationBatchArg(paramList));
  }
  
  public CopyBatchBuilder copyBatchBuilder(List<RelocationPath> paramList)
  {
    return new CopyBatchBuilder(this, RelocationBatchArg.a(paramList));
  }
  
  public RelocationBatchJobStatus copyBatchCheck(String paramString)
    throws PollErrorException, DbxException
  {
    return a(new PollArg(paramString));
  }
  
  @Deprecated
  public CopyBuilder copyBuilder(String paramString1, String paramString2)
  {
    return new CopyBuilder(this, RelocationArg.a(paramString1, paramString2));
  }
  
  public GetCopyReferenceResult copyReferenceGet(String paramString)
    throws GetCopyReferenceErrorException, DbxException
  {
    return a(new e(paramString));
  }
  
  public SaveCopyReferenceResult copyReferenceSave(String paramString1, String paramString2)
    throws SaveCopyReferenceErrorException, DbxException
  {
    return a(new l(paramString1, paramString2));
  }
  
  public RelocationResult copyV2(String paramString1, String paramString2)
    throws RelocationErrorException, DbxException
  {
    return b(new RelocationArg(paramString1, paramString2));
  }
  
  public CopyV2Builder copyV2Builder(String paramString1, String paramString2)
  {
    return new CopyV2Builder(this, RelocationArg.a(paramString1, paramString2));
  }
  
  @Deprecated
  public FolderMetadata createFolder(String paramString)
    throws CreateFolderErrorException, DbxException
  {
    return a(new a(paramString));
  }
  
  @Deprecated
  public FolderMetadata createFolder(String paramString, boolean paramBoolean)
    throws CreateFolderErrorException, DbxException
  {
    return a(new a(paramString, paramBoolean));
  }
  
  public CreateFolderBatchLaunch createFolderBatch(List<String> paramList)
    throws DbxApiException, DbxException
  {
    return a(new CreateFolderBatchArg(paramList));
  }
  
  public CreateFolderBatchBuilder createFolderBatchBuilder(List<String> paramList)
  {
    return new CreateFolderBatchBuilder(this, CreateFolderBatchArg.a(paramList));
  }
  
  public CreateFolderBatchJobStatus createFolderBatchCheck(String paramString)
    throws PollErrorException, DbxException
  {
    return b(new PollArg(paramString));
  }
  
  public CreateFolderResult createFolderV2(String paramString)
    throws CreateFolderErrorException, DbxException
  {
    return b(new a(paramString));
  }
  
  public CreateFolderResult createFolderV2(String paramString, boolean paramBoolean)
    throws CreateFolderErrorException, DbxException
  {
    return b(new a(paramString, paramBoolean));
  }
  
  RelocationBatchJobStatus d(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (RelocationBatchJobStatus)a.rpcStyle(a.getHost().getApi(), "2/files/move_batch/check", paramPollArg, false, PollArg.Serializer.INSTANCE, RelocationBatchJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/files/move_batch/check", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  RelocationResult d(RelocationArg paramRelocationArg)
    throws RelocationErrorException, DbxException
  {
    try
    {
      paramRelocationArg = (RelocationResult)a.rpcStyle(a.getHost().getApi(), "2/files/move_v2", paramRelocationArg, false, RelocationArg.a.a, RelocationResult.a.a, RelocationError.a.a);
      return paramRelocationArg;
    }
    catch (DbxWrappedException paramRelocationArg)
    {
      throw new RelocationErrorException("2/files/move_v2", paramRelocationArg.getRequestId(), paramRelocationArg.getUserMessage(), (RelocationError)paramRelocationArg.getErrorValue());
    }
  }
  
  @Deprecated
  public Metadata delete(String paramString)
    throws DeleteErrorException, DbxException
  {
    return a(new DeleteArg(paramString));
  }
  
  @Deprecated
  public Metadata delete(String paramString1, String paramString2)
    throws DeleteErrorException, DbxException
  {
    if (paramString2 != null) {
      if (paramString2.length() >= 9)
      {
        if (!Pattern.matches("[0-9a-f]+", paramString2)) {
          throw new IllegalArgumentException("String 'parentRev' does not match pattern");
        }
      }
      else {
        throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
      }
    }
    return a(new DeleteArg(paramString1, paramString2));
  }
  
  public DeleteBatchLaunch deleteBatch(List<DeleteArg> paramList)
    throws DbxApiException, DbxException
  {
    return a(new b(paramList));
  }
  
  public DeleteBatchJobStatus deleteBatchCheck(String paramString)
    throws PollErrorException, DbxException
  {
    return c(new PollArg(paramString));
  }
  
  public DeleteResult deleteV2(String paramString)
    throws DeleteErrorException, DbxException
  {
    return b(new DeleteArg(paramString));
  }
  
  public DeleteResult deleteV2(String paramString1, String paramString2)
    throws DeleteErrorException, DbxException
  {
    if (paramString2 != null) {
      if (paramString2.length() >= 9)
      {
        if (!Pattern.matches("[0-9a-f]+", paramString2)) {
          throw new IllegalArgumentException("String 'parentRev' does not match pattern");
        }
      }
      else {
        throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
      }
    }
    return b(new DeleteArg(paramString1, paramString2));
  }
  
  public DbxDownloader<FileMetadata> download(String paramString)
    throws DownloadErrorException, DbxException
  {
    return a(new c(paramString), Collections.emptyList());
  }
  
  public DbxDownloader<FileMetadata> download(String paramString1, String paramString2)
    throws DownloadErrorException, DbxException
  {
    if (paramString2 != null) {
      if (paramString2.length() >= 9)
      {
        if (!Pattern.matches("[0-9a-f]+", paramString2)) {
          throw new IllegalArgumentException("String 'rev' does not match pattern");
        }
      }
      else {
        throw new IllegalArgumentException("String 'rev' is shorter than 9");
      }
    }
    return a(new c(paramString1, paramString2), Collections.emptyList());
  }
  
  public DownloadBuilder downloadBuilder(String paramString)
  {
    return new DownloadBuilder(this, paramString);
  }
  
  public DbxDownloader<DownloadZipResult> downloadZip(String paramString)
    throws DownloadZipErrorException, DbxException
  {
    return a(new d(paramString), Collections.emptyList());
  }
  
  public DownloadZipBuilder downloadZipBuilder(String paramString)
  {
    return new DownloadZipBuilder(this, paramString);
  }
  
  SaveUrlJobStatus e(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (SaveUrlJobStatus)a.rpcStyle(a.getHost().getApi(), "2/files/save_url/check_job_status", paramPollArg, false, PollArg.Serializer.INSTANCE, SaveUrlJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/files/save_url/check_job_status", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  UploadSessionFinishBatchJobStatus f(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (UploadSessionFinishBatchJobStatus)a.rpcStyle(a.getHost().getApi(), "2/files/upload_session/finish_batch/check", paramPollArg, false, PollArg.Serializer.INSTANCE, UploadSessionFinishBatchJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/files/upload_session/finish_batch/check", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  public Metadata getMetadata(String paramString)
    throws GetMetadataErrorException, DbxException
  {
    return a(new GetMetadataArg(paramString));
  }
  
  public GetMetadataBuilder getMetadataBuilder(String paramString)
  {
    return new GetMetadataBuilder(this, GetMetadataArg.b(paramString));
  }
  
  public DbxDownloader<FileMetadata> getPreview(String paramString)
    throws PreviewErrorException, DbxException
  {
    return a(new j(paramString), Collections.emptyList());
  }
  
  public DbxDownloader<FileMetadata> getPreview(String paramString1, String paramString2)
    throws PreviewErrorException, DbxException
  {
    if (paramString2 != null) {
      if (paramString2.length() >= 9)
      {
        if (!Pattern.matches("[0-9a-f]+", paramString2)) {
          throw new IllegalArgumentException("String 'rev' does not match pattern");
        }
      }
      else {
        throw new IllegalArgumentException("String 'rev' is shorter than 9");
      }
    }
    return a(new j(paramString1, paramString2), Collections.emptyList());
  }
  
  public GetPreviewBuilder getPreviewBuilder(String paramString)
  {
    return new GetPreviewBuilder(this, paramString);
  }
  
  public GetTemporaryLinkResult getTemporaryLink(String paramString)
    throws GetTemporaryLinkErrorException, DbxException
  {
    return a(new f(paramString));
  }
  
  public DbxDownloader<FileMetadata> getThumbnail(String paramString)
    throws ThumbnailErrorException, DbxException
  {
    return a(new ThumbnailArg(paramString), Collections.emptyList());
  }
  
  public GetThumbnailBatchResult getThumbnailBatch(List<ThumbnailArg> paramList)
    throws GetThumbnailBatchErrorException, DbxException
  {
    return a(new g(paramList));
  }
  
  public GetThumbnailBuilder getThumbnailBuilder(String paramString)
  {
    return new GetThumbnailBuilder(this, ThumbnailArg.newBuilder(paramString));
  }
  
  public ListFolderResult listFolder(String paramString)
    throws ListFolderErrorException, DbxException
  {
    return a(new ListFolderArg(paramString));
  }
  
  public ListFolderBuilder listFolderBuilder(String paramString)
  {
    return new ListFolderBuilder(this, ListFolderArg.a(paramString));
  }
  
  public ListFolderResult listFolderContinue(String paramString)
    throws ListFolderContinueErrorException, DbxException
  {
    return a(new h(paramString));
  }
  
  public ListFolderGetLatestCursorResult listFolderGetLatestCursor(String paramString)
    throws ListFolderErrorException, DbxException
  {
    return b(new ListFolderArg(paramString));
  }
  
  public ListFolderGetLatestCursorBuilder listFolderGetLatestCursorBuilder(String paramString)
  {
    return new ListFolderGetLatestCursorBuilder(this, ListFolderArg.a(paramString));
  }
  
  public ListFolderLongpollResult listFolderLongpoll(String paramString)
    throws ListFolderLongpollErrorException, DbxException
  {
    return a(new i(paramString));
  }
  
  public ListFolderLongpollResult listFolderLongpoll(String paramString, long paramLong)
    throws ListFolderLongpollErrorException, DbxException
  {
    if (paramLong >= 30L)
    {
      if (paramLong <= 480L) {
        return a(new i(paramString, paramLong));
      }
      throw new IllegalArgumentException("Number 'timeout' is larger than 480L");
    }
    throw new IllegalArgumentException("Number 'timeout' is smaller than 30L");
  }
  
  public ListRevisionsResult listRevisions(String paramString)
    throws ListRevisionsErrorException, DbxException
  {
    return a(new ListRevisionsArg(paramString));
  }
  
  public ListRevisionsBuilder listRevisionsBuilder(String paramString)
  {
    return new ListRevisionsBuilder(this, ListRevisionsArg.a(paramString));
  }
  
  @Deprecated
  public Metadata move(String paramString1, String paramString2)
    throws RelocationErrorException, DbxException
  {
    return c(new RelocationArg(paramString1, paramString2));
  }
  
  public RelocationBatchLaunch moveBatch(List<RelocationPath> paramList)
    throws DbxApiException, DbxException
  {
    return b(new RelocationBatchArg(paramList));
  }
  
  public MoveBatchBuilder moveBatchBuilder(List<RelocationPath> paramList)
  {
    return new MoveBatchBuilder(this, RelocationBatchArg.a(paramList));
  }
  
  public RelocationBatchJobStatus moveBatchCheck(String paramString)
    throws PollErrorException, DbxException
  {
    return d(new PollArg(paramString));
  }
  
  @Deprecated
  public MoveBuilder moveBuilder(String paramString1, String paramString2)
  {
    return new MoveBuilder(this, RelocationArg.a(paramString1, paramString2));
  }
  
  public RelocationResult moveV2(String paramString1, String paramString2)
    throws RelocationErrorException, DbxException
  {
    return d(new RelocationArg(paramString1, paramString2));
  }
  
  public MoveV2Builder moveV2Builder(String paramString1, String paramString2)
  {
    return new MoveV2Builder(this, RelocationArg.a(paramString1, paramString2));
  }
  
  public void permanentlyDelete(String paramString)
    throws DeleteErrorException, DbxException
  {
    c(new DeleteArg(paramString));
  }
  
  public void permanentlyDelete(String paramString1, String paramString2)
    throws DeleteErrorException, DbxException
  {
    if (paramString2 != null) {
      if (paramString2.length() >= 9)
      {
        if (!Pattern.matches("[0-9a-f]+", paramString2)) {
          throw new IllegalArgumentException("String 'parentRev' does not match pattern");
        }
      }
      else {
        throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
      }
    }
    c(new DeleteArg(paramString1, paramString2));
  }
  
  @Deprecated
  public void propertiesAdd(String paramString, List<PropertyGroup> paramList)
    throws AddPropertiesErrorException, DbxException
  {
    a(new AddPropertiesArg(paramString, paramList));
  }
  
  @Deprecated
  public void propertiesOverwrite(String paramString, List<PropertyGroup> paramList)
    throws InvalidPropertyGroupErrorException, DbxException
  {
    a(new OverwritePropertyGroupArg(paramString, paramList));
  }
  
  @Deprecated
  public void propertiesRemove(String paramString, List<String> paramList)
    throws RemovePropertiesErrorException, DbxException
  {
    a(new RemovePropertiesArg(paramString, paramList));
  }
  
  @Deprecated
  public GetTemplateResult propertiesTemplateGet(String paramString)
    throws TemplateErrorException, DbxException
  {
    return a(new GetTemplateArg(paramString));
  }
  
  @Deprecated
  public ListTemplateResult propertiesTemplateList()
    throws TemplateErrorException, DbxException
  {
    try
    {
      ListTemplateResult localListTemplateResult = (ListTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/files/properties/template/list", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return localListTemplateResult;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      throw new TemplateErrorException("2/files/properties/template/list", localDbxWrappedException.getRequestId(), localDbxWrappedException.getUserMessage(), (TemplateError)localDbxWrappedException.getErrorValue());
    }
  }
  
  @Deprecated
  public void propertiesUpdate(String paramString, List<PropertyGroupUpdate> paramList)
    throws UpdatePropertiesErrorException, DbxException
  {
    a(new UpdatePropertiesArg(paramString, paramList));
  }
  
  public FileMetadata restore(String paramString1, String paramString2)
    throws RestoreErrorException, DbxException
  {
    return a(new k(paramString1, paramString2));
  }
  
  public SaveUrlResult saveUrl(String paramString1, String paramString2)
    throws SaveUrlErrorException, DbxException
  {
    return a(new m(paramString1, paramString2));
  }
  
  public SaveUrlJobStatus saveUrlCheckJobStatus(String paramString)
    throws PollErrorException, DbxException
  {
    return e(new PollArg(paramString));
  }
  
  public SearchResult search(String paramString1, String paramString2)
    throws SearchErrorException, DbxException
  {
    return a(new SearchArg(paramString1, paramString2));
  }
  
  public SearchBuilder searchBuilder(String paramString1, String paramString2)
  {
    return new SearchBuilder(this, SearchArg.a(paramString1, paramString2));
  }
  
  public UploadUploader upload(String paramString)
    throws DbxException
  {
    return a(new CommitInfo(paramString));
  }
  
  public UploadBuilder uploadBuilder(String paramString)
  {
    return new UploadBuilder(this, CommitInfo.newBuilder(paramString));
  }
  
  @Deprecated
  public UploadSessionAppendUploader uploadSessionAppend(String paramString, long paramLong)
    throws DbxException
  {
    return a(new UploadSessionCursor(paramString, paramLong));
  }
  
  public UploadSessionAppendV2Uploader uploadSessionAppendV2(UploadSessionCursor paramUploadSessionCursor)
    throws DbxException
  {
    return a(new n(paramUploadSessionCursor));
  }
  
  public UploadSessionAppendV2Uploader uploadSessionAppendV2(UploadSessionCursor paramUploadSessionCursor, boolean paramBoolean)
    throws DbxException
  {
    return a(new n(paramUploadSessionCursor, paramBoolean));
  }
  
  public UploadSessionFinishUploader uploadSessionFinish(UploadSessionCursor paramUploadSessionCursor, CommitInfo paramCommitInfo)
    throws DbxException
  {
    return a(new UploadSessionFinishArg(paramUploadSessionCursor, paramCommitInfo));
  }
  
  public UploadSessionFinishBatchLaunch uploadSessionFinishBatch(List<UploadSessionFinishArg> paramList)
    throws DbxApiException, DbxException
  {
    return a(new o(paramList));
  }
  
  public UploadSessionFinishBatchJobStatus uploadSessionFinishBatchCheck(String paramString)
    throws PollErrorException, DbxException
  {
    return f(new PollArg(paramString));
  }
  
  public UploadSessionStartUploader uploadSessionStart()
    throws DbxException
  {
    return a(new p());
  }
  
  public UploadSessionStartUploader uploadSessionStart(boolean paramBoolean)
    throws DbxException
  {
    return a(new p(paramBoolean));
  }
}
