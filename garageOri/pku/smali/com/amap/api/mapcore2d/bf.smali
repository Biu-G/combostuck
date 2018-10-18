.class Lcom/amap/api/mapcore2d/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/ag;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/y;

.field private b:F

.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ae;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/amap/api/maps2d/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->b:F

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->c:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/amap/api/mapcore2d/bf;->d:F

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->e:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->g:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    const-string v0, "PolylineDelegateImp"

    .line 37
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bf;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bf;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "PolylineDelegateImp"

    .line 41
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ae;

    if-eqz v2, :cond_0

    .line 130
    new-instance v3, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/s;-><init>()V

    .line 131
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    iget v5, v2, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v2, v2, Lcom/amap/api/mapcore2d/ae;->b:I

    invoke-interface {v4, v5, v2, v3}, Lcom/amap/api/mapcore2d/y;->b(IILcom/amap/api/mapcore2d/s;)V

    .line 132
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a(Lcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;DI)Lcom/amap/api/mapcore2d/ae;
    .locals 7

    .line 298
    new-instance v0, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 299
    iget v1, p2, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v2, p1, Lcom/amap/api/mapcore2d/ae;->a:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    .line 300
    iget p2, p2, Lcom/amap/api/mapcore2d/ae;->b:I

    iget p1, p1, Lcom/amap/api/mapcore2d/ae;->b:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    mul-double v3, p1, p1

    mul-double v5, v1, v1

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    int-to-double v5, p6

    mul-double v5, v5, p4

    .line 302
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    div-double/2addr v5, p4

    iget p4, p3, Lcom/amap/api/mapcore2d/ae;->b:I

    int-to-double p4, p4

    add-double/2addr v5, p4

    double-to-int p4, v5

    iput p4, v0, Lcom/amap/api/mapcore2d/ae;->b:I

    .line 303
    iget p4, p3, Lcom/amap/api/mapcore2d/ae;->b:I

    iget p5, v0, Lcom/amap/api/mapcore2d/ae;->b:I

    sub-int/2addr p4, p5

    int-to-double p4, p4

    mul-double p4, p4, p1

    div-double/2addr p4, v1

    iget p1, p3, Lcom/amap/api/mapcore2d/ae;->a:I

    int-to-double p1, p1

    add-double/2addr p4, p1

    double-to-int p1, p4

    iput p1, v0, Lcom/amap/api/mapcore2d/ae;->a:I

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore2d/bf;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 252
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 253
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ae;

    iget v2, v2, Lcom/amap/api/mapcore2d/ae;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    .line 254
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/ae;

    iget v4, v4, Lcom/amap/api/mapcore2d/ae;->a:I

    invoke-direct {v1, v2, v4}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 255
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 256
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v4}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 259
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 261
    :goto_0
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 262
    new-instance v4, Lcom/amap/api/mapcore2d/w;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore2d/ae;

    iget v5, v5, Lcom/amap/api/mapcore2d/ae;->b:I

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    .line 263
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore2d/ae;

    iget v6, v6, Lcom/amap/api/mapcore2d/ae;->a:I

    invoke-direct {v4, v5, v6}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 264
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 265
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v6}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 267
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 271
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bf;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bf;->getWidth()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 274
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 276
    iget-boolean v4, p0, Lcom/amap/api/mapcore2d/bf;->f:Z

    if-eqz v4, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bf;->getWidth()F

    move-result v4

    float-to-int v4, v4

    .line 278
    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x4

    new-array v6, v6, [F

    mul-int/lit8 v7, v4, 0x3

    int-to-float v7, v7

    aput v7, v6, v3

    int-to-float v3, v4

    aput v3, v6, v1

    const/4 v1, 0x2

    aput v7, v6, v1

    const/4 v1, 0x3

    aput v3, v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 280
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 282
    :cond_2
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "PolylineDelegateImp"

    const-string v1, "draw"

    .line 284
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;Lcom/amap/api/maps2d/model/LatLngBounds$Builder;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ae;",
            ">;",
            "Lcom/amap/api/maps2d/model/LatLngBounds$Builder;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 356
    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 358
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v5, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v8

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v12, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    invoke-direct {v4, v5, v6, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    move-object/from16 v5, p4

    .line 362
    invoke-virtual {v5, v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 365
    iget-wide v5, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide/16 v8, 0x0

    cmpl-double v5, v5, v8

    if-lez v5, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 367
    :goto_0
    new-instance v14, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v14}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 368
    iget-object v8, v7, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    iget-wide v9, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v11, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v13, v14

    invoke-interface/range {v8 .. v13}, Lcom/amap/api/mapcore2d/y;->a(DDLcom/amap/api/mapcore2d/ae;)V

    .line 369
    new-instance v8, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v8}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 370
    iget-object v15, v7, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    iget-wide v9, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v0, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v16, v9

    move-wide/from16 v18, v0

    move-object/from16 v20, v8

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/mapcore2d/y;->a(DDLcom/amap/api/mapcore2d/ae;)V

    .line 371
    new-instance v5, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 372
    iget-object v0, v7, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    iget-wide v9, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v11, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object/from16 v16, v0

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    move-object/from16 v21, v5

    invoke-interface/range {v16 .. v21}, Lcom/amap/api/mapcore2d/y;->a(DDLcom/amap/api/mapcore2d/ae;)V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v0

    .line 376
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 378
    iget v4, v14, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v11, v8, Lcom/amap/api/mapcore2d/ae;->a:I

    sub-int/2addr v4, v11

    int-to-double v11, v4

    iget v4, v14, Lcom/amap/api/mapcore2d/ae;->b:I

    iget v13, v8, Lcom/amap/api/mapcore2d/ae;->b:I

    sub-int/2addr v4, v13

    move-wide/from16 v22, v9

    int-to-double v9, v4

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    mul-double v9, v9, v0

    .line 381
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v9, v9, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v8

    move-object v3, v5

    move-wide v4, v9

    .line 383
    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;DI)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    move-wide/from16 v2, v22

    .line 391
    invoke-virtual {v7, v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/bf;->a(Ljava/util/List;Ljava/util/List;D)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 47
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 51
    :cond_0
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v3, :cond_5

    .line 57
    invoke-virtual {v3, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 60
    :cond_1
    iget-boolean v4, p0, Lcom/amap/api/mapcore2d/bf;->g:Z

    if-nez v4, :cond_2

    .line 61
    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 62
    iget-object v5, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v10, v1

    invoke-interface/range {v5 .. v10}, Lcom/amap/api/mapcore2d/y;->a(DDLcom/amap/api/mapcore2d/ae;)V

    .line 63
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 67
    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const/4 v8, 0x0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 68
    new-instance v4, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v4}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 69
    iget-object v5, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v10, v4

    invoke-interface/range {v5 .. v10}, Lcom/amap/api/mapcore2d/y;->a(DDLcom/amap/api/mapcore2d/ae;)V

    .line 71
    iget-object v5, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 73
    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 74
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    iget-wide v7, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v9, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v11, v1

    invoke-interface/range {v6 .. v11}, Lcom/amap/api/mapcore2d/y;->a(DDLcom/amap/api/mapcore2d/ae;)V

    .line 75
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_1

    .line 78
    :cond_3
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-virtual {p0, v1, v3, v4, v0}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;Lcom/amap/api/maps2d/model/LatLngBounds$Builder;)V

    :cond_4
    :goto_1
    move-object v1, v3

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 87
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bf;->k:Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "PolylineDelegateImp"

    const-string v1, "calLatLng2Geo"

    .line 90
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method a(Ljava/util/List;Ljava/util/List;D)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ae;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ae;",
            ">;D)V"
        }
    .end annotation

    move-object v0, p1

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v3, v4

    .line 331
    new-instance v5, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v4

    sub-double/2addr v6, v8

    mul-double v8, v6, v6

    .line 332
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/mapcore2d/ae;

    iget v10, v10, Lcom/amap/api/mapcore2d/ae;->a:I

    int-to-double v10, v10

    mul-double v10, v10, v8

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v12, v12, v4

    float-to-double v12, v12

    mul-double v12, v12, v6

    const/4 v6, 0x1

    .line 333
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/mapcore2d/ae;

    iget v7, v7, Lcom/amap/api/mapcore2d/ae;->a:I

    int-to-double v6, v7

    mul-double v6, v6, v12

    mul-double v6, v6, p3

    add-double/2addr v10, v6

    mul-float v4, v4, v4

    const/4 v6, 0x2

    .line 334
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/mapcore2d/ae;

    iget v7, v7, Lcom/amap/api/mapcore2d/ae;->a:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-double v6, v7

    add-double/2addr v10, v6

    .line 335
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore2d/ae;

    iget v6, v6, Lcom/amap/api/mapcore2d/ae;->b:I

    int-to-double v6, v6

    mul-double v6, v6, v8

    const/4 v2, 0x1

    .line 336
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ae;

    iget v2, v2, Lcom/amap/api/mapcore2d/ae;->b:I

    int-to-double v1, v2

    mul-double v1, v1, v12

    mul-double v1, v1, p3

    add-double/2addr v6, v1

    const/4 v1, 0x2

    .line 337
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ae;

    iget v1, v1, Lcom/amap/api/mapcore2d/ae;->b:I

    int-to-float v1, v1

    mul-float v1, v1, v4

    float-to-double v1, v1

    add-double/2addr v6, v1

    mul-double v12, v12, p3

    add-double/2addr v8, v12

    float-to-double v1, v4

    add-double/2addr v8, v1

    div-double/2addr v10, v8

    double-to-int v1, v10

    .line 342
    iput v1, v5, Lcom/amap/api/mapcore2d/ae;->a:I

    div-double/2addr v6, v8

    double-to-int v1, v6

    .line 343
    iput v1, v5, Lcom/amap/api/mapcore2d/ae;->b:I

    move-object/from16 v1, p2

    .line 345
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMapBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bf;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bf;->k:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public equalsRemote(Lcom/amap/api/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-interface {p1}, Lcom/amap/api/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bf;->getId()Ljava/lang/String;

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

.method public getColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget v0, p0, Lcom/amap/api/mapcore2d/bf;->c:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Polyline"

    .line 103
    invoke-static {v0}, Lcom/amap/api/mapcore2d/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bf;->h:Ljava/lang/String;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bf;->b()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->j:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lcom/amap/api/mapcore2d/bf;->b:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget v0, p0, Lcom/amap/api/mapcore2d/bf;->d:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->f:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->g:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->e:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bf;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/y;->removeGLOverlay(Ljava/lang/String;)Z

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iput p1, p0, Lcom/amap/api/mapcore2d/bf;->c:I

    return-void
.end method

.method public setDottedLine(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bf;->f:Z

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->g:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bf;->g:Z

    :cond_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bf;->f:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bf;->j:Ljava/util/List;

    .line 113
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bf;->a(Ljava/util/List;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bf;->e:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iput p1, p0, Lcom/amap/api/mapcore2d/bf;->b:F

    return-void
.end method

.method public setZIndex(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iput p1, p0, Lcom/amap/api/mapcore2d/bf;->d:F

    .line 193
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bf;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->invalidate()V

    return-void
.end method
