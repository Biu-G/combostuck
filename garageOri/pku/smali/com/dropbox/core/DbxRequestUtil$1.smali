.class final Lcom/dropbox/core/DbxRequestUtil$1;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/DbxRequestUtil;->doGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker<",
        "TT;",
        "Lcom/dropbox/core/DbxException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/DbxRequestConfig;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:[Ljava/lang/String;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;


# direct methods
.method constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestUtil$1;->a:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/DbxRequestUtil$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/DbxRequestUtil$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/DbxRequestUtil$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dropbox/core/DbxRequestUtil$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/dropbox/core/DbxRequestUtil$1;->f:[Ljava/lang/String;

    iput-object p7, p0, Lcom/dropbox/core/DbxRequestUtil$1;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/dropbox/core/DbxRequestUtil$1;->h:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestUtil$1;->a:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestUtil$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestUtil$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestUtil$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxRequestUtil$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxRequestUtil$1;->f:[Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/DbxRequestUtil$1;->g:Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->startGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/core/DbxRequestUtil$1;->h:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 440
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 437
    :try_start_2
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    throw v1

    :catch_1
    move-exception v0

    .line 440
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
