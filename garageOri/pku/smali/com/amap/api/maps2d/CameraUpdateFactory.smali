.class public final Lcom/amap/api/maps2d/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 150
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 99
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    .line 100
    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static newLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 111
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 138
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;III)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 176
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/LatLngBounds;III)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 123
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static scrollBy(FF)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 49
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/m;->a(FF)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static zoomBy(F)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 72
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->b(F)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 87
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/m;->a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static zoomIn()Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .line 23
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {}, Lcom/amap/api/mapcore2d/m;->b()Lcom/amap/api/mapcore2d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static zoomOut()Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    .line 33
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {}, Lcom/amap/api/mapcore2d/m;->c()Lcom/amap/api/mapcore2d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method

.method public static zoomTo(F)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 1

    .line 60
    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->a(F)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-object v0
.end method
