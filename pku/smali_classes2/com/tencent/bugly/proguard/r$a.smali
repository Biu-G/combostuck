.class final Lcom/tencent/bugly/proguard/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private synthetic d:Lcom/tencent/bugly/proguard/r;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/r;Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 820
    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/r$a;-><init>(Lcom/tencent/bugly/proguard/r;Landroid/content/Context;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/r;Landroid/content/Context;Ljava/lang/Runnable;J)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/tencent/bugly/proguard/r$a;->a:Landroid/content/Context;

    .line 825
    iput-object p3, p0, Lcom/tencent/bugly/proguard/r$a;->b:Ljava/lang/Runnable;

    .line 826
    iput-wide p4, p0, Lcom/tencent/bugly/proguard/r$a;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 837
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 841
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[UploadManager] async task handler has not been initialized"

    .line 843
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v3, "[UploadManager] sleep %d try to lock security file again"

    .line 846
    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0x1388

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v1, 0x1388

    .line 848
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 849
    :goto_0
    new-instance v1, Lcom/tencent/bugly/proguard/r$a;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/r$a;-><init>(Lcom/tencent/bugly/proguard/r;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/t;->c(Ljava/lang/Runnable;)Z

    return-void

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/r;->b(Lcom/tencent/bugly/proguard/r;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[UploadManager] failed to load security info from database"

    .line 857
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/r;->a(Z)V

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/r;->c(Lcom/tencent/bugly/proguard/r;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 863
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/r;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[UploadManager] sucessfully got session ID, try to execute upload tasks now (pid=%d | tid=%d)"

    .line 865
    new-array v3, v3, [Ljava/lang/Object;

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

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 868
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 870
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r$a;->b:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/r$a;->c:J

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Ljava/lang/Runnable;J)V

    .line 872
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;I)Z

    .line 874
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 875
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/r;->d(Lcom/tencent/bugly/proguard/r;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 877
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Z)Z

    .line 878
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    const-string v0, "[UploadManager] session ID is expired, drop it"

    .line 880
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/r;->a(Z)V

    :cond_5
    const/16 v0, 0x80

    .line 889
    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->a(I)[B

    move-result-object v4

    if-eqz v4, :cond_8

    .line 890
    array-length v5, v4

    shl-int/lit8 v5, v5, 0x3

    if-ne v5, v0, :cond_8

    .line 891
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;[B)[B

    const-string v0, "[UploadManager] execute one upload task for requesting session ID (pid=%d | tid=%d)"

    .line 893
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 898
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r$a;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/r$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Ljava/lang/Runnable;J)V

    return-void

    .line 903
    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "[UploadManager] failed to execute one upload task (pid=%d | tid=%d)"

    .line 908
    new-array v3, v3, [Ljava/lang/Object;

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

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const-string v0, "[UploadManager] failed to create AES key (pid=%d | tid=%d)"

    .line 915
    new-array v3, v3, [Ljava/lang/Object;

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

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 919
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/r;->a(Z)V

    .line 921
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 922
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/r;->d(Lcom/tencent/bugly/proguard/r;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 924
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/r$a;->d:Lcom/tencent/bugly/proguard/r;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Z)Z

    .line 925
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
