.class public final Lcom/amap/api/maps2d/model/CircleOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/c;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps2d/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amap/api/maps2d/model/c;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/c;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/CircleOptions;->CREATOR:Lcom/amap/api/maps2d/model/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    const/high16 v0, 0x41200000    # 10.0f

    .line 20
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    const/high16 v0, -0x1000000

    .line 21
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    return-void
.end method


# virtual methods
.method public center(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillColor(I)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 101
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    return-object p0
.end method

.method public getCenter()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    return v0
.end method

.method public radius(D)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    return-object p0
.end method

.method public strokeColor(I)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 89
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 77
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 27
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    const-string v0, "lat"

    .line 29
    iget-object v1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "lng"

    .line 30
    iget-object v1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->b:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 32
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 33
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/CircleOptions;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget p2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    iget p2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget p2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    iget-boolean p2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-object p2, p0, Lcom/amap/api/maps2d/model/CircleOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/CircleOptions;
    .locals 0

    .line 113
    iput p1, p0, Lcom/amap/api/maps2d/model/CircleOptions;->g:F

    return-object p0
.end method
