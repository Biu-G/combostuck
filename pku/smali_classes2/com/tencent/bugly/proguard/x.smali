.class public final Lcom/tencent/bugly/proguard/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/crashreport/crash/b;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private d:Lcom/tencent/bugly/crashreport/common/info/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/BuglyStrategy$a;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tencent/bugly/proguard/x;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/tencent/bugly/proguard/x;->b:Lcom/tencent/bugly/crashreport/crash/b;

    .line 41
    iput-object p3, p0, Lcom/tencent/bugly/proguard/x;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 42
    iput-object p4, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "U3D Crash Happen"

    const/4 v1, 0x0

    .line 110
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 113
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "waiting for remote sync"

    .line 115
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const-wide/16 v2, 0x1f4

    .line 118
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    add-int/lit16 v0, v0, 0x1f4

    const/16 v2, 0x1388

    if-lt v0, v2, :cond_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no remote but still store!"

    .line 130
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 134
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    .line 135
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "U3D"

    .line 136
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v5, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p1, "handle end"

    .line 158
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 141
    :cond_3
    :try_start_3
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->n()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->a:Landroid/content/Context;

    sget v3, Lcom/tencent/bugly/crashreport/crash/c;->d:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/v;->a(Z)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    const/4 v2, 0x4

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    const-string v2, ""

    if-eqz p4, :cond_4

    const-string v3, "\n"

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    aget-object v2, v3, v1

    :cond_4
    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object p4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    sget v2, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    iput-boolean v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->A()I

    move-result v2

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->B()I

    move-result v2

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/x;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    const-string v2, "U3D"

    .line 148
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/x;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v4, v4, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 150
    iget-object p1, p0, Lcom/tencent/bugly/proguard/x;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 151
    iget-object p1, p0, Lcom/tencent/bugly/proguard/x;->b:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 p2, 0x1388

    const/4 p4, 0x1

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_1
    const-string p1, "handle end"

    .line 158
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 154
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 158
    :goto_2
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "handle end"

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p1
.end method
