.class Lcom/dropbox/core/v2/DbxRawClientV2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/v2/DbxRawClientV2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dropbox/core/v2/DbxRawClientV2$a<",
        "Lcom/dropbox/core/DbxDownloader<",
        "TResT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/dropbox/core/stone/StoneSerializer;

.field final synthetic f:Lcom/dropbox/core/stone/StoneSerializer;

.field final synthetic g:Lcom/dropbox/core/v2/DbxRawClientV2;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->g:Lcom/dropbox/core/v2/DbxRawClientV2;

    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->c:[B

    iput-object p5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->e:Lcom/dropbox/core/stone/StoneSerializer;

    iput-object p7, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->f:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/DbxRawClientV2$2;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$a;
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/v2/DbxRawClientV2$a<",
            "Lcom/dropbox/core/DbxDownloader<",
            "TResT;>;>;"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->b()Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/dropbox/core/DbxDownloader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader<",
            "TResT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->g:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-static {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->a(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    const-string v2, "OfficialDropboxJavaSDKv2"

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->c:[B

    iget-object v6, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->d:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v1

    .line 176
    :try_start_0
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    const/16 v3, 0xce

    if-eq v2, v3, :cond_1

    const/16 v3, 0x199

    if-eq v2, v3, :cond_0

    .line 197
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->f:Lcom/dropbox/core/stone/StoneSerializer;

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->h:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/dropbox/core/DbxWrappedException;->fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v0

    throw v0

    .line 180
    :cond_1
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "dropbox-api-result"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 184
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 187
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 192
    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->e:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v3, v2}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    new-instance v3, Lcom/dropbox/core/DbxDownloader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/dropbox/core/DbxDownloader;-><init>(Ljava/lang/Object;Ljava/io/InputStream;)V

    return-object v3

    .line 189
    :cond_2
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null Dropbox-API-Result header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_3
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Dropbox-API-Result header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_4
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing Dropbox-API-Result header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v0

    .line 200
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
