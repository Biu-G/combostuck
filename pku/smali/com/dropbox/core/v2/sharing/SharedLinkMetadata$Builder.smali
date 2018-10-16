.class public Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

.field protected expires:Ljava/util/Date;

.field protected id:Ljava/lang/String;

.field protected final linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

.field protected final name:Ljava/lang/String;

.field protected pathLower:Ljava/lang/String;

.field protected teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 221
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->url:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 225
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->name:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 229
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->id:Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->expires:Ljava/util/Date;

    .line 232
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->pathLower:Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 234
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    return-void

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'linkPermissions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'url\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 10

    .line 321
    new-instance v9, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->expires:Ljava/util/Date;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    return-object v9
.end method

.method public withContentOwnerTeamInfo(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    return-object p0
.end method

.method public withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 0

    .line 267
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->expires:Ljava/util/Date;

    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'id\' is shorter than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->pathLower:Ljava/lang/String;

    return-object p0
.end method

.method public withTeamMemberInfo(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    return-object p0
.end method
