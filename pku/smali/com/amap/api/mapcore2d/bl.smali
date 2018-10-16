.class public Lcom/amap/api/mapcore2d/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:J

.field private final d:I

.field private e:F

.field private f:Landroid/content/Context;

.field private g:Lcom/amap/api/mapcore2d/y;

.field private h:Lcom/amap/api/maps2d/model/Marker;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bl;->c:J

    const/16 v0, 0x64

    .line 22
    iput v0, p0, Lcom/amap/api/mapcore2d/bl;->d:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bl;->i:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl;->f:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/y;

    :try_start_0
    const-string p2, "sensor"

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl;->a:Landroid/hardware/SensorManager;

    .line 36
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bl;->a:Landroid/hardware/SensorManager;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl;->b:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, -0x5a

    return p0

    :pswitch_1
    const/16 p0, 0xb4

    return p0

    :pswitch_2
    const/16 p0, 0x5a

    return p0

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl;->b:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/Marker;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/maps2d/model/Marker;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bl;->i:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 75
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/bl;->c:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 81
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 82
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_2
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    add-float/2addr p1, v0

    .line 88
    :cond_3
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/bl;->e:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    goto :goto_2

    .line 91
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    :cond_5
    iput p1, p0, Lcom/amap/api/mapcore2d/bl;->e:F

    .line 92
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/maps2d/model/Marker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_7

    .line 94
    :try_start_1
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/bl;->i:Z

    if-eqz p1, :cond_6

    .line 95
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/y;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget v2, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iget p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    iget v3, p0, Lcom/amap/api/mapcore2d/bl;->e:F

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    .line 97
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/y;

    invoke-static {v0}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/y;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    .line 98
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/maps2d/model/Marker;

    iget v0, p0, Lcom/amap/api/mapcore2d/bl;->e:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/model/Marker;->setRotateAngle(F)V

    goto :goto_1

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/maps2d/model/Marker;

    iget v1, p0, Lcom/amap/api/mapcore2d/bl;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/model/Marker;->setRotateAngle(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 104
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :cond_7
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bl;->c:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
