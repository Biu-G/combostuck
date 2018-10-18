.class public final Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps2d/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 239
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 240
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 241
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 242
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    return-void
.end method

.method private a(D)Z
    .locals 5

    .line 277
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 278
    iget-wide v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    cmpg-double v0, v3, p1

    if-gtz v0, :cond_0

    iget-wide v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double p1, p1, v3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 279
    :cond_1
    iget-wide v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    cmpg-double v0, v3, p1

    if-lez v0, :cond_3

    iget-wide v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double p1, p1, v3

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public build()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 9

    const-string v0, "build"

    const/4 v1, 0x0

    .line 292
    :try_start_0
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LatLngBounds"

    const-string v3, "no included points"

    .line 293
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 298
    :cond_0
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 299
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 300
    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    iput-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 301
    iput-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    .line 304
    :cond_1
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 305
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    .line 306
    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    iput-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    .line 307
    iput-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    .line 310
    :cond_2
    new-instance v2, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    iget-wide v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    iget-wide v7, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "LatLngBounds"

    .line 313
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    .locals 6

    if-nez p1, :cond_0

    return-object p0

    .line 258
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    .line 259
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    .line 260
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 261
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 263
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a(D)Z

    move-result p1

    if-nez p1, :cond_3

    .line 265
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    .line 266
    invoke-static {v4, v5, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    .line 268
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    goto :goto_0

    .line 270
    :cond_2
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    :cond_3
    :goto_0
    return-object p0
.end method
