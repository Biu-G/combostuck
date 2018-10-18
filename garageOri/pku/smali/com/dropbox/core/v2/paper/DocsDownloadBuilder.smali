.class public Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder<",
        "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/dropbox/core/v2/paper/ExportFormat;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    .line 40
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->c:Lcom/dropbox/core/v2/paper/ExportFormat;

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
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/paper/f;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->c:Lcom/dropbox/core/v2/paper/ExportFormat;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/f;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    .line 47
    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->a:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->a(Lcom/dropbox/core/v2/paper/f;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method
