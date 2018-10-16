.class public final Lcom/amap/api/mapcore2d/fs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.amap.api.maps2d"

    const-string v1, "com.amap.api.mapcore2d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/fs;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/cy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/co;
        }
    .end annotation

    const-string v0, "5.2.0"

    const-string v1, "AMAP_SDK_Android_2DMap_5.2.0"

    new-instance v2, Lcom/amap/api/mapcore2d/cy$a;

    const-string v3, "2dmap"

    invoke-direct {v2, v3, v0, v1}, Lcom/amap/api/mapcore2d/cy$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amap/api/mapcore2d/fs;->a:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/cy$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/cy$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cy$a;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/mapcore2d/fi;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/amap/api/mapcore2d/fs;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    const/4 v6, 0x0

    if-nez p0, :cond_0

    cmpl-double p0, v2, v4

    if-eqz p0, :cond_3

    :cond_0
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double p0, v0, v4

    if-gtz p0, :cond_3

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double p0, v0, v4

    if-ltz p0, :cond_3

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double p0, v2, v0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :cond_3
    :goto_0
    return v6
.end method
