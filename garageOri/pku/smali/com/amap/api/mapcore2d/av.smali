.class Lcom/amap/api/mapcore2d/av;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/av$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field c:F

.field public d:D

.field e:I

.field f:D

.field g:D

.field public h:I

.field public i:I

.field public j:F

.field public k:D

.field public l:Lcom/amap/api/mapcore2d/w;

.field public m:Lcom/amap/api/mapcore2d/w;

.field public n:Landroid/graphics/Point;

.field public o:Lcom/amap/api/mapcore2d/av$a;

.field p:Lcom/amap/api/mapcore2d/az$c;

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/az$c;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 20
    iput v0, p0, Lcom/amap/api/mapcore2d/av;->a:I

    .line 21
    iput v0, p0, Lcom/amap/api/mapcore2d/av;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/amap/api/mapcore2d/av;->c:F

    const-wide v0, 0x405d196b11c6d1e1L    # 116.39716

    .line 26
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->q:D

    const-wide v0, 0x4043f556191148feL    # 39.91669

    .line 31
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->r:D

    const-wide v0, 0x41031bf8456d5cfbL    # 156543.0339

    .line 36
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->d:D

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/amap/api/mapcore2d/av;->e:I

    const-wide v0, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    .line 46
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->f:D

    const-wide v0, 0x41731bf84570a3d7L    # 2.003750834E7

    .line 47
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->g:D

    .line 49
    sget v0, Lcom/amap/api/mapcore2d/q;->d:I

    iput v0, p0, Lcom/amap/api/mapcore2d/av;->h:I

    .line 50
    sget v0, Lcom/amap/api/mapcore2d/q;->c:I

    iput v0, p0, Lcom/amap/api/mapcore2d/av;->i:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 51
    iput v0, p0, Lcom/amap/api/mapcore2d/av;->j:F

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->k:D

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    .line 56
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->m:Lcom/amap/api/mapcore2d/w;

    .line 58
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    .line 59
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    .line 61
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    .line 578
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->s:D

    .line 64
    iput-object p1, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    return-void
.end method

