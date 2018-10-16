.class public final Lcom/amap/api/maps2d/model/PolylineOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/i;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amap/api/maps2d/model/i;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/i;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/PolylineOptions;->CREATOR:Lcom/amap/api/maps2d/model/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 24
    iput v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->c:F

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->d:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->e:F

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->f:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->g:Z

    .line 30
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->h:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps2d/model/PolylineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 78
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/LatLng;

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p0
.end method

.method public color(I)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    .line 112
    iput p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->d:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public geodesic(Z)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->g:Z

    return-object p0
.end method

.method public getColor()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->d:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 166
    iget v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->e:F

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->h:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->g:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->f:Z

    return v0
.end method

.method public setDottedLine(Z)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->h:Z

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->f:Z

    return-object p0
.end method

.method public width(F)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    .line 101
    iput p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->c:F

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 241
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 242
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getZIndex()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 244
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->isVisible()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 245
    iget-object p2, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->isGeodesic()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 247
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->isDottedLine()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    .line 123
    iput p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->e:F

    return-object p0
.end method
