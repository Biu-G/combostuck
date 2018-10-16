.class Lcom/amap/api/maps2d/model/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/PolygonOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 8

    .line 14
    new-instance v0, Lcom/amap/api/maps2d/model/PolygonOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/PolygonOptions;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v2, Lcom/amap/api/maps2d/model/LatLng;->CREATOR:Lcom/amap/api/maps2d/model/f;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/amap/api/maps2d/model/LatLng;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/PolygonOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 32
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/PolygonOptions;->strokeWidth(F)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 33
    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/PolygonOptions;->strokeColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 34
    invoke-virtual {v0, v4}, Lcom/amap/api/maps2d/model/PolygonOptions;->fillColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 35
    invoke-virtual {v0, v5}, Lcom/amap/api/maps2d/model/PolygonOptions;->zIndex(F)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 36
    invoke-virtual {v0, v6}, Lcom/amap/api/maps2d/model/PolygonOptions;->visible(Z)Lcom/amap/api/maps2d/model/PolygonOptions;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/maps2d/model/PolygonOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .line 42
    new-array p1, p1, [Lcom/amap/api/maps2d/model/PolygonOptions;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/h;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolygonOptions;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/h;->a(I)[Lcom/amap/api/maps2d/model/PolygonOptions;

    move-result-object p1

    return-object p1
.end method
