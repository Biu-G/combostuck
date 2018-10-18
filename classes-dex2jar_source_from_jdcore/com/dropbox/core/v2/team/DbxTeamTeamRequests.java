package com.dropbox.core.v2.team;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.LocalizedText;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.v2.DbxRawClientV2;
import com.dropbox.core.v2.async.LaunchEmptyResult;
import com.dropbox.core.v2.async.LaunchEmptyResult.Serializer;
import com.dropbox.core.v2.async.PollArg;
import com.dropbox.core.v2.async.PollArg.Serializer;
import com.dropbox.core.v2.async.PollEmptyResult;
import com.dropbox.core.v2.async.PollEmptyResult.Serializer;
import com.dropbox.core.v2.async.PollError;
import com.dropbox.core.v2.async.PollError.Serializer;
import com.dropbox.core.v2.async.PollErrorException;
import com.dropbox.core.v2.fileproperties.AddTemplateArg;
import com.dropbox.core.v2.fileproperties.AddTemplateArg.Serializer;
import com.dropbox.core.v2.fileproperties.AddTemplateResult;
import com.dropbox.core.v2.fileproperties.AddTemplateResult.Serializer;
import com.dropbox.core.v2.fileproperties.GetTemplateArg;
import com.dropbox.core.v2.fileproperties.GetTemplateArg.Serializer;
import com.dropbox.core.v2.fileproperties.GetTemplateResult;
import com.dropbox.core.v2.fileproperties.GetTemplateResult.Serializer;
import com.dropbox.core.v2.fileproperties.ListTemplateResult;
import com.dropbox.core.v2.fileproperties.ListTemplateResult.Serializer;
import com.dropbox.core.v2.fileproperties.ModifyTemplateError;
import com.dropbox.core.v2.fileproperties.ModifyTemplateError.Serializer;
import com.dropbox.core.v2.fileproperties.ModifyTemplateErrorException;
import com.dropbox.core.v2.fileproperties.PropertyFieldTemplate;
import com.dropbox.core.v2.fileproperties.TemplateError;
import com.dropbox.core.v2.fileproperties.TemplateError.Serializer;
import com.dropbox.core.v2.fileproperties.TemplateErrorException;
import com.dropbox.core.v2.fileproperties.UpdateTemplateArg;
import com.dropbox.core.v2.fileproperties.UpdateTemplateArg.Serializer;
import com.dropbox.core.v2.fileproperties.UpdateTemplateResult;
import com.dropbox.core.v2.fileproperties.UpdateTemplateResult.Serializer;
import com.dropbox.core.v2.files.SyncSettingArg;
import java.util.Iterator;
import java.util.List;

public class DbxTeamTeamRequests
{
  private final DbxRawClientV2 a;
  
  public DbxTeamTeamRequests(DbxRawClientV2 paramDbxRawClientV2)
  {
    a = paramDbxRawClientV2;
  }
  
  LaunchEmptyResult a(MembersRemoveArg paramMembersRemoveArg)
    throws MembersRemoveErrorException, DbxException
  {
    try
    {
      paramMembersRemoveArg = (LaunchEmptyResult)a.rpcStyle(a.getHost().getApi(), "2/team/members/remove", paramMembersRemoveArg, false, MembersRemoveArg.a.a, LaunchEmptyResult.Serializer.INSTANCE, MembersRemoveError.a.a);
      return paramMembersRemoveArg;
    }
    catch (DbxWrappedException paramMembersRemoveArg)
    {
      throw new MembersRemoveErrorException("2/team/members/remove", paramMembersRemoveArg.getRequestId(), paramMembersRemoveArg.getUserMessage(), (MembersRemoveError)paramMembersRemoveArg.getErrorValue());
    }
  }
  
