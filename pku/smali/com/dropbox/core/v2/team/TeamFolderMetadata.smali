.class public Lcom/dropbox/core/v2/team/TeamFolderMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;
    }
.end annotation


# instance fields
.field protected final contentSyncSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/ContentSyncSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected final isTeamSharedDropbox:Z

.field protected final name:Ljava/lang/String;

.field protected final status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

.field protected final syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

.field protected final teamFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/TeamFolderStatus;ZLcom/dropbox/core/v2/files/SyncSetting;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/team/TeamFolderStatus;",
            "Z",
            "Lcom/dropbox/core/v2/files/SyncSetting;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/ContentSyncSetting;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 57
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 64
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 68
    iput-object p3, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .line 69
    iput-boolean p4, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    if-eqz p5, :cond_3

    .line 73
    iput-object p5, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

    if-eqz p6, :cond_2

    .line 77
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/files/ContentSyncSetting;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'contentSyncSettings\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    iput-object p6, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->contentSyncSettings:Ljava/util/List;

    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'contentSyncSettings\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'syncSetting\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'status\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'teamFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'teamFolderId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 161
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 162
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    .line 163
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .line 165
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

    .line 167
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/SyncSetting;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->contentSyncSettings:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->contentSyncSettings:Ljava/util/List;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->contentSyncSettings:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->contentSyncSettings:Ljava/util/List;

    .line 168
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_0
    return v0

    :cond_8
    return v1
.end method

.method public getContentSyncSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/ContentSyncSetting;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->contentSyncSettings:Ljava/util/List;

    return-object v0
.end method

.method public getIsTeamSharedDropbox()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/TeamFolderStatus;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    return-object v0
.end method

.method public getSyncSetting()Lcom/dropbox/core/v2/files/SyncSetting;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

    return-object v0
.end method

.method public getTeamFolderId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->syncSetting:Lcom/dropbox/core/v2/files/SyncSetting;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->contentSyncSettings:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 141
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->a:Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 190
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->a:Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
