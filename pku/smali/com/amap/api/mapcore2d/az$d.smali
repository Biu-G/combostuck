.class public Lcom/amap/api/mapcore2d/az$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/az;

.field private b:F

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/az;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 552
    iput p1, p0, Lcom/amap/api/mapcore2d/az$d;->b:F

    .line 553
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(IIIZ)I
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result p1

    :goto_0
    if-lez p2, :cond_1

    goto :goto_1

    .line 624
    :cond_1
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result p2

    :goto_1
    sub-int/2addr p2, p3

    .line 625
    invoke-virtual {p0, p3, p2}, Lcom/amap/api/mapcore2d/az$d;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object p2

    sub-int/2addr p1, p3

    .line 626
    invoke-virtual {p0, p1, p3}, Lcom/amap/api/mapcore2d/az$d;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    if-eqz p4, :cond_2

    .line 628
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result p2

    .line 629
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result p1

    sub-int/2addr p2, p1

    .line 628
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_2

    .line 630
    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result p2

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result p1

    sub-int/2addr p2, p1

    .line 629
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    :goto_2
    return p1
.end method


# virtual methods
.method public a(F)F
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$d;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore2d/az$d;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore2d/az$d;->b:F

    .line 560
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/az$d;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    const/16 v2, 0x64

    .line 564
    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore2d/az$d;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 565
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    return v1

    :cond_2
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, p1, v0

    mul-float v0, v0, v1

    .line 571
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public a(III)I
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore2d/az$d;->a(IIIZ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v3, v0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v4, v0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-wide v5, v0, Lcom/amap/api/mapcore2d/av;->k:D

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p1

    .line 476
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->l()Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    .line 482
    iget-boolean v2, v0, Lcom/amap/api/mapcore2d/bb;->m:Z

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-eqz v2, :cond_3

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    .line 486
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 489
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x1

    .line 492
    :goto_0
    iget-boolean v2, v0, Lcom/amap/api/mapcore2d/bb;->l:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 494
    sget v1, Lcom/amap/api/mapcore2d/bb;->j:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v5, v0, Lcom/amap/api/mapcore2d/bb;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    mul-float v1, v1, v2

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bb;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bb;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/amap/api/mapcore2d/bb;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 497
    sget v2, Lcom/amap/api/mapcore2d/bb;->j:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v5, v0, Lcom/amap/api/mapcore2d/bb;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v5

    mul-float v2, v2, p1

    iget-object p1, v0, Lcom/amap/api/mapcore2d/bb;->f:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, p1

    iget-object p1, v0, Lcom/amap/api/mapcore2d/bb;->g:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bb;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    add-float/2addr v2, p1

    float-to-int p1, v1

    float-to-int v0, v2

    float-to-double v5, v1

    int-to-double v7, p1

    add-double/2addr v7, v3

    cmpl-double v1, v5, v7

    if-ltz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    float-to-double v1, v2

    int-to-double v5, v0

    add-double/2addr v5, v3

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    :cond_2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    .line 510
    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_1

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v0, v0, Lcom/amap/api/mapcore2d/av;->c:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v5, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 515
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v2, v2, Lcom/amap/api/mapcore2d/av;->c:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iget v5, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v5

    int-to-float p1, p1

    mul-float v2, v2, p1

    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    add-float/2addr v2, p1

    float-to-int p1, v0

    float-to-int v1, v2

    float-to-double v5, v0

    int-to-double v7, p1

    add-double/2addr v7, v3

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    :cond_4
    float-to-double v5, v2

    int-to-double v7, v1

    add-double/2addr v7, v3

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 526
    :cond_6
    :goto_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p2, :cond_7

    .line 528
    iget p1, v1, Landroid/graphics/Point;->x:I

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 529
    iget p1, v1, Landroid/graphics/Point;->y:I

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_7
    return-object v1
.end method

.method public a(II)Lcom/amap/api/mapcore2d/w;
    .locals 7

    .line 544
    new-instance v1, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 545
    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v2, p1, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/av;->k:D

    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$d;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v6, p1, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    return-object p1
.end method

.method public b(III)I
    .locals 1

    const/4 v0, 0x1

    .line 618
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/mapcore2d/az$d;->a(IIIZ)I

    move-result p1

    return p1
.end method
