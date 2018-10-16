.class public Lcom/dropbox/core/DbxWebAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$Request;,
        Lcom/dropbox/core/DbxWebAuth$ProviderException;,
        Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
        Lcom/dropbox/core/DbxWebAuth$CsrfException;,
        Lcom/dropbox/core/DbxWebAuth$BadStateException;,
        Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
        Lcom/dropbox/core/DbxWebAuth$Exception;
    }
.end annotation


# static fields
.field public static final ROLE_PERSONAL:Ljava/lang/String; = "personal"

.field public static final ROLE_WORK:Ljava/lang/String; = "work"

.field private static final a:Ljava/security/SecureRandom;

.field private static final b:I


# instance fields
.field private final c:Lcom/dropbox/core/DbxRequestConfig;

.field private final d:Lcom/dropbox/core/DbxAppInfo;

.field private final e:Lcom/dropbox/core/DbxWebAuth$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxWebAuth;->a:Ljava/security/SecureRandom;

    const/16 v0, 0x10

    .line 140
    new-array v0, v0, [B

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->urlSafeBase64Encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/DbxWebAuth;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 187
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->c:Lcom/dropbox/core/DbxRequestConfig;

    .line 188
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->d:Lcom/dropbox/core/DbxAppInfo;

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    return-void

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "appInfo"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 168
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->c:Lcom/dropbox/core/DbxRequestConfig;

    .line 169
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->d:Lcom/dropbox/core/DbxAppInfo;

    .line 170
    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->newRequestBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p3, p4}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->withRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->build()Lcom/dropbox/core/DbxWebAuth$Request;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    return-void

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "appInfo"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()I
    .locals 1

    .line 137
    sget v0, Lcom/dropbox/core/DbxWebAuth;->b:I

    return v0
.end method

