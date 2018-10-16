.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
.super Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

.field protected linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected permissions:Ljava/util/List;
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
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V

    if-eqz p4, :cond_5

    .line 346
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->name:Ljava/lang/String;

    if-eqz p5, :cond_4

    .line 350
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    if-eqz p6, :cond_3

    .line 354
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->previewUrl:Ljava/lang/String;

    if-eqz p7, :cond_2

    const-string p1, "[-_0-9a-zA-Z:]+"

    .line 358
    invoke-static {p1, p7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 361
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->sharedFolderId:Ljava/lang/String;

    if-eqz p8, :cond_0

    .line 365
    invoke-static {p8}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->timeInvited:Ljava/util/Date;

    const/4 p1, 0x0

    .line 366
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 367
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->permissions:Ljava/util/List;

    .line 368
    sget-object p1, Lcom/dropbox/core/v2/sharing/AccessInheritance;->INHERIT:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    return-void

    .line 363
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'timeInvited\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'previewUrl\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'policy\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'name\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 18

    move-object/from16 v0, p0

    .line 503
    new-instance v17, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v2, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-boolean v3, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->isInsideTeamFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->isTeamFolder:Z

    iget-object v5, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->name:Ljava/lang/String;

    iget-object v6, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v7, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->previewUrl:Ljava/lang/String;

    iget-object v8, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v9, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->timeInvited:Ljava/util/Date;

    iget-object v10, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->ownerDisplayNames:Ljava/util/List;

    iget-object v11, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v12, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v13, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v14, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v15, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->permissions:Ljava/util/List;

    iget-object v1, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V

    return-object v17
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withAccessInheritance(Lcom/dropbox/core/v2/sharing/AccessInheritance;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 427
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    goto :goto_0

    .line 430
    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/sharing/AccessInheritance;->INHERIT:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->accessInheritance:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    :goto_0
    return-object p0
.end method

.method public withLinkMetadata(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    return-object p0
.end method

.method public withOwnerDisplayNames(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;"
        }
    .end annotation

    .line 449
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->withOwnerDisplayNames(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    return-object p0
.end method

.method public bridge synthetic withOwnerDisplayNames(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->withOwnerDisplayNames(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0

    .line 462
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    return-object p0
.end method

.method public bridge synthetic withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0

    .line 479
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    return-object p0
.end method

.method public bridge synthetic withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0

    .line 492
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    return-object p0
.end method

.method public bridge synthetic withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 402
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list \'permissions\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->permissions:Ljava/util/List;

    return-object p0
.end method
