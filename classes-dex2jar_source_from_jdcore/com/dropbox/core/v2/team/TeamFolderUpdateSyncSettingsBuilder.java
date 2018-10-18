package com.dropbox.core.v2.team;

import com.dropbox.core.DbxException;
import com.dropbox.core.v2.files.ContentSyncSettingArg;
import com.dropbox.core.v2.files.SyncSettingArg;
import java.util.List;

public class TeamFolderUpdateSyncSettingsBuilder
{
  private final DbxTeamTeamRequests a;
  private final TeamFolderUpdateSyncSettingsArg.Builder b;
  
  TeamFolderUpdateSyncSettingsBuilder(DbxTeamTeamRequests paramDbxTeamTeamRequests, TeamFolderUpdateSyncSettingsArg.Builder paramBuilder)
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
  
  public TeamFolderMetadata start()
    throws TeamFolderUpdateSyncSettingsErrorException, DbxException
  {
    TeamFolderUpdateSyncSettingsArg localTeamFolderUpdateSyncSettingsArg = b.build();
    return a.a(localTeamFolderUpdateSyncSettingsArg);
  }
  
  public TeamFolderUpdateSyncSettingsBuilder withContentSyncSettings(List<ContentSyncSettingArg> paramList)
  {
    b.withContentSyncSettings(paramList);
    return this;
  }
  
  public TeamFolderUpdateSyncSettingsBuilder withSyncSetting(SyncSettingArg paramSyncSettingArg)
  {
    b.withSyncSetting(paramSyncSettingArg);
    return this;
  }
}
