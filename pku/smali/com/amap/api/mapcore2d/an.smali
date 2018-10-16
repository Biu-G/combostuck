.class Lcom/amap/api/mapcore2d/an;
.super Lcom/amap/api/mapcore2d/ao;
.source "SourceFile"


# instance fields
.field a:Lcom/amap/api/mapcore2d/av;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/amap/api/mapcore2d/cb;

.field k:Lcom/amap/api/maps2d/model/TileProvider;

.field public l:I

.field public m:Ljava/lang/String;

.field n:Lcom/amap/api/mapcore2d/ba;

.field o:Lcom/amap/api/mapcore2d/u;

.field p:Lcom/amap/api/mapcore2d/bn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bn<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/av;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ao;-><init>()V

    const-string v0, "LayerPropertys"

    .line 35
    iput-object v0, p0, Lcom/amap/api/mapcore2d/an;->r:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    const/16 v0, 0x13

    .line 45
    iput v0, p0, Lcom/amap/api/mapcore2d/an;->c:I

    const/4 v0, 0x3

    .line 50
    iput v0, p0, Lcom/amap/api/mapcore2d/an;->d:I

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/an;->e:Z

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/an;->s:Z

    .line 71
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/an;->f:Z

    .line 77
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/an;->g:Z

    .line 79
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/an;->h:Z

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/an;->i:J

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/amap/api/mapcore2d/an;->j:Lcom/amap/api/mapcore2d/cb;

    .line 92
    iput-object v0, p0, Lcom/amap/api/mapcore2d/an;->k:Lcom/amap/api/maps2d/model/TileProvider;

    const/4 v1, -0x1

    .line 97
    iput v1, p0, Lcom/amap/api/mapcore2d/an;->l:I

    const-string v1, ""

    .line 102
    iput-object v1, p0, Lcom/amap/api/mapcore2d/an;->m:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    .line 112
    iput-object v0, p0, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    .line 117
    iput-object v0, p0, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore2d/an;->a:Lcom/amap/api/mapcore2d/av;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/bs;

    if-nez v1, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    iget v2, v1, Lcom/amap/api/mapcore2d/bs;->h:I

    if-gez v2, :cond_3

    .line 177
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/an;->e:Z

    goto :goto_0

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    iget v3, v1, Lcom/amap/api/mapcore2d/bs;->h:I

    .line 184
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/ba;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 188
    iget-object v3, p0, Lcom/amap/api/mapcore2d/an;->a:Lcom/amap/api/mapcore2d/av;

    iget v4, v1, Lcom/amap/api/mapcore2d/bs;->b:I

    iget v1, v1, Lcom/amap/api/mapcore2d/bs;->c:I

    invoke-virtual {v3, v4, v1}, Lcom/amap/api/mapcore2d/av;->a(II)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 190
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore2d/an;->a:Lcom/amap/api/mapcore2d/av;

    iget v4, v4, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 191
    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/amap/api/mapcore2d/an;->a:Lcom/amap/api/mapcore2d/av;

    iget v5, v5, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 192
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1, v2, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->r:Ljava/lang/String;

    const-string v1, "drawLayer"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/an;->s:Z

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bv;->d()V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ba;->c()V

    .line 132
    iget-object p1, p0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bv;->c()V

    :goto_0
    return-void
.end method

.method a()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/an;->s:Z

    return v0
.end method

.method protected b()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bv;->e()V

    .line 206
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/mapcore2d/ba;)V

    .line 207
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ba;->c()V

    .line 208
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 145
    :cond_0
    instance-of v0, p1, Lcom/amap/api/mapcore2d/an;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 148
    :cond_1
    check-cast p1, Lcom/amap/api/mapcore2d/an;

    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/amap/api/mapcore2d/an;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    return-object v0
.end method
