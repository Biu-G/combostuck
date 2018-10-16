.class Lcom/amap/api/mapcore2d/dg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/dg;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/mapcore2d/cy;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/mapcore2d/dg;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/dg;Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Z)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dg$1;->d:Lcom/amap/api/mapcore2d/dg;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/dg$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/dg$1;->b:Lcom/amap/api/mapcore2d/cy;

    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/dg$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 215
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore2d/dw;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dg$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/dw;-><init>(Landroid/content/Context;Z)V

    .line 218
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dg$1;->b:Lcom/amap/api/mapcore2d/cy;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/dw;->a(Lcom/amap/api/mapcore2d/cy;)V

    .line 219
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/dg$1;->c:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    :try_start_3
    new-instance v1, Lcom/amap/api/mapcore2d/dx;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dg$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/dx;-><init>(Landroid/content/Context;)V

    .line 226
    new-instance v2, Lcom/amap/api/mapcore2d/dy;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/dy;-><init>()V

    .line 227
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dy;->c(Z)V

    .line 228
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dy;->a(Z)V

    .line 229
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/dy;->b(Z)V

    .line 232
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/dx;->a(Lcom/amap/api/mapcore2d/dy;)V

    .line 233
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dg$1;->d:Lcom/amap/api/mapcore2d/dg;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dg;->a(Lcom/amap/api/mapcore2d/dg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/de;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 233
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v1

    .line 219
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
