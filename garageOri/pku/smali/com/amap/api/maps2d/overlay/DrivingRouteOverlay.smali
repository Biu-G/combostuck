.class public Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;
.super Lcom/amap/api/maps2d/overlay/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/services/route/DrivePath;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field protected mPassByMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/DrivePath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 48
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    .line 49
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a:Lcom/amap/api/services/route/DrivePath;

    .line 50
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 51
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMap;Lcom/amap/api/services/route/DrivePath;Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/maps2d/AMap;",
            "Lcom/amap/api/services/route/DrivePath;",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/overlay/b;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 69
    iput-object p2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    .line 70
    iput-object p3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a:Lcom/amap/api/services/route/DrivePath;

    .line 71
    invoke-static {p4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 72
    invoke-static {p5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    .line 73
    iput-object p6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 145
    invoke-static {v1}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v3, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 148
    invoke-virtual {v3, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    const-string v3, "\u9014\u7ecf\u70b9"

    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    iget-boolean v3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 149
    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getPassedByBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    .line 147
    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addToMap()V
    .locals 11

    .line 81
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a:Lcom/amap/api/services/route/DrivePath;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a:Lcom/amap/api/services/route/DrivePath;

    invoke-virtual {v0}, Lcom/amap/api/services/route/DrivePath;->getSteps()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/route/DriveStep;

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 91
    :cond_1
    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/services/core/LatLonPoint;

    .line 90
    invoke-static {v4}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x2

    if-ge v2, v5, :cond_3

    if-nez v2, :cond_2

    .line 94
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v8, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v8}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v9, v7, [Lcom/amap/api/maps2d/model/LatLng;

    iget-object v10, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v10, v9, v1

    aput-object v4, v9, v6

    .line 95
    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v8

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v8

    .line 96
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v8

    .line 94
    invoke-virtual {v5, v8}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v5

    .line 97
    iget-object v8, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/services/core/LatLonPoint;

    .line 99
    invoke-static {v5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    add-int/lit8 v8, v2, 0x1

    .line 102
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/services/route/DriveStep;

    invoke-virtual {v8}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v8

    .line 103
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/services/core/LatLonPoint;

    .line 102
    invoke-static {v8}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v8

    .line 104
    invoke-virtual {v5, v8}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 105
    iget-object v9, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v10, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v10}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v7, v7, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v5, v7, v1

    aput-object v8, v7, v6

    .line 107
    invoke-virtual {v10, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 108
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 109
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 106
    invoke-virtual {v9, v5}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v5

    .line 110
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/services/core/LatLonPoint;

    .line 113
    invoke-static {v5}, Lcom/amap/api/maps2d/overlay/a;->a(Lcom/amap/api/services/core/LatLonPoint;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    .line 115
    iget-object v8, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v9, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v9}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    new-array v7, v7, [Lcom/amap/api/maps2d/model/LatLng;

    aput-object v5, v7, v1

    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v5, v7, v6

    .line 116
    invoke-virtual {v9, v7}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 117
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v5

    .line 115
    invoke-virtual {v8, v5}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v5

    .line 118
    iget-object v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 123
    invoke-virtual {v6, v4}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u65b9\u5411:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\u9053\u8def:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getRoad()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 126
    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getInstruction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    const/high16 v6, 0x3f000000    # 0.5f

    .line 127
    invoke-virtual {v4, v6, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    iget-boolean v6, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mNodeIconVisible:Z

    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 128
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 122
    invoke-virtual {v5, v4}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v4

    .line 129
    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->stationMarkers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    new-instance v5, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 132
    invoke-virtual {v3}, Lcom/amap/api/services/route/DriveStep;->getPolyline()Ljava/util/List;

    move-result-object v3

    .line 131
    invoke-static {v3}, Lcom/amap/api/maps2d/overlay/a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    .line 132
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getDriveColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBuslineWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v3

    .line 130
    invoke-virtual {v4, v3}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    move-result-object v3

    .line 134
    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->allPolyLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 136
    :cond_5
    invoke-direct {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->a()V

    .line 137
    invoke-virtual {p0}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->addStartAndEndMarker()V

    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method protected getBuslineWidth()F
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    return v0
.end method

.method protected getLatLngBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 7

    .line 205
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->startPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 207
    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->endPoint:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    .line 208
    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 209
    :goto_0
    iget-object v2, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 210
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    .line 211
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->c:Ljava/util/List;

    .line 212
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v5}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 210
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method protected getPassedByBitmapDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->b:Landroid/graphics/Bitmap;

    const-string v1, "amap_throughpoint.png"

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->getBitDes(Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public removeFromMap()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->removeFromMap()V

    .line 164
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/Marker;

    .line 165
    invoke-virtual {v1}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setNodeIconVisibility(Z)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/amap/api/maps2d/overlay/b;->setNodeIconVisibility(Z)V

    return-void
.end method

.method public setThroughPointIconVisibility(Z)V
    .locals 2

    .line 176
    iput-boolean p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->d:Z

    .line 177
    iget-object v0, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mPassByMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/Marker;

    .line 178
    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/Marker;->setVisible(Z)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/amap/api/maps2d/overlay/DrivingRouteOverlay;->mAMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->postInvalidate()V

    return-void
.end method

.method public bridge synthetic zoomToSpan()V
    .locals 0

    .line 28
    invoke-super {p0}, Lcom/amap/api/maps2d/overlay/b;->zoomToSpan()V

    return-void
.end method
