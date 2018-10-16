.class public final Lcom/amap/api/maps2d/model/TileOverlayOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/k;


# instance fields
.field private final a:I

.field private b:Lcom/amap/api/maps2d/model/TileProvider;

.field private c:Z

.field private d:F

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amap/api/maps2d/model/k;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/k;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->CREATOR:Lcom/amap/api/maps2d/model/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->c:Z

    const/16 v1, 0x1400

    .line 23
    iput v1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->e:I

    const/16 v1, 0x5000

    .line 24
    iput v1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->f:I

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->g:Ljava/lang/String;

    .line 26
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->h:Z

    .line 27
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->i:Z

    .line 35
    iput v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->a:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZF)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->c:Z

    const/16 v0, 0x1400

    .line 23
    iput v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->e:I

    const/16 v0, 0x5000

    .line 24
    iput v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->f:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->g:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->h:Z

    .line 27
    iput-boolean p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->i:Z

    .line 40
    iput p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->a:I

    .line 42
    iput-boolean p3, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->c:Z

    .line 43
    iput p4, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->d:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->g:Ljava/lang/String;

    return-object p0
.end method

.method public diskCacheEnabled(Z)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->i:Z

    return-object p0
.end method

.method public diskCacheSize(I)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    mul-int/lit16 p1, p1, 0x400

    .line 126
    iput p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->f:I

    return-object p0
.end method

.method public getDiskCacheDir()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskCacheEnabled()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->i:Z

    return v0
.end method

.method public getDiskCacheSize()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->f:I

    return v0
.end method

.method public getMemCacheSize()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->e:I

    return v0
.end method

.method public getMemoryCacheEnabled()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->h:Z

    return v0
.end method

.method public getTileProvider()Lcom/amap/api/maps2d/model/TileProvider;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->b:Lcom/amap/api/maps2d/model/TileProvider;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 183
    iget v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->d:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->c:Z

    return v0
.end method

.method public memCacheSize(I)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 114
    iput p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->e:I

    return-object p0
.end method

.method public memoryCacheEnabled(Z)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->h:Z

    return-object p0
.end method

.method public tileProvider(Lcom/amap/api/maps2d/model/TileProvider;)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->b:Lcom/amap/api/maps2d/model/TileProvider;

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->c:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    iget p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->b:Lcom/amap/api/maps2d/model/TileProvider;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 55
    iget-boolean p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 57
    iget p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-boolean p2, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/TileOverlayOptions;
    .locals 0

    .line 85
    iput p1, p0, Lcom/amap/api/maps2d/model/TileOverlayOptions;->d:F

    return-object p0
.end method
