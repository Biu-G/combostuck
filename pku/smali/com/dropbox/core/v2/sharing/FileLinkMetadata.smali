.class public Lcom/dropbox/core/v2/sharing/FileLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileLinkMetadata$a;,
        Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final clientModified:Ljava/util/Date;

.field protected final rev:Ljava/lang/String;

.field protected final serverModified:Ljava/util/Date;

.field protected final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    .line 126
    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V
    .locals 11

    move-object v9, p0

    move-object/from16 v10, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    .line 76
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    if-eqz p4, :cond_4

    .line 80
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v9, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    if-eqz p5, :cond_3

    .line 84
    invoke-static/range {p5 .. p5}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v9, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    if-eqz v10, :cond_2

    .line 88
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 91
    invoke-static {v0, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-object v10, v9, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    move-wide/from16 v0, p7

    .line 95
    iput-wide v0, v9, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->size:J

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'rev\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'serverModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'clientModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
    .locals 10

    .line 276
    new-instance v9, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V

    return-object v9
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

    .line 415
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 416
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    .line 417
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->name:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .line 419
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkPermissions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    .line 420
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    .line 421
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->size:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    .line 425
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 427
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    .line 428
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_0
    return v0

    :cond_e
    return v1
.end method

.method public getClientModified()Ljava/util/Date;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    return-object v0
.end method

.method public getContentOwnerTeamInfo()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPermissions()Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    return-object v0
.end method

.method public getServerModified()Ljava/util/Date;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->size:J

    return-wide v0
.end method

.method public getTeamMemberInfo()Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 396
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->clientModified:Ljava/util/Date;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->serverModified:Ljava/util/Date;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->rev:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;->size:J

    .line 400
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 396
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 402
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 438
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/FileLinkMetadata$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 450
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/FileLinkMetadata$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
