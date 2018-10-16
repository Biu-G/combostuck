.class final Lcom/dropbox/core/v1/DbxClientV1$e;
.super Lcom/dropbox/core/v1/DbxClientV1$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

.field private final b:J

.field private final c:Lcom/dropbox/core/util/CountingOutputStream;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;J)V
    .locals 2

    .line 768
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 773
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 774
    iput-wide p2, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->b:J

    .line 775
    new-instance p2, Lcom/dropbox/core/util/CountingOutputStream;

    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/dropbox/core/util/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->c:Lcom/dropbox/core/util/CountingOutputStream;

    return-void

    .line 770
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'numBytes\' must be greater than or equal to 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    const/4 v1, 0x0

    .line 792
    iput-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 794
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->abort()V

    return-void

    .line 789
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called \'finish\', \'abort\', or \'close\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$e;->abort()V

    return-void
.end method

.method public finish()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    const/4 v1, 0x0

    .line 822
    iput-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->c:Lcom/dropbox/core/util/CountingOutputStream;

    invoke-virtual {v1}, Lcom/dropbox/core/util/CountingOutputStream;->getBytesWritten()J

    move-result-wide v1

    .line 830
    iget-wide v3, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->b:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 836
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->finish()Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    .line 848
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$e$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/dropbox/core/v1/DbxClientV1$e$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1$e;J)V

    invoke-static {v3, v0}, Lcom/dropbox/core/DbxRequestUtil;->finishResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

    return-object v0

    .line 831
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->abort()V

    .line 832
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You said you were going to upload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes, but you wrote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes to the Uploader\'s \'body\' stream."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 839
    :try_start_2
    new-instance v2, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v2, v1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    :goto_0
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    .line 843
    throw v1

    .line 819
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called \'finish\', \'abort\', or \'close\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$e;->c:Lcom/dropbox/core/util/CountingOutputStream;

    return-object v0
.end method
