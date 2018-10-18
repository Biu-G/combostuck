.class public Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
.super Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 1

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V

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

    .line 158
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    .line 160
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    .line 162
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

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lcom/dropbox/core/v2/teamlog/PathLogInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 146
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

    .line 172
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 184
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
