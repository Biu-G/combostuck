.class public Lcom/dropbox/core/v2/files/DownloadZipBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<",
        "Lcom/dropbox/core/v2/files/DownloadZipResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lcom/dropbox/core/v2/files/DownloadZipBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 40
    iput-object p2, p0, Lcom/dropbox/core/v2/files/DownloadZipBuilder;->b:Ljava/lang/String;

    return-void

    .line 37
    :cond_0
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
            "Lcom/dropbox/core/v2/files/DownloadZipResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadZipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/files/d;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DownloadZipBuilder;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/d;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/dropbox/core/v2/files/DownloadZipBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/DownloadZipBuilder;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a(Lcom/dropbox/core/v2/files/d;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method
