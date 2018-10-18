.class Lcom/amap/api/maps2d/model/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/LatLngBounds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/amap/api/maps2d/model/LatLngBounds;Landroid/os/Parcel;I)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/LatLngBounds;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    iget-object p0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 5

    const-string v0, "createFromParcel"

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    .line 23
    :try_start_0
    const-class v3, Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    const-class v4, Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v2

    :goto_0
    const-string v4, "LatLngBoundsCreator"

    .line 26
    invoke-static {p1, v4, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    .line 30
    :goto_1
    :try_start_2
    new-instance v0, Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-direct {v0, v1, v3, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_2
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 33
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapException;->printStackTrace()V

    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 0

    .line 40
    new-array p1, p1, [Lcom/amap/api/maps2d/model/LatLngBounds;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/e;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/e;->a(I)[Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object p1

    return-object p1
.end method
