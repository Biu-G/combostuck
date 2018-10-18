.class public final Lcom/amap/api/maps2d/model/TileOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/interfaces/ITileOverlay;


# direct methods
.method public constructor <init>(Lcom/amap/api/interfaces/ITileOverlay;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ITileOverlay;->clearTileCache()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {p1, v0}, Lcom/amap/api/interfaces/ITileOverlay;->equalsRemote(Lcom/amap/api/interfaces/ITileOverlay;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ITileOverlay;->getZIndex()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ITileOverlay;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ITileOverlay;->isVisible()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/amap/api/interfaces/ITileOverlay;->remove()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ITileOverlay;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlay;->a:Lcom/amap/api/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/ITileOverlay;->setZIndex(F)V

    return-void
.end method
