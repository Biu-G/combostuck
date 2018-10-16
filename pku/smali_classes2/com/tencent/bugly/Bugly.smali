.class public Lcom/tencent/bugly/Bugly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field public static enable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/Bugly;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 25
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_1
    sput-boolean v1, Lcom/tencent/bugly/Bugly;->a:Z

    if-nez p0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit v0

    return-void

    .line 30
    :cond_3
    :try_start_2
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string p1, "init arg \'context\' should not be null!"

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    throw p0
.end method
