.class Lcom/amap/api/mapcore2d/cf;
.super Lcom/amap/api/mapcore2d/e;
.source "SourceFile"


# instance fields
.field public c:F

.field public d:Z

.field private e:Landroid/view/animation/Animation$AnimationListener;

.field private f:Lcom/amap/api/mapcore2d/b;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;I)V
    .locals 1

    const/16 v0, 0xa0

    if-ge p3, v0, :cond_0

    const/16 p3, 0xa0

    :cond_0
    const/16 v0, 0x28

    .line 49
    invoke-direct {p0, p3, v0}, Lcom/amap/api/mapcore2d/e;-><init>(II)V

    const/4 p3, 0x0

    .line 21
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/cf;->m:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 26
    iput v0, p0, Lcom/amap/api/mapcore2d/cf;->c:F

    .line 31
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/cf;->d:Z

    .line 51
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    .line 52
    iput-object p2, p0, Lcom/amap/api/mapcore2d/cf;->e:Landroid/view/animation/Animation$AnimationListener;

    .line 55
    iget p1, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cf;->l:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v1, v0, Lcom/amap/api/mapcore2d/av;->c:F

    iget v2, p0, Lcom/amap/api/mapcore2d/cf;->k:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/av;->c:F

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v1, v0, Lcom/amap/api/mapcore2d/av;->c:F

    iget v2, p0, Lcom/amap/api/mapcore2d/cf;->k:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore2d/av;->c:F

    .line 74
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v1, v1, Lcom/amap/api/mapcore2d/av;->c:F

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v2, v2, Lcom/amap/api/mapcore2d/av;->c:F

    iget v3, p0, Lcom/amap/api/mapcore2d/cf;->g:F

    iget v4, p0, Lcom/amap/api/mapcore2d/cf;->h:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 76
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v2, v2, Lcom/amap/api/mapcore2d/av;->c:F

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/b;->c(F)Z

    .line 77
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public a(FFZFF)V
    .locals 0

    .line 139
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/cf;->l:Z

    .line 140
    iput p4, p0, Lcom/amap/api/mapcore2d/cf;->g:F

    .line 141
    iput p5, p0, Lcom/amap/api/mapcore2d/cf;->h:F

    .line 143
    iput p1, p0, Lcom/amap/api/mapcore2d/cf;->i:F

    .line 144
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget p2, p0, Lcom/amap/api/mapcore2d/cf;->i:F

    iput p2, p1, Lcom/amap/api/mapcore2d/av;->c:F

    .line 146
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/cf;->l:Z

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget p1, p1, Lcom/amap/api/mapcore2d/av;->c:F

    iget p2, p0, Lcom/amap/api/mapcore2d/cf;->b:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/amap/api/mapcore2d/cf;->k:F

    .line 148
    iget p1, p0, Lcom/amap/api/mapcore2d/cf;->i:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/amap/api/mapcore2d/cf;->j:F

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget p1, p1, Lcom/amap/api/mapcore2d/av;->c:F

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    iget p3, p0, Lcom/amap/api/mapcore2d/cf;->b:I

    int-to-float p3, p3

    mul-float p1, p1, p3

    iget p3, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lcom/amap/api/mapcore2d/cf;->k:F

    .line 151
    iget p1, p0, Lcom/amap/api/mapcore2d/cf;->i:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/amap/api/mapcore2d/cf;->j:F

    :goto_0
    return-void
.end method

.method public a(FZFF)V
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->c:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 159
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput p1, v0, v2

    .line 160
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/az;->a(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cf;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 165
    iget v0, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    const/16 v3, 0xa0

    if-ge v0, v3, :cond_1

    .line 166
    iput v3, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->o()F

    move-result v4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore2d/cf;->a(FFZFF)V

    .line 168
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/az$a;->a(Z)V

    .line 169
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/az$a;->b:Z

    .line 170
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p1, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 171
    invoke-super {p0}, Lcom/amap/api/mapcore2d/e;->d()V

    goto :goto_0

    .line 173
    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/cf;->m:Z

    .line 174
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cf;->e()V

    .line 175
    iget v5, p0, Lcom/amap/api/mapcore2d/cf;->j:F

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/amap/api/mapcore2d/cf;->a(FFZFF)V

    .line 177
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/az$a;->a(Z)V

    .line 178
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/az$a;->b:Z

    .line 179
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cf;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {p1, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 180
    invoke-super {p0}, Lcom/amap/api/mapcore2d/e;->d()V

    .line 181
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/cf;->m:Z

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 60
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    return-void
.end method

.method protected b()V
    .locals 6

    .line 90
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cf;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/az$a;->b:Z

    .line 97
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cf;->d:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 98
    new-instance v0, Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/cf;->g:F

    float-to-int v3, v3

    iget v4, p0, Lcom/amap/api/mapcore2d/cf;->h:F

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 99
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v3

    iget v4, p0, Lcom/amap/api/mapcore2d/cf;->g:F

    float-to-int v4, v4

    iget v5, p0, Lcom/amap/api/mapcore2d/cf;->h:F

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/amap/api/mapcore2d/bh;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object v3

    .line 101
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    .line 102
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v5

    iget-object v5, v5, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 103
    invoke-virtual {v5, v3}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object v3

    iput-object v3, v4, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    .line 104
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/Point;)V

    .line 105
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->i()Lcom/amap/api/mapcore2d/aq;

    move-result-object v0

    iget v3, p0, Lcom/amap/api/mapcore2d/cf;->c:F

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/aq;->c(F)F

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->e:Landroid/view/animation/Animation$AnimationListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 110
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cf;->d:Z

    if-ne v0, v2, :cond_3

    .line 111
    new-instance v0, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    .line 112
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    .line 113
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 114
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    .line 115
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    .line 116
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v5

    iget-object v5, v5, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 114
    invoke-interface {v3, v4, v5}, Lcom/amap/api/mapcore2d/bh;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object v3

    .line 117
    iget-object v4, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    .line 118
    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v5

    iget-object v5, v5, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 119
    invoke-virtual {v5, v3}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object v3

    iput-object v3, v4, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    .line 120
    iget-object v3, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 121
    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/Point;)V

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/amap/api/mapcore2d/av;->c:F

    .line 127
    sput v1, Lcom/amap/api/mapcore2d/bb;->j:F

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cf;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/az;->a(Z)V

    .line 129
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/l;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ZoomCtlAnim"

    const-string v2, "onStop"

    .line 131
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v0, 0xa0

    .line 134
    iput v0, p0, Lcom/amap/api/mapcore2d/cf;->a:I

    return-void
.end method

.method protected c()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cf;->b()V

    return-void
.end method
