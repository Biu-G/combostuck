.class Lcom/amap/api/mapcore2d/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/amap/api/mapcore2d/ax;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://tm.amap.com"

    .line 19
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ax;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/mapcore2d/ax;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/ax;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/ax;->b:Lcom/amap/api/mapcore2d/ax;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/amap/api/mapcore2d/ax;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ax;-><init>()V

    sput-object v1, Lcom/amap/api/mapcore2d/ax;->b:Lcom/amap/api/mapcore2d/ax;

    .line 16
    :cond_0
    sget-object v1, Lcom/amap/api/mapcore2d/ax;->b:Lcom/amap/api/mapcore2d/ax;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 6

    .line 24
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const v1, 0x186a0

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 26
    rem-int/lit8 v0, v0, 0x4

    .line 29
    sget v1, Lcom/amap/api/mapcore2d/q;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 30
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://wprd0%d.is.autonavi.com"

    new-array v5, v3, [Ljava/lang/Object;

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://webrd0%d.is.autonavi.com"

    new-array v5, v3, [Ljava/lang/Object;

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://grid.amap.com/grid/%d/%d/%d?ds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/mapcore2d/q;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const v1, 0x186a0

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 56
    rem-int/lit8 v0, v0, 0x4

    .line 57
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "http://mst0%d.is.autonavi.com"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v4, v3

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
