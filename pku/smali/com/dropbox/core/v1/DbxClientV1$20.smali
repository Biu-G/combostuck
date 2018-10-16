.class Lcom/dropbox/core/v1/DbxClientV1$20;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v1/DbxClientV1;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker<",
        "Lcom/dropbox/core/v1/DbxClientV1$Downloader;",
        "Lcom/dropbox/core/DbxException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/dropbox/core/v1/DbxClientV1;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->d:Lcom/dropbox/core/v1/DbxClientV1;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->c:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->d:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1;->a(Lcom/dropbox/core/v1/DbxClientV1;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->d:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1;->b(Lcom/dropbox/core/v1/DbxClientV1;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dropbox-Java-SDK"

    iget-object v4, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v1/DbxClientV1$20;->c:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/dropbox/core/DbxRequestUtil;->startGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    .line 487
    :try_start_0
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 510
    :try_start_1
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    .line 488
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    const-string v1, "x-dropbox-metadata"

    .line 490
    invoke-static {v0, v1}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeader(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    :try_start_3
    sget-object v2, Lcom/dropbox/core/v1/DbxEntry$File;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v2, v1}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v1/DbxEntry$File;
    :try_end_3
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    :try_start_4
    new-instance v2, Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/dropbox/core/v1/DbxClientV1$Downloader;-><init>(Lcom/dropbox/core/v1/DbxEntry$File;Ljava/io/InputStream;)V

    return-object v2

    :catch_1
    move-exception v1

    .line 496
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v2

    .line 497
    new-instance v3, Lcom/dropbox/core/BadResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad JSON in X-Dropbox-Metadata header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/dropbox/core/json/JsonReadException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 488
    :cond_1
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    .line 510
    :try_start_5
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 517
    :catch_2
    throw v1
.end method

.method public synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$20;->a()Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    move-result-object v0

    return-object v0
.end method
