.class Lcom/amap/api/mapcore2d/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/v$a;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field a:Lcom/amap/api/mapcore2d/y;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amap/api/mapcore2d/ad;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore2d/v$a;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    new-instance v0, Lcom/amap/api/mapcore2d/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/v$a;-><init>(Lcom/amap/api/mapcore2d/v;Lcom/amap/api/mapcore2d/v$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/mapcore2d/v$a;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/amap/api/mapcore2d/v$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/v$1;-><init>(Lcom/amap/api/mapcore2d/v;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/v;->f:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v;->a:Lcom/amap/api/mapcore2d/y;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/v;

    monitor-enter v0

    .line 33
    :try_start_0
    sget v1, Lcom/amap/api/mapcore2d/v;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/amap/api/mapcore2d/v;->b:I

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/amap/api/mapcore2d/v;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/v;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/v;)Lcom/amap/api/mapcore2d/v$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/mapcore2d/v$a;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ad;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ad;

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ad;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/aa;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 267
    monitor-exit p0

    return-object p1

    .line 269
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/x;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->a:Lcom/amap/api/mapcore2d/y;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/x;-><init>(Lcom/amap/api/mapcore2d/y;)V

    .line 270
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    .line 271
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/x;->setAnchor(FF)V

    .line 272
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 273
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/x;->setDimensions(FF)V

    .line 274
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setImage(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 275
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setPosition(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 276
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setPositionFromBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)V

    .line 277
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setBearing(F)V

    .line 278
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setTransparency(F)V

    .line 279
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/x;->setVisible(Z)V

    .line 280
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/x;->setZIndex(F)V

    .line 281
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/mapcore2d/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 265
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/af;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 218
    monitor-exit p0

    return-object p1

    .line 220
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/be;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->a:Lcom/amap/api/mapcore2d/y;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/be;-><init>(Lcom/amap/api/mapcore2d/y;)V

    .line 221
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->setFillColor(I)V

    .line 222
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->setPoints(Ljava/util/List;)V

    .line 223
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->setVisible(Z)V

    .line 224
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->setStrokeWidth(F)V

    .line 225
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/be;->setZIndex(F)V

    .line 226
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/be;->setStrokeColor(I)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/mapcore2d/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 216
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/ag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 192
    monitor-exit p0

    return-object p1

    .line 194
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/bf;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->a:Lcom/amap/api/mapcore2d/y;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/bf;-><init>(Lcom/amap/api/mapcore2d/y;)V

    .line 195
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bf;->setColor(I)V

    .line 196
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isDottedLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bf;->setDottedLine(Z)V

    .line 197
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bf;->setGeodesic(Z)V

    .line 198
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bf;->setPoints(Ljava/util/List;)V

    .line 199
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bf;->setVisible(Z)V

    .line 200
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bf;->setWidth(F)V

    .line 201
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bf;->setZIndex(F)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/mapcore2d/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 190
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 242
    monitor-exit p0

    return-object p1

    .line 244
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/o;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->a:Lcom/amap/api/mapcore2d/y;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/o;-><init>(Lcom/amap/api/mapcore2d/y;)V

    .line 245
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setFillColor(I)V

    .line 246
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setCenter(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 247
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setVisible(Z)V

    .line 248
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setStrokeWidth(F)V

    .line 249
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setZIndex(F)V

    .line 250
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/o;->setStrokeColor(I)V

    .line 251
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/o;->setRadius(D)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/mapcore2d/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 240
    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 4

    const-string v0, "clear"

    .line 68
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    .line 69
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ad;->destroy()V

    goto :goto_0

    .line 72
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    .line 75
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ad;->destroy()V

    goto :goto_1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "GLOverlayLayer"

    .line 79
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "amapApi"

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLOverlayLayer clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "draw"

    .line 158
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->d:Lcom/amap/api/mapcore2d/v$a;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 160
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 161
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 163
    :try_start_0
    iget-object v5, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v4, Lcom/amap/api/mapcore2d/ad;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "GLOverlayLayer"

    .line 165
    invoke-static {v4, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 169
    iget-object v2, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/ad;

    .line 171
    :try_start_1
    invoke-interface {v3}, Lcom/amap/api/mapcore2d/ad;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x14

    if-le v1, v4, :cond_2

    .line 173
    invoke-interface {v3}, Lcom/amap/api/mapcore2d/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-interface {v3, p1}, Lcom/amap/api/mapcore2d/ad;->a(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 177
    :cond_2
    invoke-interface {v3, p1}, Lcom/amap/api/mapcore2d/ad;->a(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "GLOverlayLayer"

    .line 181
    invoke-static {v3, v4, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ad;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ad;->getId()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/v;->b(Ljava/lang/String;)Z

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/v;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GLOverlayLayer"

    const-string v1, "addOverlay"

    .line 114
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "destory"

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ad;

    .line 88
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ad;->destroy()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/v;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "GLOverlayLayer"

    .line 93
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "amapApi"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLOverlayLayer destory erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/v;->c(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore2d/v;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
