.class final Lcom/tencent/bugly/crashreport/biz/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/biz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    .line 239
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 243
    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    .line 246
    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->p:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    .line 248
    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-static {v1, v2}, Lcom/tencent/bugly/crashreport/biz/b;->c(J)J

    .line 250
    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 251
    iput-wide v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "background"

    .line 254
    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "unknown"

    .line 256
    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 10

    .line 192
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 196
    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "unknown"

    .line 200
    iput-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 203
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/info/a;->p:J

    .line 205
    iget-wide v2, v0, Lcom/tencent/bugly/crashreport/common/info/a;->p:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    .line 207
    iget-wide v2, v0, Lcom/tencent/bugly/crashreport/common/info/a;->p:J

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 209
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->d()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->e()J

    move-result-wide v4

    :goto_1
    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 214
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->c()V

    .line 215
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->f()I

    const-string p1, "[session] launch app one times (app in foreground %d seconds and over %d seconds)"

    const/4 v0, 0x2

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->e()J

    move-result-wide v8

    div-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->g()I

    move-result p1

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->h()I

    move-result v0

    rem-int/2addr p1, v0

    const/4 v0, 0x4

    if-nez p1, :cond_3

    .line 221
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p1, v0, v1, v6, v7}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    return-void

    .line 223
    :cond_3
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p1, v0, v3, v6, v7}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 225
    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->i()J

    move-result-wide v6

    sub-long v6, v4, v6

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->j()J

    move-result-wide v8

    cmp-long p1, v6, v8

    if-lez p1, :cond_4

    .line 226
    invoke-static {v4, v5}, Lcom/tencent/bugly/crashreport/biz/b;->b(J)J

    const-string p1, "add a timer to upload hot start user info"

    .line 227
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/biz/b;->j()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v4, Lcom/tencent/bugly/crashreport/biz/a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5, v1}, Lcom/tencent/bugly/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {v0, v4, v2, v3}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
