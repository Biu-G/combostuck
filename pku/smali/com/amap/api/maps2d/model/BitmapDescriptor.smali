.class public final Lcom/amap/api/maps2d/model/BitmapDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Lcom/amap/api/maps2d/model/a;


# instance fields
.field b:I

.field c:I

.field d:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amap/api/maps2d/model/a;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/a;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->a:Lcom/amap/api/maps2d/model/a;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 21
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 33
    iput-object p1, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 21
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 44
    iput p2, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 45
    iput p3, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 46
    iput-object p1, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 5

    const-string v0, "clone"

    .line 58
    :try_start_0
    new-instance v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    iget v4, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "BitmapDescriptor"

    .line 61
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget p2, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
