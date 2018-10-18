.class Lcom/dropbox/core/http/OkHttp3Requestor$a;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/http/OkHttp3Requestor;

.field private final b:Ljava/lang/String;

.field private final c:Lokhttp3/Request$Builder;

.field private d:Lokhttp3/RequestBody;

.field private e:Lokhttp3/Call;

.field private f:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Lokhttp3/Request$Builder;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->b:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->c:Lokhttp3/Request$Builder;

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    .line 194
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->e:Lokhttp3/Call;

    .line 195
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->f:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->g:Z

    .line 198
    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->h:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request body already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lokhttp3/RequestBody;)V
    .locals 2

    .line 226
    invoke-direct {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a()V

    .line 227
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->c:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 229
    iget-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a:Lcom/dropbox/core/http/OkHttp3Requestor;

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->c:Lokhttp3/Request$Builder;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->configureRequest(Lokhttp3/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->e:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->e:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->h:Z

    .line 260
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$a;->close()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->g:Z

    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->h:Z

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 269
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$a;->upload([B)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->f:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    if-eqz v0, :cond_1

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$a;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->f:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->getResponse()Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->a(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->c:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->e:Lokhttp3/Call;

    .line 282
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->e:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->interceptResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->a(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v1

    .line 286
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    .line 266
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    instance-of v0, v0, Lcom/dropbox/core/http/OkHttp3Requestor$b;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->d:Lokhttp3/RequestBody;

    check-cast v0, Lcom/dropbox/core/http/OkHttp3Requestor$b;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttp3Requestor$b;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;-><init>()V

    .line 215
    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a(Lokhttp3/RequestBody;)V

    .line 217
    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$b;Lcom/dropbox/core/http/OkHttp3Requestor$1;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->f:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    .line 218
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->a(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->c:Lokhttp3/Request$Builder;

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->e:Lokhttp3/Call;

    .line 220
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->e:Lokhttp3/Call;

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$a;->f:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 221
    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a(Lokhttp3/RequestBody;)V

    return-void
.end method

.method public upload([B)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$a;->a(Lokhttp3/RequestBody;)V

    return-void
.end method
