.class public abstract Lcom/dropbox/core/DbxUploader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "X:",
        "Lcom/dropbox/core/DbxApiException;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

.field private final b:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TE;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private final f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TR;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/dropbox/core/DbxUploader;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    .line 57
    iput-object p2, p0, Lcom/dropbox/core/DbxUploader;->b:Lcom/dropbox/core/stone/StoneSerializer;

    .line 58
    iput-object p3, p0, Lcom/dropbox/core/DbxUploader;->c:Lcom/dropbox/core/stone/StoneSerializer;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/dropbox/core/DbxUploader;->d:Z

    .line 61
    iput-boolean p1, p0, Lcom/dropbox/core/DbxUploader;->e:Z

    .line 62
    iput-object p4, p0, Lcom/dropbox/core/DbxUploader;->f:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->d:Z

    if-nez v0, :cond_1

    .line 249
    iget-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This uploader is already finished and cannot be used to upload more data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This uploader is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/dropbox/core/DbxUploader;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->abort()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->d:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/dropbox/core/DbxUploader;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->d:Z

    :cond_0
    return-void
.end method

.method public finish()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TX;^",
            "Lcom/dropbox/core/DbxException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/dropbox/core/DbxUploader;->a()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/core/DbxUploader;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->finish()Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    .line 221
    iget-object v1, p0, Lcom/dropbox/core/DbxUploader;->b:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    :cond_0
    iput-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->e:Z

    return-object v1

    .line 223
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    const/16 v3, 0x199

    if-ne v1, v3, :cond_2

    .line 224
    iget-object v1, p0, Lcom/dropbox/core/DbxUploader;->c:Lcom/dropbox/core/stone/StoneSerializer;

    iget-object v3, p0, Lcom/dropbox/core/DbxUploader;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/dropbox/core/DbxWrappedException;->fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v1

    .line 225
    invoke-virtual {p0, v1}, Lcom/dropbox/core/DbxUploader;->newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;

    move-result-object v1

    throw v1

    .line 228
    :cond_2
    invoke-static {v2}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 231
    :try_start_3
    invoke-static {v2}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v3

    .line 232
    new-instance v4, Lcom/dropbox/core/BadResponseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad JSON in response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 235
    :goto_0
    :try_start_4
    new-instance v3, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v3, v1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v2, :cond_3

    .line 239
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    :cond_3
    iput-boolean v0, p0, Lcom/dropbox/core/DbxUploader;->e:Z

    .line 242
    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/dropbox/core/DbxUploader;->a()V

    .line 197
    iget-object v0, p0, Lcom/dropbox/core/DbxUploader;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newException(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxWrappedException;",
            ")TX;"
        }
    .end annotation
.end method

.method public uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TR;^TX;^",
            "Lcom/dropbox/core/DbxException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/DbxUploader;->a:Lcom/dropbox/core/http/HttpRequestor$Uploader;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lcom/dropbox/core/DbxUploader;->finish()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {p0}, Lcom/dropbox/core/DbxUploader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    :try_start_2
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 100
    invoke-virtual {p1}, Lcom/dropbox/core/util/IOUtil$ReadException;->getCause()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxUploader;->close()V

    .line 109
    throw p1
.end method

.method public uploadAndFinish(Ljava/io/InputStream;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J)TR;^TX;^",
            "Lcom/dropbox/core/DbxException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/util/IOUtil;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxUploader;->uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
