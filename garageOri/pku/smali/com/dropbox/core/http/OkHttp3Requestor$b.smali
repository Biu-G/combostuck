.class Lcom/dropbox/core/http/OkHttp3Requestor$b;
.super Lokhttp3/RequestBody;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 333
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 334
    new-instance v0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->writeTo(Lokio/BufferedSink;)V

    .line 359
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->close()V

    return-void
.end method
