.class public Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;
.super Lcom/amap/api/maps2d/overlay/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/services/route/WalkPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/WalkPath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    .line 41
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->a:Lcom/amap/api/services/route/WalkPath;

    .line 42
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 43
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method


# virtual methods
.method public addToMap()V
    .locals 11

    .line 52
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->a:Lcom/amap/api/services/route/WalkPath;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->a:Lcom/amap/api/services/route/WalkPath;

    invoke-virtual {v0}, Lcom/amap/api/services/route/WalkPath;->getSteps()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/route/WalkStep;

    .line 60
    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/services/core/LatLonPoint;

    .line 59
    invoke-static {v4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x2

    if-ge v2, v5, :cond_2

    if-nez v2, :cond_1

    .line 63
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v8, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v8}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v9, v7, [Lcom/amap/api/maps2d/model/LatLng;

    iget-object v10, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v10, v9, v1

    aput-object v4, v9, v6

    .line 65
    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v8

    .line 66
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v8

    .line 67
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v8

    .line 64
    invoke-virtual {v5, v8}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v5

    .line 68
    iget-object v8, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/services/core/LatLonPoint;

    .line 71
    invoke-static {v5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    add-int/lit8 v8, v2, 0x1

    .line 74
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/services/route/WalkStep;

    invoke-virtual {v8}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/services/core/LatLonPoint;

    .line 73
    invoke-static {v8}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v8

    .line 75
    invoke-virtual {v5, v8}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 76
    iget-object v9, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v10, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v10}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v7, v7, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v5, v7, v1

    aput-object v8, v7, v6

    .line 78
    invoke-virtual {v10, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 80
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 77
    invoke-virtual {v9, v5}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v5

    .line 81
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/services/core/LatLonPoint;

    .line 84
    invoke-static {v5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    .line 86
    iget-object v8, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v9, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v9}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v7, v7, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v5, v7, v1

    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v5, v7, v6

    .line 87
    invoke-virtual {v9, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 88
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 86
    invoke-virtual {v8, v5}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v5

    .line 89
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 93
    invoke-virtual {v6, v4}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u65b9\u5411:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\u9053\u8def:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getRoad()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 96
    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getInstruction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v6, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    iget-boolean v6, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mNodeIconVisible:Z

    .line 97
    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 92
    invoke-virtual {v5, v4}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v4

    .line 99
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v5, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 102
    invoke-virtual {v3}, Lcom/amap/api/services/route/WalkStep;->getPolyline()Ljava/util/List;

    move-result-object v3

    .line 101
    invoke-static {v3}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    .line 102
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getWalkColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->getBuslineWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    .line 100
    invoke-virtual {v4, v3}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/WalkRouteOverlay;->addStartAndEndMarker()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected getBuslineWidth()F
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    return v0
.end method

.method public bridge synthetic removeFromMap()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->removeFromMap()V

    return-void
.end method

.method public bridge synthetic setNodeIconVisibility(Z)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/amap/api/maps2d/overlay/b;->setNodeIconVisibility(Z)V

    return-void
.end method

.method public bridge synthetic zoomToSpan()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->zoomToSpan()V

    return-void
.end method