.method private a(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    .line 390
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    .line 391
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "locale"

    .line 392
    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->c:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "redirect_uri"

    .line 395
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 399
    iget-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->d:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->d:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {p2}, Lcom/dropbox/core/DbxAppInfo;->getSecret()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 401
    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->c:Lcom/dropbox/core/DbxRequestConfig;

    const-string v2, "OfficialDropboxJavaSDKv2"

    iget-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->d:Lcom/dropbox/core/DbxAppInfo;

    .line 404
    invoke-virtual {p1}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oauth2/token"

    .line 406
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/dropbox/core/DbxWebAuth$1;

    invoke-direct {v7, p0, p3}, Lcom/dropbox/core/DbxWebAuth$1;-><init>(Lcom/dropbox/core/DbxWebAuth;Ljava/lang/String;)V

    .line 401
    invoke-static/range {v1 .. v7}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/DbxAuthFinish;

    return-object p1

    .line 387
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 3

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "client_id"

    .line 259
    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth;->d:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response_type"

    const-string v2, "code"

    .line 260
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "redirect_uri"

    .line 263
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    .line 264
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth;->b(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->b(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "require_role"

    .line 268
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->b(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->c(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "force_reapprove"

    .line 271
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->c(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->d(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "disable_signup"

    .line 274
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->d(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_3
    iget-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->c:Lcom/dropbox/core/DbxRequestConfig;

    .line 278
    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->d:Lcom/dropbox/core/DbxAppInfo;

    .line 279
    invoke-virtual {v1}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getWeb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth2/authorize"

    .line 281
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {p1, v1, v2, v0}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWebAuth$CsrfException;,
            Lcom/dropbox/core/DbxWebAuth$BadStateException;
        }
    .end annotation

    .line 482
    invoke-interface {p1}, Lcom/dropbox/core/DbxSessionStore;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/dropbox/core/DbxWebAuth;->b:I

    if-lt v1, v2, :cond_3

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/dropbox/core/DbxWebAuth;->b:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 494
    sget v2, Lcom/dropbox/core/DbxWebAuth;->b:I

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v0, v1}, Lcom/dropbox/core/util/StringUtil;->secureStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    sget v0, Lcom/dropbox/core/DbxWebAuth;->b:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 501
    invoke-interface {p1}, Lcom/dropbox/core/DbxSessionStore;->clear()V

    .line 503
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 496
    :cond_1
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$CsrfException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expecting "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$CsrfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :cond_2
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$CsrfException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/dropbox/core/DbxWebAuth$CsrfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_3
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token retrieved from session store is too small: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :cond_4
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadStateException;

    const-string p1, "No CSRF Token loaded from session store."

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWebAuth$BadRequestException;
        }
    .end annotation

    .line 507
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 511
    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 513
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 514
    aget-object p0, p0, p1

    return-object p0

    .line 516
    :cond_1
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multiple occurrences of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" parameter"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 512
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" missing value."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    .line 457
    new-array v0, v0, [B

    .line 458
    sget-object v1, Lcom/dropbox/core/DbxWebAuth;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 459
    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->urlSafeBase64Encode([B)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/dropbox/core/DbxWebAuth;->b:I

    if-ne v1, v2, :cond_3

    .line 465
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->e(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->e(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dropbox/core/DbxSessionStore;->set(Ljava/lang/String;)V

    .line 469
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->f(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 472
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->f(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 473
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_2

    return-object p0

    .line 474
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected combined state length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 462
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected CSRF token length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static newRequestBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 1

    .line 611
    invoke-static {}, Lcom/dropbox/core/DbxWebAuth$Request;->newBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public authorize(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must create this instance using DbxWebAuth(DbxRequestConfig,DbxAppInfo) to call this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finish(Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/DbxAuthFinish;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
            Lcom/dropbox/core/DbxWebAuth$BadStateException;,
            Lcom/dropbox/core/DbxWebAuth$CsrfException;,
            Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
            Lcom/dropbox/core/DbxWebAuth$ProviderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 449
    invoke-static {v0}, Lcom/dropbox/core/DbxWebAuth$Request;->a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 450
    invoke-static {v1}, Lcom/dropbox/core/DbxWebAuth$Request;->e(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    move-result-object v1

    .line 448
    invoke-virtual {p0, v0, v1, p1}, Lcom/dropbox/core/DbxWebAuth;->finishFromRedirect(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    return-object p1

    .line 446
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must use DbxWebAuth.finishFromRedirect(..) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finishFromCode(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    return-object p1
.end method

.method public finishFromCode(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    return-object p1
.end method

.method public finishFromRedirect(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/DbxSessionStore;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/DbxAuthFinish;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
            Lcom/dropbox/core/DbxWebAuth$BadStateException;,
            Lcom/dropbox/core/DbxWebAuth$CsrfException;,
            Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
            Lcom/dropbox/core/DbxWebAuth$ProviderException;
        }
    .end annotation

    if-eqz p1, :cond_d

    if-eqz p2, :cond_c

    if-eqz p3, :cond_b

    const-string v0, "state"

    .line 342
    invoke-static {p3, v0}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "error"

    .line 347
    invoke-static {p3, v1}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    .line 348
    invoke-static {p3, v2}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_description"

    .line 349
    invoke-static {p3, v3}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string p2, "Missing both \"code\" and \"error\"."

    invoke-direct {p1, p2}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 355
    :cond_2
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string p2, "Both \"code\" and \"error\" are set."

    invoke-direct {p1, p2}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    if-nez p3, :cond_4

    goto :goto_2

    .line 358
    :cond_4
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string p2, "Both \"code\" and \"error_description\" are set."

    invoke-direct {p1, p2}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_5
    :goto_2
    invoke-static {v0, p2}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_9

    const-string p1, "access_denied"

    .line 364
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_6

    const-string p1, "No additional description from Dropbox"

    goto :goto_3

    .line 366
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Additional description from Dropbox: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 369
    :goto_3
    new-instance p2, Lcom/dropbox/core/DbxWebAuth$NotApprovedException;

    invoke-direct {p2, p1}, Lcom/dropbox/core/DbxWebAuth$NotApprovedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x2

    .line 372
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "%s: %s"

    .line 374
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 375
    :goto_4
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$ProviderException;

    invoke-direct {p1, v1}, Lcom/dropbox/core/DbxWebAuth$ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_9
    invoke-direct {p0, v2, p1, p2}, Lcom/dropbox/core/DbxWebAuth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    return-object p1

    .line 344
    :cond_a
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string p2, "Missing required parameter: \"state\"."

    invoke-direct {p1, p2}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "params"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sessionStore"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "redirectUri"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->e:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 221
    invoke-virtual {v0}, Lcom/dropbox/core/DbxWebAuth$Request;->copy()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->withState(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->build()Lcom/dropbox/core/DbxWebAuth$Request;

    move-result-object p1

    .line 220
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 217
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must use DbxWebAuth.authorize instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
