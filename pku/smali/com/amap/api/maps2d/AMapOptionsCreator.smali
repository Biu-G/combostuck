.class public Lcom/amap/api/maps2d/AMapOptionsCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/AMapOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/AMapOptions;
    .locals 3

    .line 15
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    .line 17
    const-class v1, Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/CameraPosition;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/AMapOptions;->mapType(I)Lcom/amap/api/maps2d/AMapOptions;

    .line 19
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    array-length v1, p1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 22
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->scrollGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    const/4 v1, 0x1

    .line 23
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->zoomGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    const/4 v1, 0x2

    .line 24
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->zoomControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    const/4 v1, 0x3

    .line 26
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->zOrderOnTop(Z)Lcom/amap/api/maps2d/AMapOptions;

    const/4 v1, 0x4

    .line 27
    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->compassEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    const/4 v1, 0x5

    .line 28
    aget-boolean p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMapOptions;->scaleControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 37
    new-array p1, p1, [Lcom/amap/api/maps2d/AMapOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/AMapOptionsCreator;->newArray(I)[Lcom/amap/api/maps2d/AMapOptions;

    move-result-object p1

    return-object p1
.end method