.method private b(Landroid/graphics/PointF;Landroid/graphics/PointF;)[D
    .locals 9

    .line 537
    iget-wide v7, p0, Lcom/amap/api/mapcore2d/av;->k:D

    .line 538
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/av;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    .line 540
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/av;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;

    move-result-object p2

    .line 543
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v0

    .line 544
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 545
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v2

    .line 546
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide p1

    sub-double/2addr v2, p1

    .line 548
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide p1

    add-double/2addr p1, v0

    .line 550
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v0

    add-double/2addr v0, v2

    .line 552
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->a:F

    float-to-double v2, v2

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->b:F

    iget-object v3, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v3, v3, Lcom/amap/api/mapcore2d/av$a;->a:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr p1, v2

    goto :goto_0

    .line 556
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->b:F

    float-to-double v2, v2

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->b:F

    iget-object v3, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v3, v3, Lcom/amap/api/mapcore2d/av$a;->a:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr p1, v2

    goto :goto_1

    .line 560
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->d:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 561
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->c:F

    iget-object v3, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v3, v3, Lcom/amap/api/mapcore2d/av$a;->d:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_2

    .line 564
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->c:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    .line 565
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v2, v2, Lcom/amap/api/mapcore2d/av$a;->c:F

    iget-object v3, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iget v3, v3, Lcom/amap/api/mapcore2d/av$a;->d:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr v0, v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    .line 568
    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    const/4 p1, 0x1

    aput-wide v0, v2, p1

    return-object v2
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;)F
    .locals 19

    move-object/from16 v0, p0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 591
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/w;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v3

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/w;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v5

    .line 593
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/mapcore2d/w;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v7

    .line 594
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/mapcore2d/w;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v1

    .line 596
    iget-wide v9, v0, Lcom/amap/api/mapcore2d/av;->s:D

    mul-double v3, v3, v9

    .line 597
    iget-wide v9, v0, Lcom/amap/api/mapcore2d/av;->s:D

    mul-double v5, v5, v9

    .line 598
    iget-wide v9, v0, Lcom/amap/api/mapcore2d/av;->s:D

    mul-double v7, v7, v9

    .line 599
    iget-wide v9, v0, Lcom/amap/api/mapcore2d/av;->s:D

    mul-double v1, v1, v9

    .line 600
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 601
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 602
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 603
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 604
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 605
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 606
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 607
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const/4 v0, 0x3

    move-wide/from16 v17, v15

    .line 608
    new-array v15, v0, [D

    .line 609
    new-array v0, v0, [D

    mul-double v3, v3, v5

    const/16 v16, 0x0

    aput-wide v3, v15, v16

    mul-double v5, v5, v9

    const/4 v3, 0x1

    aput-wide v5, v15, v3

    const/4 v4, 0x2

    aput-wide v11, v15, v4

    mul-double v7, v7, v1

    aput-wide v7, v0, v16

    mul-double v1, v1, v13

    aput-wide v1, v0, v3

    aput-wide v17, v0, v4

    .line 616
    aget-wide v1, v15, v16

    aget-wide v5, v0, v16

    sub-double/2addr v1, v5

    aget-wide v5, v15, v16

    aget-wide v7, v0, v16

    sub-double/2addr v5, v7

    mul-double v1, v1, v5

    aget-wide v5, v15, v3

    aget-wide v7, v0, v3

    sub-double/2addr v5, v7

    aget-wide v7, v15, v3

    aget-wide v9, v0, v3

    sub-double/2addr v7, v9

    mul-double v5, v5, v7

    add-double/2addr v1, v5

    aget-wide v5, v15, v4

    aget-wide v7, v0, v4

    sub-double/2addr v5, v7

    aget-wide v7, v15, v4

    aget-wide v3, v0, v4

    sub-double/2addr v7, v3

    mul-double v5, v5, v7

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 620
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Landroid/graphics/PointF;
    .locals 12

    .line 321
    iget v1, p0, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int v1, v1, p1

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/amap/api/mapcore2d/av;->k:D

    mul-double v1, v1, v3

    iget-wide v3, p0, Lcom/amap/api/mapcore2d/av;->f:D

    add-double v9, v1, v3

    .line 323
    iget v1, p0, Lcom/amap/api/mapcore2d/av;->e:I

    if-nez v1, :cond_0

    .line 324
    iget-wide v1, p0, Lcom/amap/api/mapcore2d/av;->g:D

    iget v3, p0, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int v0, p2, v3

    int-to-double v3, v0

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/av;->k:D

    mul-double v3, v3, v6

    sub-double/2addr v1, v3

    move-wide v7, v1

    goto :goto_1

    .line 326
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore2d/av;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 327
    iget v1, p0, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int v0, v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/av;->k:D

    mul-double v0, v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v7, v0

    .line 331
    :goto_1
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    .line 334
    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/av;->k:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 1

    .line 492
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sub-int/2addr p1, p3

    .line 494
    iget p3, p0, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int p1, p1, p3

    int-to-float p1, p1

    iget p3, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 496
    iget p1, p0, Lcom/amap/api/mapcore2d/av;->e:I

    if-nez p1, :cond_0

    sub-int/2addr p2, p4

    .line 497
    iget p1, p0, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int p2, p2, p1

    int-to-float p1, p2

    iget p2, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 499
    :cond_0
    iget p1, p0, Lcom/amap/api/mapcore2d/av;->e:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 500
    iget p1, p5, Landroid/graphics/PointF;->y:F

    sub-int/2addr p2, p4

    iget p3, p0, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int p2, p2, p3

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 505
    :cond_1
    :goto_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget p2, p0, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-lez p1, :cond_3

    iget p1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p3, p6

    cmpl-float p1, p1, p3

    if-gez p1, :cond_3

    iget p1, v0, Landroid/graphics/PointF;->y:F

    iget p3, p0, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    cmpg-float p1, p1, p2

    if-lez p1, :cond_3

    iget p1, v0, Landroid/graphics/PointF;->y:F

    int-to-float p2, p7

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_2

    .line 142
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v2

    .line 145
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v4

    const/4 v0, 0x0

    sub-double/2addr v2, v4

    div-double/2addr v2, p4

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 148
    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-double v2, p3

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v4

    .line 149
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide p1

    const/4 p3, 0x0

    sub-double/2addr v4, p1

    div-double/2addr v4, p4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, v1, Landroid/graphics/PointF;->y:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    const-string p2, "MapProjection"

    const-string p3, "convertProjectionToScreen"

    .line 151
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/amap/api/mapcore2d/w;
    .locals 2

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/av;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)[D

    move-result-object p1

    .line 530
    new-instance p2, Lcom/amap/api/mapcore2d/w;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    const/4 v0, 0x1

    .line 531
    aget-wide v0, p1, v0

    invoke-virtual {p2, v0, v1}, Lcom/amap/api/mapcore2d/w;->b(D)V

    const/4 v0, 0x0

    .line 532
    aget-wide v0, p1, v0

    invoke-virtual {p2, v0, v1}, Lcom/amap/api/mapcore2d/w;->a(D)V

    return-object p2
.end method

.method public a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;
    .locals 0

    .line 190
    invoke-virtual/range {p0 .. p6}, Lcom/amap/api/mapcore2d/av;->b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;
    .locals 14

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 116
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v4, v2

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double v4, v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v11, v4, v6

    const-wide v4, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v4

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v0, v4

    mul-double v0, v0, v2

    div-double v9, v0, v6

    .line 122
    new-instance p1, Lcom/amap/api/mapcore2d/w;

    const/4 v13, 0x0

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    return-object p1
.end method

.method public a(Lcom/amap/api/mapcore2d/w;III)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore2d/w;",
            "III)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    const-string v10, "getTilesInDomain"

    .line 351
    iget-wide v5, v9, Lcom/amap/api/mapcore2d/av;->k:D

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v0

    iget-wide v2, v9, Lcom/amap/api/mapcore2d/av;->f:D

    sub-double/2addr v0, v2

    iget v2, v9, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-double v2, v2

    mul-double v2, v2, v5

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 360
    iget v1, v9, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int v1, v1, v0

    int-to-double v1, v1

    mul-double v1, v1, v5

    iget-wide v3, v9, Lcom/amap/api/mapcore2d/av;->f:D

    add-double v14, v1, v3

    .line 365
    iget v1, v9, Lcom/amap/api/mapcore2d/av;->e:I

    const/16 v17, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_0

    .line 366
    iget-wide v1, v9, Lcom/amap/api/mapcore2d/av;->g:D

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget v3, v9, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-double v3, v3

    mul-double v3, v3, v5

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 368
    iget-wide v2, v9, Lcom/amap/api/mapcore2d/av;->g:D

    iget v4, v9, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int v4, v4, v1

    int-to-double v11, v4

    mul-double v11, v11, v5

    sub-double/2addr v2, v11

    :goto_0
    move v7, v1

    move-wide v12, v2

    goto :goto_1

    .line 370
    :cond_0
    iget v1, v9, Lcom/amap/api/mapcore2d/av;->e:I

    if-ne v1, v8, :cond_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v1

    iget-wide v3, v9, Lcom/amap/api/mapcore2d/av;->g:D

    sub-double/2addr v1, v3

    iget v3, v9, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-double v3, v3

    mul-double v3, v3, v5

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v2, v1, 0x1

    .line 372
    iget v3, v9, Lcom/amap/api/mapcore2d/av;->a:I

    mul-int v2, v2, v3

    int-to-double v2, v2

    mul-double v2, v2, v5

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    move-wide v12, v1

    const/4 v7, 0x0

    .line 376
    :goto_1
    new-instance v2, Lcom/amap/api/mapcore2d/w;

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    .line 379
    iget-object v4, v9, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v11

    .line 382
    new-instance v1, Lcom/amap/api/mapcore2d/bs;

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/av;->b()I

    move-result v2

    const/4 v12, -0x1

    invoke-direct {v1, v0, v7, v2, v12}, Lcom/amap/api/mapcore2d/bs;-><init>(IIII)V

    .line 386
    iput-object v11, v1, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    .line 387
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 388
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    :goto_2
    sub-int v15, v0, v14

    move v6, v15

    const/16 v16, 0x0

    :goto_3
    add-int v5, v0, v14

    if-gt v6, v5, :cond_6

    add-int v5, v7, v14

    move-object/from16 v1, p0

    move v2, v6

    move v3, v5

    move v4, v0

    move v12, v5

    move v5, v7

    move v9, v6

    move-object v6, v11

    move/from16 v18, v7

    move/from16 v7, p3

    const/16 v19, 0x1

    move/from16 v8, p4

    .line 403
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore2d/av;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v16, :cond_2

    const/16 v16, 0x1

    .line 410
    :cond_2
    new-instance v2, Lcom/amap/api/mapcore2d/bs;

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/av;->b()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v9, v12, v3, v4}, Lcom/amap/api/mapcore2d/bs;-><init>(IIII)V

    .line 414
    iput-object v1, v2, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    .line 415
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sub-int v12, v18, v14

    move-object/from16 v1, p0

    move v2, v9

    move v3, v12

    move v4, v0

    move/from16 v5, v18

    move-object v6, v11

    move/from16 v7, p3

    move/from16 v8, p4

    .line 420
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore2d/av;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v16, :cond_4

    const/16 v16, 0x1

    .line 427
    :cond_4
    new-instance v2, Lcom/amap/api/mapcore2d/bs;

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/av;->b()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v9, v12, v3, v4}, Lcom/amap/api/mapcore2d/bs;-><init>(IIII)V

    .line 431
    iput-object v1, v2, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    .line 432
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v9, 0x1

    move/from16 v7, v18

    const/4 v8, 0x1

    move-object/from16 v9, p0

    const/4 v12, -0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_6
    move/from16 v18, v7

    const/16 v19, 0x1

    add-int v7, v18, v14

    add-int/lit8 v7, v7, -0x1

    move v9, v7

    :goto_4
    sub-int v7, v18, v14

    if-le v9, v7, :cond_b

    move-object/from16 v1, p0

    move v2, v5

    move v3, v9

    move v4, v0

    move v12, v5

    move/from16 v5, v18

    move-object v6, v11

    move/from16 v7, p3

    move/from16 v8, p4

    .line 441
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore2d/av;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez v16, :cond_7

    const/16 v16, 0x1

    .line 448
    :cond_7
    new-instance v2, Lcom/amap/api/mapcore2d/bs;

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/av;->b()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v12, v9, v3, v4}, Lcom/amap/api/mapcore2d/bs;-><init>(IIII)V

    .line 452
    iput-object v1, v2, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    .line 453
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v1, p0

    move v2, v15

    move v3, v9

    move v4, v0

    move/from16 v5, v18

    move-object v6, v11

    move/from16 v7, p3

    move/from16 v8, p4

    .line 459
    invoke-virtual/range {v1 .. v8}, Lcom/amap/api/mapcore2d/av;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez v16, :cond_9

    const/16 v16, 0x1

    .line 466
    :cond_9
    new-instance v2, Lcom/amap/api/mapcore2d/bs;

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/av;->b()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v15, v9, v3, v4}, Lcom/amap/api/mapcore2d/bs;-><init>(IIII)V

    .line 469
    iput-object v1, v2, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    .line 470
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_a
    const/4 v4, -0x1

    :goto_5
    add-int/lit8 v9, v9, -0x1

    move v5, v12

    goto :goto_4

    :goto_6
    const-string v1, "MapProjection"

    .line 481
    invoke-static {v0, v1, v10}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    const/4 v4, -0x1

    if-nez v16, :cond_c

    :goto_7
    return-object v13

    :cond_c
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v18

    const/4 v8, 0x1

    move-object/from16 v9, p0

    const/4 v12, -0x1

    goto/16 :goto_2
