.class public Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected newSharingPermission:Ljava/lang/String;

.field protected final originalFolderName:Ljava/lang/String;

.field protected previousSharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->targetAssetIndex:J

    if-eqz p3, :cond_0

    .line 139
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->originalFolderName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'originalFolderName\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;
    .locals 7

    .line 177
    new-instance v6, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;

    iget-wide v1, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->targetAssetIndex:J

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withNewSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->newSharingPermission:Ljava/lang/String;

    return-object p0
.end method

.method public withPreviousSharingPermission(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfFbInviteChangeRoleDetails$Builder;->previousSharingPermission:Ljava/lang/String;

    return-object p0
.end method
