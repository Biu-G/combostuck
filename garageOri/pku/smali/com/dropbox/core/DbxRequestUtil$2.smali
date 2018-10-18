.class final Lcom/dropbox/core/DbxRequestUtil$2;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
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

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;


# direct methods
.method constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestUtil$2;->a:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/DbxRequestUtil$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/DbxRequestUtil$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/DbxRequestUtil$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dropbox/core/DbxRequestUtil$2;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/dropbox/core/DbxRequestUtil$2;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/dropbox/core/DbxRequestUtil$2;->g:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6
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

    .line 472
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestUtil$2;->a:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestUtil$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestUtil$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestUtil$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxRequestUtil$2;->e:[Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxRequestUtil$2;->f:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestUtil;->startPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/dropbox/core/DbxRequestUtil$2;->g:Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;

    invoke-static {v0, v1}, Lcom/dropbox/core/DbxRequestUtil;->finishResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
