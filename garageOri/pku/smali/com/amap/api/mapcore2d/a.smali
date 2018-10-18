.class Lcom/amap/api/mapcore2d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method


# virtual methods
.method protected a(Lcom/amap/api/interfaces/MapCameraMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    move-result v0

    .line 70
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->scrollBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne v1, v2, :cond_2

    .line 71
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    iget v2, p1, Lcom/amap/api/interfaces/MapCameraMessage;->xPixel:F

    float-to-int v2, v2

    iget p1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->yPixel:F

    float-to-int p1, p1

    invoke-virtual {v1, v2, p1}, Lcom/amap/api/mapcore2d/aq;->d(II)V

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto/16 :goto_1

    .line 76
    :cond_2
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomIn:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 77
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/amap/api/mapcore2d/aq;->a(Z)V

    goto/16 :goto_1

    .line 78
    :cond_3
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomOut:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    .line 79
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/amap/api/mapcore2d/aq;->a(Z)V

    goto/16 :goto_1

    .line 80
    :cond_4
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomTo:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne v1, v2, :cond_5

    .line 81
    iget p1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->zoom:F

    .line 82
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/aq;->c(F)F

    goto/16 :goto_1

    .line 83
    :cond_5
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne v1, v2, :cond_7

    .line 84
    iget v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->amount:F

    .line 85
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    add-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v1

    .line 86
    iget-object v4, p1, Lcom/amap/api/interfaces/MapCameraMessage;->focus:Landroid/graphics/Point;

    sub-float v3, v1, v0

    if-eqz v4, :cond_6

    .line 89
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;ZJ)V

    goto/16 :goto_1

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/aq;->c(F)F

    goto :goto_1

    .line 93
    :cond_7
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newCameraPosition:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-wide v5, 0x412e848000000000L    # 1000000.0

    if-ne v1, v2, :cond_8

    .line 94
    iget-object p1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->cameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    if-eqz p1, :cond_c

    .line 96
    iget-object v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double v1, v1, v5

    double-to-int v1, v1

    .line 97
    iget-object v2, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v2, v2, v5

    double-to-int v2, v2

    .line 98
    iget-object v3, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object v3

    new-instance v4, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v4, v1, v2}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    iget p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {v3, v4, p1}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;F)V

    goto :goto_1

    .line 101
    :cond_8
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeCenter:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne v1, v2, :cond_9

    .line 102
    iget-object p1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->cameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 103
    iget-object v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double v1, v1, v5

    double-to-int v1, v1

    .line 104
    iget-object p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v2, v2, v5

    double-to-int p1, v2

    .line 105
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object v2

    new-instance v3, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v3, v1, p1}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;)V

    goto :goto_1

    .line 106
    :cond_9
    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBounds:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-eq v1, v2, :cond_b

    iget-object v1, p1, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBoundsWithSize:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne v1, v2, :cond_a

    goto :goto_0

    .line 110
    :cond_a
    iput-boolean v3, p1, Lcom/amap/api/interfaces/MapCameraMessage;->isChangeFinished:Z

    goto :goto_1

    .line 108
    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/interfaces/MapCameraMessage;ZJ)V

    .line 112
    :cond_c
    :goto_1
    iget p1, p0, Lcom/amap/api/mapcore2d/a;->b:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    .line 113
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->c()Lcom/amap/api/mapcore2d/al;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/al;->isScaleControlsEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 114
    iget-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->s()V

    .line 116
    :cond_d
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/l;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_e
    :goto_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "AMapCallback"

    const-string v1, "runCameraUpdate"

    .line 118
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
