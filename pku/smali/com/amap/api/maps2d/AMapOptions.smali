.class public Lcom/amap/api/maps2d/AMapOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/AMapOptionsCreator;

.field public static final LOGO_POSITION_BOTTOM_CENTER:I = 0x1

.field public static final LOGO_POSITION_BOTTOM_LEFT:I = 0x0

.field public static final LOGO_POSITION_BOTTOM_RIGHT:I = 0x2

.field public static final ZOOM_POSITION_RIGHT_BUTTOM:I = 0x0

.field public static final ZOOM_POSITION_RIGHT_CENTER:I = 0x1


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/amap/api/maps2d/model/CameraPosition;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amap/api/maps2d/AMapOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/AMapOptions;->CREATOR:Lcom/amap/api/maps2d/AMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    .line 18
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    .line 19
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    .line 20
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    .line 24
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    .line 25
    iput-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    .line 26
    iput v0, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    return-void
.end method


# virtual methods
.method public camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object p0
.end method

.method public compassEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method public getCompassEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLogoPosition()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    return v0
.end method

.method public getMapType()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    return v0
.end method

.method public getScaleControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getScrollGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZOrderOnTop()Ljava/lang/Boolean;
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public logoPosition(I)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 69
    iput p1, p0, Lcom/amap/api/maps2d/AMapOptions;->i:I

    return-object p0
.end method

.method public mapType(I)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 101
    iput p1, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    return-object p0
.end method

.method public scaleControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/amap/api/maps2d/AMapOptions;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 262
    iget p2, p0, Lcom/amap/api/maps2d/AMapOptions;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x6

    .line 263
    new-array p2, p2, [Z

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->b:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    const/4 v1, 0x1

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    const/4 v1, 0x2

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    const/4 v1, 0x3

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->g:Z

    const/4 v1, 0x4

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/AMapOptions;->h:Z

    const/4 v1, 0x5

    aput-boolean v0, p2, v1

    .line 266
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method

.method public zOrderOnTop(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->e:Z

    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->d:Z

    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/amap/api/maps2d/AMapOptions;->c:Z

    return-object p0
.end method
