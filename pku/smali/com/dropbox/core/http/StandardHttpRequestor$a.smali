.class Lcom/dropbox/core/http/StandardHttpRequestor$a;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/StandardHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/http/StandardHttpRequestor;

.field private final b:Ljava/io/OutputStream;

.field private c:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->a:Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    .line 133
    invoke-static {p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->b:Ljava/io/OutputStream;

    .line 135
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t abort().  Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->a:Lcom/dropbox/core/http/StandardHttpRequestor;

    iget-object v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    invoke-static {v1, v2}, Lcom/dropbox/core/http/StandardHttpRequestor;->a(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    return-object v1

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->c:Ljava/net/HttpURLConnection;

    .line 181
    throw v1

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t finish().  Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$a;->b:Ljava/io/OutputStream;

    return-object v0
.end method
