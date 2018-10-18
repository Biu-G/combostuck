.class Lcom/dropbox/core/http/OkHttpRequestor$a;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/http/OkHttpRequestor;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/squareup/okhttp/Request$Builder;

.field private d:Lcom/squareup/okhttp/RequestBody;

.field private e:Lcom/squareup/okhttp/Call;

.field private f:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttpRequestor;Ljava/lang/String;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->a:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->b:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->c:Lcom/squareup/okhttp/Request$Builder;

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    .line 184
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->e:Lcom/squareup/okhttp/Call;

    .line 185
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->f:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->g:Z

    .line 188
    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->h:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request body already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/squareup/okhttp/RequestBody;)V
    .locals 2

    .line 216
    invoke-direct {p0}, Lcom/dropbox/core/http/OkHttpRequestor$a;->a()V

    .line 217
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    .line 218
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->c:Lcom/squareup/okhttp/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 219
    iget-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->a:Lcom/dropbox/core/http/OkHttpRequestor;

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->c:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->configureRequest(Lcom/squareup/okhttp/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->e:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->e:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->h:Z

    .line 250
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$a;->close()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->g:Z

    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->h:Z

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 259
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$a;->upload([B)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->f:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    if-eqz v0, :cond_1

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$a;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :catch_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->f:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->a:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpRequestor;->a(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->c:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->e:Lcom/squareup/okhttp/Call;

    .line 272
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->e:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->a:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->interceptResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttpRequestor;->a(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v1

    .line 276
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    instance-of v0, v0, Lcom/dropbox/core/http/OkHttpRequestor$b;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->d:Lcom/squareup/okhttp/RequestBody;

    check-cast v0, Lcom/dropbox/core/http/OkHttpRequestor$b;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$b;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttpRequestor$b;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpRequestor$b;-><init>()V

    .line 205
    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$a;->a(Lcom/squareup/okhttp/RequestBody;)V

    .line 207
    new-instance v1, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttpRequestor$1;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->f:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    .line 208
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->a:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttpRequestor;->a(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->c:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->e:Lcom/squareup/okhttp/Call;

    .line 210
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->e:Lcom/squareup/okhttp/Call;

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttpRequestor$a;->f:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 211
    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$b;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/http/OkHttpRequestor$a;->a(Lcom/squareup/okhttp/RequestBody;)V

    return-void
.end method

.method public upload([B)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/http/OkHttpRequestor$a;->a(Lcom/squareup/okhttp/RequestBody;)V

    return-void
.end method
