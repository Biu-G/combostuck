.class Lcom/dropbox/core/v1/DbxClientV1$a$2;
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
        "Ljava/lang/Long;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/dropbox/core/v1/DbxClientV1$a;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$a;Ljava/lang/String;I)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->c:Lcom/dropbox/core/v1/DbxClientV1$a;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->b:I

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1390
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->c:Lcom/dropbox/core/v1/DbxClientV1$a;

    iget-object v1, v0, Lcom/dropbox/core/v1/DbxClientV1$a;->b:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->c:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$a;->e(Lcom/dropbox/core/v1/DbxClientV1$a;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->c:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$a;->c(Lcom/dropbox/core/v1/DbxClientV1$a;)[B

    move-result-object v5

    iget v6, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->b:I

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->c:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$a;->b(Lcom/dropbox/core/v1/DbxClientV1$a;)I

    move-result v0

    iget v7, p0, Lcom/dropbox/core/v1/DbxClientV1$a$2;->b:I

    sub-int v7, v0, v7

    invoke-virtual/range {v1 .. v7}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadAppend(Ljava/lang/String;J[BII)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    .line 1388
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$a$2;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
