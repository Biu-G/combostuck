.class public final Lcom/amap/api/maps2d/model/LatLngBounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/e;


# instance fields
.field private final a:I

.field public final northeast:Lcom/amap/api/maps2d/model/LatLng;

.field public final southwest:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amap/api/maps2d/model/e;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/e;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/LatLngBounds;->CREATOR:Lcom/amap/api/maps2d/model/e;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 35
    iget-wide v0, p3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 39
    iput p1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->a:I

    .line 40
    iput-object p2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 41
    iput-object p3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    return-void

    .line 36
    :cond_0
    new-instance p1, Lcom/amap/api/maps2d/AMapException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "southern latitude exceeds northern latitude ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Lcom/amap/api/maps2d/AMapException;

    const-string p2, "null northeast"

    invoke-direct {p1, p2}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Lcom/amap/api/maps2d/AMapException;

    const-string p2, "null southwest"

    invoke-direct {p1, p2}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    return-void
.end method

.method static synthetic a(DD)D
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/LatLngBounds;->c(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private a(D)Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 108
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v3, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v1, v3

    .line 115
    iget-object v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v5, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v3, v5

    iget-object v5, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v3, v5

    .line 117
    iget-object v5, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v7, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v5, v7

    iget-object v7, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v5, v7

    iget-object v7, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v5, v7

    .line 119
    iget-object v7, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v9, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v9, v9, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    iget-object v9, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v9, v9, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v7, v9

    iget-object p1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v9, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p1, v1, v7

    if-gez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic b(DD)D
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/LatLngBounds;->d(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private b(D)Z
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v0, v3, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double p1, p1, v3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v0, v3, p1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double p1, p1, v3

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public static builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    .locals 1

    .line 66
    new-instance v0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;-><init>()V

    return-object v0
.end method

.method private static c(DD)D
    .locals 0

    sub-double/2addr p0, p2

    const-wide p2, 0x4076800000000000L    # 360.0

    add-double/2addr p0, p2

    rem-double/2addr p0, p2

    return-wide p0
.end method

.method private static d(DD)D
    .locals 0

    sub-double/2addr p2, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    add-double/2addr p2, p0

    rem-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method a()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->a:I

    return v0
.end method

.method public contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 82
    :cond_0
    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-direct {p0, v1, v2}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(D)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 83
    invoke-direct {p0, v1, v2}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(D)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 92
    :cond_0
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 93
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

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

    .line 204
    :cond_0
    instance-of v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 206
    :cond_1
    check-cast p1, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 207
    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-object p1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 208
    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 198
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cm;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public including(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 10

    if-nez p1, :cond_0

    return-object p0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 142
    iget-object v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 143
    iget-object v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 144
    iget-wide v8, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 145
    invoke-direct {p0, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(D)Z

    move-result p1

    if-nez p1, :cond_1

    .line 146
    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->c(DD)D

    move-result-wide v6

    .line 147
    invoke-static {v4, v5, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->d(DD)D

    move-result-wide v4

    cmpg-double p1, v6, v4

    .line 154
    :cond_1
    :try_start_0
    new-instance p1, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v0, v1, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v2, v3, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {p1, v4, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p1, p0}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 218
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "southwest"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 219
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "northeast"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 220
    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 218
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cm;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 230
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps2d/model/e;->a(Lcom/amap/api/maps2d/model/LatLngBounds;Landroid/os/Parcel;I)V

    return-void
.end method
