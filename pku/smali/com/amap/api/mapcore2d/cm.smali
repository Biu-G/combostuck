.class public Lcom/amap/api/mapcore2d/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    .line 35
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/mapcore2d/cm;->a:[D

    return-void

    :array_0
    .array-data 8
        0x40bd1da45a1cac08L    # 7453.642
        0x40ad3dfb22d0e560L    # 3742.9905
        0x409d4554fdf3b646L    # 1873.333
        0x408d471f40a2877fL    # 936.89026
        0x407d478d4fdf3b64L    # 468.472
        0x406d47a5e353f7cfL    # 234.239
        0x405d47ae147ae148L    # 117.12
        0x404d47ae147ae148L    # 58.56
        0x403d47ae147ae148L    # 29.28
        0x402d47ae147ae148L    # 14.64
        0x401d47ae147ae148L    # 7.32
        0x400d47ae147ae148L    # 3.66
        0x3ffd4395810624ddL    # 1.829
        0x3fed47ae147ae148L    # 0.915
        0x3fdd47ae147ae148L    # 0.4575
        0x3fcd2f1a9fbe76c9L    # 0.228
        0x3fbd495182a9930cL    # 0.1144
    .end array-data
.end method

.method public static a(DDDDDD)D
    .locals 0

    sub-double/2addr p4, p0

    sub-double/2addr p10, p2

    mul-double p4, p4, p10

    sub-double/2addr p8, p0

    sub-double/2addr p6, p2

    mul-double p8, p8, p6

    sub-double/2addr p4, p8

    return-wide p4
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 183
    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 184
    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 185
    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 186
    iget-wide v0, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v8, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v8

    mul-double v4, v4, v8

    mul-double v6, v6, v8

    mul-double v0, v0, v8

    .line 191
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 192
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 194
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 195
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 197
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    move-wide/from16 v16, v14

    const/4 v14, 0x3

    .line 199
    new-array v15, v14, [D

    .line 200
    new-array v14, v14, [D

    mul-double v2, v2, v4

    const/16 v18, 0x0

    aput-wide v2, v15, v18

    mul-double v4, v4, v8

    const/4 v2, 0x1

    aput-wide v4, v15, v2

    const/4 v3, 0x2

    aput-wide v10, v15, v3

    mul-double v6, v6, v0

    aput-wide v6, v14, v18

    mul-double v0, v0, v12

    aput-wide v0, v14, v2

    aput-wide v16, v14, v3

    .line 207
    aget-wide v0, v15, v18

    aget-wide v4, v14, v18

    sub-double/2addr v0, v4

    aget-wide v4, v15, v18

    aget-wide v6, v14, v18

    sub-double/2addr v4, v6

    mul-double v0, v0, v4

    aget-wide v4, v15, v2

    aget-wide v6, v14, v2

    sub-double/2addr v4, v6

    aget-wide v6, v15, v2

    aget-wide v8, v14, v2

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    aget-wide v4, v15, v3

    aget-wide v6, v14, v3

    sub-double/2addr v4, v6

    aget-wide v6, v15, v3

    aget-wide v2, v14, v3

    sub-double/2addr v6, v2

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 211
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static a(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x42340000    # 45.0f

    if-gez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    const/high16 p0, 0x42340000    # 45.0f

    :cond_1
    :goto_0
    return p0
.end method

.method public static a([Ljava/lang/Object;)I
    .locals 0

    .line 119
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 150
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int p1, v2

    const/4 v2, 0x1

    .line 162
    invoke-static {p0, v1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Util"

    const-string v1, "zoomBitmap"

    .line 174
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 43
    :try_start_0
    const-class v0, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 45
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "Util"

    const-string v1, "fromAsset"

    .line 49
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Lcom/amap/api/mapcore2d/cy;
    .locals 4

    .line 441
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/q;->p:Lcom/amap/api/mapcore2d/cy;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Lcom/amap/api/mapcore2d/cy$a;

    const-string v1, "2dmap"

    const-string v2, "5.2.0"

    const-string v3, "AMAP_SDK_Android_2DMap_5.2.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/cy$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.amap.api.maps2d"

    const-string v2, "com.amap.api.mapcore2d"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cy$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/cy$a;

    move-result-object v0

    const-string v1, "5.2.0"

    .line 445
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cy$a;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/cy$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cy$a;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 450
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/q;->p:Lcom/amap/api/mapcore2d/cy;

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/w;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/w;

    iget-wide v1, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    iget-wide v5, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v5, v5, v3

    double-to-int p0, v5

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "km"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, ","

    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 367
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/dg;->a()Lcom/amap/api/mapcore2d/dg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/mapcore2d/dg;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(DDDDDDDD)Z
    .locals 18

    sub-double v5, p4, p0

    sub-double v7, p14, p10

    mul-double v9, v5, v7

    sub-double v11, p6, p2

    sub-double v13, p12, p8

    mul-double v15, v11, v13

    sub-double/2addr v9, v15

    const-wide/16 v15, 0x0

    cmpl-double v17, v9, v15

    if-eqz v17, :cond_0

    sub-double v2, p2, p10

    mul-double v13, v13, v2

    sub-double v0, p0, p8

    mul-double v7, v7, v0

    sub-double/2addr v13, v7

    div-double/2addr v13, v9

    mul-double v2, v2, v5

    mul-double v0, v0, v11

    sub-double/2addr v2, v0

    div-double/2addr v2, v9

    cmpl-double v0, v13, v15

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v13, v0

    if-gtz v4, :cond_0

    cmpl-double v4, v2, v15

    if-ltz v4, :cond_0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(II)Z
    .locals 0

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "2dmap"

    const-string p1, "the map must have a size"

    .line 463
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/amap/api/mapcore2d/cm;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 340
    monitor-exit v0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "connectivity"

    .line 344
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 346
    monitor-exit v0

    return v1

    .line 348
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    .line 350
    monitor-exit v0

    return v1

    .line 352
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 353
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v2, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v2, :cond_4

    .line 355
    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 338
    monitor-exit v0

    throw p0

    :catch_0
    :cond_4
    const/4 p0, 0x1

    .line 361
    monitor-exit v0

    return p0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;)Z
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 260
    iget-wide v14, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 261
    iget-wide v12, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 262
    iget-wide v10, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 264
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v8

    .line 268
    :cond_0
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    const/16 v19, 0x0

    .line 272
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    .line 273
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 274
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-int/lit8 v0, v0, 0x1

    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 276
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/maps2d/model/LatLng;

    move/from16 v20, v0

    iget-wide v0, v9, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v16, v2

    move-wide v2, v14

    move-wide/from16 v21, v4

    move-wide v4, v12

    move-wide/from16 v23, v6

    const/16 v25, 0x0

    move-wide/from16 v8, v21

    move-wide/from16 v26, v10

    move-wide/from16 v10, v16

    move-wide/from16 v28, v12

    move-wide v12, v0

    .line 277
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore2d/cm;->b(DDDDDD)Z

    move-result v2

    if-eqz v2, :cond_2

    return v18

    :cond_2
    const/4 v2, 0x0

    sub-double v2, v0, v21

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    const-wide v10, 0x4066800000000000L    # 180.0

    move-wide/from16 v2, v23

    move-wide/from16 v4, v21

    move-wide v6, v14

    move-wide/from16 v8, v28

    move-wide/from16 v12, v26

    .line 284
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore2d/cm;->b(DDDDDD)Z

    move-result v2

    if-eqz v2, :cond_5

    cmpl-double v0, v21, v0

    if-lez v0, :cond_4

    add-int/lit8 v19, v19, 0x1

    :cond_4
    :goto_1
    move-wide v0, v14

    goto :goto_2

    :cond_5
    const-wide v10, 0x4066800000000000L    # 180.0

    move-wide/from16 v2, v16

    move-wide v4, v0

    move-wide v6, v14

    move-wide/from16 v8, v28

    move-wide/from16 v12, v26

    .line 288
    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore2d/cm;->b(DDDDDD)Z

    move-result v2

    if-eqz v2, :cond_6

    cmpl-double v0, v0, v21

    if-lez v0, :cond_4

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_6
    const-wide v30, 0x4066800000000000L    # 180.0

    move-wide/from16 v2, v23

    move-wide/from16 v4, v21

    move-wide/from16 v6, v16

    move-wide v8, v0

    move-wide v10, v14

    move-wide/from16 v12, v28

    move-wide v0, v14

    move-wide/from16 v14, v30

    move-wide/from16 v16, v26

    .line 292
    invoke-static/range {v2 .. v17}, Lcom/amap/api/mapcore2d/cm;->a(DDDDDDDD)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v19, v19, 0x1

    :cond_7
    :goto_2
    move-wide v14, v0

    move/from16 v0, v20

    move-wide/from16 v10, v26

    move-wide/from16 v12, v28

    move-object/from16 v1, p1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v25, 0x0

    .line 297
    rem-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_9

    goto :goto_3

    :cond_9
    const/16 v18, 0x0

    :goto_3
    return v18
.end method

.method public static a(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 418
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    .line 422
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 423
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 428
    :cond_1
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 431
    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public static b(F)F
    .locals 1

    .line 83
    sget v0, Lcom/amap/api/mapcore2d/q;->c:I

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 84
    sget p0, Lcom/amap/api/mapcore2d/q;->c:I

    int-to-float p0, p0

    goto :goto_0

    .line 85
    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/q;->d:I

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 86
    sget p0, Lcom/amap/api/mapcore2d/q;->d:I

    int-to-float p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 384
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 389
    :cond_0
    sget-object p0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const-string v0, ""

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 401
    :cond_1
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/amap/api/maps2d/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 406
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "Amap"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 412
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 392
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 393
    new-instance v0, Ljava/io/File;

    const-string v1, "AMap"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 399
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(DDDDDD)Z
    .locals 4

    .line 313
    invoke-static/range {p0 .. p11}, Lcom/amap/api/mapcore2d/cm;->a(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    sub-double p4, p0, p4

    sub-double/2addr p0, p8

    mul-double p4, p4, p0

    const-wide/16 p0, 0x0

    cmpg-double p4, p4, p0

    if-gtz p4, :cond_0

    sub-double p4, p2, p6

    sub-double/2addr p2, p10

    mul-double p4, p4, p2

    cmpg-double p0, p4, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
