.class Lcom/amap/api/mapcore2d/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/f;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/f;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "run"

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "TaskRunCach"

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 204
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/f;->a(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 205
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/f;->a(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    .line 209
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/f;->b(Lcom/amap/api/mapcore2d/f;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 210
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/az;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/f;->a(Lcom/amap/api/mapcore2d/f;Z)Z

    goto :goto_0

    .line 213
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 214
    iget-object v1, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/f;->g()I

    move-result v3

    invoke-virtual {v1, v3, v5}, Lcom/amap/api/mapcore2d/bo;->a(IZ)Ljava/util/ArrayList;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 217
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 220
    :cond_5
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/f;->b(Lcom/amap/api/mapcore2d/f;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v3, :cond_6

    return-void

    .line 224
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/f;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v6, "AsyncServer"

    .line 226
    invoke-static {v3, v6, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_7

    .line 228
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    .line 229
    invoke-static {v3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 230
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {v3, v2, v4}, Lcom/amap/api/mapcore2d/bo;->a(Ljava/util/List;Z)V

    .line 232
    :cond_7
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$2;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/f;->b(Lcom/amap/api/mapcore2d/f;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v3, :cond_2

    const-wide/16 v3, 0x32

    .line 234
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "AsyncServer"

    .line 238
    invoke-static {v3, v4, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v2, "AsyncServer"

    .line 244
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
