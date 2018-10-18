.class final Lcom/tencent/bugly/crashreport/crash/c$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/c;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 275
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/b;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v6, 0x0

    :goto_0
    int-to-long v7, v6

    cmp-long v7, v7, v4

    if-gez v7, :cond_1

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v6

    .line 291
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/crash/c;->k:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZ)V

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
