.class public Lcom/amap/api/mapcore2d/m;
.super Lcom/amap/api/interfaces/MapCameraMessage;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/amap/api/mapcore2d/ae;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amap/api/interfaces/MapCameraMessage;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/m;
    .locals 1

    .line 19
    new-instance v0, Lcom/amap/api/mapcore2d/m;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/m;-><init>()V

    return-object v0
.end method

.method public static a(F)Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 49
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomTo:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 51
    iput p0, v0, Lcom/amap/api/mapcore2d/m;->zoom:F

    return-object v0
.end method

.method public static a(FF)Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 40
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->scrollBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 42
    iput p0, v0, Lcom/amap/api/mapcore2d/m;->xPixel:F

    .line 43
    iput p1, v0, Lcom/amap/api/mapcore2d/m;->yPixel:F

    return-object v0
.end method

.method public static a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 61
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 63
    iput p0, v0, Lcom/amap/api/mapcore2d/m;->amount:F

    .line 64
    iput-object p1, v0, Lcom/amap/api/mapcore2d/m;->focus:Landroid/graphics/Point;

    return-object v0
.end method

.method static a(Lcom/amap/api/mapcore2d/ae;FFF)Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 132
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 134
    iput-object p0, v0, Lcom/amap/api/mapcore2d/m;->c:Lcom/amap/api/mapcore2d/ae;

    .line 135
    iput p1, v0, Lcom/amap/api/mapcore2d/m;->zoom:F

    .line 136
    iput p2, v0, Lcom/amap/api/mapcore2d/m;->b:F

    .line 137
    iput p3, v0, Lcom/amap/api/mapcore2d/m;->a:F

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 71
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newCameraPosition:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 73
    iput-object p0, v0, Lcom/amap/api/mapcore2d/m;->cameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/m;
    .locals 3

    .line 80
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeCenter:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 82
    new-instance v1, Lcom/amap/api/maps2d/model/CameraPosition;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2, v2}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->cameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/m;
    .locals 1

    .line 119
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p0

    .line 119
    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/m;
    .locals 1

    .line 125
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p0

    .line 125
    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 144
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBounds:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 146
    iput-object p0, v0, Lcom/amap/api/mapcore2d/m;->bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 147
    iput p1, v0, Lcom/amap/api/mapcore2d/m;->padding:I

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLngBounds;III)Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 154
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBoundsWithSize:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    .line 156
    iput-object p0, v0, Lcom/amap/api/mapcore2d/m;->bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 157
    iput p3, v0, Lcom/amap/api/mapcore2d/m;->padding:I

    .line 158
    iput p1, v0, Lcom/amap/api/mapcore2d/m;->width:I

    .line 159
    iput p2, v0, Lcom/amap/api/mapcore2d/m;->height:I

    return-object v0
.end method

.method public static b()Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 25
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomIn:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    return-object v0
.end method

.method public static b(F)Lcom/amap/api/mapcore2d/m;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/m;->a(FLandroid/graphics/Point;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/m;
    .locals 1

    .line 113
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p0

    .line 113
    invoke-static {p0}, Lcom/amap/api/mapcore2d/m;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/m;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/amap/api/mapcore2d/m;
    .locals 2

    .line 32
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomOut:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/m;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    return-object v0
.end method
