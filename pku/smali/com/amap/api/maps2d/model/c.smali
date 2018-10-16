.class Lcom/amap/api/maps2d/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/CircleOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 7

    .line 11
    new-instance v0, Lcom/amap/api/maps2d/model/CircleOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/CircleOptions;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const-string v3, "lat"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "lng"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 14
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->center(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CircleOptions;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->radius(D)Lcom/amap/api/maps2d/model/CircleOptions;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps2d/model/CircleOptions;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps2d/model/CircleOptions;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->visible(Z)Lcom/amap/api/maps2d/model/CircleOptions;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/maps2d/model/CircleOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 27
    new-array p1, p1, [Lcom/amap/api/maps2d/model/CircleOptions;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/c;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/c;->a(I)[Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object p1

    return-object p1
.end method
