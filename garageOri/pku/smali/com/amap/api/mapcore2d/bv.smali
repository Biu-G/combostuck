.class Lcom/amap/api/mapcore2d/bv;
.super Lcom/amap/api/mapcore2d/f;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/cc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/f<",
        "Lcom/amap/api/mapcore2d/bs;",
        "Lcom/amap/api/mapcore2d/bs;",
        ">;",
        "Lcom/amap/api/mapcore2d/cc;"
    }
.end annotation


# instance fields
.field private c:Lcom/amap/api/mapcore2d/an;

.field private d:Lcom/amap/api/mapcore2d/am;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/f;-><init>(Lcom/amap/api/mapcore2d/az;)V

    .line 306
    new-instance p1, Lcom/amap/api/mapcore2d/am;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/am;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/am;

    .line 31
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    .line 32
    new-instance p1, Lcom/amap/api/mapcore2d/br;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/br;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bv;->a:Lcom/amap/api/mapcore2d/bo;

    .line 33
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/cc;)V

    .line 35
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bv;->a()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/an;FZ)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;",
            "Lcom/amap/api/mapcore2d/an;",
            "FZ)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 193
    :cond_0
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/an;->a()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 196
    :cond_1
    iget-object v2, p2, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    if-nez v2, :cond_2

    return-object v1

    .line 200
    :cond_2
    iget-object v2, p2, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bn;->clear()V

    .line 203
    iget v2, p2, Lcom/amap/api/mapcore2d/an;->c:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-gtz v2, :cond_9

    iget v2, p2, Lcom/amap/api/mapcore2d/an;->d:I

    int-to-float v2, v2

    cmpg-float p3, p3, v2

    if-gez p3, :cond_3

    goto :goto_2

    .line 207
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-gtz p3, :cond_4

    return-object v1

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_8

    .line 217
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/bs;

    if-nez v2, :cond_5

    goto :goto_1

    .line 221
    :cond_5
    iget-object v3, p2, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    .line 222
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bs;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/ba;->a(Ljava/lang/String;)I

    move-result v3

    .line 224
    new-instance v4, Lcom/amap/api/mapcore2d/bs;

    iget v5, v2, Lcom/amap/api/mapcore2d/bs;->b:I

    iget v6, v2, Lcom/amap/api/mapcore2d/bs;->c:I

    iget v7, v2, Lcom/amap/api/mapcore2d/bs;->d:I

    iget v8, p2, Lcom/amap/api/mapcore2d/an;->l:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/mapcore2d/bs;-><init>(IIII)V

    .line 227
    iput v3, v4, Lcom/amap/api/mapcore2d/bs;->h:I

    .line 228
    iget-object v2, v2, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    iput-object v2, v4, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    .line 230
    iget-object v2, p2, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore2d/bn;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, v4}, Lcom/amap/api/mapcore2d/bv;->a(Lcom/amap/api/mapcore2d/bs;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p4, :cond_7

    .line 236
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore2d/am;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 237
    iget-boolean v2, p2, Lcom/amap/api/mapcore2d/an;->f:Z

    if-nez v2, :cond_6

    const/4 v2, -0x1

    .line 238
    iput v2, v4, Lcom/amap/api/mapcore2d/bs;->a:I

    .line 240
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_8
    return-object v0

    :cond_9
    :goto_2
    return-object v1

    :cond_a
    :goto_3
    return-object v1
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;Z)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->a:Lcom/amap/api/mapcore2d/bo;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->a:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bo;->a(Ljava/util/List;Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/bs;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 303
    iget p1, p1, Lcom/amap/api/mapcore2d/bs;->h:I

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/am;

    if-nez v0, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 130
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/am;->a(Lcom/amap/api/mapcore2d/bs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private j()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_1

    return v1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return v1

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/an;->a()Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-nez v1, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bv;->a(Ljava/util/List;)V

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/an;->j:Lcom/amap/api/mapcore2d/cb;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/an;->k:Lcom/amap/api/maps2d/model/TileProvider;

    if-eqz v1, :cond_4

    .line 81
    :cond_3
    new-instance v1, Lcom/amap/api/mapcore2d/bw;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/an;->k:Lcom/amap/api/maps2d/model/TileProvider;

    invoke-direct {v1, p1, v2}, Lcom/amap/api/mapcore2d/bw;-><init>(Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V

    .line 84
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/bw;->a(Lcom/amap/api/mapcore2d/an;)V

    .line 86
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bw;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bw;->a(Lcom/amap/api/mapcore2d/an;)V

    move-object v0, v2

    .line 93
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bv;->c(Ljava/util/ArrayList;)V

    .line 94
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-nez p1, :cond_5

    goto :goto_0

    .line 97
    :cond_5
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$a;->b()V

    return-object v0

    :cond_6
    :goto_0
    return-object v0

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 112
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/am;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/am;->b(Lcom/amap/api/mapcore2d/bs;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 254
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bv;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 261
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/av;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 262
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 263
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v3

    .line 259
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;III)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 270
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    const/4 v1, 0x1

    .line 281
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 282
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v2

    .line 281
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/amap/api/mapcore2d/bv;->a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/an;FZ)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 285
    invoke-direct {p0, p2, v1}, Lcom/amap/api/mapcore2d/bv;->a(Ljava/util/ArrayList;Z)V

    .line 289
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 294
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 328
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v4, v0

    const/4 v5, -0x1

    :goto_0
    if-ge v2, v1, :cond_d

    .line 340
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore2d/bs;

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 344
    :cond_2
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-nez v7, :cond_3

    goto/16 :goto_4

    .line 348
    :cond_3
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/bn;->size()I

    .line 357
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    iget-boolean v7, v7, Lcom/amap/api/mapcore2d/an;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v7, :cond_4

    goto :goto_3

    .line 366
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getUpdateDataActiveEnable()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/amap/api/mapcore2d/q;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, -0x1

    goto :goto_1

    .line 369
    :cond_5
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v7, v6}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/mapcore2d/bs;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v7

    goto :goto_1

    :catch_0
    move-exception v7

    .line 372
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-ltz v5, :cond_a

    .line 377
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    .line 383
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bv;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    if-nez v7, :cond_6

    goto :goto_3

    .line 388
    :cond_6
    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 389
    :try_start_3
    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/bn;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/mapcore2d/bs;

    if-nez v9, :cond_8

    goto :goto_2

    .line 393
    :cond_8
    invoke-virtual {v9, v6}, Lcom/amap/api/mapcore2d/bs;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 394
    iput v5, v9, Lcom/amap/api/mapcore2d/bs;->h:I

    .line 395
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/az$a;->b()V

    .line 399
    :cond_9
    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_a
    if-nez v4, :cond_b

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 404
    :cond_b
    new-instance v7, Lcom/amap/api/mapcore2d/bs;

    invoke-direct {v7, v6}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/bs;)V

    .line 405
    iput v3, v7, Lcom/amap/api/mapcore2d/bs;->a:I

    .line 406
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_4
    return-object v0

    :catch_1
    :cond_d
    return-object v4
.end method

.method public b()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/amap/api/mapcore2d/f;->b()V

    .line 22
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->d:Lcom/amap/api/mapcore2d/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/am;->clear()V

    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/az$c;->b(Lcom/amap/api/mapcore2d/cc;)V

    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bv;->b:Lcom/amap/api/mapcore2d/az;

    return-void
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/bv;->a(ZZ)V

    return-void
.end method
