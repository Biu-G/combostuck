.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;,
        Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

.field protected final linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

.field protected final previewUrl:Ljava/lang/String;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final timeInvited:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 16

    .line 149
    sget-object v15, Lcom/dropbox/core/v2/sharing/AccessInheritance;->INHERIT:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v15}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/FolderPolicy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dropbox/core/v2/users/Team;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/AccessInheritance;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    .line 84
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    .line 85
    iput-object v0, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v9, :cond_8

    .line 89
    iput-object v9, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 91
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FolderPermission;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An item in list \'permissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iput-object v13, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eqz v10, :cond_7

    .line 101
    iput-object v10, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    if-eqz v11, :cond_6

    .line 105
    iput-object v11, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    if-eqz v12, :cond_5

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 109
    invoke-static {v0, v12}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iput-object v12, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eqz p8, :cond_3

    .line 116
    invoke-static/range {p8 .. p8}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    if-eqz v14, :cond_2

    .line 120
    iput-object v14, v8, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    return-void

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accessInheritance\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'timeInvited\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'previewUrl\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'policy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 10

    .line 324
    new-instance v9, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v9
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

    .line 532
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 533
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 534
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    if-ne v2, v3, :cond_e

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 538
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/FolderPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    .line 540
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    .line 541
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    .line 542
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 543
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 546
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    .line 547
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    if-eq v2, v3, :cond_f

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    .line 548
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_0
    return v0

    :cond_10
    return v1
.end method

.method public getAccessInheritance()Lcom/dropbox/core/v2/sharing/AccessInheritance;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    return-object v0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getIsInsideTeamFolder()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    return v0
.end method

.method public getIsTeamFolder()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    return v0
.end method

.method public getLinkMetadata()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerDisplayNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerTeam()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPolicy()Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInvited()Ljava/util/Date;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    .line 509
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 519
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 558
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 570
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
