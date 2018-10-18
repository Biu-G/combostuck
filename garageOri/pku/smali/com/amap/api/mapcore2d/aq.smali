.class final Lcom/amap/api/mapcore2d/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/aq$b;,
        Lcom/amap/api/mapcore2d/aq$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/amap/api/mapcore2d/az;

.field private d:Z

.field private e:Lcom/amap/api/mapcore2d/aq$b;

.field private f:Lcom/amap/api/mapcore2d/aq$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/az;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/amap/api/mapcore2d/aq;->a:F

    .line 34
    iput v0, p0, Lcom/amap/api/mapcore2d/aq;->b:F

    .line 37
    iput-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/aq;->d:Z

    .line 39
    new-instance p1, Lcom/amap/api/mapcore2d/aq$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/aq$b;-><init>(Lcom/amap/api/mapcore2d/aq;Lcom/amap/api/mapcore2d/aq$1;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/aq;->e:Lcom/amap/api/mapcore2d/aq$b;

    .line 40
    new-instance p1, Lcom/amap/api/mapcore2d/aq$a;

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/aq$a;-><init>(Lcom/amap/api/mapcore2d/aq;Lcom/amap/api/mapcore2d/aq$1;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/aq;->f:Lcom/amap/api/mapcore2d/aq$a;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/aq;)Lcom/amap/api/mapcore2d/az;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    return-object p0
.end method

.method private a(IIZZ)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 564
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/aq;->a(IIZZII)Z

    move-result p1

    return p1
.end method

.method private a(IIZZII)Z
    .locals 10

    move-object v8, p0

    move v0, p5

    const-string v9, "zoomWithAnimation"

    .line 516
    iget-object v1, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v1, :cond_0

    goto :goto_2

    .line 519
    :cond_0
    iget-object v1, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->r()V

    if-eqz p3, :cond_1

    .line 521
    iget-object v1, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 522
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 525
    :goto_0
    iget-object v0, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v4

    .line 526
    iget-object v0, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    .line 527
    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/mapcore2d/aq;->a(IIFZZI)V

    const/4 v2, 0x1

    .line 531
    :cond_2
    :try_start_0
    iget-object v0, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->c()Lcom/amap/api/mapcore2d/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/al;->isScaleControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, v8, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MapController"

    .line 535
    invoke-static {v0, v1, v9}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v2

    :cond_4
    :goto_2
    return v2
.end method

.method private b(Lcom/amap/api/mapcore2d/w;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->f()Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result p1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result v1

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private c(Lcom/amap/api/mapcore2d/w;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->r()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/w;)V

    :cond_1
    return-void
.end method

.method private e(F)F
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "setZoom"

    .line 160
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 161
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->r()V

    .line 163
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result p1

    .line 164
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/az$c;->a(F)V

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->c()Lcom/amap/api/mapcore2d/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/al;->isScaleControlsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapController"

    .line 170
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1

    :cond_2
    :goto_1
    return p1
.end method

.method private f(F)Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/amap/api/mapcore2d/aq;->a:F

    return v0
.end method

.method public a(FI)F
    .locals 1

    .line 142
    sget v0, Lcom/amap/api/mapcore2d/q;->c:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 143
    sget p1, Lcom/amap/api/mapcore2d/q;->c:I

    int-to-float p1, p1

    .line 145
    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/q;->d:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 146
    sget p1, Lcom/amap/api/mapcore2d/q;->d:I

    int-to-float p1, p1

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aq;->f(F)Z

    move-result v0

    if-nez v0, :cond_2

    return p1

    .line 151
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/aq;->b(FI)Z

    return p1
.end method

.method public a(F)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/amap/api/mapcore2d/aq;->a:F

    return-void
.end method

.method public a(FF)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/aq;->a(FFIII)V

    return-void
.end method

.method public a(FFIII)V
    .locals 9

    const-string v0, "zoomToSpan"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-lez v2, :cond_8

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 198
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v2

    .line 199
    iget-object v3, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    invoke-virtual {v3, p3, p4, p5}, Lcom/amap/api/mapcore2d/az$d;->b(III)I

    move-result v3

    .line 200
    iget-object v4, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    invoke-virtual {v4, p3, p4, p5}, Lcom/amap/api/mapcore2d/az$d;->a(III)I

    move-result p3

    if-nez v3, :cond_2

    if-nez p3, :cond_2

    .line 204
    iput p1, p0, Lcom/amap/api/mapcore2d/aq;->a:F

    .line 205
    iput p2, p0, Lcom/amap/api/mapcore2d/aq;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :cond_2
    int-to-float p3, p3

    div-float/2addr p3, p1

    float-to-double p3, p3

    int-to-float p1, v3

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 214
    :try_start_1
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    .line 218
    iget-object p3, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p3, p3, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-wide p3, p3, Lcom/amap/api/mapcore2d/av;->k:D

    div-double/2addr p3, p1

    const/4 p1, 0x0

    .line 223
    iget-object p2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-wide v3, p2, Lcom/amap/api/mapcore2d/av;->d:D

    :goto_0
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    cmpl-double p2, v3, p3

    if-lez p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 230
    :cond_3
    iget-object p2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-wide v3, p2, Lcom/amap/api/mapcore2d/av;->d:D

    const/4 p2, 0x1

    shl-int/2addr p2, p1

    int-to-double v7, p2

    div-double/2addr v3, v7

    div-double/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    div-double/2addr p2, p4

    int-to-double p4, p1

    add-double/2addr p4, p2

    double-to-float v1, p4

    .line 232
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/aq;->d(F)F

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    float-to-int p2, p1

    int-to-float p2, p2

    sub-float p3, p1, p2

    float-to-double p3, p3

    .line 237
    :try_start_3
    sget-wide v1, Lcom/amap/api/mapcore2d/az;->a:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v1, v3, v1

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double v1, v1, v5

    sub-double/2addr v3, v1

    cmpl-double p5, p3, v3

    if-lez p5, :cond_4

    .line 239
    sget-wide p3, Lcom/amap/api/mapcore2d/az;->a:D

    double-to-float p1, p3

    add-float/2addr p1, p2

    goto :goto_2

    .line 241
    :cond_4
    sget-wide v1, Lcom/amap/api/mapcore2d/az;->a:D

    cmpl-double p5, p3, v1

    const-wide v1, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-lez p5, :cond_5

    .line 242
    sget-wide p3, Lcom/amap/api/mapcore2d/az;->a:D

    const/4 p1, 0x0

    sub-double/2addr p3, v1

    double-to-float p1, p3

    add-float/2addr p1, p2

    goto :goto_2

    .line 244
    :cond_5
    sget-wide v3, Lcom/amap/api/mapcore2d/az;->a:D

    const/4 p5, 0x0

    sub-double/2addr p3, v3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    cmpg-double p3, p3, v1

    if-gtz p3, :cond_6

    .line 245
    sget-wide p3, Lcom/amap/api/mapcore2d/az;->a:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p1, 0x0

    sub-double/2addr p3, v1

    double-to-float p1, p3

    add-float/2addr p1, p2

    goto :goto_2

    :catch_0
    move-exception p2

    move v1, p1

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p1

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    const-string p2, "MapController"

    .line 262
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 265
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/aq;->c(F)F

    return-void

    :cond_7
    :goto_3
    return-void

    :cond_8
    :goto_4
    return-void
.end method

.method public a(IIFZZI)V
    .locals 7

    .line 510
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->e:Lcom/amap/api/mapcore2d/aq$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/aq$b;->a(IIFZZI)V

    return-void
.end method

.method public a(III)V
    .locals 3

    .line 462
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/aq;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 463
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/aq;->d:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_2

    return-void

    .line 474
    :cond_2
    :try_start_0
    sget-boolean v0, Lcom/amap/api/mapcore2d/q;->s:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 475
    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 476
    new-instance v2, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 478
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {p1, v0, v2}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    .line 482
    invoke-virtual {p0, p1, p3}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;I)V

    .line 484
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MapController"

    const-string p3, "scrollBy"

    .line 486
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/w;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aq;->b(Lcom/amap/api/mapcore2d/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aq;->c(Lcom/amap/api/mapcore2d/w;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/w;F)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aq;->b(Lcom/amap/api/mapcore2d/w;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/aq;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aq;->c(Lcom/amap/api/mapcore2d/w;)V

    .line 116
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/aq;->e(F)F

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/w;I)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->f:Lcom/amap/api/mapcore2d/aq$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/amap/api/mapcore2d/aq$a;->a(Lcom/amap/api/mapcore2d/w;Landroid/os/Message;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->r()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result p1

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 367
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result p1

    .line 371
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/aq;->c(F)F

    :cond_1
    return-void
.end method

.method public a(FIII)Z
    .locals 0

    .line 396
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/amap/api/mapcore2d/aq;->a(IIFI)Z

    move-result p1

    return p1
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore2d/aq;->a(II)Z

    move-result p1

    return p1
.end method

.method a(II)Z
    .locals 8

    .line 340
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 344
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    move v7, p2

    .line 343
    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore2d/aq;->a(IIZZII)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(IIFI)Z
    .locals 8

    .line 541
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->r()V

    .line 546
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v6

    cmpl-float v0, p3, v6

    if-eqz v0, :cond_1

    .line 549
    iget-object v2, p0, Lcom/amap/api/mapcore2d/aq;->e:Lcom/amap/api/mapcore2d/aq$b;

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/aq$b;->a(IIFFI)V

    const/4 v1, 0x1

    .line 553
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->c()Lcom/amap/api/mapcore2d/al;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/al;->isScaleControlsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 554
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MapController"

    const-string p3, "zoomToAnimation"

    .line 557
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method public b()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/amap/api/mapcore2d/aq;->b:F

    return v0
.end method

.method public b(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/amap/api/mapcore2d/aq;->b:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 423
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->e:Lcom/amap/api/mapcore2d/aq$b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/aq$b;->a()V

    .line 424
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->f:Lcom/amap/api/mapcore2d/aq$a;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/aq$a;->b()V

    return-void
.end method

.method public b(FI)Z
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 384
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 383
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amap/api/mapcore2d/aq;->a(IIFI)Z

    move-result p1

    return p1
.end method

.method public b(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore2d/aq;->b(II)Z

    move-result p1

    return p1
.end method

.method b(II)Z
    .locals 8

    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 352
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    move v7, p2

    .line 351
    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore2d/aq;->a(IIZZII)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(F)F
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aq;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aq;->e(F)F

    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/aq;->a(I)Z

    move-result v0

    return v0
.end method

.method public c(II)Z
    .locals 1

    const/4 v0, 0x1

    .line 400
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amap/api/mapcore2d/aq;->a(IIZZ)Z

    move-result p1

    return p1
.end method

.method public d(F)F
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 273
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->b()I

    move-result p1

    int-to-float p1, p1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 276
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->a()I

    move-result p1

    int-to-float p1, p1

    :cond_2
    return p1

    :cond_3
    :goto_0
    return p1
.end method

.method public d(II)V
    .locals 3

    .line 428
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/aq;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 429
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/aq;->d:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_2

    return-void

    .line 440
    :cond_2
    :try_start_0
    sget-boolean v0, Lcom/amap/api/mapcore2d/q;->s:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 441
    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 442
    new-instance v2, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 443
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 444
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result p2

    .line 443
    invoke-virtual {p1, v0, v2, p2}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 449
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MapController"

    const-string v0, "scrollBy"

    .line 451
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/aq;->b(I)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/aq;->d:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->f:Lcom/amap/api/mapcore2d/aq$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aq$a;->a()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->f:Lcom/amap/api/mapcore2d/aq$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aq$a;->b()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 64
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x1

    const/16 v0, 0xa

    const/16 v1, -0xa

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-virtual {p0, v0, p3}, Lcom/amap/api/mapcore2d/aq;->d(II)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p0, v1, p3}, Lcom/amap/api/mapcore2d/aq;->d(II)V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {p0, p3, v0}, Lcom/amap/api/mapcore2d/aq;->d(II)V

    goto :goto_0

    .line 77
    :pswitch_3
    invoke-virtual {p0, p3, v1}, Lcom/amap/api/mapcore2d/aq;->d(II)V

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
