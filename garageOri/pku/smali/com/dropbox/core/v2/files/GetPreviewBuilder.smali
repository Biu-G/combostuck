.class public Lcom/dropbox/core/v2/files/GetPreviewBuilder;
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

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 41
    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->c:Ljava/lang/String;

    return-void

    .line 38
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
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/j;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->a:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->a(Lcom/dropbox/core/v2/files/j;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public withRev(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetPreviewBuilder;
    .locals 2

    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    .line 62
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'rev\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'rev\' is shorter than 9"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->c:Ljava/lang/String;

    return-object p0
.end method
