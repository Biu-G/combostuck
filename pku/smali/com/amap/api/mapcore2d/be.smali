.class Lcom/amap/api/mapcore2d/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/af;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/y;

.field private b:F

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:F

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ae;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/amap/api/maps2d/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/amap/api/mapcore2d/be;->b:F

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->c:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    const-string v0, "PolygonDelegateImp"

    .line 34
    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "PolygonDelegateImp"

    .line 38
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 195
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 196
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ae;

    iget v2, v2, Lcom/amap/api/mapcore2d/ae;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    .line 197
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/ae;

    iget v3, v3, Lcom/amap/api/mapcore2d/ae;->a:I

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 198
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 199
    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 201
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 202
    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 203
    new-instance v3, Lcom/amap/api/mapcore2d/w;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/ae;

    iget v4, v4, Lcom/amap/api/mapcore2d/ae;->b:I

    iget-object v5, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    .line 204
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore2d/ae;

    iget v5, v5, Lcom/amap/api/mapcore2d/ae;->a:I

    invoke-direct {v3, v4, v5}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 205
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 206
    iget-object v5, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v5}, Lcom/amap/api/mapcore2d/y;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 207
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->getFillColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 213
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 215
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->getStrokeColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 218
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 107
    iget-object v4, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    iget-wide v5, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lcom/amap/api/mapcore2d/y;->a(DDLcom/amap/api/mapcore2d/ae;)V

    .line 108
    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-object v1, v2

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    .line 114
    iget-object v2, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ae;

    .line 115
    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ae;

    .line 116
    iget v3, v2, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v4, v1, Lcom/amap/api/mapcore2d/ae;->a:I

    if-ne v3, v4, :cond_3

    iget v2, v2, Lcom/amap/api/mapcore2d/ae;->b:I

    iget v1, v1, Lcom/amap/api/mapcore2d/ae;->b:I

    if-ne v2, v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-void
.end method

.method public a()Z
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMapBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 186
    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ae;

    if-eqz v2, :cond_0

    .line 131
    new-instance v3, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/s;-><init>()V

    .line 132
    iget-object v4, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    iget v5, v2, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v2, v2, Lcom/amap/api/mapcore2d/ae;->b:I

    invoke-interface {v4, v5, v2, v3}, Lcom/amap/api/mapcore2d/y;->b(IILcom/amap/api/mapcore2d/s;)V

    .line 133
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public equalsRemote(Lcom/amap/api/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-interface {p1}, Lcom/amap/api/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    iget v0, p0, Lcom/amap/api/mapcore2d/be;->f:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Polygon"

    .line 50
    invoke-static {v0}, Lcom/amap/api/mapcore2d/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/amap/api/mapcore2d/be;->g:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget v0, p0, Lcom/amap/api/mapcore2d/be;->e:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/amap/api/mapcore2d/be;->b:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/be;->c:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/y;->removeGLOverlay(Ljava/lang/String;)Z

    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iput p1, p0, Lcom/amap/api/mapcore2d/be;->f:I

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->h:Ljava/util/List;

    .line 58
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/be;->a(Ljava/util/List;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iput p1, p0, Lcom/amap/api/mapcore2d/be;->g:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    iput p1, p0, Lcom/amap/api/mapcore2d/be;->e:F

    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/be;->c:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iput p1, p0, Lcom/amap/api/mapcore2d/be;->b:F

    .line 69
    iget-object p1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->invalidate()V

    return-void
.end method
