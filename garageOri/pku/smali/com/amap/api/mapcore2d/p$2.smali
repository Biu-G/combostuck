.class Lcom/amap/api/mapcore2d/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/p;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/as;Lcom/amap/api/mapcore2d/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/p;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/p;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amap/api/mapcore2d/p$2;->a:Lcom/amap/api/mapcore2d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p$2;->a:Lcom/amap/api/mapcore2d/p;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/p;->b(Lcom/amap/api/mapcore2d/p;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/mapcore2d/p$2;->a:Lcom/amap/api/mapcore2d/p;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/p;->a(Lcom/amap/api/mapcore2d/p;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p$2;->a:Lcom/amap/api/mapcore2d/p;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/p;->b(Lcom/amap/api/mapcore2d/p;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/mapcore2d/p$2;->a:Lcom/amap/api/mapcore2d/p;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/p;->c(Lcom/amap/api/mapcore2d/p;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p$2;->a:Lcom/amap/api/mapcore2d/p;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/p;->d(Lcom/amap/api/mapcore2d/p;)Lcom/amap/api/mapcore2d/y;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/amap/api/mapcore2d/p$2;->a:Lcom/amap/api/mapcore2d/p;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/p;->d(Lcom/amap/api/mapcore2d/p;)Lcom/amap/api/mapcore2d/y;

    move-result-object p2

    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    new-instance v1, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v2, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    .line 84
    invoke-static {v1}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/m;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    .line 83
    invoke-interface {p2, v0}, Lcom/amap/api/mapcore2d/y;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CompassView"

    const-string v0, "onTouch"

    .line 87
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
