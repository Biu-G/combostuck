.class Lcn/edu/pku/pkurunner/Map/MapPresenter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/MapPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/Map/MapPresenter;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Z

.field private e:F

.field private f:[F

.field private g:[F

.field private h:F

.field private i:[F

.field private j:[[F

.field private k:[F

.field private l:I


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V
    .locals 4

    .line 524
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 512
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->d:Z

    const/high16 v0, 0x41200000    # 10.0f

    .line 514
    iput v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->e:F

    const/4 v0, 0x6

    .line 515
    new-array v1, v0, [F

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->f:[F

    const/4 v1, 0x2

    .line 516
    new-array v2, v1, [F

    iput-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->g:[F

    .line 519
    new-array v2, v0, [F

    iput-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->i:[F

    .line 520
    new-array v1, v1, [[F

    new-array v2, v0, [F

    aput-object v2, v1, p1

    new-array v2, v0, [F

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->j:[[F

    .line 521
    new-array v0, v0, [F

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->k:[F

    const/4 v0, -0x1

    .line 522
    iput v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->l:I

    const/16 v0, 0x1e0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 526
    iput v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->h:F

    .line 527
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->g:[F

    const v2, 0x3d50d67f

    mul-float v2, v2, v0

    neg-float v2, v2

    aput v2, v1, p1

    .line 528
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->g:[F

    const v1, 0x3c888889

    mul-float v0, v0, v1

    neg-float v0, v0

    aput v0, p1, v3

    return-void
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/Map/MapPresenter$b;)Z
    .locals 0

    .line 509
    iget-boolean p0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->d:Z

    return p0
.end method

.method private b()V
    .locals 3

    .line 541
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method static synthetic b(Lcn/edu/pku/pkurunner/Map/MapPresenter$b;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 546
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method static synthetic c(Lcn/edu/pku/pkurunner/Map/MapPresenter$b;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->c()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 532
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Lcn/edu/pku/pkurunner/Map/MapContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->b:Landroid/hardware/SensorManager;

    .line 533
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->c:Landroid/hardware/Sensor;

    .line 534
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->d:Z

    .line 535
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->d:Z

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Lcn/edu/pku/pkurunner/Map/MapContract$View;

    move-result-object v0

    const v1, 0x7f0f00f0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeToast(II[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 554
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 556
    monitor-enter p0

    .line 557
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_1

    .line 560
    iget v5, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->h:F

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    iget-object v7, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->g:[F

    aget v7, v7, v1

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr v4, p1

    .line 566
    iget-object v3, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->f:[F

    aget v3, v3, v2

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    int-to-float v3, v3

    .line 567
    iget-object v5, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->i:[F

    aget v5, v5, v2

    neg-float v5, v5

    cmpl-float v5, v3, v5

    if-nez v5, :cond_8

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 570
    :goto_1
    iget-object v5, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->j:[[F

    aget-object v5, v5, v0

    iget-object v6, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->f:[F

    aget v6, v6, v2

    aput v6, v5, v2

    .line 571
    iget-object v5, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->j:[[F

    aget-object v5, v5, v0

    aget v5, v5, v2

    iget-object v6, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->j:[[F

    rsub-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    aget v6, v6, v2

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 573
    iget v6, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->e:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_7

    .line 575
    iget-object v6, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->k:[F

    aget v6, v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v6, v6, v8

    div-float/2addr v6, p1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 576
    :goto_2
    iget-object v8, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->k:[F

    aget v8, v8, v2

    div-float p1, v5, p1

    cmpl-float p1, v8, p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 577
    :goto_3
    iget v8, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->l:I

    if-eq v8, v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v6, :cond_6

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 580
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->onStep()V

    .line 581
    iput v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->l:I

    goto :goto_5

    :cond_6
    const/4 p1, -0x1

    .line 583
    iput p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->l:I

    .line 586
    :cond_7
    :goto_5
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->k:[F

    aput v5, p1, v2

    .line 588
    :cond_8
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->i:[F

    aput v3, p1, v2

    .line 589
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$b;->f:[F

    aput v4, p1, v2

    .line 591
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
