.class Lcom/amap/api/mapcore2d/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bc$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore2d/bc$a;

.field b:Landroid/animation/ValueAnimator;

.field c:Landroid/animation/Animator$AnimatorListener;

.field d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private e:Lcom/amap/api/mapcore2d/y;

.field private f:Lcom/amap/api/maps2d/model/Marker;

.field private g:Lcom/amap/api/maps2d/model/Circle;

.field private h:Lcom/amap/api/maps2d/model/MyLocationStyle;

.field private i:Lcom/amap/api/maps2d/model/LatLng;

.field private j:D

.field private k:Landroid/content/Context;

.field private l:Lcom/amap/api/mapcore2d/bl;

.field private m:I

.field private n:Z

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private q:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/y;Landroid/content/Context;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/amap/api/mapcore2d/bc;->m:I

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bc;->n:Z

    const-string v2, "location_map_gps_locked.png"

    .line 42
    iput-object v2, p0, Lcom/amap/api/mapcore2d/bc;->o:Ljava/lang/String;

    const-string v2, "location_map_gps_3d.png"

    .line 43
    iput-object v2, p0, Lcom/amap/api/mapcore2d/bc;->p:Ljava/lang/String;

    const/4 v2, 0x0

    .line 44
    iput-object v2, p0, Lcom/amap/api/mapcore2d/bc;->q:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 49
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bc;->r:Z

    .line 50
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bc;->s:Z

    .line 55
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bc;->t:Z

    .line 60
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bc;->u:Z

    .line 64
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bc;->v:Z

    .line 460
    iput-object v2, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/bc$a;

    .line 463
    new-instance v1, Lcom/amap/api/mapcore2d/bc$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/bc$1;-><init>(Lcom/amap/api/mapcore2d/bc;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bc;->c:Landroid/animation/Animator$AnimatorListener;

    .line 486
    new-instance v1, Lcom/amap/api/mapcore2d/bc$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/bc$2;-><init>(Lcom/amap/api/mapcore2d/bc;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bc;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bc;->k:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->e:Lcom/amap/api/mapcore2d/y;

    .line 69
    new-instance p2, Lcom/amap/api/mapcore2d/bl;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->k:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Lcom/amap/api/mapcore2d/bl;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/y;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    .line 71
    invoke-direct {p0, v0, v0}, Lcom/amap/api/mapcore2d/bc;->a(IZ)V

    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 109
    iput p1, p0, Lcom/amap/api/mapcore2d/bc;->m:I

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bc;->n:Z

    .line 112
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bc;->r:Z

    .line 113
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bc;->u:Z

    .line 114
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bc;->v:Z

    .line 116
    iget v0, p0, Lcom/amap/api/mapcore2d/bc;->m:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bc;->r:Z

    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bc;->s:Z

    .line 134
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bc;->t:Z

    goto :goto_0

    .line 124
    :pswitch_1
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bc;->r:Z

    .line 126
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bc;->s:Z

    .line 127
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/bc;->t:Z

    .line 148
    :cond_0
    :goto_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->u:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->v:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->b()V

    goto :goto_3

    .line 149
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->v:Z

    if-eqz v0, :cond_3

    .line 150
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/bl;->a(Z)V

    if-nez p2, :cond_4

    .line 154
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->e:Lcom/amap/api/mapcore2d/y;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {p2}, Lcom/amap/api/maps2d/CameraUpdateFactory;->zoomTo(F)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amap/api/mapcore2d/y;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 160
    :cond_3
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/bl;->a(Z)V

    .line 163
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bl;->a()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bc;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->c()V

    return-void
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/bc$a;

    if-nez v3, :cond_1

    .line 438
    new-instance v3, Lcom/amap/api/mapcore2d/bc$a;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/bc$a;-><init>(Lcom/amap/api/mapcore2d/bc;)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/bc$a;

    .line 440
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v3, :cond_2

    .line 441
    new-instance v3, Lcom/amap/api/mapcore2d/bc$a;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/bc$a;-><init>(Lcom/amap/api/mapcore2d/bc;)V

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v7

    aput-object p1, v8, v6

    invoke-static {v3, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    .line 442
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->c:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 443
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 444
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 446
    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v7

    aput-object p1, v8, v6

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 447
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->a:Lcom/amap/api/mapcore2d/bc$a;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 450
    :goto_0
    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpl-double p1, v6, v1

    if-nez p1, :cond_3

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpl-double p1, v6, v1

    if-nez p1, :cond_3

    .line 452
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 457
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/bc;)Lcom/amap/api/maps2d/model/Circle;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl;->b()V

    return-void
.end method

.method private b(F)V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    add-float/2addr p1, v0

    .line 269
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/Marker;->setRotateAngle(F)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/bc;)Lcom/amap/api/maps2d/model/Marker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 279
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->n:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bc;->n:Z

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->e:Lcom/amap/api/mapcore2d/y;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v1}, Lcom/amap/api/maps2d/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/y;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "moveMapToLocation"

    .line 290
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 298
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    const-string v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 299
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->f()V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    const-string v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 305
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->f()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->e:Lcom/amap/api/mapcore2d/y;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/Circle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/y;->removeGLOverlay(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MyLocationOverlay"

    const-string v3, "locationIconRemove"

    .line 322
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    :goto_0
    iput-object v1, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    .line 330
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->destroy()V

    .line 331
    iput-object v1, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    .line 332
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bl;->a(Lcom/amap/api/maps2d/model/Marker;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 5

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->e:Lcom/amap/api/mapcore2d/y;

    new-instance v1, Lcom/amap/api/maps2d/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/CircleOptions;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/y;->addCircle(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/maps2d/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 365
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Circle;->getStrokeWidth()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/Circle;->setStrokeWidth(F)V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Circle;->getFillColor()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 368
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/Circle;->setFillColor(I)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Circle;->getStrokeColor()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 370
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/Circle;->setStrokeColor(I)V

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/Circle;->setCenter(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/bc;->j:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps2d/model/Circle;->setRadius(D)V

    .line 376
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/Circle;->setVisible(Z)V

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 379
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->e:Lcom/amap/api/mapcore2d/y;

    new-instance v3, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amap/api/mapcore2d/y;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_a

    .line 382
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getAnchorU()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v4}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getAnchorV()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/maps2d/model/Marker;->setAnchor(FF)V

    .line 384
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 386
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 387
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    goto :goto_1

    .line 385
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 389
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_a

    .line 390
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/Marker;->setPosition(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 391
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/Marker;->setVisible(Z)V

    .line 394
    :cond_a
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->c()V

    .line 395
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bl;->a(Lcom/amap/api/maps2d/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "myLocStyle"

    .line 397
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->e()V

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->b()V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/bc;->a(IZ)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bc;->a(Z)V

    .line 215
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 219
    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 220
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    .line 222
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bc;->j:D

    .line 223
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    if-nez v0, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->d()V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    if-eqz v0, :cond_3

    .line 234
    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/bc;->j:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    iget-wide v1, p0, Lcom/amap/api/mapcore2d/bc;->j:D

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps2d/model/Circle;->setRadius(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "setCentAndRadius"

    .line 238
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bc;->b(F)V

    .line 249
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 250
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->i:Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bc;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    goto :goto_1

    .line 253
    :cond_4
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->c()V

    :goto_1
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 2

    .line 76
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 78
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->a(Z)V

    .line 79
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bl;->a(Z)V

    .line 83
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationType()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/bc;->m:I

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    if-nez p1, :cond_1

    return-void

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->l:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bl;->a(Lcom/amap/api/maps2d/model/Marker;)V

    .line 91
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bc;->d()V

    .line 92
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bc;->h:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MyLocationOverlay"

    const-string v1, "setMyLocationStyle"

    .line 95
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Circle;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->g:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/Circle;->setVisible(Z)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->f:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/Marker;->setVisible(Z)V

    :cond_1
    return-void
.end method
