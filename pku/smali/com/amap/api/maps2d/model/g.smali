.class Lcom/amap/api/maps2d/model/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/MarkerOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 4

    .line 12
    new-instance v0, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 13
    const-class v1, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/LatLng;

    .line 14
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

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
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    .line 29
    :cond_2
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->setGps(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/maps2d/model/MarkerOptions;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 32
    sget-object v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;->a:Lcom/amap/api/maps2d/model/a;

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->icons(Ljava/util/ArrayList;)Lcom/amap/api/maps2d/model/MarkerOptions;

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/MarkerOptions;
    .locals 0

    .line 40
    new-array p1, p1, [Lcom/amap/api/maps2d/model/MarkerOptions;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/g;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/g;->a(I)[Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object p1

    return-object p1
.end method
