.class final Lcom/dropbox/core/v2/DbxAppClientV2$a;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/DbxAppClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    .line 75
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxAppClientV2$a;->a:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxAppClientV2$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/DbxAppClientV2$1;)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/v2/DbxAppClientV2$a;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxAppClientV2$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxAppClientV2$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/dropbox/core/DbxRequestUtil;->addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method protected withPathRoot(Lcom/dropbox/core/v2/common/PathRoot;)Lcom/dropbox/core/v2/DbxRawClientV2;
    .locals 1

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "App endpoints don\'t support Dropbox-API-Path-Root header."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
