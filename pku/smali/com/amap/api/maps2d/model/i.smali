.class Lcom/amap/api/maps2d/model/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/PolylineOptions;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 8

    .line 15
    new-instance v0, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v2, Lcom/amap/api/maps2d/model/LatLng;->CREATOR:Lcom/amap/api/maps2d/model/f;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 25
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/PolylineOptions;->width(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 26
    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 27
    invoke-virtual {v0, v4}, Lcom/amap/api/maps2d/model/PolylineOptions;->zIndex(F)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 28
    invoke-virtual {v0, v5}, Lcom/amap/api/maps2d/model/PolylineOptions;->visible(Z)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/maps2d/model/PolylineOptions;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v7, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 34
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/PolylineOptions;->geodesic(Z)Lcom/amap/api/maps2d/model/PolylineOptions;

    .line 35
    invoke-virtual {v0, v6}, Lcom/amap/api/maps2d/model/PolylineOptions;->setDottedLine(Z)Lcom/amap/api/maps2d/model/PolylineOptions;

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    .line 41
    new-array p1, p1, [Lcom/amap/api/maps2d/model/PolylineOptions;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/i;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/i;->a(I)[Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object p1

    return-object p1
.end method
