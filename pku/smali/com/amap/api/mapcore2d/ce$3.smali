.class Lcom/amap/api/mapcore2d/ce$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ce;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/aq;Lcom/amap/api/mapcore2d/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ce;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ce;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p1, "ontouch"

    .line 129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ce;->c(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getZoomLevel()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ce;->c(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/y;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/y;->getMaxZoomLevel()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 132
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ce;->e(Lcom/amap/api/mapcore2d/ce;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ce;->i(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 135
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ce;->e(Lcom/amap/api/mapcore2d/ce;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ce;->f(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce$3;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ce;->c(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/y;

    move-result-object p2

    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {}, Lcom/amap/api/mapcore2d/m;->b()Lcom/amap/api/mapcore2d/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    invoke-interface {p2, v0}, Lcom/amap/api/mapcore2d/y;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "ZoomControllerView"

    .line 141
    invoke-static {p2, v0, p1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method
