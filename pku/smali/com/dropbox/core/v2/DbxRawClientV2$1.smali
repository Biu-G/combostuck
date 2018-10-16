.class Lcom/dropbox/core/v2/DbxRawClientV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/v2/DbxRawClientV2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dropbox/core/v2/DbxRawClientV2$a<",
        "TResT;>;"
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

    .line 116
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->g:Lcom/dropbox/core/v2/DbxRawClientV2;

    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->c:[B

    iput-object p5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->e:Lcom/dropbox/core/stone/StoneSerializer;

    iput-object p7, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->f:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/DbxRawClientV2$1;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$a;
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/DbxRawClientV2$1;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$a;

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
            "TResT;>;"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->g:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-static {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->a(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    const-string v2, "OfficialDropboxJavaSDKv2"

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->c:[B

    iget-object v6, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->d:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    .line 123
    :try_start_0
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x199

    if-eq v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxException;

    move-result-object v1

    throw v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->f:Lcom/dropbox/core/stone/StoneSerializer;

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->h:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/dropbox/core/DbxWrappedException;->fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v1

    throw v1

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$1;->e:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v1

    .line 132
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
