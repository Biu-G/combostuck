.class Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;
.super Lcom/dropbox/core/v2/team/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$a;,
        Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/files/SyncSettingArg;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/ContentSyncSettingArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/SyncSettingArg;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/SyncSettingArg;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/SyncSettingArg;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/files/ContentSyncSettingArg;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/ad;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a:Lcom/dropbox/core/v2/files/SyncSettingArg;

    if-eqz p3, :cond_1

    .line 46
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/files/ContentSyncSettingArg;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'contentSyncSettings\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$Builder;
    .locals 1

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
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

    .line 200
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 201
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;

    .line 202
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a:Lcom/dropbox/core/v2/files/SyncSettingArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a:Lcom/dropbox/core/v2/files/SyncSettingArg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a:Lcom/dropbox/core/v2/files/SyncSettingArg;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a:Lcom/dropbox/core/v2/files/SyncSettingArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a:Lcom/dropbox/core/v2/files/SyncSettingArg;

    .line 203
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/SyncSettingArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->c:Ljava/util/List;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->c:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->c:Ljava/util/List;

    .line 204
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 183
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->a:Lcom/dropbox/core/v2/files/SyncSettingArg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg;->c:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 187
    invoke-super {p0}, Lcom/dropbox/core/v2/team/ad;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 214
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$a;->a:Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderUpdateSyncSettingsArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
