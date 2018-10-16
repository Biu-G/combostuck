.class public interface abstract Lcom/amap/api/interfaces/IProjection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVisibleRegion()Lcom/amap/api/maps2d/model/VisibleRegion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract toMapLocation(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract toScreenLocation(Lcom/amap/api/maps2d/model/LatLng;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
