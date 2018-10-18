.class public final Lcom/tencent/bugly/crashreport/crash/h5/b;
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/crashreport/crash/b;

    .line 46
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 47
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "H5 Crash Happen"

    const/4 v1, 0x0

    .line 112
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "waiting for remote sync"

    .line 124
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const-wide/16 v2, 0x1f4

    .line 127
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

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no remote but still store!"

    .line 135
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 139
    iget-boolean v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p5, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    .line 140
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p5, v0}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "H5"

    .line 141
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v3

    iget-object p5, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v4, p5, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const-string p1, "handle end"

    .line 169
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 146
    :cond_3
    :try_start_3
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->i:Z

    if-nez v0, :cond_4

    const-string p1, "cocos report is disabled."

    .line 147
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_4
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

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->n()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->a:Landroid/content/Context;

    sget v3, Lcom/tencent/bugly/crashreport/crash/c;->d:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

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

    const-string v2, "0"

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

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    iput-boolean v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Z

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->A()I

    move-result v2

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:I

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->B()I

    move-result v2

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/v;->a(Z)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    :cond_5
    if-eqz p5, :cond_6

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-interface {v2, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_6
    const-string v2, "H5"

    .line 158
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v3

    iget-object p5, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v4, p5, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 160
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 162
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/h5/b;->b:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_2
    const-string p1, "handle end"

    .line 169
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 165
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 169
    :goto_3
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "handle end"

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p1
.end method
