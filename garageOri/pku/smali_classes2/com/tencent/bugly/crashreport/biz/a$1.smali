.class final Lcom/tencent/bugly/crashreport/biz/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/bugly/proguard/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/biz/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/bugly/crashreport/biz/a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/biz/a;Ljava/util/List;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/a$1;->b:Lcom/tencent/bugly/crashreport/biz/a;

    iput-object p2, p0, Lcom/tencent/bugly/crashreport/biz/a$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "up success do final"

    const/4 v0, 0x0

    .line 266
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 268
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/biz/a$1;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 269
    iput-wide v0, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    .line 270
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/biz/a$1;->b:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {v3, v2}, Lcom/tencent/bugly/crashreport/biz/a;->a(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method
