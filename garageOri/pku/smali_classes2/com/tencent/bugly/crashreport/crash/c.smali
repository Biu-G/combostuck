.class public final Lcom/tencent/bugly/crashreport/crash/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:Z = false

.field public static c:Z = true

.field public static d:I = 0x4e20

.field public static e:I = 0x4e20

.field public static f:J = 0x240c8400L

.field public static g:Ljava/lang/String; = null

.field public static h:Z = false

.field public static i:Ljava/lang/String; = null

.field public static j:I = 0x1388

.field private static n:Lcom/tencent/bugly/crashreport/crash/c;


# instance fields
.field public final k:Lcom/tencent/bugly/crashreport/crash/b;

.field public l:Lcom/tencent/bugly/BuglyStrategy$a;

.field private final m:Landroid/content/Context;

.field private final o:Lcom/tencent/bugly/crashreport/crash/e;

.field private final p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field private q:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private r:Lcom/tencent/bugly/proguard/t;

.field private final s:Lcom/tencent/bugly/crashreport/crash/anr/b;

.field private t:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/t;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/l;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sput p1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    if-nez p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    move-object/from16 v11, p2

    goto :goto_1

    :cond_1
    move-object v11, v3

    .line 78
    :goto_1
    iput-object v11, v0, Lcom/tencent/bugly/crashreport/crash/c;->m:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c;->q:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 80
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->a()Lcom/tencent/bugly/proguard/r;

    move-result-object v4

    .line 81
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v5

    .line 82
    invoke-static {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v12

    move-object/from16 v13, p3

    .line 83
    iput-object v13, v0, Lcom/tencent/bugly/crashreport/crash/c;->r:Lcom/tencent/bugly/proguard/t;

    move-object/from16 v7, p5

    .line 84
    iput-object v7, v0, Lcom/tencent/bugly/crashreport/crash/c;->l:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 85
    new-instance v9, Lcom/tencent/bugly/crashreport/crash/b;

    iget-object v6, v0, Lcom/tencent/bugly/crashreport/crash/c;->q:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-object v1, v9

    move v2, p1

    move-object v3, v11

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tencent/bugly/crashreport/crash/b;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/m;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/l;)V

    iput-object v9, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    .line 89
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/e;

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/crash/c;->q:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v1, v11, v2, v3, v12}, Lcom/tencent/bugly/crashreport/crash/e;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;)V

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/e;

    .line 90
    iget-object v6, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    iget-object v7, v0, Lcom/tencent/bugly/crashreport/crash/c;->q:Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/proguard/t;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 93
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/anr/b;

    iget-object v6, v0, Lcom/tencent/bugly/crashreport/crash/c;->q:Lcom/tencent/bugly/crashreport/common/strategy/a;

    iget-object v9, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    move-object v4, v1

    move-object v5, v11

    move-object v7, v12

    invoke-direct/range {v4 .. v9}, Lcom/tencent/bugly/crashreport/crash/anr/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/proguard/t;Lcom/tencent/bugly/crashreport/crash/b;)V

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;

    .line 98
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->getInstance()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 99
    invoke-virtual {v1, v2}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->addFilter(Ljava/lang/String;)V

    .line 100
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v1, v11, v2}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastRecevier;->regist(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;)V

    return-void
.end method

.method public static a()Lcom/tencent/bugly/crashreport/crash/c;
    .locals 1

    .line 121
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/c;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/c;)Lcom/tencent/bugly/crashreport/crash/e;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/e;

    return-object p0
.end method

.method public static declared-synchronized a(ILandroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/l;Ljava/lang/String;)V
    .locals 8

    const-class p0, Lcom/tencent/bugly/crashreport/crash/c;

    monitor-enter p0

    .line 106
    :try_start_0
    sget-object p4, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/c;

    if-nez p4, :cond_0

    .line 107
    new-instance p4, Lcom/tencent/bugly/crashreport/crash/c;

    const/16 v1, 0x3ec

    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p4

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/crashreport/crash/c;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/t;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/l;Ljava/lang/String;)V

    sput-object p4, Lcom/tencent/bugly/crashreport/crash/c;->n:Lcom/tencent/bugly/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/c;->m:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 271
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/crashreport/crash/c;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/e;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    .locals 7

    .line 247
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/c;->r:Lcom/tencent/bugly/proguard/t;

    new-instance p4, Lcom/tencent/bugly/crashreport/crash/c$1;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/crashreport/crash/c$1;-><init>(Lcom/tencent/bugly/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)V

    invoke-virtual {p3, p4}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()Z
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 139
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/m;->a(I)Ljava/util/List;

    move-result-object v1

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_4

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/o;

    .line 145
    iget-object v5, v4, Lcom/tencent/bugly/proguard/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Ljava/lang/Boolean;

    .line 147
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 152
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/m;->a(Ljava/util/List;)V

    :cond_3
    return v2

    :cond_4
    const/4 v0, 0x0

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/c;->t:Ljava/lang/Boolean;

    return v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V

    .line 166
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 167
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 164
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->b()V

    .line 175
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 176
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 173
    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Z)V

    return-void
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->p:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 224
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 5

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_1

    :try_start_1
    const-string v1, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, 0x1388

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 231
    monitor-exit p0

    throw v0
.end method

.method public final l()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c;->s:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a()Z

    move-result v0

    return v0
.end method
