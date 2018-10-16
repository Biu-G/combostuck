.class Lcom/amap/api/mapcore2d/at;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/at$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore2d/b;

.field b:Lcom/amap/api/mapcore2d/at$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/aj;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/ab;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/mapcore2d/ae;

.field private i:Lcom/amap/api/mapcore2d/ab;

.field private j:Lcom/amap/api/mapcore2d/ab;

.field private k:F

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/amap/api/mapcore2d/at;->e:I

    .line 51
    new-instance p1, Lcom/amap/api/mapcore2d/at$a;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/at$a;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->b:Lcom/amap/api/mapcore2d/at$a;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->f:Landroid/os/Handler;

    .line 77
    new-instance p1, Lcom/amap/api/mapcore2d/at$1;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/at$1;-><init>(Lcom/amap/api/mapcore2d/at;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->g:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/ab;

    const/4 p1, 0x0

    .line 197
    iput p1, p0, Lcom/amap/api/mapcore2d/at;->k:F

    .line 276
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    iput-object p3, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method

.method private a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/aj;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/amap/api/mapcore2d/aj;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/ae;",
            ")",
            "Lcom/amap/api/mapcore2d/aj;"
        }
    .end annotation

    .line 368
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aj;

    .line 370
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aj;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v3, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ae;)V

    .line 375
    iget v1, p3, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/ae;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/at;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ab;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/amap/api/mapcore2d/ab;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/ae;",
            ")",
            "Lcom/amap/api/mapcore2d/ab;"
        }
    .end annotation

    .line 391
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ab;

    .line 393
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ab;->getRealPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v3, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ae;)V

    .line 398
    iget v1, p3, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/ae;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/at;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private h()I
    .locals 2

    .line 47
    iget v0, p0, Lcom/amap/api/mapcore2d/at;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/at;->e:I

    return v0
.end method

