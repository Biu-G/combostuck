.class public Lcom/amap/api/maps2d/model/RoutePara;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/amap/api/maps2d/model/LatLng;

.field private d:Lcom/amap/api/maps2d/model/LatLng;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->a:I

    .line 33
    iput v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->b:I

    return-void
.end method


# virtual methods
.method public getDrivingRouteStyle()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->a:I

    return v0
.end method

.method public getEndName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->d:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getStartName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPoint()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->c:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getTransitRouteStyle()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/amap/api/maps2d/model/RoutePara;->b:I

    return v0
.end method

.method public setDrivingRouteStyle(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    .line 69
    iput p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->a:I

    :cond_0
    return-void
.end method

.method public setEndName(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->f:Ljava/lang/String;

    return-void
.end method

.method public setEndPoint(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->d:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method

.method public setStartName(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->e:Ljava/lang/String;

    return-void
.end method

.method public setStartPoint(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->c:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method

.method public setTransitRouteStyle(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 88
    iput p1, p0, Lcom/amap/api/maps2d/model/RoutePara;->b:I

    :cond_0
    return-void
.end method