.end method

.method public a()V
    .locals 9

    .line 71
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/av;->g:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    iget v2, p0, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/av;->d:D

    .line 72
    iget v0, p0, Lcom/amap/api/mapcore2d/av;->j:F

    float-to-int v0, v0

    .line 73
    iget-wide v1, p0, Lcom/amap/api/mapcore2d/av;->d:D

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 74
    iget v3, p0, Lcom/amap/api/mapcore2d/av;->j:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v3, v0

    float-to-double v3, v3

    div-double/2addr v1, v3

    .line 75
    iput-wide v1, p0, Lcom/amap/api/mapcore2d/av;->k:D

    .line 83
    new-instance v0, Lcom/amap/api/mapcore2d/w;

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/av;->r:D

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/av;->q:D

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    .line 85
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->g()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->m:Lcom/amap/api/mapcore2d/w;

    .line 86
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    .line 87
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    .line 88
    new-instance v0, Lcom/amap/api/mapcore2d/av$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/av$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    .line 89
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    const v1, -0x3467203e    # -2.0037508E7f

    iput v1, v0, Lcom/amap/api/mapcore2d/av$a;->a:F

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    const v2, 0x4b98dfc2    # 2.0037508E7f

    iput v2, v0, Lcom/amap/api/mapcore2d/av$a;->b:F

    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iput v2, v0, Lcom/amap/api/mapcore2d/av$a;->c:F

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    iput v1, v0, Lcom/amap/api/mapcore2d/av$a;->d:F

    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    return-void
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 2

    .line 516
    iget-object p3, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    if-nez p3, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/av;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)[D

    move-result-object p1

    .line 521
    iget-object p2, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    const/4 p3, 0x1

    aget-wide v0, p1, p3

    invoke-virtual {p2, v0, v1}, Lcom/amap/api/mapcore2d/w;->b(D)V

    .line 522
    iget-object p2, p0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    const/4 p3, 0x0

    aget-wide v0, p1, p3

    invoke-virtual {p2, v0, v1}, Lcom/amap/api/mapcore2d/w;->a(D)V

    return-void
.end method

.method b()I
    .locals 5

    .line 281
    iget v0, p0, Lcom/amap/api/mapcore2d/av;->j:F

    float-to-int v0, v0

    .line 282
    iget v1, p0, Lcom/amap/api/mapcore2d/av;->j:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-double v1, v1

    sget-wide v3, Lcom/amap/api/mapcore2d/az;->a:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 251
    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;
    .locals 9

    .line 207
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-nez p6, :cond_0

    goto/16 :goto_4

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->p:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->c(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 212
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 213
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    sub-float/2addr p1, p3

    .line 215
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v1

    float-to-double v3, v0

    mul-double v3, v3, p4

    add-double/2addr v1, v3

    .line 216
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide p2

    float-to-double v3, p1

    mul-double v3, v3, p4

    sub-double/2addr p2, v3

    .line 218
    :goto_0
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->a:F

    float-to-double p4, p1

    cmpg-double p1, v1, p4

    if-gez p1, :cond_1

    .line 219
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->b:F

    iget p4, p6, Lcom/amap/api/mapcore2d/av$a;->a:F

    sub-float/2addr p1, p4

    float-to-double p4, p1

    add-double/2addr v1, p4

    goto :goto_0

    :cond_1
    move-wide v6, v1

    .line 222
    :goto_1
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->b:F

    float-to-double p4, p1

    cmpl-double p1, v6, p4

    if-lez p1, :cond_2

    .line 223
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->b:F

    iget p4, p6, Lcom/amap/api/mapcore2d/av$a;->a:F

    sub-float/2addr p1, p4

    float-to-double p4, p1

    sub-double/2addr v6, p4

    goto :goto_1

    .line 226
    :cond_2
    :goto_2
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->d:F

    float-to-double p4, p1

    cmpg-double p1, p2, p4

    if-gez p1, :cond_3

    .line 227
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->c:F

    iget p4, p6, Lcom/amap/api/mapcore2d/av$a;->d:F

    sub-float/2addr p1, p4

    float-to-double p4, p1

    add-double/2addr p2, p4

    goto :goto_2

    :cond_3
    move-wide v4, p2

    .line 230
    :goto_3
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->c:F

    float-to-double p1, p1

    cmpl-double p1, v4, p1

    if-lez p1, :cond_4

    .line 231
    iget p1, p6, Lcom/amap/api/mapcore2d/av$a;->c:F

    iget p2, p6, Lcom/amap/api/mapcore2d/av$a;->d:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    sub-double/2addr v4, p1

    goto :goto_3

    .line 233
    :cond_4
    new-instance p1, Lcom/amap/api/mapcore2d/w;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    return-object p1

    :cond_5
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v4, 0x41731bf84570a3d7L    # 2.003750834E7

    div-double/2addr v0, v4

    double-to-float v0, v0

    .line 169
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v6

    mul-double v6, v6, v2

    div-double/2addr v6, v4

    double-to-float p1, v6

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    float-to-double v8, p1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v10

    div-double/2addr v8, v2

    .line 172
    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    mul-double v1, v1, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v6

    mul-double v1, v1, v4

    double-to-float p1, v1

    .line 174
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    float-to-double v2, p1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v4

    double-to-int p1, v2

    float-to-double v2, v0

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-direct {v1, p1, v0}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    return-object v1
.end method
