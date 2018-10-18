.class Lcom/amap/api/mapcore2d/ap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ap;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/as;Lcom/amap/api/mapcore2d/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ap;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ap;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string p1, "onTouch"

    .line 71
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ap;->a(Lcom/amap/api/mapcore2d/ap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ap;->c(Lcom/amap/api/mapcore2d/ap;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ap;->b(Lcom/amap/api/mapcore2d/ap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 78
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ap;->c(Lcom/amap/api/mapcore2d/ap;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ap;->d(Lcom/amap/api/mapcore2d/ap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ap;->e(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/y;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/amap/api/mapcore2d/y;->setMyLocationEnabled(Z)V

    .line 80
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ap;->e(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/y;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/y;->getMyLocation()Landroid/location/Location;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    .line 84
    :cond_2
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 85
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 86
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ap;->e(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/y;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/amap/api/mapcore2d/y;->showMyLocationOverlay(Landroid/location/Location;)V

    .line 87
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/ap;->e(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/y;

    move-result-object p2

    new-instance v2, Lcom/amap/api/maps2d/CameraUpdate;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ap$2;->a:Lcom/amap/api/mapcore2d/ap;

    .line 88
    invoke-static {v3}, Lcom/amap/api/mapcore2d/ap;->e(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/y;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/y;->getZoomLevel()F

    move-result v3

    .line 87
    invoke-static {v0, v3}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    invoke-interface {p2, v2}, Lcom/amap/api/mapcore2d/y;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "LocationView"

    .line 90
    invoke-static {p2, v0, p1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method
