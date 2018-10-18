.class final Lcom/dropbox/core/v2/DbxClientV2$a;
.super Lcom/dropbox/core/v2/DbxRawClientV2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/DbxClientV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/DbxRawClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    if-eqz p2, :cond_0

    .line 126
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxClientV2$a;->a:Ljava/lang/String;

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "accessToken"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addAuthHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method protected withPathRoot(Lcom/dropbox/core/v2/common/PathRoot;)Lcom/dropbox/core/v2/DbxRawClientV2;
    .locals 7

    .line 136
    new-instance v6, Lcom/dropbox/core/v2/DbxClientV2$a;

    .line 137
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxClientV2$a;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxClientV2$a;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxClientV2$a;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v3

    .line 140
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxClientV2$a;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxClientV2$a;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V

    return-object v6
.end method
