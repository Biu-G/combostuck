.class public Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/FolderSharingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected noAccess:Z

.field protected parentSharedFolderId:Ljava/lang/String;

.field protected final readOnly:Z

.field protected sharedFolderId:Ljava/lang/String;

.field protected traverseOnly:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->readOnly:Z

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->sharedFolderId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    .line 164
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/FolderSharingInfo;
    .locals 7

    .line 262
    new-instance v6, Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->readOnly:Z

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->sharedFolderId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/FolderSharingInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v6
.end method

.method public withNoAccess(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    :goto_0
    return-object p0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 180
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->parentSharedFolderId:Ljava/lang/String;

    return-object p0
.end method

.method public withSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 202
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->sharedFolderId:Ljava/lang/String;

    return-object p0
.end method

.method public withTraverseOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    :goto_0
    return-object p0
.end method
