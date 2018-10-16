.class public final Lcom/tencent/bugly/proguard/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/r$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/proguard/r;


# instance fields
.field private final b:Lcom/tencent/bugly/proguard/m;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:J

.field private j:[B

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J

.field private final n:Ljava/lang/Object;

.field private o:Z

.field private final p:Ljava/lang/Object;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->d:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->g:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->h:[B

    const-wide/16 v1, 0x0

    .line 77
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/r;->i:J

    .line 83
    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    .line 85
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/r;->k:J

    .line 87
    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    .line 89
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/r;->m:J

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/r;->n:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/r;->o:Z

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/r;->p:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/r;->q:Z

    .line 102
    iput-object p1, p0, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    .line 103
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/r;->b:Lcom/tencent/bugly/proguard/m;

    :try_start_0
    const-string p1, "android.util.Base64"

    .line 111
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "[UploadManager] can not find Base64 class, will not use stronger security way to upload"

    .line 113
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 114
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/r;->q:Z

    .line 117
    :goto_0
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/r;->q:Z

    if-eqz p1, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDP9x32s5pPtZBXzJBz2GWM/sbTvVO2+RvW0PH01IdaBxc/"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fB6fbHZocC9T3nl1+J5eAFjIRVuV8vHDky7Qo82Mnh0PVvcZIEQvMMVKU8dsMQopxgsOs2gkSHJwgWdinKNS8CmWobo6pFwPUW11lMv714jAUZRq2GBOqiO2vQI6iwIDAQAB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/r;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/r;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/r;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/r;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/r;->a:Lcom/tencent/bugly/proguard/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/r;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/r;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/r;->a:Lcom/tencent/bugly/proguard/r;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/r;->a:Lcom/tencent/bugly/proguard/r;

    .line 135
    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/r;->a:Lcom/tencent/bugly/proguard/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/r;Ljava/lang/Runnable;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "[UploadManager] upload task should not be null"

    .line 627
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v1, "[UploadManager] execute synchronized upload task (pid=%d | tid=%d)"

    const/4 v2, 0x2

    .line 630
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 632
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "BuglySyncUploadThread"

    .line 633
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 636
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "[UploadManager] failed to execute upload synchronized task with message: %s. Add it to queue"

    .line 638
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p3, v1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 642
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/Runnable;ZJ)V
    .locals 12

    move-object v7, p0

    move-object v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v3, "[UploadManager] upload task should not be null"

    .line 655
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 657
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "[UploadManager] async task handler has not been initialized"

    .line 659
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "[UploadManager] add upload task (pid=%d | tid=%d)"

    const/4 v5, 0x2

    .line 661
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 664
    iget-object v4, v7, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/r;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "[UploadManager] sucessfully got session ID, try to execute upload task now (pid=%d | tid=%d)"

    .line 668
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    move-wide v10, p3

    .line 672
    invoke-direct {p0, p1, v10, v11}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 675
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 677
    :cond_3
    invoke-virtual {v3, p1}, Lcom/tencent/bugly/proguard/t;->c(Ljava/lang/Runnable;)Z

    .line 681
    :goto_0
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/r;->b(I)Z

    return-void

    :cond_4
    move-wide v10, p3

    const-string v4, "[UploadManager] session ID is expired, drop it (pid=%d | tid=%d)"

    .line 686
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 689
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/r;->a(Z)V

    goto :goto_1

    :cond_5
    move-wide v10, p3

    .line 691
    :goto_1
    iget-object v8, v7, Lcom/tencent/bugly/proguard/r;->p:Ljava/lang/Object;

    monitor-enter v8

    .line 693
    :try_start_0
    iget-boolean v4, v7, Lcom/tencent/bugly/proguard/r;->o:Z

    if-nez v4, :cond_7

    .line 695
    iput-boolean v9, v7, Lcom/tencent/bugly/proguard/r;->o:Z

    const-string v4, "[UploadManager] try to request session ID now (pid=%d | tid=%d)"

    .line 697
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    .line 700
    new-instance v9, Lcom/tencent/bugly/proguard/r$a;

    iget-object v3, v7, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/r$a;-><init>(Lcom/tencent/bugly/proguard/r;Landroid/content/Context;Ljava/lang/Runnable;J)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v9, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 703
    :cond_6
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;)Z

    .line 704
    new-instance v0, Lcom/tencent/bugly/proguard/r$a;

    iget-object v1, v7, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/proguard/r$a;-><init>(Lcom/tencent/bugly/proguard/r;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/proguard/t;->c(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 708
    :cond_7
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;)Z

    .line 710
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/r;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/r;->b(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/r;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/r;->o:Z

    return p1
.end method

.method private a(Ljava/lang/Runnable;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "[UploadManager] upload task should not be null"

    .line 601
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "[UploadManager] add upload task to queue (pid=%d | tid=%d)"

    const/4 v3, 0x2

    .line 605
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 608
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :try_start_1
    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 611
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2

    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v2, "[UploadManager] failed to add upload task to queue: %s"

    .line 614
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/r;[B)[B
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    return-object p1
.end method

.method private b(I)Z
    .locals 8

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const-string p1, "[UploadManager] number of task to execute should >= 0"

    .line 552
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 561
    monitor-exit v1

    return v3

    :cond_1
    const-string v2, "[UploadManager] execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    const/4 v4, 0x3

    .line 563
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/r;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 567
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-le p1, v2, :cond_3

    .line 568
    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/r;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    .line 570
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v2

    if-nez v2, :cond_4

    const-string p1, "[UploadManager] async task handler has not been initialized"

    .line 572
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 573
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_6

    .line 577
    :try_start_1
    iget-object v5, p0, Lcom/tencent/bugly/proguard/r;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_5

    .line 579
    invoke-virtual {v2, v5}, Lcom/tencent/bugly/proguard/t;->c(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    const-string v5, "[UploadManager] upload task poll from queue is null"

    .line 581
    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "[UploadManager] failed to execute upload task with message: %s"

    .line 584
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 586
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 589
    :cond_6
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    .line 590
    monitor-exit v1

    throw p1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/r;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/r;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/r;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/bugly/proguard/r;)Ljava/lang/Object;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tencent/bugly/proguard/r;->p:Ljava/lang/Object;

    return-object p0
.end method

.method private static d()Z
    .locals 6

    const-string v0, "[UploadManager] drop security info of database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    .line 364
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 367
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[UploadManager] failed to get Database"

    .line 369
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v3

    :cond_0
    const/16 v1, 0x22b

    const-string v2, "security_info"

    const/4 v5, 0x0

    .line 373
    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/l;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 376
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    return v3
.end method

.method private e()Z
    .locals 11

    const-string v0, "[UploadManager] record security info to database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    .line 387
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 390
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v0, "[UploadManager] failed to get Database"

    .line 392
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v3

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    if-eqz v1, :cond_4

    .line 398
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/r;->m:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 406
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/r;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "#"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "null"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "#"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/r;->m:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 420
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/r;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "null"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v6, 0x22b

    const-string v7, "security_info"

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;Z)Z

    return v4

    :cond_4
    const-string v0, "[UploadManager] AES key is null, will not record"

    .line 400
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 429
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    .line 431
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->d()Z

    return v3
.end method

.method private f()Z
    .locals 8

    const-string v0, "[UploadManager] load security info from dataBase (pid=%d | tid=%d)"

    const/4 v1, 0x2

    .line 442
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 445
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[UploadManager] failed to get Database"

    .line 447
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v4

    :cond_0
    const/16 v2, 0x22b

    const/4 v3, 0x0

    .line 452
    invoke-virtual {v0, v2, v3, v5}, Lcom/tencent/bugly/proguard/m;->a(ILcom/tencent/bugly/proguard/l;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "security_info"

    .line 453
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 454
    new-instance v2, Ljava/lang/String;

    const-string v3, "security_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "#"

    .line 455
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 456
    array-length v3, v0

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 457
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v4

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_1

    .line 459
    :try_start_1
    aget-object v2, v0, v4

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/r;->j:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 462
    :try_start_2
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 466
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v0, v5

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v3, :cond_2

    .line 468
    :try_start_3
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/bugly/proguard/r;->k:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 471
    :try_start_4
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    const/4 v2, 0x1

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 475
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v0, v1

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 476
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    :cond_3
    if-nez v2, :cond_5

    const/4 v1, 0x3

    .line 478
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, v0, v1

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v3, :cond_5

    .line 480
    :try_start_5
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/r;->m:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 483
    :try_start_6
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_4
    const-string v3, "securityInfo = %s, strings.length = %d"

    .line 488
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    const/4 v2, 0x1

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 493
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->d()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    return v5

    :catch_3
    move-exception v0

    .line 499
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    return v4
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, -0x2

    if-ltz p1, :cond_1

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 351
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v2, "unknown up %d"

    const/4 v3, 0x1

    .line 353
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    monitor-exit p0

    return-wide v0

    .line 348
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final a(II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;)V
    .locals 8

    .line 166
    :try_start_0
    iget-boolean p4, p0, Lcom/tencent/bugly/proguard/r;->q:Z

    if-eqz p4, :cond_0

    new-instance p4, Lcom/tencent/bugly/proguard/s;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v0, p4

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;Z)V

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;ZJ)V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/tencent/bugly/proguard/s;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;Z)V

    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized a(IJ)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "up %d %d"

    const/4 v3, 0x2

    .line 339
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p2, "unknown up %d"

    .line 341
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 336
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/proguard/q;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 151
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/bugly/proguard/r;->a(ILcom/tencent/bugly/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/proguard/q;ZJ)V

    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/proguard/q;ZJ)V
    .locals 8

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/r;->q:Z

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/tencent/bugly/proguard/s;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    const/4 v7, 0x1

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;ILcom/tencent/bugly/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/proguard/q;Z)V

    .line 259
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;ZJ)V

    goto :goto_0

    .line 261
    :cond_0
    new-instance v7, Lcom/tencent/bugly/proguard/s;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;ILcom/tencent/bugly/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/proguard/q;Z)V

    if-eqz p5, :cond_1

    .line 264
    invoke-direct {p0, v7, p6, p7}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 270
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/al;)V
    .locals 7

    .line 721
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/r;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const-string p1, "[UploadManager] Session ID is invalid, will clear security context (pid=%d | tid=%d)"

    .line 728
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/r;->a(Z)V

    goto/16 :goto_2

    .line 733
    :cond_1
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/r;->o:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_7

    const-string p1, "[UploadManager] record security context (pid=%d | tid=%d)"

    .line 738
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 742
    :try_start_0
    iget-object p1, p2, Lcom/tencent/bugly/proguard/al;->h:Ljava/util/Map;

    if-eqz p1, :cond_6

    const-string v3, "S1"

    .line 743
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "S2"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 746
    iget-wide v3, p2, Lcom/tencent/bugly/proguard/al;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 p2, 0x0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/r;->i:J

    const-string p2, "[UploadManager] time lag of server is: %d"

    .line 747
    new-array v3, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/r;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p2, "S1"

    .line 748
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    const-string p2, "[UploadManager] session ID from server is: %s"

    .line 749
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 750
    iget-object p2, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p2, :cond_5

    const-wide/32 v3, 0xf731400

    :try_start_1
    const-string p2, "S2"

    .line 752
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/r;->m:J

    const-string p1, "[UploadManager] session expired time from server is: %d(%s)"

    .line 754
    new-array p2, v0, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/r;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v2

    new-instance v0, Ljava/util/Date;

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/r;->m:J

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 757
    iget-wide p1, p0, Lcom/tencent/bugly/proguard/r;->m:J

    const-wide/16 v5, 0x3e8

    cmp-long p1, p1, v5

    if-gez p1, :cond_3

    const-string p1, "[UploadManager] session expired time from server is less than 1 second, will set to default value"

    .line 758
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 759
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/r;->m:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "[UploadManager] session expired time is invalid, will set to default value"

    .line 762
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 763
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/r;->m:J

    .line 765
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/r;->b(I)Z

    .line 767
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/r;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string p1, "[UploadManager] failed to record database"

    .line 771
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string p1, "[UploadManager] session ID from server is invalid, try next time"

    .line 775
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 780
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 784
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/r;->a(Z)V

    goto :goto_2

    :cond_7
    const-string p1, "[UploadManager] fail to init security context and clear local info (pid=%d | tid=%d)"

    .line 787
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/r;->a(Z)V

    .line 794
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/r;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 796
    :try_start_3
    iget-boolean p2, p0, Lcom/tencent/bugly/proguard/r;->o:Z

    if-eqz p2, :cond_9

    .line 798
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/r;->o:Z

    .line 800
    iget-object p2, p0, Lcom/tencent/bugly/proguard/r;->c:Landroid/content/Context;

    const-string v0, "security_info"

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 802
    :cond_9
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method protected final declared-synchronized a(J)V
    .locals 4

    monitor-enter p0

    .line 321
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/o;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/o;-><init>()V

    const/4 v1, 0x3

    .line 322
    iput v1, v0, Lcom/tencent/bugly/proguard/o;->b:I

    .line 323
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->o()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/o;->e:J

    const-string v2, ""

    .line 324
    iput-object v2, v0, Lcom/tencent/bugly/proguard/o;->c:Ljava/lang/String;

    const-string v2, ""

    .line 325
    iput-object v2, v0, Lcom/tencent/bugly/proguard/o;->d:Ljava/lang/String;

    .line 326
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/a;->a(J)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/proguard/o;->g:[B

    .line 327
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->b:Lcom/tencent/bugly/proguard/m;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/m;->b(I)V

    .line 328
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->b:Lcom/tencent/bugly/proguard/m;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/o;)Z

    const-string v0, "consume update %d"

    const/4 v1, 0x1

    .line 329
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 320
    monitor-exit p0

    throw p1
