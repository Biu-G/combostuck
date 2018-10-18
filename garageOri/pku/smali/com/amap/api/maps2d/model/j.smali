.class Lcom/amap/api/maps2d/model/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/Tile;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/Tile;
    .locals 4

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 15
    new-instance v3, Lcom/amap/api/maps2d/model/Tile;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/amap/api/maps2d/model/Tile;-><init>(III[B)V

    return-object v3
.end method

.method public a(I)[Lcom/amap/api/maps2d/model/Tile;
    .locals 0

    .line 19
    new-array p1, p1, [Lcom/amap/api/maps2d/model/Tile;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/j;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/Tile;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/j;->a(I)[Lcom/amap/api/maps2d/model/Tile;

    move-result-object p1

    return-object p1
.end method