.method private i()V
    .locals 6

    const-string v0, "redrawInfoWindow"

    .line 415
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ab;

    if-eqz v2, :cond_0

    .line 416
    iget-object v3, p0, Lcom/amap/api/mapcore2d/at;->i:Lcom/amap/api/mapcore2d/ab;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/at;->i:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/ab;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ab;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore2d/at;->i:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/ab;->isViewMode()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-void

    :catch_0
    move-exception v3

    const-string v4, "MapOverlayImageView"

    .line 423
    invoke-static {v3, v4, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ab;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 426
    new-instance v4, Lcom/amap/api/mapcore2d/ae;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ab;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    iget v2, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v5, v2}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/at;->h:Lcom/amap/api/mapcore2d/ae;

    .line 428
    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->redrawInfoWindow()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/ab;
    .locals 5

    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 446
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ab;

    if-nez v1, :cond_0

    goto :goto_1

    .line 450
    :cond_0
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ab;->a()Landroid/graphics/Rect;

    move-result-object v2

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Rect;II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 453
    monitor-exit p0

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 458
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 442
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ab;

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ab;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 113
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 116
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method public a()Lcom/amap/api/mapcore2d/b;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/at;->i()V

    .line 296
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getMapWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    .line 297
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->getMapHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 299
    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 300
    iget-object v3, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 301
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/api/mapcore2d/at;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v4

    .line 302
    invoke-direct {p0, v3, v0, v1}, Lcom/amap/api/mapcore2d/at;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/aj;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v4, :cond_1

    if-eqz v5, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 305
    :try_start_1
    invoke-interface {v5, p1}, Lcom/amap/api/mapcore2d/aj;->draw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-direct {p0, v3, v0, v1}, Lcom/amap/api/mapcore2d/at;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/aj;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 308
    iget-object v6, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v4, p1, v6}, Lcom/amap/api/mapcore2d/ab;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/y;)V

    .line 309
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/api/mapcore2d/at;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v4

    goto :goto_0

    .line 314
    :cond_3
    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ab;->getZIndex()F

    move-result v6

    invoke-interface {v5}, Lcom/amap/api/mapcore2d/aj;->getZIndex()F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 315
    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ab;->getZIndex()F

    move-result v6

    .line 316
    invoke-interface {v5}, Lcom/amap/api/mapcore2d/aj;->getZIndex()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ab;->getAddIndex()I

    move-result v6

    .line 317
    invoke-interface {v5}, Lcom/amap/api/mapcore2d/aj;->getAddIndex()I

    move-result v7

    if-ge v6, v7, :cond_4

    goto :goto_2

    .line 321
    :cond_4
    invoke-interface {v5, p1}, Lcom/amap/api/mapcore2d/aj;->draw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-direct {p0, v3, v0, v1}, Lcom/amap/api/mapcore2d/at;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/aj;

    move-result-object v5

    goto :goto_0

    .line 318
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v4, p1, v6}, Lcom/amap/api/mapcore2d/ab;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/y;)V

    .line 319
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/api/mapcore2d/at;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 291
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore2d/ab;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "addMarker"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/at;->e(Lcom/amap/api/mapcore2d/ab;)V

    .line 157
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/at;->h()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/amap/api/mapcore2d/ab;->setAddIndex(I)V

    .line 158
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "MapOverlayImageView"

    .line 162
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 153
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore2d/aj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/at;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/aj;->setAddIndex(I)V

    .line 179
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 169
    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 0

    .line 532
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/aj;)V
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/view/MotionEvent;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 486
    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ab;

    if-nez v2, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ab;->a()Landroid/graphics/Rect;

    move-result-object v3

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Rect;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    new-instance p1, Lcom/amap/api/mapcore2d/ae;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ab;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, v0, v1}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->h:Lcom/amap/api/mapcore2d/ae;

    .line 496
    iput-object v2, p0, Lcom/amap/api/mapcore2d/at;->i:Lcom/amap/api/mapcore2d/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 500
    :cond_2
    :goto_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 482
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/ab;)Z
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/at;->e(Lcom/amap/api/mapcore2d/ab;)V

    .line 190
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 191
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->postInvalidate()V

    .line 192
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 188
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "clear"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ab;

    .line 133
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ab;->destroy()V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "MapOverlayImageView"

    .line 144
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/amap/api/mapcore2d/ab;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/ab;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/ab;

    const/high16 v1, 0x4f000000

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ab;->getZIndex()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/ab;

    iget v2, p0, Lcom/amap/api/mapcore2d/at;->k:F

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ab;->setZIndex(F)V

    .line 214
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/at;->k:F

    .line 215
    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/ab;

    .line 218
    invoke-interface {p1, v1}, Lcom/amap/api/mapcore2d/ab;->setZIndex(F)V

    .line 220
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 202
    monitor-exit p0

    throw p1

    .line 204
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method d()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Lcom/amap/api/mapcore2d/ab;)V
    .locals 5

    const-string v0, "showInfoWindow"

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->h:Lcom/amap/api/mapcore2d/ae;

    if-nez v1, :cond_1

    .line 238
    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/at;->h:Lcom/amap/api/mapcore2d/ae;

    .line 241
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->a()Landroid/graphics/Rect;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/amap/api/mapcore2d/ae;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v1}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/at;->h:Lcom/amap/api/mapcore2d/ae;

    .line 243
    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->i:Lcom/amap/api/mapcore2d/ab;

    .line 245
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->e()Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MapOverlayImageView"

    .line 247
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()Lcom/amap/api/mapcore2d/ab;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->i:Lcom/amap/api/mapcore2d/ab;

    return-object v0
.end method

.method public e(Lcom/amap/api/mapcore2d/ab;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/at;->f(Lcom/amap/api/mapcore2d/ab;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->e()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    const-string v0, "destory"

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/amap/api/mapcore2d/at;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapOverlayImageView"

    .line 475
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "amapApi"

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapOverlayImageView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public f(Lcom/amap/api/mapcore2d/ab;)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/ab;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized g()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 504
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->getMapWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    .line 506
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->getMapHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 508
    new-instance v2, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 509
    iget-object v3, p0, Lcom/amap/api/mapcore2d/at;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/ab;

    .line 510
    invoke-interface {v4}, Lcom/amap/api/mapcore2d/ab;->getRealPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 514
    :cond_1
    iget-object v6, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v7, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v5, v6

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ae;)V

    .line 515
    iget v5, v2, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v6, v2, Lcom/amap/api/mapcore2d/ae;->b:I

    invoke-virtual {p0, v1, v5, v6}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Rect;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    new-instance v5, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v5, v4}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/interfaces/IMarker;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 528
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 503
    monitor-exit p0

    throw v0
.end method
