.class public final Lcom/amap/api/mapcore2d/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/amap/api/mapcore2d/fe;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amap/api/mapcore2d/ff;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore2d/ff$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fe;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Lcom/amap/api/mapcore2d/fe$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/fe$1;-><init>(Lcom/amap/api/mapcore2d/fe;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fe;->d:Lcom/amap/api/mapcore2d/ff$a;

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fe;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TPool"

    const-string v1, "ThreadPool"

    .line 79
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized a(I)Lcom/amap/api/mapcore2d/fe;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/fe;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/fe;->a:Lcom/amap/api/mapcore2d/fe;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/amap/api/mapcore2d/fe;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/fe;-><init>(I)V

    sput-object v1, Lcom/amap/api/mapcore2d/fe;->a:Lcom/amap/api/mapcore2d/fe;

    .line 60
    :cond_0
    sget-object p0, Lcom/amap/api/mapcore2d/fe;->a:Lcom/amap/api/mapcore2d/fe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/fe;Lcom/amap/api/mapcore2d/ff;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/fe;->a(Lcom/amap/api/mapcore2d/ff;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/amap/api/mapcore2d/ff;Z)V
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fe;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 189
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "TPool"

    const-string v0, "removeQueue"

    .line 193
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :goto_1
    monitor-exit p0

    throw p1
.end method
