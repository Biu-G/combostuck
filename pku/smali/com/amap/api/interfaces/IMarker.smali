.class public interface abstract Lcom/amap/api/interfaces/IMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract equalsRemote(Lcom/amap/api/interfaces/IMarker;)Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIcons()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getObject()Ljava/lang/Object;
.end method

.method public abstract getPeriod()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPosition()Lcom/amap/api/maps2d/model/LatLng;
.end method

.method public abstract getRealPosition()Lcom/amap/api/maps2d/model/LatLng;
.end method

.method public abstract getSnippet()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract getZIndex()F
.end method

.method public abstract hashCodeRemote()I
.end method

.method public abstract hideInfoWindow()V
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isInfoWindowShown()Z
.end method

.method public abstract isViewMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isVisible()Z
.end method

.method public abstract remove()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAnchor(FF)V
.end method

.method public abstract setDraggable(Z)V
.end method

.method public abstract setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
.end method

.method public abstract setIcons(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setObject(Ljava/lang/Object;)V
.end method

.method public abstract setPeriod(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
.end method

.method public abstract setPositionByPixels(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRotateAngle(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSnippet(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setZIndex(F)V
.end method

.method public abstract showInfoWindow()V
.end method
