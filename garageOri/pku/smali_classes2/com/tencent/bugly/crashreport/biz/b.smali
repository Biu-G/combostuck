.class public final Lcom/tencent/bugly/crashreport/biz/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tencent/bugly/crashreport/biz/a; = null

.field private static b:Z = false

.field private static c:I = 0xa

.field private static d:J = 0x493e0L

.field private static e:J = 0x7530L

.field private static f:J

.field private static g:I

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 5

    .line 154
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p0

    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:J

    .line 119
    :cond_0
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 298
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    .line 302
    sput-boolean p0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;ZJ)V
    .locals 12

    .line 95
    sget-boolean v0, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/tencent/bugly/crashreport/biz/a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/biz/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    .line 99
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move-object v7, v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v9, v4, v6

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "onCreate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.app.Activity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_5

    if-eqz v8, :cond_4

    iput-boolean v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    goto :goto_1

    :cond_4
    const-string v7, "background"

    goto :goto_1

    :cond_5
    const-string v7, "unknown"

    :goto_1
    iput-object v7, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    :cond_6
    if-eqz p1, :cond_9

    .line 101
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    goto :goto_2

    :cond_7
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_9

    :try_start_0
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p1, :cond_8

    new-instance p1, Lcom/tencent/bugly/crashreport/biz/b$1;

    invoke-direct {p1}, Lcom/tencent/bugly/crashreport/biz/b$1;-><init>()V

    sput-object p1, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_8
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    :cond_9
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p0

    iget-wide p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:J

    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    .line 104
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p0

    iget p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:I

    sput p0, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    .line 105
    sput-boolean v3, Lcom/tencent/bugly/crashreport/biz/b;->b:Z

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-eqz p0, :cond_a

    const-string p0, "[init] report delay set to: %d"

    .line 108
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0, v3, v3, p2, p3}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    invoke-static {}, Lcom/tencent/bugly/proguard/r;->a()Lcom/tencent/bugly/proguard/r;

    move-result-object p0

    const/16 p1, 0x3e9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/r;->a(IJ)V

    const-string p0, "[session] launch app, new start"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/biz/a;->a()V

    .line 112
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const-wide/32 p1, 0x1499700

    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p3

    new-instance v0, Lcom/tencent/bugly/crashreport/biz/a$a;

    invoke-direct {v0, p0, v1, v3}, Lcom/tencent/bugly/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {p3, v0, p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 128
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->m:J

    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    .line 130
    :cond_1
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:I

    if-lez v0, :cond_2

    .line 131
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->s:I

    sput v0, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    .line 133
    :cond_2
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 134
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->t:J

    sput-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    :cond_3
    return-void
.end method

.method static synthetic b()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->i:J

    return-wide v0
.end method

.method static synthetic b(J)J
    .locals 0

    .line 26
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide p0
.end method

.method static synthetic c()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide v0
.end method

.method static synthetic c(J)J
    .locals 0

    .line 26
    sput-wide p0, Lcom/tencent/bugly/crashreport/biz/b;->h:J

    return-wide p0
.end method

.method static synthetic d()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->f:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->e:J

    return-wide v0
.end method

.method static synthetic f()I
    .locals 2

    .line 26
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .line 26
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->g:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .line 26
    sget v0, Lcom/tencent/bugly/crashreport/biz/b;->c:I

    return v0
.end method

.method static synthetic i()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->j:J

    return-wide v0
.end method

.method static synthetic j()J
    .locals 2

    .line 26
    sget-wide v0, Lcom/tencent/bugly/crashreport/biz/b;->d:J

    return-wide v0
.end method
