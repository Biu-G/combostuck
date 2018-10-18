.class Lcom/dropbox/core/v1/DbxClientV1$a$1;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v1/DbxClientV1$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker<",
        "Ljava/lang/String;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/v1/DbxClientV1$a;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$a;)V
    .locals 0

    .line 1376
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$a$1;->a:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a$1;->a:Lcom/dropbox/core/v1/DbxClientV1$a;

    iget-object v0, v0, Lcom/dropbox/core/v1/DbxClientV1$a;->b:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a$1;->a:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v1}, Lcom/dropbox/core/v1/DbxClientV1$a;->c(Lcom/dropbox/core/v1/DbxClientV1$a;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$a$1;->a:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v2}, Lcom/dropbox/core/v1/DbxClientV1$a;->b(Lcom/dropbox/core/v1/DbxClientV1$a;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadFirst([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1376
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$a$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
