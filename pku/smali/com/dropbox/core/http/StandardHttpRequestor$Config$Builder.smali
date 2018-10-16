.class public final Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/StandardHttpRequestor$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/net/Proxy;

.field private b:J

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 320
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sget-wide v2, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-wide v4, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor$1;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/net/Proxy;JJ)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->a:Ljava/net/Proxy;

    .line 325
    iput-wide p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->b:J

    .line 326
    iput-wide p4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->c:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V
    .locals 0

    .line 314
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method

.method private static a(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 426
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long p2, v0, p0

    if-ltz p2, :cond_0

    return-wide p0

    .line 428
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout too large, must be less than: 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 424
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 421
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/http/StandardHttpRequestor$Config;
    .locals 8

    .line 412
    new-instance v7, Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->a:Ljava/net/Proxy;

    iget-wide v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->b:J

    iget-wide v4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->c:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;-><init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V

    return-object v7
.end method

.method public withConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 0

    .line 370
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->b:J

    return-object p0
.end method

.method public withNoConnectTimeout()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 3

    .line 353
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->withConnectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withNoReadTimeout()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 3

    .line 380
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->withReadTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withProxy(Ljava/net/Proxy;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 342
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->a:Ljava/net/Proxy;

    return-object p0

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxy"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withReadTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 0

    .line 402
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->c:J

    return-object p0
.end method
