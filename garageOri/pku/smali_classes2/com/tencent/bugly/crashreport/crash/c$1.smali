.class final Lcom/tencent/bugly/crashreport/crash/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:[B

.field private synthetic f:Lcom/tencent/bugly/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->f:Lcom/tencent/bugly/crashreport/crash/c;

    iput-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->a:Z

    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "post a throwable %b"

    .line 252
    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 253
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->f:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/c;)Lcom/tencent/bugly/crashreport/crash/e;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->e:[B

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 256
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-eq v3, v1, :cond_0

    .line 257
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string v2, "java catch error: %s"

    .line 260
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
