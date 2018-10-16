.class final Lcom/amap/api/mapcore2d/de$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/de;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 265
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/de;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/dk;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 267
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    const/4 v3, 0x1

    .line 268
    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/de;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/dk;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    const/4 v4, 0x2

    .line 271
    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/de;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/dk;

    move-result-object v3
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/dk;->c(Landroid/content/Context;)V

    .line 274
    iget-object v0, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/dk;->c(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/dk;->c(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/fc;->a(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/fa;->a(Landroid/content/Context;)V

    .line 280
    invoke-static {}, Lcom/amap/api/mapcore2d/dk;->a()Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/dk$b;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 284
    :try_start_4
    iget-object v5, p0, Lcom/amap/api/mapcore2d/de$3;->a:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/amap/api/mapcore2d/dk$b;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_1
    if-eqz v2, :cond_2

    .line 300
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_2
    if-eqz v3, :cond_5

    .line 303
    :goto_1
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/dk;->d()V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_2

    :catch_3
    move-object v3, v0

    goto :goto_6

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-object v2, v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v3

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v3

    :goto_2
    :try_start_5
    const-string v4, "Log"

    const-string v5, "processLog"

    .line 294
    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_3
    if-eqz v2, :cond_4

    .line 300
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    return-void

    :catchall_3
    move-exception v0

    :goto_4
    if-eqz v1, :cond_6

    .line 297
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_6
    if-eqz v2, :cond_7

    .line 300
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_7
    if-eqz v3, :cond_8

    .line 303
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/dk;->d()V

    .line 296
    :cond_8
    throw v0

    :catch_7
    move-object v1, v0

    move-object v2, v1

    :goto_5
    move-object v3, v2

    :catch_8
    :goto_6
    if-eqz v1, :cond_9

    .line 297
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_9
    if-eqz v2, :cond_a

    .line 300
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_a
    if-eqz v3, :cond_b

    .line 303
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/dk;->d()V

    :cond_b
    return-void
.end method
