.class Lcom/amap/api/mapcore2d/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/aa;


# instance fields
.field private final a:D

.field private final b:D

.field private c:Lcom/amap/api/mapcore2d/y;

.field private d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:F

.field private g:F

.field private h:Lcom/amap/api/maps2d/model/LatLngBounds;

.field private i:F

.field private j:F

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 24
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/x;->a:D

    const-wide v0, 0x41584dae328f5c29L    # 6371000.79

    .line 25
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/x;->b:D

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/x;->k:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/amap/api/mapcore2d/x;->l:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    iput v0, p0, Lcom/amap/api/mapcore2d/x;->m:F

    .line 37
    iput v0, p0, Lcom/amap/api/mapcore2d/x;->n:F

    const-string v0, "GroundOverlayDelegateImp"

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/x;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/x;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GroundOverlayDelegateImp"

    .line 47
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/w;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 331
    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 332
    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v4, v4, v2

    double-to-int p1, v4

    .line 333
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v1, v0, p1}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    return-object v1
.end method

.method private c()V
    .locals 14

    .line 110
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->f:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v4

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double v2, v2, v6

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    .line 112
    iget v2, p0, Lcom/amap/api/mapcore2d/x;->g:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    .line 115
    :try_start_0
    new-instance v4, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/mapcore2d/x;->n:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    float-to-double v10, v8

    mul-double v10, v10, v2

    sub-double/2addr v6, v10

    iget-object v8, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v8, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v8, p0, Lcom/amap/api/mapcore2d/x;->m:F

    float-to-double v12, v8

    mul-double v12, v12, v0

    sub-double/2addr v10, v12

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v10, p0, Lcom/amap/api/mapcore2d/x;->n:F

    float-to-double v10, v10

    mul-double v10, v10, v2

    add-double/2addr v7, v10

    iget-object v2, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/mapcore2d/x;->m:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    mul-double v9, v9, v0

    add-double/2addr v2, v9

    invoke-direct {v6, v7, v8, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 13

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 127
    iget-object v1, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 129
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget v5, p0, Lcom/amap/api/mapcore2d/x;->n:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    float-to-double v5, v6

    iget-wide v7, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v9, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iget-wide v5, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/mapcore2d/x;->m:F

    float-to-double v7, v7

    iget-wide v9, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v11, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 134
    iget-object v2, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double v2, v2, v6

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v10, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    mul-double v2, v2, v8

    mul-double v2, v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/mapcore2d/x;->f:F

    .line 136
    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v1, v8

    mul-double v1, v1, v6

    mul-double v1, v1, v4

    double-to-float v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/x;->g:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/x;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/x;->b()V

    .line 295
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore2d/x;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    return-void

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/x;->p:Landroid/graphics/Bitmap;

    .line 299
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 302
    iget-object v1, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 303
    iget-object v2, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 304
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/x;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 305
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/x;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    .line 306
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/x;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    .line 307
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 308
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 309
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 310
    iget-object v6, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v6}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 312
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 313
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 314
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 315
    iget v2, p0, Lcom/amap/api/mapcore2d/x;->l:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    sub-float/2addr v3, v2

    float-to-int v2, v3

    .line 316
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 319
    iget v2, p0, Lcom/amap/api/mapcore2d/x;->i:F

    iget v3, v5, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 320
    iget-object v2, p0, Lcom/amap/api/mapcore2d/x;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMapBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 170
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/x;->d()V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/x;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 3

    const-string v0, "destroy"

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/x;->remove()V

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore2d/x;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/amap/api/mapcore2d/x;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    iput-object v2, p0, Lcom/amap/api/mapcore2d/x;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 152
    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 153
    iput-object v2, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GroundOverlayDelegateImp"

    .line 155
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destroy erro"

    const-string v1, "GroundOverlayDelegateImp destroy"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public equalsRemote(Lcom/amap/api/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-interface {p1}, Lcom/amap/api/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/x;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getBearing()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->i:F

    return v0
.end method

.method public getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->g:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GroundOverlay"

    .line 59
    invoke-static {v0}, Lcom/amap/api/mapcore2d/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/x;->o:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->l:F

    return v0
.end method

.method public getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->f:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->j:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/x;->k:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/x;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/y;->removeGLOverlay(Ljava/lang/String;)Z

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->m:F

    .line 284
    iput p2, p0, Lcom/amap/api/mapcore2d/x;->n:F

    return-void
.end method

.method public setBearing(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 249
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->i:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    float-to-double v2, p1

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 251
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->i:F

    goto :goto_0

    .line 253
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->i:F

    :goto_0
    return-void
.end method

.method public setDimensions(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width must be non-negative"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 195
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->f:F

    .line 196
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->g:F

    goto :goto_0

    .line 199
    :cond_1
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->f:F

    .line 200
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->g:F

    :goto_0
    return-void
.end method

.method public setDimensions(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width and Height must be non-negative"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore2d/x;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore2d/x;->g:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 210
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->f:F

    .line 211
    iput p2, p0, Lcom/amap/api/mapcore2d/x;->g:F

    goto :goto_0

    .line 214
    :cond_2
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->f:F

    .line 215
    iput p2, p0, Lcom/amap/api/mapcore2d/x;->g:F

    :goto_0
    return-void
.end method

.method public setImage(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/amap/api/mapcore2d/x;->d:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    .line 177
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/x;->c()V

    goto :goto_0

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/x;->e:Lcom/amap/api/maps2d/model/LatLng;

    :goto_0
    return-void
.end method

.method public setPositionFromBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 233
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iput-object p1, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 235
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/x;->d()V

    goto :goto_0

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/x;->h:Lcom/amap/api/maps2d/model/LatLngBounds;

    :goto_0
    return-void
.end method

.method public setTransparency(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Transparency must be in the range [0..1]"

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->l:F

    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/x;->k:Z

    .line 78
    iget-object p1, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->postInvalidate()V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/amap/api/mapcore2d/x;->j:F

    .line 67
    iget-object p1, p0, Lcom/amap/api/mapcore2d/x;->c:Lcom/amap/api/mapcore2d/y;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->postInvalidate()V

    return-void
.end method
