.class public final Lcom/amap/api/mapcore2d/fz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/amap/api/mapcore2d/fz;


# instance fields
.field a:Lcom/amap/api/mapcore2d/ep;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fz;->a:Lcom/amap/api/mapcore2d/ep;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fz;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/fz;->d:I

    sget v1, Lcom/amap/api/mapcore2d/gc;->e:I

    iput v1, p0, Lcom/amap/api/mapcore2d/fz;->e:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fz;->f:Z

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fz;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/ep;->a()Lcom/amap/api/mapcore2d/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fz;->a:Lcom/amap/api/mapcore2d/ep;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore2d/fz;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore2d/fz;->b:Lcom/amap/api/mapcore2d/fz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/fz;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/fz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore2d/fz;->b:Lcom/amap/api/mapcore2d/fz;

    :cond_0
    sget-object p0, Lcom/amap/api/mapcore2d/fz;->b:Lcom/amap/api/mapcore2d/fz;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/mapcore2d/ga;)Lcom/amap/api/mapcore2d/ex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fz;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fz;->a:Lcom/amap/api/mapcore2d/ep;

    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/fz;->f:Z

    invoke-virtual {v2, p1, v3}, Lcom/amap/api/mapcore2d/ep;->a(Lcom/amap/api/mapcore2d/ev;Z)Lcom/amap/api/mapcore2d/ex;

    move-result-object p1

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/fz;->d:I

    return-object p1
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;)Lcom/amap/api/mapcore2d/ga;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/amap/api/mapcore2d/ga;

    invoke-static {}, Lcom/amap/api/mapcore2d/gc;->b()Lcom/amap/api/mapcore2d/cy;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/amap/api/mapcore2d/ga;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gzipped"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "User-Agent"

    const-string v3, "AMAP_Location_SDK_Android 3.4.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY"

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enginever"

    const-string v3, "4.7"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scode"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "encr"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ga;->b(Ljava/util/Map;)V

    const-string v0, "loc"

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ga;->o()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "3.4.0"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ga;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ga;->n()V

    invoke-virtual {v1, p3}, Lcom/amap/api/mapcore2d/ga;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amap/api/mapcore2d/gf;->a([B)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amap/api/mapcore2d/ga;->b([B)V

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cw;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/ga;->a(Ljava/net/Proxy;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "output"

    const-string p3, "bin"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "policy"

    const-string p3, "3103"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/ga;->a(Ljava/util/Map;)V

    iget p1, p0, Lcom/amap/api/mapcore2d/fz;->e:I

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/ga;->a(I)V

    iget p1, p0, Lcom/amap/api/mapcore2d/fz;->e:I

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/ga;->b(I)V

    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/fz;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ga;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    const-string p3, "https"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/ga;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    move-object v1, p1

    :catch_1
    :cond_0
    :goto_0
    return-object v1
.end method

.method public final a(JZ)V
    .locals 0

    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/fz;->f:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/fz;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "netmanager"

    const-string p3, "setOption"

    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
