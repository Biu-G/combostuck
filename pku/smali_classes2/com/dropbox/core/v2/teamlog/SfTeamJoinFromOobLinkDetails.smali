.class public Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;,
        Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;
    }
.end annotation


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected final sharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J

.field protected final tokenKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    if-eqz p3, :cond_0

    .line 50
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'originalFolderName\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(JLjava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;
    .locals 1

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 200
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    .line 201
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    .line 204
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingPermission()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 181
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 181
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 214
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 226
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
