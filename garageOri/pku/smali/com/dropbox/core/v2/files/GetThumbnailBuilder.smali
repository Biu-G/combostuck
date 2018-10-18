.class public Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final b:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 34
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    if-eqz p2, :cond_0

    .line 38
    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->b:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public start()Lcom/dropbox/core/DbxDownloader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->b:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->build()Lcom/dropbox/core/v2/files/ThumbnailArg;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->b:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/ThumbnailMode;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->b:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withMode(Lcom/dropbox/core/v2/files/ThumbnailMode;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    return-object p0
.end method

.method public withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;->b:Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    return-object p0
.end method
