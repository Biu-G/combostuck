.class public Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 4

    .line 139
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->fileId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    return-object p0
.end method

.method public bridge synthetic withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;->withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;->withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo$Builder;

    return-object p0
.end method
