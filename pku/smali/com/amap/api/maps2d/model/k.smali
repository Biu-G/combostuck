.class Lcom/amap/api/maps2d/model/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/TileOverlayOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 10

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12
    const-class v1, Lcom/amap/api/maps2d/model/TileProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/TileProvider;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 19
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 20
    :cond_2
    new-instance p1, Lcom/amap/api/maps2d/model/TileOverlayOptions;

    const/4 v4, 0x0

    invoke-direct {p1, v0, v4, v2, v5}, Lcom/amap/api/maps2d/model/TileOverlayOptions;-><init>(ILandroid/os/IBinder;ZF)V

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {p1, v1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps2d/model/TileProvider;)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 24
    :cond_3
    invoke-virtual {p1, v6}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 25
    invoke-virtual {p1, v7}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 26
    invoke-virtual {p1, v8}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 27
    invoke-virtual {p1, v9}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->memoryCacheEnabled(Z)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    .line 28
    invoke-virtual {p1, v3}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->diskCacheEnabled(Z)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    return-object p1
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 33
    new-array p1, p1, [Lcom/amap/api/maps2d/model/TileOverlayOptions;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/k;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TileOverlayOptions;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/k;->a(I)[Lcom/amap/api/maps2d/model/TileOverlayOptions;

    move-result-object p1

    return-object p1
.end method
