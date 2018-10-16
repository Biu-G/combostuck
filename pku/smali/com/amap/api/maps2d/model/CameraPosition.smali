.class public final Lcom/amap/api/maps2d/model/CameraPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/b;


# instance fields
.field public final bearing:F

.field public final isAbroad:Z

.field public final target:Lcom/amap/api/maps2d/model/LatLng;

.field public final tilt:F

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amap/api/maps2d/model/b;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/b;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/CameraPosition;->CREATOR:Lcom/amap/api/maps2d/model/b;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "CameraPosition"

    const-string v1, "\u6784\u5efaCameraPosition\u65f6,\u4f4d\u7f6e(target)\u4e0d\u80fd\u4e3anull"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    .line 57
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->b(F)F

    move-result p2

    iput p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 58
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cm;->a(F)F

    move-result p2

    iput p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    float-to-double p2, p4

    const-wide/16 v0, 0x0

    cmpg-double p2, p2, v0

    const/high16 p3, 0x43b40000    # 360.0f

    if-gtz p2, :cond_1

    rem-float/2addr p4, p3

    add-float/2addr p4, p3

    :cond_1
    rem-float/2addr p4, p3

    .line 59
    iput p4, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    if-eqz p1, :cond_2

    .line 61
    iget-wide p2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {p2, p3, v0, v1}, Lcom/amap/api/mapcore2d/cl;->a(DD)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->isAbroad:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->isAbroad:Z

    :goto_0
    return-void
.end method

.method public static builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 1

    .line 119
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 1

    .line 130
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>(Lcom/amap/api/maps2d/model/CameraPosition;)V

    return-object v0
.end method

.method public static final fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 2

    .line 110
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 141
    :cond_0
    instance-of v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 144
    :cond_1
    check-cast p1, Lcom/amap/api/maps2d/model/CameraPosition;

    .line 145
    iget-object v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 146
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 147
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 148
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 149
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 150
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 151
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    .line 159
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "target"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "zoom"

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    .line 160
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "tilt"

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    .line 161
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "bearing"

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    .line 162
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 159
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cm;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 72
    iget p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    iget-object p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    iget-object p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 77
    :cond_0
    iget p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 78
    iget p2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
