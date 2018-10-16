.class public final Lcom/tencent/bugly/proguard/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/tencent/bugly/proguard/t;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method protected constructor <init>()V
    .locals 10

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    new-instance v0, Lcom/tencent/bugly/proguard/t$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/t$1;-><init>(Lcom/tencent/bugly/proguard/t;)V

    const/4 v1, 0x3

    .line 30
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v9

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x2

    const v3, 0x7fffffff

    const-wide/16 v4, 0xa

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ScheduledExecutorService is not valiable!"

    .line 40
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "QueueExecutorService is not valiable!"

    .line 43
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "ploadExecutorService is not valiable!"

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/t;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/t;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/t;->a:Lcom/tencent/bugly/proguard/t;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/tencent/bugly/proguard/t;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/t;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/t;->a:Lcom/tencent/bugly/proguard/t;

    .line 57
    :cond_0
    sget-object v1, Lcom/tencent/bugly/proguard/t;->a:Lcom/tencent/bugly/proguard/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/t;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 69
    sget-boolean p1, Lcom/tencent/bugly/b;->a:Z

    if-eqz p1, :cond_0

    .line 70
    sget-object p1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "queue handler was closed , should not post task!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    if-nez p1, :cond_3

    .line 75
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/b;->a:Z

    if-eqz p1, :cond_2

    .line 76
    sget-object p1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "queue task is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :cond_2
    monitor-exit p0

    return v1

    .line 81
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 82
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 84
    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)Z
    .locals 5

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/t;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "async handler was closed , should not post task!"

    .line 96
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "async task == null"

    .line 101
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return v1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide p2, v2

    :goto_0
    :try_start_2
    const-string v0, "delay %d task %s"

    const/4 v2, 0x2

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    monitor-exit p0

    return v4

    :catch_0
    move-exception p1

    .line 112
    :try_start_4
    sget-boolean p2, Lcom/tencent/bugly/b;->a:Z

    if-eqz p2, :cond_3

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "close async handler"

    .line 178
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "close async queue handler"

    .line 182
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "close async upload handler"

    .line 186
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 176
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/Runnable;)Z
    .locals 5

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/t;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "async handler was closed , should not post task!"

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "async task == null"

    .line 129
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    const-string v0, "normal task %s"

    const/4 v2, 0x1

    .line 133
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :try_start_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    monitor-exit p0

    return v2

    :catch_0
    move-exception p1

    .line 138
    :try_start_4
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 122
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/Runnable;)Z
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/t;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 151
    sget-boolean p1, Lcom/tencent/bugly/b;->a:Z

    if-eqz p1, :cond_0

    .line 152
    sget-object p1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "queue handler was closed , should not post task!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    if-nez p1, :cond_3

    .line 157
    :try_start_1
    sget-boolean p1, Lcom/tencent/bugly/b;->a:Z

    if-eqz p1, :cond_2

    .line 158
    sget-object p1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "queue task is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_2
    monitor-exit p0

    return v1

    .line 163
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 164
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 166
    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_4

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit p0

    throw p1
.end method
