.class Lcom/amap/api/mapcore2d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;Landroid/content/Context;Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 0

    .line 3121
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b$b;->a:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3122
    iput-object p2, p0, Lcom/amap/api/mapcore2d/b$b;->b:Landroid/content/Context;

    .line 3123
    iput-object p3, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 3130
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3137
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_0

    .line 3138
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "AMapDelegateImpGLSurfaceView"

    const-string v3, "RemoveCacheRunnable"

    .line 3132
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 3137
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_0

    .line 3138
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 3137
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    if-eqz v2, :cond_1

    .line 3138
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$b;->c:Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;

    invoke-interface {v2, v0}, Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 3141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3142
    :cond_1
    :goto_2
    throw v1
.end method
