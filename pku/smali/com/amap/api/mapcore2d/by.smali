.class Lcom/amap/api/mapcore2d/by;
.super Lcom/amap/api/mapcore2d/e;
.source "SourceFile"


# instance fields
.field private c:Lcom/amap/api/mapcore2d/w;

.field private d:Lcom/amap/api/mapcore2d/w;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/mapcore2d/bz;

.field private m:J

.field private n:I


# direct methods
.method public constructor <init>(IILcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;ILcom/amap/api/mapcore2d/bz;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/e;-><init>(II)V

    .line 34
    iput-object p3, p0, Lcom/amap/api/mapcore2d/by;->c:Lcom/amap/api/mapcore2d/w;

    .line 35
    iput-object p4, p0, Lcom/amap/api/mapcore2d/by;->d:Lcom/amap/api/mapcore2d/w;

    .line 37
    iget-object p2, p0, Lcom/amap/api/mapcore2d/by;->c:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/amap/api/mapcore2d/by;->e:I

    .line 38
    iget-object p2, p0, Lcom/amap/api/mapcore2d/by;->c:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/amap/api/mapcore2d/by;->f:I

    .line 39
    iput-object p6, p0, Lcom/amap/api/mapcore2d/by;->l:Lcom/amap/api/mapcore2d/bz;

    .line 40
    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide p2

    iget-object p5, p0, Lcom/amap/api/mapcore2d/by;->c:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide p5

    sub-double/2addr p2, p5

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/amap/api/mapcore2d/by;->i:I

    .line 41
    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide p2

    iget-object p4, p0, Lcom/amap/api/mapcore2d/by;->c:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide p4

    sub-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/amap/api/mapcore2d/by;->j:I

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/amap/api/mapcore2d/by;->m:J

    .line 44
    iput p1, p0, Lcom/amap/api/mapcore2d/by;->n:I

    return-void
.end method

.method private a(III)I
    .locals 1

    const/4 v0, 0x0

    if-le p2, p1, :cond_0

    add-int/2addr p1, p3

    if-lt p1, p2, :cond_1

    .line 114
    iput v0, p0, Lcom/amap/api/mapcore2d/by;->k:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    if-gt p1, p2, :cond_1

    .line 120
    iput v0, p0, Lcom/amap/api/mapcore2d/by;->k:I

    :goto_0
    move p1, p2

    :cond_1
    return p1
.end method

.method private b(I)V
    .locals 4

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/by;->m:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 52
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/by;->m:J

    int-to-float v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 55
    iget p1, p0, Lcom/amap/api/mapcore2d/by;->i:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/amap/api/mapcore2d/by;->g:I

    .line 56
    iget p1, p0, Lcom/amap/api/mapcore2d/by;->j:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/amap/api/mapcore2d/by;->h:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 11

    .line 78
    iget v0, p0, Lcom/amap/api/mapcore2d/by;->n:I

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/by;->b(I)V

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/by;->d:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v0

    double-to-int v0, v0

    .line 85
    iget-object v1, p0, Lcom/amap/api/mapcore2d/by;->d:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v1

    double-to-int v1, v1

    .line 87
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/by;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    iput v0, p0, Lcom/amap/api/mapcore2d/by;->e:I

    .line 89
    iput v1, p0, Lcom/amap/api/mapcore2d/by;->f:I

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/by;->l:Lcom/amap/api/mapcore2d/bz;

    new-instance v7, Lcom/amap/api/mapcore2d/w;

    iget v1, p0, Lcom/amap/api/mapcore2d/by;->f:I

    int-to-double v2, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/by;->e:I

    int-to-double v4, v1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    invoke-interface {v0, v7}, Lcom/amap/api/mapcore2d/bz;->a(Lcom/amap/api/mapcore2d/w;)V

    goto :goto_0

    .line 94
    :cond_0
    iget v2, p0, Lcom/amap/api/mapcore2d/by;->k:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amap/api/mapcore2d/by;->k:I

    .line 95
    iget v2, p0, Lcom/amap/api/mapcore2d/by;->e:I

    iget v4, p0, Lcom/amap/api/mapcore2d/by;->g:I

    invoke-direct {p0, v2, v0, v4}, Lcom/amap/api/mapcore2d/by;->a(III)I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/by;->e:I

    .line 96
    iget v2, p0, Lcom/amap/api/mapcore2d/by;->f:I

    iget v4, p0, Lcom/amap/api/mapcore2d/by;->h:I

    invoke-direct {p0, v2, v1, v4}, Lcom/amap/api/mapcore2d/by;->a(III)I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/by;->f:I

    .line 98
    iget-object v2, p0, Lcom/amap/api/mapcore2d/by;->l:Lcom/amap/api/mapcore2d/bz;

    new-instance v10, Lcom/amap/api/mapcore2d/w;

    iget v4, p0, Lcom/amap/api/mapcore2d/by;->f:I

    int-to-double v5, v4

    iget v4, p0, Lcom/amap/api/mapcore2d/by;->e:I

    int-to-double v7, v4

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    invoke-interface {v2, v10}, Lcom/amap/api/mapcore2d/bz;->a(Lcom/amap/api/mapcore2d/w;)V

    .line 100
    iget v2, p0, Lcom/amap/api/mapcore2d/by;->e:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/amap/api/mapcore2d/by;->f:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/by;->a(Z)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/by;->b(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/by;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore2d/by;->l:Lcom/amap/api/mapcore2d/bz;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/bz;->c()V

    .line 70
    invoke-static {}, Lcom/amap/api/mapcore2d/n;->a()Lcom/amap/api/mapcore2d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/n;->b()V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore2d/by;->l:Lcom/amap/api/mapcore2d/bz;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/bz;->c()V

    .line 64
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/l;->b()V

    return-void
.end method

.method protected g()V
    .locals 1

    .line 127
    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->a()Lcom/amap/api/mapcore2d/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bm;->b()V

    return-void
.end method