.end method

.method protected final a(Z)V
    .locals 5

    .line 531
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "[UploadManager] clear security context (pid=%d | tid=%d)"

    const/4 v2, 0x2

    .line 532
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 534
    iput-object v1, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    .line 535
    iput-object v1, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 536
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/r;->m:J

    .line 537
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 540
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->d()Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 537
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "[UploadManager] integrate security to HTTP headers (pid=%d | tid=%d)"

    const/4 v2, 0x2

    .line 959
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 962
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v0, "secureSessionId"

    .line 964
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x3

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 971
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->h:[B

    if-nez v1, :cond_3

    .line 973
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/r;->h:[B

    .line 974
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->h:[B

    if-nez v1, :cond_3

    const-string p1, "[UploadManager] failed to decode RSA public key"

    .line 975
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 980
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->h:[B

    invoke-static {v4, v1, v2}, Lcom/tencent/bugly/proguard/a;->b(I[B[B)[B

    move-result-object v1

    if-nez v1, :cond_4

    const-string p1, "[UploadManager] failed to encrypt AES key"

    .line 982
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 986
    :cond_4
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p1, "[UploadManager] failed to encode AES key"

    .line 988
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_5
    const-string v0, "raKey"

    .line 991
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_6
    :goto_0
    const-string p1, "[UploadManager] AES key is invalid"

    .line 968
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method public final a([B)[B
    .locals 4

    .line 930
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    invoke-static {v1, p1, v0}, Lcom/tencent/bugly/proguard/a;->a(I[B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    const/4 v0, 0x2

    .line 931
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()J
    .locals 11

    .line 281
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->o()J

    move-result-wide v0

    .line 282
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->b:Lcom/tencent/bugly/proguard/m;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/m;->a(I)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1

    .line 284
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 286
    :try_start_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/bugly/proguard/o;

    .line 287
    iget-wide v9, v8, Lcom/tencent/bugly/proguard/o;->e:J

    cmp-long v0, v9, v0

    if-ltz v0, :cond_0

    .line 288
    iget-object v0, v8, Lcom/tencent/bugly/proguard/o;->g:[B

    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->c([B)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :try_start_1
    invoke-interface {v2, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-wide v6, v0

    goto :goto_1

    :cond_0
    move-wide v0, v6

    :goto_0
    move-wide v6, v0

    goto :goto_2

    :catch_1
    :goto_1
    const-string v0, "error local type %d"

    .line 292
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 294
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->b:Lcom/tencent/bugly/proguard/m;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/m;->a(Ljava/util/List;)V

    :cond_1
    const-string v0, "consume getted %d"

    .line 298
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v6
.end method

.method public final b([B)[B
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->j:[B

    invoke-static {v1, p1, v0}, Lcom/tencent/bugly/proguard/a;->a(I[B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    .line 941
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final c()Z
    .locals 9

    .line 510
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/r;->m:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/r;->i:J

    add-long/2addr v2, v4

    .line 514
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/r;->m:J

    cmp-long v0, v4, v2

    const/4 v4, 0x1

    if-gez v0, :cond_1

    const-string v0, "[UploadManager] session ID expired time from server is: %d(%s), but now is: %d(%s)"

    const/4 v5, 0x4

    .line 515
    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/r;->m:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/tencent/bugly/proguard/r;->m:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_1
    return v4

    :cond_2
    :goto_0
    return v1
.end method
