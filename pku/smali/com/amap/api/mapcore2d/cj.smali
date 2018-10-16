.class public Lcom/amap/api/mapcore2d/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cl;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/fg;->a(DD)[D

    move-result-object p0

    .line 21
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0

    :cond_1
    return-object p0
.end method
