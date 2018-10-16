.class Lcom/amap/api/mapcore2d/eu$1;
.super Lcom/amap/api/mapcore2d/ff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ev;

.field final synthetic b:Lcom/amap/api/mapcore2d/ew;

.field final synthetic c:Lcom/amap/api/mapcore2d/eu;


# virtual methods
.method public a()V
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eu$1;->c:Lcom/amap/api/mapcore2d/eu;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/eu$1;->a:Lcom/amap/api/mapcore2d/ev;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/eu;->b(Lcom/amap/api/mapcore2d/ev;Z)Lcom/amap/api/mapcore2d/ex;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore2d/eu$1;->c:Lcom/amap/api/mapcore2d/eu;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/eu$1;->b:Lcom/amap/api/mapcore2d/ew;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/eu;->a(Lcom/amap/api/mapcore2d/eu;Lcom/amap/api/mapcore2d/ex;Lcom/amap/api/mapcore2d/ew;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore2d/eu$1;->c:Lcom/amap/api/mapcore2d/eu;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/eu$1;->b:Lcom/amap/api/mapcore2d/ew;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/eu;->a(Lcom/amap/api/mapcore2d/eu;Lcom/amap/api/mapcore2d/co;Lcom/amap/api/mapcore2d/ew;)V

    :goto_0
    return-void
.end method
