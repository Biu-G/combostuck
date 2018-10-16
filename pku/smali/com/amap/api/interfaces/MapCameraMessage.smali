.class public abstract Lcom/amap/api/interfaces/MapCameraMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/interfaces/MapCameraMessage$Type;
    }
.end annotation


# instance fields
.field public amount:F

.field public bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

.field public cameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

.field public focus:Landroid/graphics/Point;

.field public height:I

.field public isChangeFinished:Z

.field public nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public padding:I

.field public width:I

.field public xPixel:F

.field public yPixel:F

.field public zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->none:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    iput-object v0, p0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/amap/api/interfaces/MapCameraMessage;->isChangeFinished:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amap/api/interfaces/MapCameraMessage;->focus:Landroid/graphics/Point;

    return-void
.end method
