.class abstract Lcom/amap/api/mapcore2d/ec;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected c:Ldalvik/system/DexFile;

.field volatile d:Z

.field protected e:Lcom/amap/api/mapcore2d/cy;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Z)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 12
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ec;->b:Ljava/util/Map;

    const/4 p3, 0x0

    .line 13
    iput-object p3, p0, Lcom/amap/api/mapcore2d/ec;->c:Ldalvik/system/DexFile;

    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/ec;->d:Z

    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ec;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ec;->e:Lcom/amap/api/mapcore2d/cy;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ec;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected b()V
    .locals 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ec;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ec;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 53
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ec;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ec;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 53
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BaseLoader"

    const-string v2, "releaseDexFile()"

    .line 59
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ek;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
