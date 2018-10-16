.class public Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$a;,
        Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 84
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V

    return-void
.end method

.method public static newBuilder(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z)",
            "Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;"
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$Builder;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V

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

    .line 255
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 256
    check-cast p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    .line 257
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 258
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkAudience;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    .line 259
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->passwordProtected:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->passwordProtected:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 261
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    .line 262
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->expiry:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->expiry:Ljava/util/Date;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->expiry:Ljava/util/Date;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->expiry:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->expiry:Ljava/util/Date;

    .line 263
    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_0
    return v0

    :cond_9
    return v1
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getAudienceOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceOptions:Ljava/util/List;

    return-object v0
.end method

.method public getAudienceRestrictingSharedFolder()Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    return-object v0
.end method

.method public getCurrentAudience()Lcom/dropbox/core/v2/sharing/LinkAudience;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object v0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->expiry:Ljava/util/Date;

    return-object v0
.end method

.method public getLinkPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->linkPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getPasswordProtected()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->passwordProtected:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    sget-object v0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 285
    sget-object v0, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$a;->a:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
