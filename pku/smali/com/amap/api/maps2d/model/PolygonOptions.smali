.class public final Lcom/amap/api/maps2d/model/PolygonOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/h;


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

.field private e:I

.field private f:F

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amap/api/maps2d/model/h;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/h;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/PolygonOptions;->CREATOR:Lcom/amap/api/maps2d/model/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 24
    iput v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    .line 26
    iput v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps2d/model/PolygonOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 99
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/LatLng;

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .line 154
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

    return-object p0
.end method

.method public getFillColor()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

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

    .line 192
    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    .line 236
    iget v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    return v0
.end method

.method public strokeColor(I)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .line 143
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .line 132
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 59
    iget p2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 60
    iget p2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget p2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget p2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 63
    iget-boolean p2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->g:Z

    xor-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-object p2, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/PolygonOptions;
    .locals 0

    .line 165
    iput p1, p0, Lcom/amap/api/maps2d/model/PolygonOptions;->f:F

    return-object p0
.end method
