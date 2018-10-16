.class public final Lcom/tencent/bugly/crashreport/crash/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/tencent/bugly/proguard/x;

.field private static b:Lcom/tencent/bugly/proguard/w;

.field private static c:Lcom/tencent/bugly/crashreport/crash/h5/b;


# direct methods
.method static synthetic a()V
    .locals 8

    .line 17
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.tencent.bugly.unity.UnityAgent"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "com.tencent.bugly"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v6, "sdkPackageName"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "no unity agent"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :catch_1
    :goto_0
    :try_start_2
    const-string v4, "com.tencent.bugly.cocos.Cocos2dxAgent"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "com.tencent.bugly"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v0, "sdkPackageName"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    return-void

    :catch_3
    const-string v0, "no cocos agent"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 14

    .line 24
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v7, Lcom/tencent/bugly/proguard/x;

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v4

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v5

    iget-object v6, v0, Lcom/tencent/bugly/crashreport/crash/c;->l:Lcom/tencent/bugly/BuglyStrategy$a;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/x;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/BuglyStrategy$a;)V

    sput-object v7, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/proguard/x;

    .line 36
    new-instance v1, Lcom/tencent/bugly/proguard/w;

    iget-object v10, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v11

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v12

    iget-object v13, v0, Lcom/tencent/bugly/crashreport/crash/c;->l:Lcom/tencent/bugly/BuglyStrategy$a;

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/tencent/bugly/proguard/w;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/BuglyStrategy$a;)V

    sput-object v1, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/proguard/w;

    .line 40
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/h5/b;

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v5

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v6

    iget-object v7, v0, Lcom/tencent/bugly/crashreport/crash/c;->l:Lcom/tencent/bugly/BuglyStrategy$a;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/bugly/crashreport/crash/h5/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/BuglyStrategy$a;)V

    sput-object v1, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/crash/h5/b;

    .line 46
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p0

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/d$1;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/d$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/proguard/w;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/proguard/w;

    iget-boolean p0, p0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->h:Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 95
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/proguard/w;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v7, Lcom/tencent/bugly/crashreport/crash/d$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/d$3;-><init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/proguard/x;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/crash/d$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/d$2;-><init>(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/crash/h5/b;

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v7, Lcom/tencent/bugly/crashreport/crash/d$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/d$4;-><init>(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Lcom/tencent/bugly/proguard/t;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b()Lcom/tencent/bugly/proguard/x;
    .locals 1

    .line 17
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->a:Lcom/tencent/bugly/proguard/x;

    return-object v0
.end method

.method static synthetic c()Lcom/tencent/bugly/proguard/w;
    .locals 1

    .line 17
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->b:Lcom/tencent/bugly/proguard/w;

    return-object v0
.end method

.method static synthetic d()Lcom/tencent/bugly/crashreport/crash/h5/b;
    .locals 1

    .line 17
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/d;->c:Lcom/tencent/bugly/crashreport/crash/h5/b;

    return-object v0
.end method
