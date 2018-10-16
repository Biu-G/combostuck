.class public final Lcom/amap/api/maps2d/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps2d/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps2d/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 189
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 190
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    iget p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 191
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .line 237
    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->d:F

    return-object p0
.end method

.method public build()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 7

    const-string v0, "build"

    const/4 v1, 0x0

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v2, :cond_0

    const-string v2, "CameraPosition"

    const-string v3, "target is null"

    .line 250
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 253
    :cond_0
    new-instance v2, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v3, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    iget v4, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->b:F

    iget v5, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->c:F

    iget v6, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->d:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "CameraPosition"

    .line 256
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .line 225
    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->c:F

    return-object p0
.end method

.method public zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    .line 213
    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->b:F

    return-object p0
.end method
