.class public Lorg/xutils/http/RequestParams;
.super Lorg/xutils/http/BaseParams;
.source "SourceFile"


# instance fields
.field private a:Lorg/xutils/http/annotation/HttpRequest;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Lorg/xutils/http/app/ParamsBuilder;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljavax/net/ssl/SSLSocketFactory;

.field private i:Ljava/net/Proxy;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Ljava/util/concurrent/Executor;

.field private o:Lorg/xutils/common/task/Priority;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:I

.field private w:Lorg/xutils/http/app/HttpRetryHandler;

.field private x:Lorg/xutils/http/app/RedirectHandler;

.field private y:Lorg/xutils/http/app/RequestTracker;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xutils/http/app/ParamsBuilder;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lorg/xutils/http/BaseParams;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->j:Z

    .line 42
    sget-object v1, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->o:Lorg/xutils/common/task/Priority;

    const/16 v1, 0x3a98

    .line 43
    iput v1, p0, Lorg/xutils/http/RequestParams;->p:I

    .line 44
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->q:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->r:Z

    const/4 v1, 0x2

    .line 46
    iput v1, p0, Lorg/xutils/http/RequestParams;->s:I

    .line 48
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->u:Z

    const/16 v1, 0x12c

    .line 49
    iput v1, p0, Lorg/xutils/http/RequestParams;->v:I

    .line 360
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->z:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Lorg/xutils/http/app/DefaultParamsBuilder;

    invoke-direct {p2}, Lorg/xutils/http/app/DefaultParamsBuilder;-><init>()V

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->b:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lorg/xutils/http/RequestParams;->c:[Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lorg/xutils/http/RequestParams;->d:[Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    return-void
.end method

.method private b()V
    .locals 2

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/RequestParams$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/RequestParams$1;-><init>(Lorg/xutils/http/RequestParams;)V

    invoke-static {p0, v0, v1}, Lorg/xutils/http/a;->a(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/a$a;)V

    return-void
.end method

.method private c()Lorg/xutils/http/annotation/HttpRequest;
    .locals 2

    .line 363
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->a:Lorg/xutils/http/annotation/HttpRequest;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lorg/xutils/http/RequestParams;->z:Z

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 366
    const-class v1, Lorg/xutils/http/RequestParams;

    if-eq v0, v1, :cond_0

    .line 367
    const-class v1, Lorg/xutils/http/annotation/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpRequest;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->a:Lorg/xutils/http/annotation/HttpRequest;

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->a:Lorg/xutils/http/annotation/HttpRequest;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->c()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uri is empty && @HttpRequest == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->b()V

    .line 96
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->f:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->c()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->builder()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/app/ParamsBuilder;

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    .line 100
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildUri(Lorg/xutils/http/RequestParams;Lorg/xutils/http/annotation/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/RequestParams;->f:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v1, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 102
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->signs()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->h:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 104
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->h:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    .line 106
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;)V

    .line 108
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->c:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->h:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 110
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/app/ParamsBuilder;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->h:Ljavax/net/ssl/SSLSocketFactory;

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic clearParams()V
    .locals 0

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->clearParams()V

    return-void
.end method

.method public bridge synthetic getBodyContent()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getBodyContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBodyParams()Ljava/util/List;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getBodyParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDirName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lorg/xutils/http/RequestParams;->c()Lorg/xutils/http/annotation/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpRequest;->cacheKeys()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->g:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->e:Lorg/xutils/http/app/ParamsBuilder;

    iget-object v1, p0, Lorg/xutils/http/RequestParams;->d:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/http/app/ParamsBuilder;->buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/RequestParams;->g:Ljava/lang/String;

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMaxAge()J
    .locals 2

    .line 205
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->m:J

    return-wide v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 192
    iget-wide v0, p0, Lorg/xutils/http/RequestParams;->l:J

    return-wide v0
.end method

.method public bridge synthetic getCharset()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/xutils/http/RequestParams;->p:I

    return v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->n:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public bridge synthetic getFileParams()Ljava/util/List;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getFileParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/List;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->w:Lorg/xutils/http/app/HttpRetryHandler;

    return-object v0
.end method

.method public getLoadingUpdateMaxTimeSpan()I
    .locals 1

    .line 310
    iget v0, p0, Lorg/xutils/http/RequestParams;->v:I

    return v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .line 284
    iget v0, p0, Lorg/xutils/http/RequestParams;->s:I

    return v0
.end method

.method public bridge synthetic getMethod()Lorg/xutils/http/HttpMethod;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParams(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->getParams(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->o:Lorg/xutils/common/task/Priority;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->i:Ljava/net/Proxy;

    return-object v0
.end method

.method public bridge synthetic getQueryStringParams()Ljava/util/List;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->x:Lorg/xutils/http/app/RedirectHandler;

    return-object v0
.end method

.method public bridge synthetic getRequestBody()Lorg/xutils/http/body/RequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getRequestBody()Lorg/xutils/http/body/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTracker()Lorg/xutils/http/app/RequestTracker;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->y:Lorg/xutils/http/app/RequestTracker;

    return-object v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->h:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public bridge synthetic getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStringParams()Ljava/util/List;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->getStringParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/http/RequestParams;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/RequestParams;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic isAsJsonContent()Z
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->isAsJsonContent()Z

    move-result v0

    return v0
.end method

.method public isAutoRename()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->r:Z

    return v0
.end method

.method public isAutoResume()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->q:Z

    return v0
.end method

.method public isCancelFast()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->u:Z

    return v0
.end method

.method public bridge synthetic isMultipart()Z
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->isMultipart()Z

    move-result v0

    return v0
.end method

.method public isUseCookie()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/xutils/http/RequestParams;->j:Z

    return v0
.end method

.method public bridge synthetic removeParameter(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->removeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAsJsonContent(Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setAsJsonContent(Z)V

    return-void
.end method

.method public setAutoRename(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->r:Z

    return-void
.end method

.method public setAutoResume(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->q:Z

    return-void
.end method

.method public bridge synthetic setBodyContent(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setBodyContent(Ljava/lang/String;)V

    return-void
.end method

.method public setCacheDirName(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->k:Ljava/lang/String;

    return-void
.end method

.method public setCacheMaxAge(J)V
    .locals 0

    .line 214
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->m:J

    return-void
.end method

.method public setCacheSize(J)V
    .locals 0

    .line 196
    iput-wide p1, p0, Lorg/xutils/http/RequestParams;->l:J

    return-void
.end method

.method public setCancelFast(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->u:Z

    return-void
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setCharset(Ljava/lang/String;)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 179
    iput p1, p0, Lorg/xutils/http/RequestParams;->p:I

    :cond_0
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->n:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lorg/xutils/http/BaseParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpRetryHandler(Lorg/xutils/http/app/HttpRetryHandler;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->w:Lorg/xutils/http/app/HttpRetryHandler;

    return-void
.end method

.method public setLoadingUpdateMaxTimeSpan(I)V
    .locals 0

    .line 319
    iput p1, p0, Lorg/xutils/http/RequestParams;->v:I

    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0

    .line 288
    iput p1, p0, Lorg/xutils/http/RequestParams;->s:I

    return-void
.end method

.method public bridge synthetic setMethod(Lorg/xutils/http/HttpMethod;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    return-void
.end method

.method public bridge synthetic setMultipart(Z)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setMultipart(Z)V

    return-void
.end method

.method public setPriority(Lorg/xutils/common/task/Priority;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->o:Lorg/xutils/common/task/Priority;

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->i:Ljava/net/Proxy;

    return-void
.end method

.method public setRedirectHandler(Lorg/xutils/http/app/RedirectHandler;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->x:Lorg/xutils/http/app/RedirectHandler;

    return-void
.end method

.method public bridge synthetic setRequestBody(Lorg/xutils/http/body/RequestBody;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lorg/xutils/http/BaseParams;->setRequestBody(Lorg/xutils/http/body/RequestBody;)V

    return-void
.end method

.method public setRequestTracker(Lorg/xutils/http/app/RequestTracker;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->y:Lorg/xutils/http/app/RequestTracker;

    return-void
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->t:Ljava/lang/String;

    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/xutils/http/RequestParams;->h:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setUseCookie(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lorg/xutils/http/RequestParams;->j:Z

    return-void
.end method

.method public bridge synthetic toJSONString()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    :goto_0
    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&"

    goto :goto_1

    :cond_1
    const-string v0, "?"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/xutils/http/BaseParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method
