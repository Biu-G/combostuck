.class public Lcom/dropbox/core/DbxDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Ljava/io/InputStream;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dropbox/core/DbxDownloader;->a:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/dropbox/core/DbxDownloader;->b:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/dropbox/core/DbxDownloader;->c:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This downloader is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->c:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->c:Z

    :cond_0
    return-void
.end method

.method public download(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$WriteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->close()V

    .line 120
    iget-object p1, p0, Lcom/dropbox/core/DbxDownloader;->a:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    :try_start_1
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lcom/dropbox/core/util/IOUtil$WriteException;->getCause()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->close()V

    .line 118
    throw p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/dropbox/core/DbxDownloader;->a()V

    .line 76
    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->a:Ljava/lang/Object;

    return-object v0
.end method
