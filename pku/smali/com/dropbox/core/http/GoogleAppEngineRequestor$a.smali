.class Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/GoogleAppEngineRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/appengine/api/urlfetch/URLFetchService;

.field private final b:Ljava/io/ByteArrayOutputStream;

.field private c:Lcom/google/appengine/api/urlfetch/HTTPRequest;


# direct methods
.method public constructor <init>(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->a:Lcom/google/appengine/api/urlfetch/URLFetchService;

    .line 135
    iput-object p2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    .line 136
    iput-object p3, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->close()V

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    :cond_0
    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    iget-object v1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->setPayload([B)V

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->a:Lcom/google/appengine/api/urlfetch/URLFetchService;

    iget-object v1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    invoke-interface {v0, v1}, Lcom/google/appengine/api/urlfetch/URLFetchService;->fetch(Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->a(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->close()V

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
