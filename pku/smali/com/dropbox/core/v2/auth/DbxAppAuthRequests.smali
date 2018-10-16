.class public Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method


# virtual methods
.method a(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->a:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/auth/token/from_oauth1"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/auth/a$a;->a:Lcom/dropbox/core/v2/auth/a$a;

    sget-object v6, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result$a;->a:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result$a;

    sget-object v7, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error$a;->a:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error$a;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    const-string v3, "2/auth/token/from_oauth1"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;)V

    throw v0
.end method

.method public tokenFromOauth1(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/auth/TokenFromOAuth1ErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/auth/a;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/auth/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/auth/DbxAppAuthRequests;->a(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Result;

    move-result-object p1

    return-object p1
.end method
