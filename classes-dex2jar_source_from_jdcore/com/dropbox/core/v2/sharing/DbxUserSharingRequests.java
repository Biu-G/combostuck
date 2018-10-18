package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxDownloader;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.LocalizedText;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.async.LaunchEmptyResult;
import com.dropbox.core.v2.async.LaunchEmptyResult.Serializer;
import com.dropbox.core.v2.async.LaunchResultBase;
import com.dropbox.core.v2.async.LaunchResultBase.Serializer;
import com.dropbox.core.v2.async.PollArg;
import com.dropbox.core.v2.async.PollArg.Serializer;
import com.dropbox.core.v2.async.PollError;
import com.dropbox.core.v2.async.PollError.Serializer;
import com.dropbox.core.v2.async.PollErrorException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class DbxUserSharingRequests
{
  private final DbxRawClientV2 a;
  
  public DbxUserSharingRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  DbxDownloader<SharedLinkMetadata> a(GetSharedLinkMetadataArg paramGetSharedLinkMetadataArg, List<HttpRequestor.Header> paramList)
    throws GetSharedLinkFileErrorException, DbxException
  {
    try
    {
      paramGetSharedLinkMetadataArg = a.downloadStyle(a.getHost().getContent(), "2/sharing/get_shared_link_file", paramGetSharedLinkMetadataArg, false, paramList, GetSharedLinkMetadataArg.a.a, SharedLinkMetadata.a.a, GetSharedLinkFileError.a.a);
      return paramGetSharedLinkMetadataArg;
    }
    catch (DbxWrappedException paramGetSharedLinkMetadataArg)
    {
      throw new GetSharedLinkFileErrorException("2/sharing/get_shared_link_file", paramGetSharedLinkMetadataArg.getRequestId(), paramGetSharedLinkMetadataArg.getUserMessage(), (GetSharedLinkFileError)paramGetSharedLinkMetadataArg.getErrorValue());
    }
  }
  
  LaunchEmptyResult a(o paramO)
    throws RelinquishFolderMembershipErrorException, DbxException
  {
    try
    {
      paramO = (LaunchEmptyResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/relinquish_folder_membership", paramO, false, o.a.a, LaunchEmptyResult.Serializer.INSTANCE, RelinquishFolderMembershipError.a.a);
      return paramO;
    }
    catch (DbxWrappedException paramO)
    {
      throw new RelinquishFolderMembershipErrorException("2/sharing/relinquish_folder_membership", paramO.getRequestId(), paramO.getUserMessage(), (RelinquishFolderMembershipError)paramO.getErrorValue());
    }
  }
  
  LaunchEmptyResult a(w paramW)
    throws UnshareFolderErrorException, DbxException
  {
    try
    {
      paramW = (LaunchEmptyResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/unshare_folder", paramW, false, w.a.a, LaunchEmptyResult.Serializer.INSTANCE, UnshareFolderError.a.a);
      return paramW;
    }
    catch (DbxWrappedException paramW)
    {
      throw new UnshareFolderErrorException("2/sharing/unshare_folder", paramW.getRequestId(), paramW.getUserMessage(), (UnshareFolderError)paramW.getErrorValue());
    }
  }
  
  LaunchResultBase a(q paramQ)
    throws RemoveFolderMemberErrorException, DbxException
  {
    try
    {
      paramQ = (LaunchResultBase)a.rpcStyle(a.getHost().getApi(), "2/sharing/remove_folder_member", paramQ, false, q.a.a, LaunchResultBase.Serializer.INSTANCE, RemoveFolderMemberError.a.a);
      return paramQ;
    }
    catch (DbxWrappedException paramQ)
    {
      throw new RemoveFolderMemberErrorException("2/sharing/remove_folder_member", paramQ.getRequestId(), paramQ.getUserMessage(), (RemoveFolderMemberError)paramQ.getErrorValue());
    }
  }
  
  FileMemberActionIndividualResult a(p paramP)
    throws RemoveFileMemberErrorException, DbxException
  {
    try
    {
      paramP = (FileMemberActionIndividualResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/remove_file_member", paramP, false, p.a.a, FileMemberActionIndividualResult.a.a, RemoveFileMemberError.a.a);
      return paramP;
    }
    catch (DbxWrappedException paramP)
    {
      throw new RemoveFileMemberErrorException("2/sharing/remove_file_member", paramP.getRequestId(), paramP.getUserMessage(), (RemoveFileMemberError)paramP.getErrorValue());
    }
  }
  
  FileMemberActionResult a(a paramA)
    throws FileMemberActionErrorException, DbxException
  {
    try
    {
      paramA = (FileMemberActionResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/change_file_member_access", paramA, false, a.a.a, FileMemberActionResult.a.a, FileMemberActionError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new FileMemberActionErrorException("2/sharing/change_file_member_access", paramA.getRequestId(), paramA.getUserMessage(), (FileMemberActionError)paramA.getErrorValue());
    }
  }
  
  GetSharedLinksResult a(f paramF)
    throws GetSharedLinksErrorException, DbxException
  {
    try
    {
      paramF = (GetSharedLinksResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/get_shared_links", paramF, false, f.a.a, GetSharedLinksResult.a.a, GetSharedLinksError.a.a);
      return paramF;
    }
    catch (DbxWrappedException paramF)
    {
      throw new GetSharedLinksErrorException("2/sharing/get_shared_links", paramF.getRequestId(), paramF.getUserMessage(), (GetSharedLinksError)paramF.getErrorValue());
    }
  }
  
  JobStatus a(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (JobStatus)a.rpcStyle(a.getHost().getApi(), "2/sharing/check_job_status", paramPollArg, false, PollArg.Serializer.INSTANCE, JobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/sharing/check_job_status", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  ListFilesResult a(ListFilesArg paramListFilesArg)
    throws SharingUserErrorException, DbxException
  {
    try
    {
      paramListFilesArg = (ListFilesResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_received_files", paramListFilesArg, false, ListFilesArg.a.a, ListFilesResult.a.a, SharingUserError.a.a);
      return paramListFilesArg;
    }
    catch (DbxWrappedException paramListFilesArg)
    {
      throw new SharingUserErrorException("2/sharing/list_received_files", paramListFilesArg.getRequestId(), paramListFilesArg.getUserMessage(), (SharingUserError)paramListFilesArg.getErrorValue());
    }
  }
  
  ListFilesResult a(i paramI)
    throws ListFilesContinueErrorException, DbxException
  {
    try
    {
      paramI = (ListFilesResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_received_files/continue", paramI, false, i.a.a, ListFilesResult.a.a, ListFilesContinueError.a.a);
      return paramI;
    }
    catch (DbxWrappedException paramI)
    {
      throw new ListFilesContinueErrorException("2/sharing/list_received_files/continue", paramI.getRequestId(), paramI.getUserMessage(), (ListFilesContinueError)paramI.getErrorValue());
    }
  }
  
  ListFoldersResult a(ListFoldersArgs paramListFoldersArgs)
    throws DbxApiException, DbxException
  {
    try
    {
      paramListFoldersArgs = (ListFoldersResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_folders", paramListFoldersArgs, false, ListFoldersArgs.a.a, ListFoldersResult.a.a, StoneSerializers.void_());
      return paramListFoldersArgs;
    }
    catch (DbxWrappedException paramListFoldersArgs)
    {
      String str = paramListFoldersArgs.getRequestId();
      LocalizedText localLocalizedText = paramListFoldersArgs.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"list_folders\":");
      localStringBuilder.append(paramListFoldersArgs.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  ListFoldersResult a(k paramK)
    throws ListFoldersContinueErrorException, DbxException
  {
    try
    {
      paramK = (ListFoldersResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_folders/continue", paramK, false, k.a.a, ListFoldersResult.a.a, ListFoldersContinueError.a.a);
      return paramK;
    }
    catch (DbxWrappedException paramK)
    {
      throw new ListFoldersContinueErrorException("2/sharing/list_folders/continue", paramK.getRequestId(), paramK.getUserMessage(), (ListFoldersContinueError)paramK.getErrorValue());
    }
  }
  
  ListSharedLinksResult a(ListSharedLinksArg paramListSharedLinksArg)
    throws ListSharedLinksErrorException, DbxException
  {
    try
    {
      paramListSharedLinksArg = (ListSharedLinksResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_shared_links", paramListSharedLinksArg, false, ListSharedLinksArg.a.a, ListSharedLinksResult.a.a, ListSharedLinksError.a.a);
      return paramListSharedLinksArg;
    }
    catch (DbxWrappedException paramListSharedLinksArg)
    {
      throw new ListSharedLinksErrorException("2/sharing/list_shared_links", paramListSharedLinksArg.getRequestId(), paramListSharedLinksArg.getUserMessage(), (ListSharedLinksError)paramListSharedLinksArg.getErrorValue());
    }
  }
  
  MemberAccessLevelResult a(x paramX)
    throws FileMemberActionErrorException, DbxException
  {
    try
    {
      paramX = (MemberAccessLevelResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/update_file_member", paramX, false, x.a.a, MemberAccessLevelResult.a.a, FileMemberActionError.a.a);
      return paramX;
    }
    catch (DbxWrappedException paramX)
    {
      throw new FileMemberActionErrorException("2/sharing/update_file_member", paramX.getRequestId(), paramX.getUserMessage(), (FileMemberActionError)paramX.getErrorValue());
    }
  }
  
  MemberAccessLevelResult a(y paramY)
    throws UpdateFolderMemberErrorException, DbxException
  {
    try
    {
      paramY = (MemberAccessLevelResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/update_folder_member", paramY, false, y.a.a, MemberAccessLevelResult.a.a, UpdateFolderMemberError.a.a);
      return paramY;
    }
    catch (DbxWrappedException paramY)
    {
      throw new UpdateFolderMemberErrorException("2/sharing/update_folder_member", paramY.getRequestId(), paramY.getUserMessage(), (UpdateFolderMemberError)paramY.getErrorValue());
    }
  }
  
  PathLinkMetadata a(CreateSharedLinkArg paramCreateSharedLinkArg)
    throws CreateSharedLinkErrorException, DbxException
  {
    try
    {
      paramCreateSharedLinkArg = (PathLinkMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/create_shared_link", paramCreateSharedLinkArg, false, CreateSharedLinkArg.a.a, PathLinkMetadata.a.a, CreateSharedLinkError.a.a);
      return paramCreateSharedLinkArg;
    }
    catch (DbxWrappedException paramCreateSharedLinkArg)
    {
      throw new CreateSharedLinkErrorException("2/sharing/create_shared_link", paramCreateSharedLinkArg.getRequestId(), paramCreateSharedLinkArg.getUserMessage(), (CreateSharedLinkError)paramCreateSharedLinkArg.getErrorValue());
    }
  }
  
  ShareFolderLaunch a(ShareFolderArg paramShareFolderArg)
    throws ShareFolderErrorException, DbxException
  {
    try
    {
      paramShareFolderArg = (ShareFolderLaunch)a.rpcStyle(a.getHost().getApi(), "2/sharing/share_folder", paramShareFolderArg, false, ShareFolderArg.a.a, ShareFolderLaunch.a.a, ShareFolderError.a.a);
      return paramShareFolderArg;
    }
    catch (DbxWrappedException paramShareFolderArg)
    {
      throw new ShareFolderErrorException("2/sharing/share_folder", paramShareFolderArg.getRequestId(), paramShareFolderArg.getUserMessage(), (ShareFolderError)paramShareFolderArg.getErrorValue());
    }
  }
  
  ShareFolderLaunch a(s paramS)
    throws SetAccessInheritanceErrorException, DbxException
  {
    try
    {
      paramS = (ShareFolderLaunch)a.rpcStyle(a.getHost().getApi(), "2/sharing/set_access_inheritance", paramS, false, s.a.a, ShareFolderLaunch.a.a, SetAccessInheritanceError.a.a);
      return paramS;
    }
    catch (DbxWrappedException paramS)
    {
      throw new SetAccessInheritanceErrorException("2/sharing/set_access_inheritance", paramS.getRequestId(), paramS.getUserMessage(), (SetAccessInheritanceError)paramS.getErrorValue());
    }
  }
  
  SharedFileMembers a(ListFileMembersArg paramListFileMembersArg)
    throws ListFileMembersErrorException, DbxException
  {
    try
    {
      paramListFileMembersArg = (SharedFileMembers)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_file_members", paramListFileMembersArg, false, ListFileMembersArg.a.a, SharedFileMembers.a.a, ListFileMembersError.a.a);
      return paramListFileMembersArg;
    }
    catch (DbxWrappedException paramListFileMembersArg)
    {
      throw new ListFileMembersErrorException("2/sharing/list_file_members", paramListFileMembersArg.getRequestId(), paramListFileMembersArg.getUserMessage(), (ListFileMembersError)paramListFileMembersArg.getErrorValue());
    }
  }
  
  SharedFileMembers a(h paramH)
    throws ListFileMembersContinueErrorException, DbxException
  {
    try
    {
      paramH = (SharedFileMembers)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_file_members/continue", paramH, false, h.a.a, SharedFileMembers.a.a, ListFileMembersContinueError.a.a);
      return paramH;
    }
    catch (DbxWrappedException paramH)
    {
      throw new ListFileMembersContinueErrorException("2/sharing/list_file_members/continue", paramH.getRequestId(), paramH.getUserMessage(), (ListFileMembersContinueError)paramH.getErrorValue());
    }
  }
  
  SharedFileMetadata a(c paramC)
    throws GetFileMetadataErrorException, DbxException
  {
    try
    {
      paramC = (SharedFileMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/get_file_metadata", paramC, false, c.a.a, SharedFileMetadata.a.a, GetFileMetadataError.a.a);
      return paramC;
    }
    catch (DbxWrappedException paramC)
    {
      throw new GetFileMetadataErrorException("2/sharing/get_file_metadata", paramC.getRequestId(), paramC.getUserMessage(), (GetFileMetadataError)paramC.getErrorValue());
    }
  }
  
  SharedFolderMembers a(ListFolderMembersArgs paramListFolderMembersArgs)
    throws SharedFolderAccessErrorException, DbxException
  {
    try
    {
      paramListFolderMembersArgs = (SharedFolderMembers)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_folder_members", paramListFolderMembersArgs, false, ListFolderMembersArgs.a.a, SharedFolderMembers.a.a, SharedFolderAccessError.a.a);
      return paramListFolderMembersArgs;
    }
    catch (DbxWrappedException paramListFolderMembersArgs)
    {
      throw new SharedFolderAccessErrorException("2/sharing/list_folder_members", paramListFolderMembersArgs.getRequestId(), paramListFolderMembersArgs.getUserMessage(), (SharedFolderAccessError)paramListFolderMembersArgs.getErrorValue());
    }
  }
  
  SharedFolderMembers a(j paramJ)
    throws ListFolderMembersContinueErrorException, DbxException
  {
    try
    {
      paramJ = (SharedFolderMembers)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_folder_members/continue", paramJ, false, j.a.a, SharedFolderMembers.a.a, ListFolderMembersContinueError.a.a);
      return paramJ;
    }
    catch (DbxWrappedException paramJ)
    {
      throw new ListFolderMembersContinueErrorException("2/sharing/list_folder_members/continue", paramJ.getRequestId(), paramJ.getUserMessage(), (ListFolderMembersContinueError)paramJ.getErrorValue());
    }
  }
  
  SharedFolderMetadata a(UpdateFolderPolicyArg paramUpdateFolderPolicyArg)
    throws UpdateFolderPolicyErrorException, DbxException
  {
    try
    {
      paramUpdateFolderPolicyArg = (SharedFolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/update_folder_policy", paramUpdateFolderPolicyArg, false, UpdateFolderPolicyArg.a.a, SharedFolderMetadata.a.a, UpdateFolderPolicyError.a.a);
      return paramUpdateFolderPolicyArg;
    }
    catch (DbxWrappedException paramUpdateFolderPolicyArg)
    {
      throw new UpdateFolderPolicyErrorException("2/sharing/update_folder_policy", paramUpdateFolderPolicyArg.getRequestId(), paramUpdateFolderPolicyArg.getUserMessage(), (UpdateFolderPolicyError)paramUpdateFolderPolicyArg.getErrorValue());
    }
  }
  
  SharedFolderMetadata a(e paramE)
    throws SharedFolderAccessErrorException, DbxException
  {
    try
    {
      paramE = (SharedFolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/get_folder_metadata", paramE, false, e.a.a, SharedFolderMetadata.a.a, SharedFolderAccessError.a.a);
      return paramE;
    }
    catch (DbxWrappedException paramE)
    {
      throw new SharedFolderAccessErrorException("2/sharing/get_folder_metadata", paramE.getRequestId(), paramE.getUserMessage(), (SharedFolderAccessError)paramE.getErrorValue());
    }
  }
  
  SharedFolderMetadata a(m paramM)
    throws MountFolderErrorException, DbxException
  {
    try
    {
      paramM = (SharedFolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/mount_folder", paramM, false, m.a.a, SharedFolderMetadata.a.a, MountFolderError.a.a);
      return paramM;
    }
    catch (DbxWrappedException paramM)
    {
      throw new MountFolderErrorException("2/sharing/mount_folder", paramM.getRequestId(), paramM.getUserMessage(), (MountFolderError)paramM.getErrorValue());
    }
  }
  
  SharedLinkMetadata a(GetSharedLinkMetadataArg paramGetSharedLinkMetadataArg)
    throws SharedLinkErrorException, DbxException
  {
    try
    {
      paramGetSharedLinkMetadataArg = (SharedLinkMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/get_shared_link_metadata", paramGetSharedLinkMetadataArg, false, GetSharedLinkMetadataArg.a.a, SharedLinkMetadata.a.a, SharedLinkError.a.a);
      return paramGetSharedLinkMetadataArg;
    }
    catch (DbxWrappedException paramGetSharedLinkMetadataArg)
    {
      throw new SharedLinkErrorException("2/sharing/get_shared_link_metadata", paramGetSharedLinkMetadataArg.getRequestId(), paramGetSharedLinkMetadataArg.getUserMessage(), (SharedLinkError)paramGetSharedLinkMetadataArg.getErrorValue());
    }
  }
  
  SharedLinkMetadata a(b paramB)
    throws CreateSharedLinkWithSettingsErrorException, DbxException
  {
    try
    {
      paramB = (SharedLinkMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/create_shared_link_with_settings", paramB, false, b.a.a, SharedLinkMetadata.a.a, CreateSharedLinkWithSettingsError.a.a);
      return paramB;
    }
    catch (DbxWrappedException paramB)
    {
      throw new CreateSharedLinkWithSettingsErrorException("2/sharing/create_shared_link_with_settings", paramB.getRequestId(), paramB.getUserMessage(), (CreateSharedLinkWithSettingsError)paramB.getErrorValue());
    }
  }
  
  SharedLinkMetadata a(l paramL)
    throws ModifySharedLinkSettingsErrorException, DbxException
  {
    try
    {
      paramL = (SharedLinkMetadata)a.rpcStyle(a.getHost().getApi(), "2/sharing/modify_shared_link_settings", paramL, false, l.a.a, SharedLinkMetadata.a.a, ModifySharedLinkSettingsError.a.a);
      return paramL;
    }
    catch (DbxWrappedException paramL)
    {
      throw new ModifySharedLinkSettingsErrorException("2/sharing/modify_shared_link_settings", paramL.getRequestId(), paramL.getUserMessage(), (ModifySharedLinkSettingsError)paramL.getErrorValue());
    }
  }
  
  List<FileMemberActionResult> a(AddFileMemberArgs paramAddFileMemberArgs)
    throws AddFileMemberErrorException, DbxException
  {
    try
    {
      paramAddFileMemberArgs = (List)a.rpcStyle(a.getHost().getApi(), "2/sharing/add_file_member", paramAddFileMemberArgs, false, AddFileMemberArgs.a.a, StoneSerializers.list(FileMemberActionResult.a.a), AddFileMemberError.a.a);
      return paramAddFileMemberArgs;
    }
    catch (DbxWrappedException paramAddFileMemberArgs)
    {
      throw new AddFileMemberErrorException("2/sharing/add_file_member", paramAddFileMemberArgs.getRequestId(), paramAddFileMemberArgs.getUserMessage(), (AddFileMemberError)paramAddFileMemberArgs.getErrorValue());
    }
  }
  
  List<GetFileMetadataBatchResult> a(d paramD)
    throws SharingUserErrorException, DbxException
  {
    try
    {
      paramD = (List)a.rpcStyle(a.getHost().getApi(), "2/sharing/get_file_metadata/batch", paramD, false, d.a.a, StoneSerializers.list(GetFileMetadataBatchResult.a.a), SharingUserError.a.a);
      return paramD;
    }
    catch (DbxWrappedException paramD)
    {
      throw new SharingUserErrorException("2/sharing/get_file_metadata/batch", paramD.getRequestId(), paramD.getUserMessage(), (SharingUserError)paramD.getErrorValue());
    }
  }
  
  List<ListFileMembersBatchResult> a(g paramG)
    throws SharingUserErrorException, DbxException
  {
    try
    {
      paramG = (List)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_file_members/batch", paramG, false, g.a.a, StoneSerializers.list(ListFileMembersBatchResult.a.a), SharingUserError.a.a);
      return paramG;
    }
    catch (DbxWrappedException paramG)
    {
      throw new SharingUserErrorException("2/sharing/list_file_members/batch", paramG.getRequestId(), paramG.getUserMessage(), (SharingUserError)paramG.getErrorValue());
    }
  }
  
  void a(AddFolderMemberArg paramAddFolderMemberArg)
    throws AddFolderMemberErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/sharing/add_folder_member", paramAddFolderMemberArg, false, AddFolderMemberArg.a.a, StoneSerializers.void_(), AddFolderMemberError.a.a);
      return;
    }
    catch (DbxWrappedException paramAddFolderMemberArg)
    {
      throw new AddFolderMemberErrorException("2/sharing/add_folder_member", paramAddFolderMemberArg.getRequestId(), paramAddFolderMemberArg.getUserMessage(), (AddFolderMemberError)paramAddFolderMemberArg.getErrorValue());
    }
  }
  
  void a(n paramN)
    throws RelinquishFileMembershipErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/sharing/relinquish_file_membership", paramN, false, n.a.a, StoneSerializers.void_(), RelinquishFileMembershipError.a.a);
      return;
    }
    catch (DbxWrappedException paramN)
    {
      throw new RelinquishFileMembershipErrorException("2/sharing/relinquish_file_membership", paramN.getRequestId(), paramN.getUserMessage(), (RelinquishFileMembershipError)paramN.getErrorValue());
    }
  }
  
  void a(r paramR)
    throws RevokeSharedLinkErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/sharing/revoke_shared_link", paramR, false, r.a.a, StoneSerializers.void_(), RevokeSharedLinkError.a.a);
      return;
    }
    catch (DbxWrappedException paramR)
    {
      throw new RevokeSharedLinkErrorException("2/sharing/revoke_shared_link", paramR.getRequestId(), paramR.getUserMessage(), (RevokeSharedLinkError)paramR.getErrorValue());
    }
  }
  
  void a(t paramT)
    throws TransferFolderErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/sharing/transfer_folder", paramT, false, t.a.a, StoneSerializers.void_(), TransferFolderError.a.a);
      return;
    }
    catch (DbxWrappedException paramT)
    {
      throw new TransferFolderErrorException("2/sharing/transfer_folder", paramT.getRequestId(), paramT.getUserMessage(), (TransferFolderError)paramT.getErrorValue());
    }
  }
  
  void a(u paramU)
    throws UnmountFolderErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/sharing/unmount_folder", paramU, false, u.a.a, StoneSerializers.void_(), UnmountFolderError.a.a);
      return;
    }
    catch (DbxWrappedException paramU)
    {
      throw new UnmountFolderErrorException("2/sharing/unmount_folder", paramU.getRequestId(), paramU.getUserMessage(), (UnmountFolderError)paramU.getErrorValue());
    }
  }
  
  void a(v paramV)
    throws UnshareFileErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/sharing/unshare_file", paramV, false, v.a.a, StoneSerializers.void_(), UnshareFileError.a.a);
      return;
    }
    catch (DbxWrappedException paramV)
    {
      throw new UnshareFileErrorException("2/sharing/unshare_file", paramV.getRequestId(), paramV.getUserMessage(), (UnshareFileError)paramV.getErrorValue());
    }
  }
  
  public List<FileMemberActionResult> addFileMember(String paramString, List<MemberSelector> paramList)
    throws AddFileMemberErrorException, DbxException
  {
    return a(new AddFileMemberArgs(paramString, paramList));
  }
  
  public AddFileMemberBuilder addFileMemberBuilder(String paramString, List<MemberSelector> paramList)
  {
    return new AddFileMemberBuilder(this, AddFileMemberArgs.a(paramString, paramList));
  }
  
  public void addFolderMember(String paramString, List<AddMember> paramList)
    throws AddFolderMemberErrorException, DbxException
  {
    a(new AddFolderMemberArg(paramString, paramList));
  }
  
  public AddFolderMemberBuilder addFolderMemberBuilder(String paramString, List<AddMember> paramList)
  {
    return new AddFolderMemberBuilder(this, AddFolderMemberArg.a(paramString, paramList));
  }
  
  FileMemberRemoveActionResult b(p paramP)
    throws RemoveFileMemberErrorException, DbxException
  {
    try
    {
      paramP = (FileMemberRemoveActionResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/remove_file_member_2", paramP, false, p.a.a, FileMemberRemoveActionResult.a.a, RemoveFileMemberError.a.a);
      return paramP;
    }
    catch (DbxWrappedException paramP)
    {
      throw new RemoveFileMemberErrorException("2/sharing/remove_file_member_2", paramP.getRequestId(), paramP.getUserMessage(), (RemoveFileMemberError)paramP.getErrorValue());
    }
  }
  
  ListFoldersResult b(ListFoldersArgs paramListFoldersArgs)
    throws DbxApiException, DbxException
  {
    try
    {
      paramListFoldersArgs = (ListFoldersResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_mountable_folders", paramListFoldersArgs, false, ListFoldersArgs.a.a, ListFoldersResult.a.a, StoneSerializers.void_());
      return paramListFoldersArgs;
    }
    catch (DbxWrappedException paramListFoldersArgs)
    {
      String str = paramListFoldersArgs.getRequestId();
      LocalizedText localLocalizedText = paramListFoldersArgs.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"list_mountable_folders\":");
      localStringBuilder.append(paramListFoldersArgs.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  ListFoldersResult b(k paramK)
    throws ListFoldersContinueErrorException, DbxException
  {
    try
    {
      paramK = (ListFoldersResult)a.rpcStyle(a.getHost().getApi(), "2/sharing/list_mountable_folders/continue", paramK, false, k.a.a, ListFoldersResult.a.a, ListFoldersContinueError.a.a);
      return paramK;
    }
    catch (DbxWrappedException paramK)
    {
      throw new ListFoldersContinueErrorException("2/sharing/list_mountable_folders/continue", paramK.getRequestId(), paramK.getUserMessage(), (ListFoldersContinueError)paramK.getErrorValue());
    }
  }
  
  RemoveMemberJobStatus b(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (RemoveMemberJobStatus)a.rpcStyle(a.getHost().getApi(), "2/sharing/check_remove_member_job_status", paramPollArg, false, PollArg.Serializer.INSTANCE, RemoveMemberJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/sharing/check_remove_member_job_status", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  ShareFolderJobStatus c(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (ShareFolderJobStatus)a.rpcStyle(a.getHost().getApi(), "2/sharing/check_share_job_status", paramPollArg, false, PollArg.Serializer.INSTANCE, ShareFolderJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/sharing/check_share_job_status", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  @Deprecated
  public FileMemberActionResult changeFileMemberAccess(String paramString, MemberSelector paramMemberSelector, AccessLevel paramAccessLevel)
    throws FileMemberActionErrorException, DbxException
  {
    return a(new a(paramString, paramMemberSelector, paramAccessLevel));
  }
  
  public JobStatus checkJobStatus(String paramString)
    throws PollErrorException, DbxException
  {
    return a(new PollArg(paramString));
  }
  
  public RemoveMemberJobStatus checkRemoveMemberJobStatus(String paramString)
    throws PollErrorException, DbxException
  {
    return b(new PollArg(paramString));
  }
  
  public ShareFolderJobStatus checkShareJobStatus(String paramString)
    throws PollErrorException, DbxException
  {
    return c(new PollArg(paramString));
  }
  
  @Deprecated
  public PathLinkMetadata createSharedLink(String paramString)
    throws CreateSharedLinkErrorException, DbxException
  {
    return a(new CreateSharedLinkArg(paramString));
  }
  
  @Deprecated
  public CreateSharedLinkBuilder createSharedLinkBuilder(String paramString)
  {
    return new CreateSharedLinkBuilder(this, CreateSharedLinkArg.a(paramString));
  }
  
  public SharedLinkMetadata createSharedLinkWithSettings(String paramString)
    throws CreateSharedLinkWithSettingsErrorException, DbxException
  {
    return a(new b(paramString));
  }
  
  public SharedLinkMetadata createSharedLinkWithSettings(String paramString, SharedLinkSettings paramSharedLinkSettings)
    throws CreateSharedLinkWithSettingsErrorException, DbxException
  {
    return a(new b(paramString, paramSharedLinkSettings));
  }
  
  public SharedFileMetadata getFileMetadata(String paramString)
    throws GetFileMetadataErrorException, DbxException
  {
    return a(new c(paramString));
  }
  
  public SharedFileMetadata getFileMetadata(String paramString, List<FileAction> paramList)
    throws GetFileMetadataErrorException, DbxException
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((FileAction)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'actions' is null");
        }
      }
    }
    return a(new c(paramString, paramList));
  }
  
  public List<GetFileMetadataBatchResult> getFileMetadataBatch(List<String> paramList)
    throws SharingUserErrorException, DbxException
  {
    return a(new d(paramList));
  }
  
  public List<GetFileMetadataBatchResult> getFileMetadataBatch(List<String> paramList, List<FileAction> paramList1)
    throws SharingUserErrorException, DbxException
  {
    if (paramList1 != null)
    {
      Iterator localIterator = paramList1.iterator();
      while (localIterator.hasNext()) {
        if ((FileAction)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'actions' is null");
        }
      }
    }
    return a(new d(paramList, paramList1));
  }
  
  public SharedFolderMetadata getFolderMetadata(String paramString)
    throws SharedFolderAccessErrorException, DbxException
  {
    return a(new e(paramString));
  }
  
  public SharedFolderMetadata getFolderMetadata(String paramString, List<FolderAction> paramList)
    throws SharedFolderAccessErrorException, DbxException
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((FolderAction)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'actions' is null");
        }
      }
    }
    return a(new e(paramString, paramList));
  }
  
  public DbxDownloader<SharedLinkMetadata> getSharedLinkFile(String paramString)
    throws GetSharedLinkFileErrorException, DbxException
  {
    return a(new GetSharedLinkMetadataArg(paramString), Collections.emptyList());
  }
  
  public GetSharedLinkFileBuilder getSharedLinkFileBuilder(String paramString)
  {
    return new GetSharedLinkFileBuilder(this, GetSharedLinkMetadataArg.a(paramString));
  }
  
  public SharedLinkMetadata getSharedLinkMetadata(String paramString)
    throws SharedLinkErrorException, DbxException
  {
    return a(new GetSharedLinkMetadataArg(paramString));
  }
  
  public GetSharedLinkMetadataBuilder getSharedLinkMetadataBuilder(String paramString)
  {
    return new GetSharedLinkMetadataBuilder(this, GetSharedLinkMetadataArg.a(paramString));
  }
  
  @Deprecated
  public GetSharedLinksResult getSharedLinks()
    throws GetSharedLinksErrorException, DbxException
  {
    return a(new f());
  }
  
  @Deprecated
  public GetSharedLinksResult getSharedLinks(String paramString)
    throws GetSharedLinksErrorException, DbxException
  {
    return a(new f(paramString));
  }
  
  public SharedFileMembers listFileMembers(String paramString)
    throws ListFileMembersErrorException, DbxException
  {
    return a(new ListFileMembersArg(paramString));
  }
  
  public List<ListFileMembersBatchResult> listFileMembersBatch(List<String> paramList)
    throws SharingUserErrorException, DbxException
  {
    return a(new g(paramList));
  }
  
  public List<ListFileMembersBatchResult> listFileMembersBatch(List<String> paramList, long paramLong)
    throws SharingUserErrorException, DbxException
  {
    if (paramLong <= 20L) {
      return a(new g(paramList, paramLong));
    }
    throw new IllegalArgumentException("Number 'limit' is larger than 20L");
  }
  
  public ListFileMembersBuilder listFileMembersBuilder(String paramString)
  {
    return new ListFileMembersBuilder(this, ListFileMembersArg.a(paramString));
  }
  
  public SharedFileMembers listFileMembersContinue(String paramString)
    throws ListFileMembersContinueErrorException, DbxException
  {
    return a(new h(paramString));
  }
  
  public SharedFolderMembers listFolderMembers(String paramString)
    throws SharedFolderAccessErrorException, DbxException
  {
    return a(new ListFolderMembersArgs(paramString));
  }
  
  public ListFolderMembersBuilder listFolderMembersBuilder(String paramString)
  {
    return new ListFolderMembersBuilder(this, ListFolderMembersArgs.a(paramString));
  }
  
  public SharedFolderMembers listFolderMembersContinue(String paramString)
    throws ListFolderMembersContinueErrorException, DbxException
  {
    return a(new j(paramString));
  }
  
  public ListFoldersResult listFolders()
    throws DbxApiException, DbxException
  {
    return a(new ListFoldersArgs());
  }
  
  public ListFoldersBuilder listFoldersBuilder()
  {
    return new ListFoldersBuilder(this, ListFoldersArgs.a());
  }
  
  public ListFoldersResult listFoldersContinue(String paramString)
    throws ListFoldersContinueErrorException, DbxException
  {
    return a(new k(paramString));
  }
  
  public ListFoldersResult listMountableFolders()
    throws DbxApiException, DbxException
  {
    return b(new ListFoldersArgs());
  }
  
  public ListMountableFoldersBuilder listMountableFoldersBuilder()
  {
    return new ListMountableFoldersBuilder(this, ListFoldersArgs.a());
  }
  
  public ListFoldersResult listMountableFoldersContinue(String paramString)
    throws ListFoldersContinueErrorException, DbxException
  {
    return b(new k(paramString));
  }
  
  public ListFilesResult listReceivedFiles()
    throws SharingUserErrorException, DbxException
  {
    return a(new ListFilesArg());
  }
  
  public ListReceivedFilesBuilder listReceivedFilesBuilder()
  {
    return new ListReceivedFilesBuilder(this, ListFilesArg.a());
  }
  
  public ListFilesResult listReceivedFilesContinue(String paramString)
    throws ListFilesContinueErrorException, DbxException
  {
    return a(new i(paramString));
  }
  
  public ListSharedLinksResult listSharedLinks()
    throws ListSharedLinksErrorException, DbxException
  {
    return a(new ListSharedLinksArg());
  }
  
  public ListSharedLinksBuilder listSharedLinksBuilder()
  {
    return new ListSharedLinksBuilder(this, ListSharedLinksArg.a());
  }
  
  public SharedLinkMetadata modifySharedLinkSettings(String paramString, SharedLinkSettings paramSharedLinkSettings)
    throws ModifySharedLinkSettingsErrorException, DbxException
  {
    return a(new l(paramString, paramSharedLinkSettings));
  }
  
  public SharedLinkMetadata modifySharedLinkSettings(String paramString, SharedLinkSettings paramSharedLinkSettings, boolean paramBoolean)
    throws ModifySharedLinkSettingsErrorException, DbxException
  {
    return a(new l(paramString, paramSharedLinkSettings, paramBoolean));
  }
  
  public SharedFolderMetadata mountFolder(String paramString)
    throws MountFolderErrorException, DbxException
  {
    return a(new m(paramString));
  }
  
  public void relinquishFileMembership(String paramString)
    throws RelinquishFileMembershipErrorException, DbxException
  {
    a(new n(paramString));
  }
  
  public LaunchEmptyResult relinquishFolderMembership(String paramString)
    throws RelinquishFolderMembershipErrorException, DbxException
  {
    return a(new o(paramString));
  }
  
  public LaunchEmptyResult relinquishFolderMembership(String paramString, boolean paramBoolean)
    throws RelinquishFolderMembershipErrorException, DbxException
  {
    return a(new o(paramString, paramBoolean));
  }
  
  @Deprecated
  public FileMemberActionIndividualResult removeFileMember(String paramString, MemberSelector paramMemberSelector)
    throws RemoveFileMemberErrorException, DbxException
  {
    return a(new p(paramString, paramMemberSelector));
  }
  
  public FileMemberRemoveActionResult removeFileMember2(String paramString, MemberSelector paramMemberSelector)
    throws RemoveFileMemberErrorException, DbxException
  {
    return b(new p(paramString, paramMemberSelector));
  }
  
  public LaunchResultBase removeFolderMember(String paramString, MemberSelector paramMemberSelector, boolean paramBoolean)
    throws RemoveFolderMemberErrorException, DbxException
  {
    return a(new q(paramString, paramMemberSelector, paramBoolean));
  }
  
  public void revokeSharedLink(String paramString)
    throws RevokeSharedLinkErrorException, DbxException
  {
    a(new r(paramString));
  }
  
  public ShareFolderLaunch setAccessInheritance(String paramString)
    throws SetAccessInheritanceErrorException, DbxException
  {
    return a(new s(paramString));
  }
  
  public ShareFolderLaunch setAccessInheritance(String paramString, AccessInheritance paramAccessInheritance)
    throws SetAccessInheritanceErrorException, DbxException
  {
    if (paramAccessInheritance != null) {
      return a(new s(paramString, paramAccessInheritance));
    }
    throw new IllegalArgumentException("Required value for 'accessInheritance' is null");
  }
  
  public ShareFolderLaunch shareFolder(String paramString)
    throws ShareFolderErrorException, DbxException
  {
    return a(new ShareFolderArg(paramString));
  }
  
  public ShareFolderBuilder shareFolderBuilder(String paramString)
  {
    return new ShareFolderBuilder(this, ShareFolderArg.a(paramString));
  }
  
  public void transferFolder(String paramString1, String paramString2)
    throws TransferFolderErrorException, DbxException
  {
    a(new t(paramString1, paramString2));
  }
  
  public void unmountFolder(String paramString)
    throws UnmountFolderErrorException, DbxException
  {
    a(new u(paramString));
  }
  
  public void unshareFile(String paramString)
    throws UnshareFileErrorException, DbxException
  {
    a(new v(paramString));
  }
  
  public LaunchEmptyResult unshareFolder(String paramString)
    throws UnshareFolderErrorException, DbxException
  {
    return a(new w(paramString));
  }
  
  public LaunchEmptyResult unshareFolder(String paramString, boolean paramBoolean)
    throws UnshareFolderErrorException, DbxException
  {
    return a(new w(paramString, paramBoolean));
  }
  
  public MemberAccessLevelResult updateFileMember(String paramString, MemberSelector paramMemberSelector, AccessLevel paramAccessLevel)
    throws FileMemberActionErrorException, DbxException
  {
    return a(new x(paramString, paramMemberSelector, paramAccessLevel));
  }
  
  public MemberAccessLevelResult updateFolderMember(String paramString, MemberSelector paramMemberSelector, AccessLevel paramAccessLevel)
    throws UpdateFolderMemberErrorException, DbxException
  {
    return a(new y(paramString, paramMemberSelector, paramAccessLevel));
  }
  
  public SharedFolderMetadata updateFolderPolicy(String paramString)
    throws UpdateFolderPolicyErrorException, DbxException
  {
    return a(new UpdateFolderPolicyArg(paramString));
  }
  
  public UpdateFolderPolicyBuilder updateFolderPolicyBuilder(String paramString)
  {
    return new UpdateFolderPolicyBuilder(this, UpdateFolderPolicyArg.a(paramString));
  }
}
