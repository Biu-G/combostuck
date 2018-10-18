.class public Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static ACTION_PROCESS_CRASHED:Ljava/lang/String; = "com.tencent.feedback.A02"

.field public static ACTION_PROCESS_LAUNCHED:Ljava/lang/String; = "com.tencent.feedback.A01"

.field public static final UPLOADLIMITED:J = 0xea60L

.field private static d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 102
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is Connect BC "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "network %s changed to %s"

    const/4 v2, 0x2

    .line 108
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return v4

    .line 115
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->c:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 120
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v5

    .line 121
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->a()Lcom/tencent/bugly/proguard/r;

    move-result-object v6

    .line 122
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-nez p1, :cond_2

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 158
    sget p1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    invoke-virtual {v6, p1}, Lcom/tencent/bugly/proguard/r;->a(I)J

    move-result-wide p1

    const/4 v1, 0x0

    sub-long p1, v2, p1

    const-wide/32 v7, 0xea60

    cmp-long p1, p1, v7

    if-lez p1, :cond_3

    const-string p1, "try to upload crash on network changed."

    .line 160
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    const-wide/16 v9, 0x0

    invoke-virtual {p1, v9, v10}, Lcom/tencent/bugly/crashreport/crash/c;->a(J)V

    :cond_3
    const/16 p1, 0x3e9

    .line 180
    invoke-virtual {v6, p1}, Lcom/tencent/bugly/proguard/r;->a(I)J

    move-result-wide p1

    const/4 v1, 0x0

    sub-long/2addr v2, p1

    cmp-long p1, v2, v7

    if-lez p1, :cond_4

    const-string p1, "try to upload userinfo on network changed."

    .line 181
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p1

    new-instance p2, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier$1;

    invoke-direct {p2, p0}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier$1;-><init>(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;)V

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_4
    monitor-exit p0

    return v4

    :cond_5
    :goto_0
    :try_start_2
    const-string p1, "not inited BC not work"

    .line 125
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit p0

    throw p1

    .line 104
    :cond_6
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;
    .locals 2

    const-class v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;-><init>()V

    sput-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    .line 41
    :cond_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addFilter(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v0, "add action %s"

    const/4 v1, 0x1

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 90
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public declared-synchronized regist(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p2, "regis BC"

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 67
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;

    .line 69
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 65
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregist(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "unregis BC"

    const/4 v1, 0x0

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1

    .line 85
    :catch_0
    monitor-exit p0

    return-void
.end method
