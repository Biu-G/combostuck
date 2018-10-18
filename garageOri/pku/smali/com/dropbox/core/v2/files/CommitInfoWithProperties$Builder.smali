.class public Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
.super Lcom/dropbox/core/v2/files/CommitInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/files/CommitInfo;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->build()Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    .locals 8

    .line 261
    new-instance v7, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->autorename:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->clientModified:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->mute:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->propertyGroups:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;ZLjava/util/List;)V

    return-object v7
.end method

.method public bridge synthetic withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0

    .line 234
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;->withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;"
        }
    .end annotation

    .line 250
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method
