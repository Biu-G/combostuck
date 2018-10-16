.class Lcom/amap/api/mapcore2d/at$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/at;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/at;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amap/api/mapcore2d/at$1;->a:Lcom/amap/api/mapcore2d/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at$1;->a:Lcom/amap/api/mapcore2d/at;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/at;->a(Lcom/amap/api/mapcore2d/at;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/at$1;->a:Lcom/amap/api/mapcore2d/at;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/at;->b:Lcom/amap/api/mapcore2d/at$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at$1;->a:Lcom/amap/api/mapcore2d/at;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/at;->b(Lcom/amap/api/mapcore2d/at;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/at$1;->a:Lcom/amap/api/mapcore2d/at;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/at;->b:Lcom/amap/api/mapcore2d/at$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at$1;->a:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    .line 87
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 81
    :goto_0
    monitor-exit p0

    throw v0

    .line 93
    :catch_1
    :goto_1
    monitor-exit p0

    return-void
.end method
