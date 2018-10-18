.class public Lcom/dropbox/core/v2/files/UploadBuilder;
.super Lcom/dropbox/core/v2/DbxUploadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxUploadStyleBuilder<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        "Lcom/dropbox/core/v2/files/UploadError;",
        "Lcom/dropbox/core/v2/files/UploadErrorException;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfo$Builder;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxUploadStyleBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 37
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    .line 41
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic start()Lcom/dropbox/core/DbxUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/UploadBuilder;->start()Lcom/dropbox/core/v2/files/UploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/UploadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->build()Lcom/dropbox/core/v2/files/CommitInfo;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/UploadBuilder;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadBuilder;->b:Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    return-object p0
.end method
