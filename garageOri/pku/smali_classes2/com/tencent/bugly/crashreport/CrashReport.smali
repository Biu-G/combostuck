.class public Lcom/tencent/bugly/crashreport/CrashReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;,
        Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeBugly()V
    .locals 2

    .line 238
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not close bugly because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    sget-object v0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_1
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    .line 251
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->closeCrashReport()V

    .line 253
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;)V

    .line 255
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 257
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t;->b()V

    :cond_3
    return-void
.end method

.method public static declared-synchronized closeCrashReport()V
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 223
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not close crash report because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/c;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 221
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized closeNativeReport()V
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 191
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not close native report because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v0

    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/c;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    monitor-exit v0

    return-void

    .line 195
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 189
    monitor-exit v0

    throw v1
.end method

.method public static enableBugly(Z)V
    .locals 0

    .line 46
    sput-boolean p0, Lcom/tencent/bugly/Bugly;->enable:Z

    return-void
.end method

.method public static getAllUserDataKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 429
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "Can not get all keys of user data because bugly is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 436
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 433
    :cond_1
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v0, "getAllUserDataKeys args context should not be null"

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 574
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 575
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get App channel because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit v0

    return-object v1

    .line 578
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 579
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 573
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAppID()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 461
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 462
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get App ID because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit v0

    return-object v1

    .line 465
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 466
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 460
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAppVer()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 556
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 557
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get app version because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit v0

    return-object v1

    .line 560
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 561
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 555
    monitor-exit v0

    throw v1
.end method

.method public static getBuglyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Please call with context."

    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p0, "unknown"

    return-object p0

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    .line 112
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkExtraData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 648
    sget-object v0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not get SDK extra data because bugly is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 651
    :cond_0
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static getUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 308
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 309
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not get user data because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "unknown"

    return-object p0

    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :cond_3
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string p1, "getUserDataValue args context should not be null"

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUserDatasSize(Landroid/content/Context;)I
    .locals 1

    .line 446
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 447
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "Can not get size of user data because bugly is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 454
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->x()I

    move-result p0

    return p0

    .line 451
    :cond_1
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v0, "getUserDatasSize args context should not be null"

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getUserId()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 538
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 539
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not get user ID because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit v0

    return-object v1

    .line 542
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    sget-object v1, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 543
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 537
    monitor-exit v0

    throw v1
.end method

