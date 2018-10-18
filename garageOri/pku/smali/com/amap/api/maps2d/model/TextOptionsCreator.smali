.class public Lcom/amap/api/maps2d/model/TextOptionsCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/maps2d/model/TextOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 7

    .line 31
    new-instance v0, Lcom/amap/api/maps2d/model/TextOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/TextOptions;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    const-string v3, "lat"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "lng"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/TextOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/TextOptions;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/TextOptions;->text(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TextOptions;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/TextOptions;->typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps2d/model/TextOptions;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/TextOptions;->rotate(F)Lcom/amap/api/maps2d/model/TextOptions;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps2d/model/TextOptions;->align(II)Lcom/amap/api/maps2d/model/TextOptions;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/TextOptions;->backgroundColor(I)Lcom/amap/api/maps2d/model/TextOptions;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/TextOptions;->fontColor(I)Lcom/amap/api/maps2d/model/TextOptions;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/TextOptions;->fontSize(I)Lcom/amap/api/maps2d/model/TextOptions;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/TextOptions;->zIndex(F)Lcom/amap/api/maps2d/model/TextOptions;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/TextOptions;->visible(Z)Lcom/amap/api/maps2d/model/TextOptions;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    :try_start_0
    const-string v1, "obj"

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/TextOptions;->setObject(Ljava/lang/Object;)Lcom/amap/api/maps2d/model/TextOptions;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "TextOptionsCreator"

    const-string v2, "createFromParcel"

    .line 54
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/TextOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps2d/model/TextOptions;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 61
    new-array p1, p1, [Lcom/amap/api/maps2d/model/TextOptions;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/TextOptionsCreator;->newArray(I)[Lcom/amap/api/maps2d/model/TextOptions;

    move-result-object p1

    return-object p1
.end method
