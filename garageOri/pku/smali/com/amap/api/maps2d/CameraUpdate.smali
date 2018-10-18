.class public final Lcom/amap/api/maps2d/CameraUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/interfaces/MapCameraMessage;


# direct methods
.method public constructor <init>(Lcom/amap/api/interfaces/MapCameraMessage;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amap/api/maps2d/CameraUpdate;->a:Lcom/amap/api/interfaces/MapCameraMessage;

    return-void
.end method


# virtual methods
.method public getCameraUpdateFactoryDelegate()Lcom/amap/api/interfaces/MapCameraMessage;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amap/api/maps2d/CameraUpdate;->a:Lcom/amap/api/interfaces/MapCameraMessage;

    return-object v0
.end method
