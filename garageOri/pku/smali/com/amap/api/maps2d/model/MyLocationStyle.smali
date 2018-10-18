.class public Lcom/amap/api/maps2d/model/MyLocationStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/MyLocationStyleCreator;

.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final ERROR_INFO:Ljava/lang/String; = "errorInfo"

.field public static final LOCATION_TYPE:Ljava/lang/String; = "locationType"

.field public static final LOCATION_TYPE_FOLLOW:I = 0x2

.field public static final LOCATION_TYPE_FOLLOW_NO_CENTER:I = 0x6

.field public static final LOCATION_TYPE_LOCATE:I = 0x1

.field public static final LOCATION_TYPE_SHOW:I


# instance fields
.field private a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:I

.field private h:J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amap/api/maps2d/model/MyLocationStyleCreator;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/MyLocationStyleCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/MyLocationStyle;->CREATOR:Lcom/amap/api/maps2d/model/MyLocationStyleCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 41
    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    .line 42
    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/16 v2, 0xb4

    .line 43
    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    const/16 v1, 0xff

    const/16 v2, 0xdc

    .line 44
    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->g:I

    const-wide/16 v1, 0x7d0

    .line 49
    iput-wide v1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->h:J

    .line 54
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->i:Z

    return-void
.end method


# virtual methods
.method public anchor(FF)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 139
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    .line 140
    iput p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    .line 237
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    .line 247
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    return v0
.end method

.method public getInterval()J
    .locals 2

    .line 297
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->h:J

    return-wide v0
.end method

.method public getMyLocationIcon()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object v0
.end method

.method public getMyLocationType()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->g:I

    return v0
.end method

.method public getRadiusFillColor()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 277
    iget v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    return v0
.end method

.method public interval(J)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 203
    iput-wide p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->h:J

    return-object p0
.end method

.method public isMyLocationShowing()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->i:Z

    return v0
.end method

.method public myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object p0
.end method

.method public myLocationType(I)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 192
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->g:I

    return-object p0
.end method

.method public radiusFillColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 152
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    return-object p0
.end method

.method public showMyLocation(Z)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->i:Z

    return-object p0
.end method

.method public strokeColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 164
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/amap/api/maps2d/model/MyLocationStyle;
    .locals 0

    .line 176
    iput p1, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->a:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 330
    iget p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 331
    iget p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 332
    iget p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 335
    iget p2, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p2, 0x1

    .line 337
    new-array p2, p2, [Z

    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/MyLocationStyle;->i:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
