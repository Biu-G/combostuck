.class public Lcom/amap/api/maps2d/model/MyLocationStyleCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/MyLocationStyle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 3

    .line 14
    new-instance v0, Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;-><init>()V

    .line 15
    const-class v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 17
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->anchor(FF)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->radiusFillColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->strokeWidth(F)Lcom/amap/api/maps2d/model/MyLocationStyle;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/MyLocationStyleCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/MyLocationStyle;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 28
    new-array p1, p1, [Lcom/amap/api/maps2d/model/MyLocationStyle;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/MyLocationStyleCreator;->newArray(I)[Lcom/amap/api/maps2d/model/MyLocationStyle;

    move-result-object p1

    return-object p1
.end method