  PollEmptyResult a(PollArg paramPollArg)
    throws GroupsPollErrorException, DbxException
  {
    try
    {
      paramPollArg = (PollEmptyResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/job_status/get", paramPollArg, false, PollArg.Serializer.INSTANCE, PollEmptyResult.Serializer.INSTANCE, GroupsPollError.a.a);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new GroupsPollErrorException("2/team/groups/job_status/get", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (GroupsPollError)paramPollArg.getErrorValue());
    }
  }
  
  AddTemplateResult a(AddTemplateArg paramAddTemplateArg)
    throws ModifyTemplateErrorException, DbxException
  {
    try
    {
      paramAddTemplateArg = (AddTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/team/properties/template/add", paramAddTemplateArg, false, AddTemplateArg.Serializer.INSTANCE, AddTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
      return paramAddTemplateArg;
    }
    catch (DbxWrappedException paramAddTemplateArg)
    {
      throw new ModifyTemplateErrorException("2/team/properties/template/add", paramAddTemplateArg.getRequestId(), paramAddTemplateArg.getUserMessage(), (ModifyTemplateError)paramAddTemplateArg.getErrorValue());
    }
  }
  
  GetTemplateResult a(GetTemplateArg paramGetTemplateArg)
    throws TemplateErrorException, DbxException
  {
    try
    {
      paramGetTemplateArg = (GetTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/team/properties/template/get", paramGetTemplateArg, false, GetTemplateArg.Serializer.INSTANCE, GetTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return paramGetTemplateArg;
    }
    catch (DbxWrappedException paramGetTemplateArg)
    {
      throw new TemplateErrorException("2/team/properties/template/get", paramGetTemplateArg.getRequestId(), paramGetTemplateArg.getUserMessage(), (TemplateError)paramGetTemplateArg.getErrorValue());
    }
  }
  
  UpdateTemplateResult a(UpdateTemplateArg paramUpdateTemplateArg)
    throws ModifyTemplateErrorException, DbxException
  {
    try
    {
      paramUpdateTemplateArg = (UpdateTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/team/properties/template/update", paramUpdateTemplateArg, false, UpdateTemplateArg.Serializer.INSTANCE, UpdateTemplateResult.Serializer.INSTANCE, ModifyTemplateError.Serializer.INSTANCE);
      return paramUpdateTemplateArg;
    }
    catch (DbxWrappedException paramUpdateTemplateArg)
    {
      throw new ModifyTemplateErrorException("2/team/properties/template/update", paramUpdateTemplateArg.getRequestId(), paramUpdateTemplateArg.getUserMessage(), (ModifyTemplateError)paramUpdateTemplateArg.getErrorValue());
    }
  }
  
  ExcludedUsersListResult a(b paramB)
    throws ExcludedUsersListErrorException, DbxException
  {
    try
    {
      paramB = (ExcludedUsersListResult)a.rpcStyle(a.getHost().getApi(), "2/team/member_space_limits/excluded_users/list", paramB, false, b.a.a, ExcludedUsersListResult.a.a, ExcludedUsersListError.a.a);
      return paramB;
    }
    catch (DbxWrappedException paramB)
    {
      throw new ExcludedUsersListErrorException("2/team/member_space_limits/excluded_users/list", paramB.getRequestId(), paramB.getUserMessage(), (ExcludedUsersListError)paramB.getErrorValue());
    }
  }
  
  ExcludedUsersListResult a(c paramC)
    throws ExcludedUsersListContinueErrorException, DbxException
  {
    try
    {
      paramC = (ExcludedUsersListResult)a.rpcStyle(a.getHost().getApi(), "2/team/member_space_limits/excluded_users/list/continue", paramC, false, c.a.a, ExcludedUsersListResult.a.a, ExcludedUsersListContinueError.a.a);
      return paramC;
    }
    catch (DbxWrappedException paramC)
    {
      throw new ExcludedUsersListContinueErrorException("2/team/member_space_limits/excluded_users/list/continue", paramC.getRequestId(), paramC.getUserMessage(), (ExcludedUsersListContinueError)paramC.getErrorValue());
    }
  }
  
  ExcludedUsersUpdateResult a(d paramD)
    throws ExcludedUsersUpdateErrorException, DbxException
  {
    try
    {
      paramD = (ExcludedUsersUpdateResult)a.rpcStyle(a.getHost().getApi(), "2/team/member_space_limits/excluded_users/add", paramD, false, d.a.a, ExcludedUsersUpdateResult.a.a, ExcludedUsersUpdateError.a.a);
      return paramD;
    }
    catch (DbxWrappedException paramD)
    {
      throw new ExcludedUsersUpdateErrorException("2/team/member_space_limits/excluded_users/add", paramD.getRequestId(), paramD.getUserMessage(), (ExcludedUsersUpdateError)paramD.getErrorValue());
    }
  }
  
  FeaturesGetValuesBatchResult a(e paramE)
    throws FeaturesGetValuesBatchErrorException, DbxException
  {
    try
    {
      paramE = (FeaturesGetValuesBatchResult)a.rpcStyle(a.getHost().getApi(), "2/team/features/get_values", paramE, false, e.a.a, FeaturesGetValuesBatchResult.a.a, FeaturesGetValuesBatchError.a.a);
      return paramE;
    }
    catch (DbxWrappedException paramE)
    {
      throw new FeaturesGetValuesBatchErrorException("2/team/features/get_values", paramE.getRequestId(), paramE.getUserMessage(), (FeaturesGetValuesBatchError)paramE.getErrorValue());
    }
  }
  
  GetActivityReport a(DateRange paramDateRange)
    throws DateRangeErrorException, DbxException
  {
    try
    {
      paramDateRange = (GetActivityReport)a.rpcStyle(a.getHost().getApi(), "2/team/reports/get_activity", paramDateRange, false, DateRange.a.a, GetActivityReport.a.a, DateRangeError.a.a);
      return paramDateRange;
    }
    catch (DbxWrappedException paramDateRange)
    {
      throw new DateRangeErrorException("2/team/reports/get_activity", paramDateRange.getRequestId(), paramDateRange.getUserMessage(), (DateRangeError)paramDateRange.getErrorValue());
    }
  }
  
  GroupFullInfo a(GroupCreateArg paramGroupCreateArg)
    throws GroupCreateErrorException, DbxException
  {
    try
    {
      paramGroupCreateArg = (GroupFullInfo)a.rpcStyle(a.getHost().getApi(), "2/team/groups/create", paramGroupCreateArg, false, GroupCreateArg.a.a, GroupFullInfo.a.a, GroupCreateError.a.a);
      return paramGroupCreateArg;
    }
    catch (DbxWrappedException paramGroupCreateArg)
    {
      throw new GroupCreateErrorException("2/team/groups/create", paramGroupCreateArg.getRequestId(), paramGroupCreateArg.getUserMessage(), (GroupCreateError)paramGroupCreateArg.getErrorValue());
    }
  }
  
  GroupFullInfo a(GroupUpdateArgs paramGroupUpdateArgs)
    throws GroupUpdateErrorException, DbxException
  {
    try
    {
      paramGroupUpdateArgs = (GroupFullInfo)a.rpcStyle(a.getHost().getApi(), "2/team/groups/update", paramGroupUpdateArgs, false, GroupUpdateArgs.a.a, GroupFullInfo.a.a, GroupUpdateError.a.a);
      return paramGroupUpdateArgs;
    }
    catch (DbxWrappedException paramGroupUpdateArgs)
    {
      throw new GroupUpdateErrorException("2/team/groups/update", paramGroupUpdateArgs.getRequestId(), paramGroupUpdateArgs.getUserMessage(), (GroupUpdateError)paramGroupUpdateArgs.getErrorValue());
    }
  }
  
  GroupMembersChangeResult a(g paramG)
    throws GroupMembersAddErrorException, DbxException
  {
    try
    {
      paramG = (GroupMembersChangeResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/members/add", paramG, false, g.a.a, GroupMembersChangeResult.a.a, GroupMembersAddError.a.a);
      return paramG;
    }
    catch (DbxWrappedException paramG)
    {
      throw new GroupMembersAddErrorException("2/team/groups/members/add", paramG.getRequestId(), paramG.getUserMessage(), (GroupMembersAddError)paramG.getErrorValue());
    }
  }
  
  GroupMembersChangeResult a(h paramH)
    throws GroupMembersRemoveErrorException, DbxException
  {
    try
    {
      paramH = (GroupMembersChangeResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/members/remove", paramH, false, h.a.a, GroupMembersChangeResult.a.a, GroupMembersRemoveError.a.a);
      return paramH;
    }
    catch (DbxWrappedException paramH)
    {
      throw new GroupMembersRemoveErrorException("2/team/groups/members/remove", paramH.getRequestId(), paramH.getUserMessage(), (GroupMembersRemoveError)paramH.getErrorValue());
    }
  }
  
  GroupsListResult a(j paramJ)
    throws DbxApiException, DbxException
  {
    try
    {
      paramJ = (GroupsListResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/list", paramJ, false, j.a.a, GroupsListResult.a.a, StoneSerializers.void_());
      return paramJ;
    }
    catch (DbxWrappedException paramJ)
    {
      String str = paramJ.getRequestId();
      LocalizedText localLocalizedText = paramJ.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"groups/list\":");
      localStringBuilder.append(paramJ.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  GroupsListResult a(k paramK)
    throws GroupsListContinueErrorException, DbxException
  {
    try
    {
      paramK = (GroupsListResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/list/continue", paramK, false, k.a.a, GroupsListResult.a.a, GroupsListContinueError.a.a);
      return paramK;
    }
    catch (DbxWrappedException paramK)
    {
      throw new GroupsListContinueErrorException("2/team/groups/list/continue", paramK.getRequestId(), paramK.getUserMessage(), (GroupsListContinueError)paramK.getErrorValue());
    }
  }
  
  GroupsMembersListResult a(l paramL)
    throws GroupSelectorErrorException, DbxException
  {
    try
    {
      paramL = (GroupsMembersListResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/members/list", paramL, false, l.a.a, GroupsMembersListResult.a.a, GroupSelectorError.a.a);
      return paramL;
    }
    catch (DbxWrappedException paramL)
    {
      throw new GroupSelectorErrorException("2/team/groups/members/list", paramL.getRequestId(), paramL.getUserMessage(), (GroupSelectorError)paramL.getErrorValue());
    }
  }
  
  GroupsMembersListResult a(m paramM)
    throws GroupsMembersListContinueErrorException, DbxException
  {
    try
    {
      paramM = (GroupsMembersListResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/members/list/continue", paramM, false, m.a.a, GroupsMembersListResult.a.a, GroupsMembersListContinueError.a.a);
      return paramM;
    }
    catch (DbxWrappedException paramM)
    {
      throw new GroupsMembersListContinueErrorException("2/team/groups/members/list/continue", paramM.getRequestId(), paramM.getUserMessage(), (GroupsMembersListContinueError)paramM.getErrorValue());
    }
  }
  
  ListMemberAppsResult a(o paramO)
    throws ListMemberAppsErrorException, DbxException
  {
    try
    {
      paramO = (ListMemberAppsResult)a.rpcStyle(a.getHost().getApi(), "2/team/linked_apps/list_member_linked_apps", paramO, false, o.a.a, ListMemberAppsResult.a.a, ListMemberAppsError.a.a);
      return paramO;
    }
    catch (DbxWrappedException paramO)
    {
      throw new ListMemberAppsErrorException("2/team/linked_apps/list_member_linked_apps", paramO.getRequestId(), paramO.getUserMessage(), (ListMemberAppsError)paramO.getErrorValue());
    }
  }
  
  ListMemberDevicesResult a(ListMemberDevicesArg paramListMemberDevicesArg)
    throws ListMemberDevicesErrorException, DbxException
  {
    try
    {
      paramListMemberDevicesArg = (ListMemberDevicesResult)a.rpcStyle(a.getHost().getApi(), "2/team/devices/list_member_devices", paramListMemberDevicesArg, false, ListMemberDevicesArg.a.a, ListMemberDevicesResult.a.a, ListMemberDevicesError.a.a);
      return paramListMemberDevicesArg;
    }
    catch (DbxWrappedException paramListMemberDevicesArg)
    {
      throw new ListMemberDevicesErrorException("2/team/devices/list_member_devices", paramListMemberDevicesArg.getRequestId(), paramListMemberDevicesArg.getUserMessage(), (ListMemberDevicesError)paramListMemberDevicesArg.getErrorValue());
    }
  }
  
  ListMembersAppsResult a(p paramP)
    throws ListMembersAppsErrorException, DbxException
  {
    try
    {
      paramP = (ListMembersAppsResult)a.rpcStyle(a.getHost().getApi(), "2/team/linked_apps/list_members_linked_apps", paramP, false, p.a.a, ListMembersAppsResult.a.a, ListMembersAppsError.a.a);
      return paramP;
    }
    catch (DbxWrappedException paramP)
    {
      throw new ListMembersAppsErrorException("2/team/linked_apps/list_members_linked_apps", paramP.getRequestId(), paramP.getUserMessage(), (ListMembersAppsError)paramP.getErrorValue());
    }
  }
  
  ListMembersDevicesResult a(ListMembersDevicesArg paramListMembersDevicesArg)
    throws ListMembersDevicesErrorException, DbxException
  {
    try
    {
      paramListMembersDevicesArg = (ListMembersDevicesResult)a.rpcStyle(a.getHost().getApi(), "2/team/devices/list_members_devices", paramListMembersDevicesArg, false, ListMembersDevicesArg.a.a, ListMembersDevicesResult.a.a, ListMembersDevicesError.a.a);
      return paramListMembersDevicesArg;
    }
    catch (DbxWrappedException paramListMembersDevicesArg)
    {
      throw new ListMembersDevicesErrorException("2/team/devices/list_members_devices", paramListMembersDevicesArg.getRequestId(), paramListMembersDevicesArg.getUserMessage(), (ListMembersDevicesError)paramListMembersDevicesArg.getErrorValue());
    }
  }
  
  ListTeamAppsResult a(q paramQ)
    throws ListTeamAppsErrorException, DbxException
  {
    try
    {
      paramQ = (ListTeamAppsResult)a.rpcStyle(a.getHost().getApi(), "2/team/linked_apps/list_team_linked_apps", paramQ, false, q.a.a, ListTeamAppsResult.a.a, ListTeamAppsError.a.a);
      return paramQ;
    }
    catch (DbxWrappedException paramQ)
    {
      throw new ListTeamAppsErrorException("2/team/linked_apps/list_team_linked_apps", paramQ.getRequestId(), paramQ.getUserMessage(), (ListTeamAppsError)paramQ.getErrorValue());
    }
  }
  
  ListTeamDevicesResult a(ListTeamDevicesArg paramListTeamDevicesArg)
    throws ListTeamDevicesErrorException, DbxException
  {
    try
    {
      paramListTeamDevicesArg = (ListTeamDevicesResult)a.rpcStyle(a.getHost().getApi(), "2/team/devices/list_team_devices", paramListTeamDevicesArg, false, ListTeamDevicesArg.a.a, ListTeamDevicesResult.a.a, ListTeamDevicesError.a.a);
      return paramListTeamDevicesArg;
    }
    catch (DbxWrappedException paramListTeamDevicesArg)
    {
      throw new ListTeamDevicesErrorException("2/team/devices/list_team_devices", paramListTeamDevicesArg.getRequestId(), paramListTeamDevicesArg.getUserMessage(), (ListTeamDevicesError)paramListTeamDevicesArg.getErrorValue());
    }
  }
  
  MembersAddLaunch a(r paramR)
    throws DbxApiException, DbxException
  {
    try
    {
      paramR = (MembersAddLaunch)a.rpcStyle(a.getHost().getApi(), "2/team/members/add", paramR, false, r.a.a, MembersAddLaunch.a.a, StoneSerializers.void_());
      return paramR;
    }
    catch (DbxWrappedException paramR)
    {
      String str = paramR.getRequestId();
      LocalizedText localLocalizedText = paramR.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"members/add\":");
      localStringBuilder.append(paramR.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  MembersListResult a(MembersListArg paramMembersListArg)
    throws MembersListErrorException, DbxException
  {
    try
    {
      paramMembersListArg = (MembersListResult)a.rpcStyle(a.getHost().getApi(), "2/team/members/list", paramMembersListArg, false, MembersListArg.a.a, MembersListResult.a.a, MembersListError.a.a);
      return paramMembersListArg;
    }
    catch (DbxWrappedException paramMembersListArg)
    {
      throw new MembersListErrorException("2/team/members/list", paramMembersListArg.getRequestId(), paramMembersListArg.getUserMessage(), (MembersListError)paramMembersListArg.getErrorValue());
    }
  }
  
  MembersListResult a(u paramU)
    throws MembersListContinueErrorException, DbxException
  {
    try
    {
      paramU = (MembersListResult)a.rpcStyle(a.getHost().getApi(), "2/team/members/list/continue", paramU, false, u.a.a, MembersListResult.a.a, MembersListContinueError.a.a);
      return paramU;
    }
    catch (DbxWrappedException paramU)
    {
      throw new MembersListContinueErrorException("2/team/members/list/continue", paramU.getRequestId(), paramU.getUserMessage(), (MembersListContinueError)paramU.getErrorValue());
    }
  }
  
  MembersSetPermissionsResult a(w paramW)
    throws MembersSetPermissionsErrorException, DbxException
  {
    try
    {
      paramW = (MembersSetPermissionsResult)a.rpcStyle(a.getHost().getApi(), "2/team/members/set_admin_permissions", paramW, false, w.a.a, MembersSetPermissionsResult.a.a, MembersSetPermissionsError.a.a);
      return paramW;
    }
    catch (DbxWrappedException paramW)
    {
      throw new MembersSetPermissionsErrorException("2/team/members/set_admin_permissions", paramW.getRequestId(), paramW.getUserMessage(), (MembersSetPermissionsError)paramW.getErrorValue());
    }
  }
  
  RevokeDeviceSessionBatchResult a(y paramY)
    throws RevokeDeviceSessionBatchErrorException, DbxException
  {
    try
    {
      paramY = (RevokeDeviceSessionBatchResult)a.rpcStyle(a.getHost().getApi(), "2/team/devices/revoke_device_session_batch", paramY, false, y.a.a, RevokeDeviceSessionBatchResult.a.a, RevokeDeviceSessionBatchError.a.a);
      return paramY;
    }
    catch (DbxWrappedException paramY)
    {
      throw new RevokeDeviceSessionBatchErrorException("2/team/devices/revoke_device_session_batch", paramY.getRequestId(), paramY.getUserMessage(), (RevokeDeviceSessionBatchError)paramY.getErrorValue());
    }
  }
  
  RevokeLinkedAppBatchResult a(z paramZ)
    throws RevokeLinkedAppBatchErrorException, DbxException
  {
    try
    {
      paramZ = (RevokeLinkedAppBatchResult)a.rpcStyle(a.getHost().getApi(), "2/team/linked_apps/revoke_linked_app_batch", paramZ, false, z.a.a, RevokeLinkedAppBatchResult.a.a, RevokeLinkedAppBatchError.a.a);
      return paramZ;
    }
    catch (DbxWrappedException paramZ)
    {
      throw new RevokeLinkedAppBatchErrorException("2/team/linked_apps/revoke_linked_app_batch", paramZ.getRequestId(), paramZ.getUserMessage(), (RevokeLinkedAppBatchError)paramZ.getErrorValue());
    }
  }
  
  TeamFolderArchiveLaunch a(ab paramAb)
    throws TeamFolderArchiveErrorException, DbxException
  {
    try
    {
      paramAb = (TeamFolderArchiveLaunch)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/archive", paramAb, false, ab.a.a, TeamFolderArchiveLaunch.a.a, TeamFolderArchiveError.a.a);
      return paramAb;
    }
    catch (DbxWrappedException paramAb)
    {
      throw new TeamFolderArchiveErrorException("2/team/team_folder/archive", paramAb.getRequestId(), paramAb.getUserMessage(), (TeamFolderArchiveError)paramAb.getErrorValue());
    }
  }
  
  TeamFolderListResult a(af paramAf)
    throws TeamFolderListErrorException, DbxException
  {
    try
    {
      paramAf = (TeamFolderListResult)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/list", paramAf, false, af.a.a, TeamFolderListResult.a.a, TeamFolderListError.a.a);
      return paramAf;
    }
    catch (DbxWrappedException paramAf)
    {
      throw new TeamFolderListErrorException("2/team/team_folder/list", paramAf.getRequestId(), paramAf.getUserMessage(), (TeamFolderListError)paramAf.getErrorValue());
    }
  }
  
  TeamFolderListResult a(ag paramAg)
    throws TeamFolderListContinueErrorException, DbxException
  {
    try
    {
      paramAg = (TeamFolderListResult)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/list/continue", paramAg, false, ag.a.a, TeamFolderListResult.a.a, TeamFolderListContinueError.a.a);
      return paramAg;
    }
    catch (DbxWrappedException paramAg)
    {
      throw new TeamFolderListContinueErrorException("2/team/team_folder/list/continue", paramAg.getRequestId(), paramAg.getUserMessage(), (TeamFolderListContinueError)paramAg.getErrorValue());
    }
  }
  
  TeamFolderMetadata a(TeamFolderUpdateSyncSettingsArg paramTeamFolderUpdateSyncSettingsArg)
    throws TeamFolderUpdateSyncSettingsErrorException, DbxException
  {
    try
    {
      paramTeamFolderUpdateSyncSettingsArg = (TeamFolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/update_sync_settings", paramTeamFolderUpdateSyncSettingsArg, false, TeamFolderUpdateSyncSettingsArg.a.a, TeamFolderMetadata.a.a, TeamFolderUpdateSyncSettingsError.a.a);
      return paramTeamFolderUpdateSyncSettingsArg;
    }
    catch (DbxWrappedException paramTeamFolderUpdateSyncSettingsArg)
    {
      throw new TeamFolderUpdateSyncSettingsErrorException("2/team/team_folder/update_sync_settings", paramTeamFolderUpdateSyncSettingsArg.getRequestId(), paramTeamFolderUpdateSyncSettingsArg.getUserMessage(), (TeamFolderUpdateSyncSettingsError)paramTeamFolderUpdateSyncSettingsArg.getErrorValue());
    }
  }
  
  TeamFolderMetadata a(ac paramAc)
    throws TeamFolderCreateErrorException, DbxException
  {
    try
    {
      paramAc = (TeamFolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/create", paramAc, false, ac.a.a, TeamFolderMetadata.a.a, TeamFolderCreateError.a.a);
      return paramAc;
    }
    catch (DbxWrappedException paramAc)
    {
      throw new TeamFolderCreateErrorException("2/team/team_folder/create", paramAc.getRequestId(), paramAc.getUserMessage(), (TeamFolderCreateError)paramAc.getErrorValue());
    }
  }
  
  TeamFolderMetadata a(ad paramAd)
    throws TeamFolderActivateErrorException, DbxException
  {
    try
    {
      paramAd = (TeamFolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/activate", paramAd, false, ad.a.a, TeamFolderMetadata.a.a, TeamFolderActivateError.a.a);
      return paramAd;
    }
    catch (DbxWrappedException paramAd)
    {
      throw new TeamFolderActivateErrorException("2/team/team_folder/activate", paramAd.getRequestId(), paramAd.getUserMessage(), (TeamFolderActivateError)paramAd.getErrorValue());
    }
  }
  
  TeamFolderMetadata a(ah paramAh)
    throws TeamFolderRenameErrorException, DbxException
  {
    try
    {
      paramAh = (TeamFolderMetadata)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/rename", paramAh, false, ah.a.a, TeamFolderMetadata.a.a, TeamFolderRenameError.a.a);
      return paramAh;
    }
    catch (DbxWrappedException paramAh)
    {
      throw new TeamFolderRenameErrorException("2/team/team_folder/rename", paramAh.getRequestId(), paramAh.getUserMessage(), (TeamFolderRenameError)paramAh.getErrorValue());
    }
  }
  
  TeamMemberInfo a(MembersSetProfileArg paramMembersSetProfileArg)
    throws MembersSetProfileErrorException, DbxException
  {
    try
    {
      paramMembersSetProfileArg = (TeamMemberInfo)a.rpcStyle(a.getHost().getApi(), "2/team/members/set_profile", paramMembersSetProfileArg, false, MembersSetProfileArg.a.a, TeamMemberInfo.a.a, MembersSetProfileError.a.a);
      return paramMembersSetProfileArg;
    }
    catch (DbxWrappedException paramMembersSetProfileArg)
    {
      throw new MembersSetProfileErrorException("2/team/members/set_profile", paramMembersSetProfileArg.getRequestId(), paramMembersSetProfileArg.getUserMessage(), (MembersSetProfileError)paramMembersSetProfileArg.getErrorValue());
    }
  }
  
  TeamNamespacesListResult a(ai paramAi)
    throws DbxApiException, DbxException
  {
    try
    {
      paramAi = (TeamNamespacesListResult)a.rpcStyle(a.getHost().getApi(), "2/team/namespaces/list", paramAi, false, ai.a.a, TeamNamespacesListResult.a.a, StoneSerializers.void_());
      return paramAi;
    }
    catch (DbxWrappedException paramAi)
    {
      String str = paramAi.getRequestId();
      LocalizedText localLocalizedText = paramAi.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"namespaces/list\":");
      localStringBuilder.append(paramAi.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  TeamNamespacesListResult a(aj paramAj)
    throws TeamNamespacesListContinueErrorException, DbxException
  {
    try
    {
      paramAj = (TeamNamespacesListResult)a.rpcStyle(a.getHost().getApi(), "2/team/namespaces/list/continue", paramAj, false, aj.a.a, TeamNamespacesListResult.a.a, TeamNamespacesListContinueError.a.a);
      return paramAj;
    }
    catch (DbxWrappedException paramAj)
    {
      throw new TeamNamespacesListContinueErrorException("2/team/namespaces/list/continue", paramAj.getRequestId(), paramAj.getUserMessage(), (TeamNamespacesListContinueError)paramAj.getErrorValue());
    }
  }
  
  List<CustomQuotaResult> a(a paramA)
    throws CustomQuotaErrorException, DbxException
  {
    try
    {
      paramA = (List)a.rpcStyle(a.getHost().getApi(), "2/team/member_space_limits/get_custom_quota", paramA, false, a.a.a, StoneSerializers.list(CustomQuotaResult.a.a), CustomQuotaError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new CustomQuotaErrorException("2/team/member_space_limits/get_custom_quota", paramA.getRequestId(), paramA.getUserMessage(), (CustomQuotaError)paramA.getErrorValue());
    }
  }
  
  List<CustomQuotaResult> a(aa paramAa)
    throws SetCustomQuotaErrorException, DbxException
  {
    try
    {
      paramAa = (List)a.rpcStyle(a.getHost().getApi(), "2/team/member_space_limits/set_custom_quota", paramAa, false, aa.a.a, StoneSerializers.list(CustomQuotaResult.a.a), SetCustomQuotaError.a.a);
      return paramAa;
    }
    catch (DbxWrappedException paramAa)
    {
      throw new SetCustomQuotaErrorException("2/team/member_space_limits/set_custom_quota", paramAa.getRequestId(), paramAa.getUserMessage(), (SetCustomQuotaError)paramAa.getErrorValue());
    }
  }
  
  List<TeamFolderGetInfoItem> a(ae paramAe)
    throws DbxApiException, DbxException
  {
    try
    {
      paramAe = (List)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/get_info", paramAe, false, ae.a.a, StoneSerializers.list(TeamFolderGetInfoItem.a.a), StoneSerializers.void_());
      return paramAe;
    }
    catch (DbxWrappedException paramAe)
    {
      String str = paramAe.getRequestId();
      LocalizedText localLocalizedText = paramAe.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"team_folder/get_info\":");
      localStringBuilder.append(paramAe.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  List<GroupsGetInfoItem> a(i paramI)
    throws GroupMemberSetAccessTypeErrorException, DbxException
  {
    try
    {
      paramI = (List)a.rpcStyle(a.getHost().getApi(), "2/team/groups/members/set_access_type", paramI, false, i.a.a, StoneSerializers.list(GroupsGetInfoItem.a.a), GroupMemberSetAccessTypeError.a.a);
      return paramI;
    }
    catch (DbxWrappedException paramI)
    {
      throw new GroupMemberSetAccessTypeErrorException("2/team/groups/members/set_access_type", paramI.getRequestId(), paramI.getUserMessage(), (GroupMemberSetAccessTypeError)paramI.getErrorValue());
    }
  }
  
  List<MembersGetInfoItem> a(t paramT)
    throws MembersGetInfoErrorException, DbxException
  {
    try
    {
      paramT = (List)a.rpcStyle(a.getHost().getApi(), "2/team/members/get_info", paramT, false, t.a.a, StoneSerializers.list(MembersGetInfoItem.a.a), MembersGetInfoError.a.a);
      return paramT;
    }
    catch (DbxWrappedException paramT)
    {
      throw new MembersGetInfoErrorException("2/team/members/get_info", paramT.getRequestId(), paramT.getUserMessage(), (MembersGetInfoError)paramT.getErrorValue());
    }
  }
  
  void a(RevokeLinkedApiAppArg paramRevokeLinkedApiAppArg)
    throws RevokeLinkedAppErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/team/linked_apps/revoke_linked_app", paramRevokeLinkedApiAppArg, false, RevokeLinkedApiAppArg.a.a, StoneSerializers.void_(), RevokeLinkedAppError.a.a);
      return;
    }
    catch (DbxWrappedException paramRevokeLinkedApiAppArg)
    {
      throw new RevokeLinkedAppErrorException("2/team/linked_apps/revoke_linked_app", paramRevokeLinkedApiAppArg.getRequestId(), paramRevokeLinkedApiAppArg.getUserMessage(), (RevokeLinkedAppError)paramRevokeLinkedApiAppArg.getErrorValue());
    }
  }
  
  void a(s paramS)
    throws MembersSuspendErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/team/members/suspend", paramS, false, s.a.a, StoneSerializers.void_(), MembersSuspendError.a.a);
      return;
    }
    catch (DbxWrappedException paramS)
    {
      throw new MembersSuspendErrorException("2/team/members/suspend", paramS.getRequestId(), paramS.getUserMessage(), (MembersSuspendError)paramS.getErrorValue());
    }
  }
  
  void a(v paramV)
    throws MembersRecoverErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/team/members/recover", paramV, false, v.a.a, StoneSerializers.void_(), MembersRecoverError.a.a);
      return;
    }
    catch (DbxWrappedException paramV)
    {
      throw new MembersRecoverErrorException("2/team/members/recover", paramV.getRequestId(), paramV.getUserMessage(), (MembersRecoverError)paramV.getErrorValue());
    }
  }
  
  void a(x paramX)
    throws MembersUnsuspendErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/team/members/unsuspend", paramX, false, x.a.a, StoneSerializers.void_(), MembersUnsuspendError.a.a);
      return;
    }
    catch (DbxWrappedException paramX)
    {
      throw new MembersUnsuspendErrorException("2/team/members/unsuspend", paramX.getRequestId(), paramX.getUserMessage(), (MembersUnsuspendError)paramX.getErrorValue());
    }
  }
  
  ExcludedUsersUpdateResult b(d paramD)
    throws ExcludedUsersUpdateErrorException, DbxException
  {
    try
    {
      paramD = (ExcludedUsersUpdateResult)a.rpcStyle(a.getHost().getApi(), "2/team/member_space_limits/excluded_users/remove", paramD, false, d.a.a, ExcludedUsersUpdateResult.a.a, ExcludedUsersUpdateError.a.a);
      return paramD;
    }
    catch (DbxWrappedException paramD)
    {
      throw new ExcludedUsersUpdateErrorException("2/team/member_space_limits/excluded_users/remove", paramD.getRequestId(), paramD.getUserMessage(), (ExcludedUsersUpdateError)paramD.getErrorValue());
    }
  }
  
  GetDevicesReport b(DateRange paramDateRange)
    throws DateRangeErrorException, DbxException
  {
    try
    {
      paramDateRange = (GetDevicesReport)a.rpcStyle(a.getHost().getApi(), "2/team/reports/get_devices", paramDateRange, false, DateRange.a.a, GetDevicesReport.a.a, DateRangeError.a.a);
      return paramDateRange;
    }
    catch (DbxWrappedException paramDateRange)
    {
      throw new DateRangeErrorException("2/team/reports/get_devices", paramDateRange.getRequestId(), paramDateRange.getUserMessage(), (DateRangeError)paramDateRange.getErrorValue());
    }
  }
  
  MembersAddJobStatus b(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (MembersAddJobStatus)a.rpcStyle(a.getHost().getApi(), "2/team/members/add/job_status/get", paramPollArg, false, PollArg.Serializer.INSTANCE, MembersAddJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/team/members/add/job_status/get", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  List<RemoveCustomQuotaResult> b(a paramA)
    throws CustomQuotaErrorException, DbxException
  {
    try
    {
      paramA = (List)a.rpcStyle(a.getHost().getApi(), "2/team/member_space_limits/remove_custom_quota", paramA, false, a.a.a, StoneSerializers.list(RemoveCustomQuotaResult.a.a), CustomQuotaError.a.a);
      return paramA;
    }
    catch (DbxWrappedException paramA)
    {
      throw new CustomQuotaErrorException("2/team/member_space_limits/remove_custom_quota", paramA.getRequestId(), paramA.getUserMessage(), (CustomQuotaError)paramA.getErrorValue());
    }
  }
  
  void b(ad paramAd)
    throws TeamFolderPermanentlyDeleteErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/permanently_delete", paramAd, false, ad.a.a, StoneSerializers.void_(), TeamFolderPermanentlyDeleteError.a.a);
      return;
    }
    catch (DbxWrappedException paramAd)
    {
      throw new TeamFolderPermanentlyDeleteErrorException("2/team/team_folder/permanently_delete", paramAd.getRequestId(), paramAd.getUserMessage(), (TeamFolderPermanentlyDeleteError)paramAd.getErrorValue());
    }
  }
  
  PollEmptyResult c(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (PollEmptyResult)a.rpcStyle(a.getHost().getApi(), "2/team/members/remove/job_status/get", paramPollArg, false, PollArg.Serializer.INSTANCE, PollEmptyResult.Serializer.INSTANCE, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/team/members/remove/job_status/get", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  GetMembershipReport c(DateRange paramDateRange)
    throws DateRangeErrorException, DbxException
  {
    try
    {
      paramDateRange = (GetMembershipReport)a.rpcStyle(a.getHost().getApi(), "2/team/reports/get_membership", paramDateRange, false, DateRange.a.a, GetMembershipReport.a.a, DateRangeError.a.a);
      return paramDateRange;
    }
    catch (DbxWrappedException paramDateRange)
    {
      throw new DateRangeErrorException("2/team/reports/get_membership", paramDateRange.getRequestId(), paramDateRange.getUserMessage(), (DateRangeError)paramDateRange.getErrorValue());
    }
  }
  
  GetStorageReport d(DateRange paramDateRange)
    throws DateRangeErrorException, DbxException
  {
    try
    {
      paramDateRange = (GetStorageReport)a.rpcStyle(a.getHost().getApi(), "2/team/reports/get_storage", paramDateRange, false, DateRange.a.a, GetStorageReport.a.a, DateRangeError.a.a);
      return paramDateRange;
    }
    catch (DbxWrappedException paramDateRange)
    {
      throw new DateRangeErrorException("2/team/reports/get_storage", paramDateRange.getRequestId(), paramDateRange.getUserMessage(), (DateRangeError)paramDateRange.getErrorValue());
    }
  }
  
  TeamFolderArchiveJobStatus d(PollArg paramPollArg)
    throws PollErrorException, DbxException
  {
    try
    {
      paramPollArg = (TeamFolderArchiveJobStatus)a.rpcStyle(a.getHost().getApi(), "2/team/team_folder/archive/check", paramPollArg, false, PollArg.Serializer.INSTANCE, TeamFolderArchiveJobStatus.a.a, PollError.Serializer.INSTANCE);
      return paramPollArg;
    }
    catch (DbxWrappedException paramPollArg)
    {
      throw new PollErrorException("2/team/team_folder/archive/check", paramPollArg.getRequestId(), paramPollArg.getUserMessage(), (PollError)paramPollArg.getErrorValue());
    }
  }
  
  public ListMemberDevicesResult devicesListMemberDevices(String paramString)
    throws ListMemberDevicesErrorException, DbxException
  {
    return a(new ListMemberDevicesArg(paramString));
  }
  
  public DevicesListMemberDevicesBuilder devicesListMemberDevicesBuilder(String paramString)
  {
    return new DevicesListMemberDevicesBuilder(this, ListMemberDevicesArg.a(paramString));
  }
  
  public ListMembersDevicesResult devicesListMembersDevices()
    throws ListMembersDevicesErrorException, DbxException
  {
    return a(new ListMembersDevicesArg());
  }
  
  public DevicesListMembersDevicesBuilder devicesListMembersDevicesBuilder()
  {
    return new DevicesListMembersDevicesBuilder(this, ListMembersDevicesArg.a());
  }
  
  @Deprecated
  public ListTeamDevicesResult devicesListTeamDevices()
    throws ListTeamDevicesErrorException, DbxException
  {
    return a(new ListTeamDevicesArg());
  }
  
  @Deprecated
  public DevicesListTeamDevicesBuilder devicesListTeamDevicesBuilder()
  {
    return new DevicesListTeamDevicesBuilder(this, ListTeamDevicesArg.a());
  }
  
  public void devicesRevokeDeviceSession(RevokeDeviceSessionArg paramRevokeDeviceSessionArg)
    throws RevokeDeviceSessionErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/team/devices/revoke_device_session", paramRevokeDeviceSessionArg, false, RevokeDeviceSessionArg.a.a, StoneSerializers.void_(), RevokeDeviceSessionError.a.a);
      return;
    }
    catch (DbxWrappedException paramRevokeDeviceSessionArg)
    {
      throw new RevokeDeviceSessionErrorException("2/team/devices/revoke_device_session", paramRevokeDeviceSessionArg.getRequestId(), paramRevokeDeviceSessionArg.getUserMessage(), (RevokeDeviceSessionError)paramRevokeDeviceSessionArg.getErrorValue());
    }
  }
  
  public RevokeDeviceSessionBatchResult devicesRevokeDeviceSessionBatch(List<RevokeDeviceSessionArg> paramList)
    throws RevokeDeviceSessionBatchErrorException, DbxException
  {
    return a(new y(paramList));
  }
  
  public FeaturesGetValuesBatchResult featuresGetValues(List<Feature> paramList)
    throws FeaturesGetValuesBatchErrorException, DbxException
  {
    return a(new e(paramList));
  }
  
  public TeamGetInfoResult getInfo()
    throws DbxApiException, DbxException
  {
    try
    {
      TeamGetInfoResult localTeamGetInfoResult = (TeamGetInfoResult)a.rpcStyle(a.getHost().getApi(), "2/team/get_info", null, false, StoneSerializers.void_(), TeamGetInfoResult.a.a, StoneSerializers.void_());
      return localTeamGetInfoResult;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      String str = localDbxWrappedException.getRequestId();
      LocalizedText localLocalizedText = localDbxWrappedException.getUserMessage();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected error response for \"get_info\":");
      localStringBuilder.append(localDbxWrappedException.getErrorValue());
      throw new DbxApiException(str, localLocalizedText, localStringBuilder.toString());
    }
  }
  
  public GroupFullInfo groupsCreate(String paramString)
    throws GroupCreateErrorException, DbxException
  {
    return a(new GroupCreateArg(paramString));
  }
  
  public GroupsCreateBuilder groupsCreateBuilder(String paramString)
  {
    return new GroupsCreateBuilder(this, GroupCreateArg.a(paramString));
  }
  
  public LaunchEmptyResult groupsDelete(GroupSelector paramGroupSelector)
    throws GroupDeleteErrorException, DbxException
  {
    try
    {
      paramGroupSelector = (LaunchEmptyResult)a.rpcStyle(a.getHost().getApi(), "2/team/groups/delete", paramGroupSelector, false, GroupSelector.a.a, LaunchEmptyResult.Serializer.INSTANCE, GroupDeleteError.a.a);
      return paramGroupSelector;
    }
    catch (DbxWrappedException paramGroupSelector)
    {
      throw new GroupDeleteErrorException("2/team/groups/delete", paramGroupSelector.getRequestId(), paramGroupSelector.getUserMessage(), (GroupDeleteError)paramGroupSelector.getErrorValue());
    }
  }
  
  public List<GroupsGetInfoItem> groupsGetInfo(GroupsSelector paramGroupsSelector)
    throws GroupsGetInfoErrorException, DbxException
  {
    try
    {
      paramGroupsSelector = (List)a.rpcStyle(a.getHost().getApi(), "2/team/groups/get_info", paramGroupsSelector, false, GroupsSelector.a.a, StoneSerializers.list(GroupsGetInfoItem.a.a), GroupsGetInfoError.a.a);
      return paramGroupsSelector;
    }
    catch (DbxWrappedException paramGroupsSelector)
    {
      throw new GroupsGetInfoErrorException("2/team/groups/get_info", paramGroupsSelector.getRequestId(), paramGroupsSelector.getUserMessage(), (GroupsGetInfoError)paramGroupsSelector.getErrorValue());
    }
  }
  
  public PollEmptyResult groupsJobStatusGet(String paramString)
    throws GroupsPollErrorException, DbxException
  {
    return a(new PollArg(paramString));
  }
  
  public GroupsListResult groupsList()
    throws DbxApiException, DbxException
  {
    return a(new j());
  }
  
  public GroupsListResult groupsList(long paramLong)
    throws DbxApiException, DbxException
  {
    if (paramLong >= 1L)
    {
      if (paramLong <= 1000L) {
        return a(new j(paramLong));
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
  }
  
  public GroupsListResult groupsListContinue(String paramString)
    throws GroupsListContinueErrorException, DbxException
  {
    return a(new k(paramString));
  }
  
  public GroupMembersChangeResult groupsMembersAdd(GroupSelector paramGroupSelector, List<MemberAccess> paramList)
    throws GroupMembersAddErrorException, DbxException
  {
    return a(new g(paramGroupSelector, paramList));
  }
  
  public GroupMembersChangeResult groupsMembersAdd(GroupSelector paramGroupSelector, List<MemberAccess> paramList, boolean paramBoolean)
    throws GroupMembersAddErrorException, DbxException
  {
    return a(new g(paramGroupSelector, paramList, paramBoolean));
  }
  
  public GroupsMembersListResult groupsMembersList(GroupSelector paramGroupSelector)
    throws GroupSelectorErrorException, DbxException
  {
    return a(new l(paramGroupSelector));
  }
  
  public GroupsMembersListResult groupsMembersList(GroupSelector paramGroupSelector, long paramLong)
    throws GroupSelectorErrorException, DbxException
  {
    if (paramLong >= 1L)
    {
      if (paramLong <= 1000L) {
        return a(new l(paramGroupSelector, paramLong));
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
  }
  
  public GroupsMembersListResult groupsMembersListContinue(String paramString)
    throws GroupsMembersListContinueErrorException, DbxException
  {
    return a(new m(paramString));
  }
  
  public GroupMembersChangeResult groupsMembersRemove(GroupSelector paramGroupSelector, List<UserSelectorArg> paramList)
    throws GroupMembersRemoveErrorException, DbxException
  {
    return a(new h(paramGroupSelector, paramList));
  }
  
  public GroupMembersChangeResult groupsMembersRemove(GroupSelector paramGroupSelector, List<UserSelectorArg> paramList, boolean paramBoolean)
    throws GroupMembersRemoveErrorException, DbxException
  {
    return a(new h(paramGroupSelector, paramList, paramBoolean));
  }
  
  public List<GroupsGetInfoItem> groupsMembersSetAccessType(GroupSelector paramGroupSelector, UserSelectorArg paramUserSelectorArg, GroupAccessType paramGroupAccessType)
    throws GroupMemberSetAccessTypeErrorException, DbxException
  {
    return a(new i(paramGroupSelector, paramUserSelectorArg, paramGroupAccessType));
  }
  
  public List<GroupsGetInfoItem> groupsMembersSetAccessType(GroupSelector paramGroupSelector, UserSelectorArg paramUserSelectorArg, GroupAccessType paramGroupAccessType, boolean paramBoolean)
    throws GroupMemberSetAccessTypeErrorException, DbxException
  {
    return a(new i(paramGroupSelector, paramUserSelectorArg, paramGroupAccessType, paramBoolean));
  }
  
  public GroupFullInfo groupsUpdate(GroupSelector paramGroupSelector)
    throws GroupUpdateErrorException, DbxException
  {
    return a(new GroupUpdateArgs(paramGroupSelector));
  }
  
  public GroupsUpdateBuilder groupsUpdateBuilder(GroupSelector paramGroupSelector)
  {
    return new GroupsUpdateBuilder(this, GroupUpdateArgs.a(paramGroupSelector));
  }
  
  public ListMemberAppsResult linkedAppsListMemberLinkedApps(String paramString)
    throws ListMemberAppsErrorException, DbxException
  {
    return a(new o(paramString));
  }
  
  public ListMembersAppsResult linkedAppsListMembersLinkedApps()
    throws ListMembersAppsErrorException, DbxException
  {
    return a(new p());
  }
  
  public ListMembersAppsResult linkedAppsListMembersLinkedApps(String paramString)
    throws ListMembersAppsErrorException, DbxException
  {
    return a(new p(paramString));
  }
  
  @Deprecated
  public ListTeamAppsResult linkedAppsListTeamLinkedApps()
    throws ListTeamAppsErrorException, DbxException
  {
    return a(new q());
  }
  
  @Deprecated
  public ListTeamAppsResult linkedAppsListTeamLinkedApps(String paramString)
    throws ListTeamAppsErrorException, DbxException
  {
    return a(new q(paramString));
  }
  
  public void linkedAppsRevokeLinkedApp(String paramString1, String paramString2)
    throws RevokeLinkedAppErrorException, DbxException
  {
    a(new RevokeLinkedApiAppArg(paramString1, paramString2));
  }
  
  public void linkedAppsRevokeLinkedApp(String paramString1, String paramString2, boolean paramBoolean)
    throws RevokeLinkedAppErrorException, DbxException
  {
    a(new RevokeLinkedApiAppArg(paramString1, paramString2, paramBoolean));
  }
  
  public RevokeLinkedAppBatchResult linkedAppsRevokeLinkedAppBatch(List<RevokeLinkedApiAppArg> paramList)
    throws RevokeLinkedAppBatchErrorException, DbxException
  {
    return a(new z(paramList));
  }
  
  public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersAdd()
    throws ExcludedUsersUpdateErrorException, DbxException
  {
    return a(new d());
  }
  
  public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersAdd(List<UserSelectorArg> paramList)
    throws ExcludedUsersUpdateErrorException, DbxException
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((UserSelectorArg)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'users' is null");
        }
      }
    }
    return a(new d(paramList));
  }
  
  public ExcludedUsersListResult memberSpaceLimitsExcludedUsersList()
    throws ExcludedUsersListErrorException, DbxException
  {
    return a(new b());
  }
  
  public ExcludedUsersListResult memberSpaceLimitsExcludedUsersList(long paramLong)
    throws ExcludedUsersListErrorException, DbxException
  {
    if (paramLong >= 1L)
    {
      if (paramLong <= 1000L) {
        return a(new b(paramLong));
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
  }
  
  public ExcludedUsersListResult memberSpaceLimitsExcludedUsersListContinue(String paramString)
    throws ExcludedUsersListContinueErrorException, DbxException
  {
    return a(new c(paramString));
  }
  
  public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersRemove()
    throws ExcludedUsersUpdateErrorException, DbxException
  {
    return b(new d());
  }
  
  public ExcludedUsersUpdateResult memberSpaceLimitsExcludedUsersRemove(List<UserSelectorArg> paramList)
    throws ExcludedUsersUpdateErrorException, DbxException
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((UserSelectorArg)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'users' is null");
        }
      }
    }
    return b(new d(paramList));
  }
  
  public List<CustomQuotaResult> memberSpaceLimitsGetCustomQuota(List<UserSelectorArg> paramList)
    throws CustomQuotaErrorException, DbxException
  {
    return a(new a(paramList));
  }
  
  public List<RemoveCustomQuotaResult> memberSpaceLimitsRemoveCustomQuota(List<UserSelectorArg> paramList)
    throws CustomQuotaErrorException, DbxException
  {
    return b(new a(paramList));
  }
  
  public List<CustomQuotaResult> memberSpaceLimitsSetCustomQuota(List<UserCustomQuotaArg> paramList)
    throws SetCustomQuotaErrorException, DbxException
  {
    return a(new aa(paramList));
  }
  
  public MembersAddLaunch membersAdd(List<MemberAddArg> paramList)
    throws DbxApiException, DbxException
  {
    return a(new r(paramList));
  }
  
  public MembersAddLaunch membersAdd(List<MemberAddArg> paramList, boolean paramBoolean)
    throws DbxApiException, DbxException
  {
    return a(new r(paramList, paramBoolean));
  }
  
  public MembersAddJobStatus membersAddJobStatusGet(String paramString)
    throws PollErrorException, DbxException
  {
    return b(new PollArg(paramString));
  }
  
  public List<MembersGetInfoItem> membersGetInfo(List<UserSelectorArg> paramList)
    throws MembersGetInfoErrorException, DbxException
  {
    return a(new t(paramList));
  }
  
  public MembersListResult membersList()
    throws MembersListErrorException, DbxException
  {
    return a(new MembersListArg());
  }
  
  public MembersListBuilder membersListBuilder()
  {
    return new MembersListBuilder(this, MembersListArg.a());
  }
  
  public MembersListResult membersListContinue(String paramString)
    throws MembersListContinueErrorException, DbxException
  {
    return a(new u(paramString));
  }
  
  public void membersRecover(UserSelectorArg paramUserSelectorArg)
    throws MembersRecoverErrorException, DbxException
  {
    a(new v(paramUserSelectorArg));
  }
  
  public LaunchEmptyResult membersRemove(UserSelectorArg paramUserSelectorArg)
    throws MembersRemoveErrorException, DbxException
  {
    return a(new MembersRemoveArg(paramUserSelectorArg));
  }
  
  public MembersRemoveBuilder membersRemoveBuilder(UserSelectorArg paramUserSelectorArg)
  {
    return new MembersRemoveBuilder(this, MembersRemoveArg.a(paramUserSelectorArg));
  }
  
  public PollEmptyResult membersRemoveJobStatusGet(String paramString)
    throws PollErrorException, DbxException
  {
    return c(new PollArg(paramString));
  }
  
  public void membersSendWelcomeEmail(UserSelectorArg paramUserSelectorArg)
    throws MembersSendWelcomeErrorException, DbxException
  {
    try
    {
      a.rpcStyle(a.getHost().getApi(), "2/team/members/send_welcome_email", paramUserSelectorArg, false, UserSelectorArg.a.a, StoneSerializers.void_(), MembersSendWelcomeError.a.a);
      return;
    }
    catch (DbxWrappedException paramUserSelectorArg)
    {
      throw new MembersSendWelcomeErrorException("2/team/members/send_welcome_email", paramUserSelectorArg.getRequestId(), paramUserSelectorArg.getUserMessage(), (MembersSendWelcomeError)paramUserSelectorArg.getErrorValue());
    }
  }
  
  public MembersSetPermissionsResult membersSetAdminPermissions(UserSelectorArg paramUserSelectorArg, AdminTier paramAdminTier)
    throws MembersSetPermissionsErrorException, DbxException
  {
    return a(new w(paramUserSelectorArg, paramAdminTier));
  }
  
  public TeamMemberInfo membersSetProfile(UserSelectorArg paramUserSelectorArg)
    throws MembersSetProfileErrorException, DbxException
  {
    return a(new MembersSetProfileArg(paramUserSelectorArg));
  }
  
  public MembersSetProfileBuilder membersSetProfileBuilder(UserSelectorArg paramUserSelectorArg)
  {
    return new MembersSetProfileBuilder(this, MembersSetProfileArg.a(paramUserSelectorArg));
  }
  
  public void membersSuspend(UserSelectorArg paramUserSelectorArg)
    throws MembersSuspendErrorException, DbxException
  {
    a(new s(paramUserSelectorArg));
  }
  
  public void membersSuspend(UserSelectorArg paramUserSelectorArg, boolean paramBoolean)
    throws MembersSuspendErrorException, DbxException
  {
    a(new s(paramUserSelectorArg, paramBoolean));
  }
  
  public void membersUnsuspend(UserSelectorArg paramUserSelectorArg)
    throws MembersUnsuspendErrorException, DbxException
  {
    a(new x(paramUserSelectorArg));
  }
  
  public TeamNamespacesListResult namespacesList()
    throws DbxApiException, DbxException
  {
    return a(new ai());
  }
  
  public TeamNamespacesListResult namespacesList(long paramLong)
    throws DbxApiException, DbxException
  {
    if (paramLong >= 1L)
    {
      if (paramLong <= 1000L) {
        return a(new ai(paramLong));
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
  }
  
  public TeamNamespacesListResult namespacesListContinue(String paramString)
    throws TeamNamespacesListContinueErrorException, DbxException
  {
    return a(new aj(paramString));
  }
  
  @Deprecated
  public AddTemplateResult propertiesTemplateAdd(String paramString1, String paramString2, List<PropertyFieldTemplate> paramList)
    throws ModifyTemplateErrorException, DbxException
  {
    return a(new AddTemplateArg(paramString1, paramString2, paramList));
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
      ListTemplateResult localListTemplateResult = (ListTemplateResult)a.rpcStyle(a.getHost().getApi(), "2/team/properties/template/list", null, false, StoneSerializers.void_(), ListTemplateResult.Serializer.INSTANCE, TemplateError.Serializer.INSTANCE);
      return localListTemplateResult;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      throw new TemplateErrorException("2/team/properties/template/list", localDbxWrappedException.getRequestId(), localDbxWrappedException.getUserMessage(), (TemplateError)localDbxWrappedException.getErrorValue());
    }
  }
  
  @Deprecated
  public UpdateTemplateResult propertiesTemplateUpdate(String paramString)
    throws ModifyTemplateErrorException, DbxException
  {
    return a(new UpdateTemplateArg(paramString));
  }
  
  @Deprecated
  public PropertiesTemplateUpdateBuilder propertiesTemplateUpdateBuilder(String paramString)
  {
    return new PropertiesTemplateUpdateBuilder(this, UpdateTemplateArg.newBuilder(paramString));
  }
  
  public GetActivityReport reportsGetActivity()
    throws DateRangeErrorException, DbxException
  {
    return a(new DateRange());
  }
  
  public ReportsGetActivityBuilder reportsGetActivityBuilder()
  {
    return new ReportsGetActivityBuilder(this, DateRange.a());
  }
  
  public GetDevicesReport reportsGetDevices()
    throws DateRangeErrorException, DbxException
  {
    return b(new DateRange());
  }
  
  public ReportsGetDevicesBuilder reportsGetDevicesBuilder()
  {
    return new ReportsGetDevicesBuilder(this, DateRange.a());
  }
  
  public GetMembershipReport reportsGetMembership()
    throws DateRangeErrorException, DbxException
  {
    return c(new DateRange());
  }
  
  public ReportsGetMembershipBuilder reportsGetMembershipBuilder()
  {
    return new ReportsGetMembershipBuilder(this, DateRange.a());
  }
  
  public GetStorageReport reportsGetStorage()
    throws DateRangeErrorException, DbxException
  {
    return d(new DateRange());
  }
  
  public ReportsGetStorageBuilder reportsGetStorageBuilder()
  {
    return new ReportsGetStorageBuilder(this, DateRange.a());
  }
  
  public TeamFolderMetadata teamFolderActivate(String paramString)
    throws TeamFolderActivateErrorException, DbxException
  {
    return a(new ad(paramString));
  }
  
  public TeamFolderArchiveLaunch teamFolderArchive(String paramString)
    throws TeamFolderArchiveErrorException, DbxException
  {
    return a(new ab(paramString));
  }
  
  public TeamFolderArchiveLaunch teamFolderArchive(String paramString, boolean paramBoolean)
    throws TeamFolderArchiveErrorException, DbxException
  {
    return a(new ab(paramString, paramBoolean));
  }
  
  public TeamFolderArchiveJobStatus teamFolderArchiveCheck(String paramString)
    throws PollErrorException, DbxException
  {
    return d(new PollArg(paramString));
  }
  
  public TeamFolderMetadata teamFolderCreate(String paramString)
    throws TeamFolderCreateErrorException, DbxException
  {
    return a(new ac(paramString));
  }
  
  public TeamFolderMetadata teamFolderCreate(String paramString, SyncSettingArg paramSyncSettingArg)
    throws TeamFolderCreateErrorException, DbxException
  {
    return a(new ac(paramString, paramSyncSettingArg));
  }
  
  public List<TeamFolderGetInfoItem> teamFolderGetInfo(List<String> paramList)
    throws DbxApiException, DbxException
  {
    return a(new ae(paramList));
  }
  
  public TeamFolderListResult teamFolderList()
    throws TeamFolderListErrorException, DbxException
  {
    return a(new af());
  }
  
  public TeamFolderListResult teamFolderList(long paramLong)
    throws TeamFolderListErrorException, DbxException
  {
    if (paramLong >= 1L)
    {
      if (paramLong <= 1000L) {
        return a(new af(paramLong));
      }
      throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }
    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
  }
  
  public TeamFolderListResult teamFolderListContinue(String paramString)
    throws TeamFolderListContinueErrorException, DbxException
  {
    return a(new ag(paramString));
  }
  
  public void teamFolderPermanentlyDelete(String paramString)
    throws TeamFolderPermanentlyDeleteErrorException, DbxException
  {
    b(new ad(paramString));
  }
  
  public TeamFolderMetadata teamFolderRename(String paramString1, String paramString2)
    throws TeamFolderRenameErrorException, DbxException
  {
    return a(new ah(paramString1, paramString2));
  }
  
  public TeamFolderMetadata teamFolderUpdateSyncSettings(String paramString)
    throws TeamFolderUpdateSyncSettingsErrorException, DbxException
  {
    return a(new TeamFolderUpdateSyncSettingsArg(paramString));
  }
  
  public TeamFolderUpdateSyncSettingsBuilder teamFolderUpdateSyncSettingsBuilder(String paramString)
  {
    return new TeamFolderUpdateSyncSettingsBuilder(this, TeamFolderUpdateSyncSettingsArg.a(paramString));
  }
  
  public TokenGetAuthenticatedAdminResult tokenGetAuthenticatedAdmin()
    throws TokenGetAuthenticatedAdminErrorException, DbxException
  {
    try
    {
      TokenGetAuthenticatedAdminResult localTokenGetAuthenticatedAdminResult = (TokenGetAuthenticatedAdminResult)a.rpcStyle(a.getHost().getApi(), "2/team/token/get_authenticated_admin", null, false, StoneSerializers.void_(), TokenGetAuthenticatedAdminResult.a.a, TokenGetAuthenticatedAdminError.a.a);
      return localTokenGetAuthenticatedAdminResult;
    }
    catch (DbxWrappedException localDbxWrappedException)
    {
      throw new TokenGetAuthenticatedAdminErrorException("2/team/token/get_authenticated_admin", localDbxWrappedException.getRequestId(), localDbxWrappedException.getUserMessage(), (TokenGetAuthenticatedAdminError)localDbxWrappedException.getErrorValue());
    }
  }
}
