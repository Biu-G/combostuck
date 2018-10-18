.class public Lcom/amap/api/maps2d/overlay/BusRouteOverlay;
.super Lcom/amap/api/maps2d/overlay/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/services/route/BusPath;

.field private b:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/BusPath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a:Lcom/amap/api/services/route/BusPath;

    .line 43
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 44
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 45
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    return-void
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 351
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getWalkColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 350
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 1

    .line 335
    invoke-static {p1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    .line 336
    invoke-static {p2}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    .line 338
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/List;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps2d/model/Polyline;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 360
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getWalkColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 359
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    iget-boolean p2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mNodeIconVisible:Z

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    .line 220
    invoke-virtual {p1, p2, p2}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getWalkBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    .line 218
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object p1

    .line 221
    iget-object p2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/amap/api/services/route/BusStep;)V
    .locals 6

    .line 171
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 174
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/WalkStep;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 180
    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/core/LatLonPoint;

    .line 179
    invoke-static {v3}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    .line 181
    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkStep;->getRoad()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-direct {p0, v3, v4, v5}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    invoke-virtual {v2}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;

    iput-object v3, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 190
    invoke-direct {p0, v2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Ljava/util/List;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v3

    .line 192
    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 196
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 195
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    add-int/lit8 v3, v1, 0x1

    .line 198
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v3

    .line 199
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/core/LatLonPoint;

    .line 198
    invoke-static {v3}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 201
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V
    .locals 6

    .line 263
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    .line 265
    invoke-direct {p0, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    .line 266
    iget-wide v0, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v0, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 268
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->drawLineArrow(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/amap/api/services/route/RouteBusLineItem;)V
    .locals 2

    .line 230
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 232
    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBusColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 231
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/route/WalkStep;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkStep;

    .line 366
    invoke-virtual {v1}, Lcom/amap/api/services/route/WalkStep;->getDistance()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 368
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b65\u884c"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\u7c73"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/amap/api/services/route/BusStep;)V
    .locals 2

    .line 311
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->d(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 312
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    .line 314
    invoke-virtual {v0, p1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-direct {p0, v0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private b(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V
    .locals 1

    .line 280
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    .line 281
    invoke-static {p1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    .line 282
    invoke-direct {p0, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p2

    .line 283
    invoke-static {p2}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    .line 284
    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->drawLineArrow(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/amap/api/services/route/RouteBusLineItem;)V
    .locals 3

    .line 243
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getDepartureBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v2, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 247
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 245
    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getBusLineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    .line 249
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->c(Lcom/amap/api/services/route/RouteBusLineItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mNodeIconVisible:Z

    .line 250
    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBusBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    .line 244
    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 327
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {p1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/core/LatLonPoint;

    return-object p1
.end method

.method private c(Lcom/amap/api/services/route/RouteBusLineItem;)Ljava/lang/String;
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getDepartureBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->getBusStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getArrivalBusStation()Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->getBusStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") \u7ecf\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPassStationNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u7ad9"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V
    .locals 1

    .line 296
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    .line 297
    invoke-direct {p0, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->c(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p2

    .line 298
    invoke-virtual {p1, p2}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object p1

    .line 301
    iget-object p2, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private d(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 400
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object p1

    .line 401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/route/WalkStep;

    .line 402
    invoke-virtual {p1}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object p1

    .line 403
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/core/LatLonPoint;

    return-object p1
.end method

.method private e(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 415
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object p1

    .line 417
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/core/LatLonPoint;

    return-object p1
.end method

.method private f(Lcom/amap/api/services/route/BusStep;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 429
    invoke-virtual {p1}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteBusLineItem;->getPolyline()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/core/LatLonPoint;

    return-object p1
.end method


# virtual methods
.method public addToMap()V
    .locals 5

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a:Lcom/amap/api/services/route/BusPath;

    invoke-virtual {v0}, Lcom/amap/api/services/route/BusPath;->getSteps()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/route/BusStep;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/route/BusStep;

    .line 70
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 72
    invoke-direct {p0, v2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/BusStep;)V

    .line 82
    :cond_0
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 83
    invoke-virtual {v3}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 85
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->c(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V

    .line 110
    :cond_1
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 111
    invoke-virtual {v3}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-nez v4, :cond_2

    .line 112
    invoke-virtual {v3}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 113
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V

    .line 116
    :cond_2
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 117
    invoke-virtual {v3}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v4

    if-nez v4, :cond_3

    .line 118
    invoke-virtual {v3}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 119
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/BusStep;Lcom/amap/api/services/route/BusStep;)V

    .line 142
    :cond_3
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 144
    invoke-direct {p0, v2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/BusStep;)V

    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    if-nez v3, :cond_5

    .line 147
    iget-object v3, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {p0, v3, v4}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 153
    invoke-virtual {v2}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v2

    .line 154
    invoke-direct {p0, v2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->a(Lcom/amap/api/services/route/RouteBusLineItem;)V

    .line 155
    invoke-direct {p0, v2}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->b(Lcom/amap/api/services/route/RouteBusLineItem;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 158
    :cond_7
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->addStartAndEndMarker()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public drawLineArrow(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/amap/api/maps2d/model/LatLng;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 378
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBusColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/BusRouteOverlay;->getBuslineWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    .line 377
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    return-void
.end method

.method protected getBuslineWidth()F
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    return v0
.end method

.method public bridge synthetic removeFromMap()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->removeFromMap()V

    return-void
.end method

.method public bridge synthetic setNodeIconVisibility(Z)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/amap/api/maps2d/overlay/b;->setNodeIconVisibility(Z)V

    return-void
.end method

.method public bridge synthetic zoomToSpan()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->zoomToSpan()V

    return-void
.end method