.method public static getUserSceneTagId(Landroid/content/Context;)I
    .locals 1

    .line 289
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 290
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "Can not get user scene tag because bugly is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 297
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->A()I

    move-result p0

    return p0

    .line 294
    :cond_1
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v0, "getUserSceneTagId args context should not be null"

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 56
    :try_start_0
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 57
    invoke-static {p0}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 67
    :try_start_0
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 68
    invoke-static {p0, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V
    .locals 1

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 94
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    :try_start_0
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    .line 97
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isLastSessionCrash()Z
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 596
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 597
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "The info \'isLastSessionCrash\' is not accurate because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 599
    monitor-exit v0

    return v1

    .line 601
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/c;->b()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    .line 602
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 595
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized postCatchedException(Ljava/lang/Throwable;)V
    .locals 7

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 169
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v1, "Can not post crash caught because bugly is disable."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p0, :cond_1

    const-string p0, "throwable is null, just return"

    const/4 v1, 0x0

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit v0

    return-void

    .line 182
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit v0

    return-void

    .line 173
    :cond_2
    :try_start_3
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v1, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {p0, v1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 167
    monitor-exit v0

    throw p0
.end method

.method private static putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_5

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "[a-zA-Z[0-9]]+"

    const-string v3, ""

    .line 658
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_3

    .line 660
    sget-object v2, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v3, "putSdkData key length over limit %d, will be cutted."

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 664
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_4

    .line 665
    sget-object v2, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v3, "putSdkData value length over limit %d, will be cutted!"

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 670
    :cond_4
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/common/info/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object p0, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    const-string v2, "[param] putSdkData data: %s - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 332
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 333
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not put user data because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 337
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "putUserData args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p0, "putUserData args key should not be null or empty"

    .line 343
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p0, "putUserData args value should not be null"

    .line 349
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-string v1, "[a-zA-Z[0-9]]+"

    .line 353
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 354
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "putUserData args key should match [a-zA-Z[0-9]]+  {"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 358
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-le v1, v2, :cond_5

    const-string v1, "user data value length over limit %d, it will be cutted!"

    .line 359
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 364
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_7

    .line 368
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 370
    invoke-virtual {v1, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    :cond_6
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "replace KV %s %s"

    .line 373
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v3

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 378
    :cond_7
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->x()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_8

    const-string p0, "user data size is over limit %d, it will be cutted!"

    .line 379
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 384
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_9

    const-string v1, "user data key length over limit %d , will drop this new key %s"

    .line 385
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object p1, v5, v3

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 391
    :cond_9
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 393
    invoke-virtual {v1, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    :cond_a
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "[param] set user data: %s - %s"

    .line 396
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v3

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 406
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 407
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not remove user data because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "unknown"

    return-object p0

    :cond_0
    if-eqz p0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string v2, "[param] remove user data: %s"

    .line 417
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 418
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 411
    :cond_3
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string p1, "removeUserData args context should not be null"

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAppVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 710
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 711
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not set APP version because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 715
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "setAppVersion args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 719
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Version is null, will not set"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 722
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 587
    :try_start_0
    sput-object p0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 586
    monitor-exit v0

    throw p0
.end method

.method public static setIsAppForeground(Landroid/content/Context;Z)V
    .locals 2

    .line 678
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 679
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not set \'isAppForeground\' because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    const-string p0, "Context should not be null."

    .line 683
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "App is in foreground."

    .line 687
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "App is in background."

    .line 689
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 691
    :goto_0
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    return-void
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 740
    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z

    move-result p0

    return p0
.end method

.method public static setJavascriptMonitor(Landroid/webkit/WebView;ZZ)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 761
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Webview is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 764
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "CrashReport has not been initialed! please to call method \'initCrashReport\' first!"

    .line 765
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_1
    const-string v1, "Set Javascript exception monitor of webview."

    .line 768
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 769
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_2

    .line 770
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not set JavaScript monitor because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const-string v1, "URL of webview is %s"

    const/4 v2, 0x1

    .line 773
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 774
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    if-nez p2, :cond_4

    .line 778
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge p2, v1, :cond_4

    const-string p0, "This interface is only available for Android 4.4 or later."

    .line 780
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 785
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 786
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Enable the javascript needed by webview monitor."

    .line 787
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 788
    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 790
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/crash/h5/H5JavaScriptInterface;->getInstance(Landroid/webkit/WebView;)Lcom/tencent/bugly/crashreport/crash/h5/H5JavaScriptInterface;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v1, "Add a secure javascript interface to the webview."

    .line 792
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "exceptionUploader"

    .line 793
    invoke-virtual {p0, p2, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_8

    const-string p1, "Inject bugly.js(v%s) to the webview."

    .line 796
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/h5/c;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 797
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/h5/c;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p0, "Failed to inject Bugly.js."

    .line 799
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/h5/c;->b()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 802
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method public static declared-synchronized setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 616
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 617
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not put SDK extra data because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 621
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_7

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_3

    .line 624
    :cond_3
    sget-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 626
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 629
    :cond_4
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_6

    const-string p1, "SDK_INFO"

    const-string p2, ""

    .line 633
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 636
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/crashreport/CrashReport;->putSdkData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_6
    sput-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    monitor-exit v0

    return-void

    .line 622
    :cond_7
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 615
    monitor-exit v0

    throw p0
.end method

.method public static setSessionIntervalMills(J)V
    .locals 1

    .line 696
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 697
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not set \'SessionIntervalMills\' because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 700
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/biz/b;->a(J)V

    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 498
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 499
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not set user ID because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p0, "userId should not be null"

    .line 507
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 510
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-le v1, v3, :cond_2

    .line 511
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "userId %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    .line 512
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const/4 p1, 0x2

    aput-object v1, v5, p1

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v1

    .line 518
    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 522
    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->b(Ljava/lang/String;)V

    const-string p0, "[user] set userId : %s"

    .line 523
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 526
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 528
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->a()V

    :cond_4
    return-void

    .line 503
    :cond_5
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string p1, "Context should not be null when bugly has not been initialed!"

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .line 479
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 480
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v0, "Can not set user ID because bugly is disable."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    sget-object v0, Lcom/tencent/bugly/crashreport/CrashReport;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 484
    :cond_1
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v0, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 3

    .line 267
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v0, :cond_0

    .line 268
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "Can not set tag caught because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_2

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    const-string v1, "setTag args tagId should > 0"

    .line 276
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 279
    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(I)V

    const-string p0, "[param] set user scene tag: %d"

    const/4 v1, 0x1

    .line 280
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 272
    :cond_2
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string p1, "setTag args context should not be null"

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized startCrashReport()V
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 207
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not start crash report because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    monitor-exit v0

    return-void

    .line 215
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 205
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized testANRCrash()V
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 152
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not test ANR crash because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v0

    return-void

    .line 155
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "start to create a anr crash for test!"

    const/4 v2, 0x0

    .line 159
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 160
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/c;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    .line 156
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 150
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized testJavaCrash()V
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 120
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not test Java crash because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v0

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized testNativeCrash()V
    .locals 3

    const-class v0, Lcom/tencent/bugly/crashreport/CrashReport;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->enable:Z

    if-nez v1, :cond_0

    .line 136
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string v2, "Can not test native crash because bugly is disable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    .line 139
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->hasInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "start to create a native crash for test!"

    const/4 v2, 0x0

    .line 143
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/c;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit v0

    return-void

    .line 140
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string v2, "Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 134
    monitor-exit v0

    throw v1
.end method
