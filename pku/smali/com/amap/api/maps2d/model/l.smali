.class Lcom/amap/api/maps2d/model/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/VisibleRegion;",
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

.method static a(Lcom/amap/api/maps2d/model/VisibleRegion;Landroid/os/Parcel;I)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/VisibleRegion;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object p0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 8

    const-string v0, "createFromParcel"

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v1, 0x0

    .line 24
    :try_start_0
    const-class v3, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_4

    .line 25
    :try_start_1
    const-class v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_3

    .line 26
    :try_start_2
    const-class v5, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_2

    .line 27
    :try_start_3
    const-class v6, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps2d/model/LatLng;
    :try_end_3
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_3} :catch_1

    .line 28
    :try_start_4
    const-class v7, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 29
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 28
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_4
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v6, v1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v5, v1

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v4, v1

    goto :goto_0

    :catch_4
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    :goto_0
    move-object v5, v4

    :goto_1
    move-object v6, v5

    :goto_2
    const-string v7, "VisibleRegionCreator"

    .line 31
    invoke-static {p1, v7, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    .line 33
    :goto_3
    new-instance p1, Lcom/amap/api/maps2d/model/VisibleRegion;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/maps2d/model/VisibleRegion;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V

    return-object p1
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 0

    .line 39
    new-array p1, p1, [Lcom/amap/api/maps2d/model/VisibleRegion;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/l;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/VisibleRegion;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/l;->a(I)[Lcom/amap/api/maps2d/model/VisibleRegion;

    move-result-object p1

    return-object p1
.end method
