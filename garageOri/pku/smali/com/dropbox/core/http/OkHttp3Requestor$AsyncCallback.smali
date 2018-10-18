.class public final Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncCallback"
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/http/OkHttp3Requestor$b;

.field private b:Ljava/io/IOException;

.field private c:Lokhttp3/Response;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor$b;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->a:Lcom/dropbox/core/http/OkHttp3Requestor$b;

    const/4 p1, 0x0

    .line 297
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->b:Ljava/io/IOException;

    .line 298
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->c:Lokhttp3/Response;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor$b;Lcom/dropbox/core/http/OkHttp3Requestor$1;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$b;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getResponse()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 302
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->b:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->c:Lokhttp3/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 304
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 307
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->b:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->c:Lokhttp3/Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 311
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->b:Ljava/io/IOException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 301
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    monitor-enter p0

    .line 318
    :try_start_0
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->b:Ljava/io/IOException;

    .line 319
    iget-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->a:Lcom/dropbox/core/http/OkHttp3Requestor$b;

    invoke-virtual {p1}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->close()V

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 317
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 325
    :try_start_0
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->c:Lokhttp3/Response;

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 324
    monitor-exit p0

    throw p1
.end method
