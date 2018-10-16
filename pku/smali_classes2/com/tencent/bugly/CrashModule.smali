.class public Lcom/tencent/bugly/CrashModule;
.super Lcom/tencent/bugly/a;
.source "SourceFile"


# static fields
.field public static final MODULE_ID:I = 0x3ec

.field private static c:Z = false

.field private static d:Lcom/tencent/bugly/CrashModule;


# instance fields
.field private a:J

.field private b:Lcom/tencent/bugly/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/tencent/bugly/CrashModule;

    invoke-direct {v0}, Lcom/tencent/bugly/CrashModule;-><init>()V

    sput-object v0, Lcom/tencent/bugly/CrashModule;->d:Lcom/tencent/bugly/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tencent/bugly/a;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 6

    monitor-enter p0

    if-nez p2, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getLibBuglySOFilePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 75
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    iput-object v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    const-string p1, "setted libBugly.so file path :%s"

    .line 76
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 79
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/BuglyStrategy$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/BuglyStrategy$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/CrashModule;->b:Lcom/tencent/bugly/BuglyStrategy$a;

    const-string p1, "setted CrashHanldeCallback"

    .line 81
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    .line 85
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/bugly/CrashModule;->a:J

    const-string p1, "setted delay: %d"

    .line 86
    new-array p2, v2, [Ljava/lang/Object;

    iget-wide v0, p0, Lcom/tencent/bugly/CrashModule;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/tencent/bugly/CrashModule;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/bugly/CrashModule;->d:Lcom/tencent/bugly/CrashModule;

    return-object v0
.end method

.method public static hasInitialized()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/tencent/bugly/CrashModule;->c:Z

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 34
    sget-boolean v0, Lcom/tencent/bugly/CrashModule;->c:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/tencent/bugly/CrashModule;->c:Z

    .line 38
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/CrashModule;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    const/16 v1, 0x3ec

    .line 40
    iget-object v4, p0, Lcom/tencent/bugly/CrashModule;->b:Lcom/tencent/bugly/BuglyStrategy$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/l;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p2

    .line 43
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->e()V

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 45
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isEnableNativeCrashMonitor()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "[crash] Closed native crash monitor!"

    .line 48
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->f()V

    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->g()V

    :goto_1
    if-eqz p3, :cond_4

    .line 51
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isEnableANRCrashMonitor()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const-string p3, "[crash] Closed ANR monitor!"

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->i()V

    goto :goto_3

    .line 52
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->h()V

    .line 59
    :goto_3
    sput-object p1, Lcom/tencent/bugly/crashreport/inner/InnerAPI;->context:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/d;->a(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    iget-wide p2, p0, Lcom/tencent/bugly/CrashModule;->a:J

    invoke-virtual {p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/c;->a(J)V

    return-void

    :cond_5
    :goto_4
    return-void
.end method

.method public onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " CREATE TABLE t_cr"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , _tm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , _s1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " text"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , _up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , _me"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , _uc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , _dt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " blob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "create %s"

    const/4 v2, 0x1

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/d;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    return-void
.end method
