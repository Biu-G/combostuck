.class Lcom/amap/api/mapcore2d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static I:F

.field private static final J:[F

.field private static final K:[F

.field private static O:F

.field private static P:F


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Landroid/view/animation/Interpolator;

.field private E:Z

.field private F:F

.field private G:I

.field private H:F

.field private L:F

.field private final M:F

.field private N:F

.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:J

.field private v:J

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/amap/api/mapcore2d/k;->I:F

    const/16 v0, 0x65

    .line 67
    new-array v1, v0, [F

    sput-object v1, Lcom/amap/api/mapcore2d/k;->J:[F

    .line 68
    new-array v0, v0, [F

    sput-object v0, Lcom/amap/api/mapcore2d/k;->K:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_4

    int-to-float v3, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float v12, v12, v9

    mul-float v14, v6, v6

    mul-float v14, v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 88
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_2

    .line 95
    sget-object v3, Lcom/amap/api/mapcore2d/k;->J:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    sub-float v6, v3, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float v9, v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float v12, v12, v9

    mul-float v14, v6, v6

    mul-float v14, v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 104
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    .line 111
    sget-object v3, Lcom/amap/api/mapcore2d/k;->K:[F

    const v7, 0x3e333333    # 0.175f

    mul-float v10, v10, v7

    mul-float v6, v6, v13

    add-float/2addr v10, v6

    mul-float v9, v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_1
    move v2, v6

    goto :goto_3

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto/16 :goto_1

    :cond_3
    move v0, v6

    goto/16 :goto_1

    .line 113
    :cond_4
    sget-object v0, Lcom/amap/api/mapcore2d/k;->J:[F

    sget-object v1, Lcom/amap/api/mapcore2d/k;->K:[F

    aput v4, v1, v3

    aput v4, v0, v3

    const/high16 v0, 0x41000000    # 8.0f

    .line 116
    sput v0, Lcom/amap/api/mapcore2d/k;->O:F

    .line 118
    sput v4, Lcom/amap/api/mapcore2d/k;->P:F

    .line 119
    invoke-static {v4}, Lcom/amap/api/mapcore2d/k;->a(F)F

    move-result v0

    div-float/2addr v4, v0

    sput v4, Lcom/amap/api/mapcore2d/k;->P:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/k;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/mapcore2d/k;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->H:F

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/k;->C:Z

    .line 153
    iput-object p2, p0, Lcom/amap/api/mapcore2d/k;->D:Landroid/view/animation/Interpolator;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/amap/api/mapcore2d/k;->M:F

    .line 156
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    .line 155
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/k;->b(F)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/k;->L:F

    .line 157
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/k;->E:Z

    const p1, 0x3f570a3d    # 0.84f

    .line 159
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/k;->b(F)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/k;->N:F

    return-void
.end method

.method static a(F)F
    .locals 4

    .line 588
    sget v0, Lcom/amap/api/mapcore2d/k;->O:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    .line 590
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const v1, 0x3ebc5ab2

    sub-float p0, v0, p0

    float-to-double v2, p0

    .line 593
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float v0, v0, p0

    add-float p0, v0, v1

    .line 596
    :goto_0
    sget v0, Lcom/amap/api/mapcore2d/k;->P:F

    mul-float p0, p0, v0

    return p0
.end method

.method private b(F)F
    .locals 2

    .line 180
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->M:F

    const v1, 0x43c10b3d

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/k;->C:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/k;->C:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    return v0
.end method

.method public final d()F
    .locals 1

    .line 234
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->r:F

    return v0
.end method

.method public final e()F
    .locals 1

    .line 238
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->s:F

    return v0
.end method

.method public final f()F
    .locals 1

    .line 242
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->t:F

    return v0
.end method

.method public g()Z
    .locals 7

    .line 322
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/k;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/k;->u:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v1, v0

    .line 328
    iget-wide v3, p0, Lcom/amap/api/mapcore2d/k;->v:J

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_3

    .line 329
    iget v1, p0, Lcom/amap/api/mapcore2d/k;->a:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    int-to-float v0, v0

    .line 377
    iget v1, p0, Lcom/amap/api/mapcore2d/k;->w:F

    mul-float v0, v0, v1

    .line 379
    iget-object v1, p0, Lcom/amap/api/mapcore2d/k;->D:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    .line 380
    invoke-static {v0}, Lcom/amap/api/mapcore2d/k;->a(F)F

    move-result v0

    goto :goto_0

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/k;->D:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 384
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/k;->b:I

    iget v3, p0, Lcom/amap/api/mapcore2d/k;->x:F

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/amap/api/mapcore2d/k;->p:I

    .line 385
    iget v1, p0, Lcom/amap/api/mapcore2d/k;->c:I

    iget v3, p0, Lcom/amap/api/mapcore2d/k;->y:F

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/amap/api/mapcore2d/k;->q:I

    .line 386
    iget v1, p0, Lcom/amap/api/mapcore2d/k;->d:F

    iget v3, p0, Lcom/amap/api/mapcore2d/k;->z:F

    mul-float v3, v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/amap/api/mapcore2d/k;->r:F

    .line 387
    iget v1, p0, Lcom/amap/api/mapcore2d/k;->e:F

    iget v3, p0, Lcom/amap/api/mapcore2d/k;->A:F

    mul-float v3, v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/amap/api/mapcore2d/k;->s:F

    .line 388
    iget v1, p0, Lcom/amap/api/mapcore2d/k;->f:F

    iget v3, p0, Lcom/amap/api/mapcore2d/k;->B:F

    mul-float v0, v0, v3

    add-float/2addr v1, v0

    iput v1, p0, Lcom/amap/api/mapcore2d/k;->t:F

    goto/16 :goto_1

    :pswitch_1
    int-to-float v0, v0

    .line 343
    iget-wide v3, p0, Lcom/amap/api/mapcore2d/k;->v:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v0, v1

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-ge v3, v6, :cond_2

    int-to-float v4, v3

    div-float/2addr v4, v1

    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 350
    sget-object v1, Lcom/amap/api/mapcore2d/k;->J:[F

    aget v1, v1, v3

    .line 351
    sget-object v3, Lcom/amap/api/mapcore2d/k;->J:[F

    aget v3, v3, v5

    sub-float/2addr v3, v1

    sub-float/2addr v6, v4

    div-float v5, v3, v6

    sub-float/2addr v0, v4

    mul-float v0, v0, v5

    add-float v4, v1, v0

    .line 356
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->G:I

    int-to-float v0, v0

    mul-float v5, v5, v0

    iget-wide v0, p0, Lcom/amap/api/mapcore2d/k;->v:J

    long-to-float v0, v0

    div-float/2addr v5, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v5, v5, v0

    iput v5, p0, Lcom/amap/api/mapcore2d/k;->F:F

    .line 358
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->b:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->g:I

    iget v3, p0, Lcom/amap/api/mapcore2d/k;->b:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v1, v1, v4

    .line 359
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    .line 361
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    .line 362
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->l:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    .line 364
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->c:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->h:I

    iget v3, p0, Lcom/amap/api/mapcore2d/k;->c:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v4, v4, v1

    .line 365
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    .line 367
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    .line 368
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    .line 370
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->g:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    iget v1, p0, Lcom/amap/api/mapcore2d/k;->h:I

    if-ne v0, v1, :cond_4

    .line 371
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/k;->C:Z

    goto :goto_1

    .line 393
    :cond_3
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->g:I

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->p:I

    .line 394
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->h:I

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->q:I

    .line 395
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->i:F

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->r:F

    .line 396
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->j:F

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->s:F

    .line 397
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->k:F

    iput v0, p0, Lcom/amap/api/mapcore2d/k;->t:F

    .line 398
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/k;->C:Z

    :cond_4
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 1

    .line 680
    iget v0, p0, Lcom/amap/api/mapcore2d/k;->a:I

    return v0
.end method
