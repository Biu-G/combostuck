.class Lcom/amap/api/mapcore2d/bw;
.super Lcom/amap/api/mapcore2d/bj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bj<",
        "Ljava/util/ArrayList<",
        "Lcom/amap/api/mapcore2d/bs;",
        ">;",
        "Ljava/util/ArrayList<",
        "Lcom/amap/api/mapcore2d/bs;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/amap/api/mapcore2d/an;

.field private f:Lcom/amap/api/maps2d/model/TileProvider;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;",
            "Lcom/amap/api/maps2d/model/TileProvider;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bj;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    .line 44
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bw;->f:Lcom/amap/api/maps2d/model/TileProvider;

    .line 45
    sget-object p1, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cw;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bw;->a(Ljava/net/Proxy;)V

    const/16 p1, 0x1388

    .line 46
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bw;->a(I)V

    const p1, 0xc350

    .line 47
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bw;->b(I)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/bs;I)V
    .locals 6

    if-eqz p1, :cond_6

    if-gez p2, :cond_0

    goto :goto_4

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_1

    goto :goto_3

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    .line 168
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 173
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 174
    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/bs;

    if-nez v4, :cond_2

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v4, p1}, Lcom/amap/api/mapcore2d/bs;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    iput p2, v4, Lcom/amap/api/mapcore2d/bs;->h:I

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_4
    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_3
    return-void

    :cond_6
    :goto_4
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 4

    const-string v0, "Bitmap2Bytes"

    .line 148
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 151
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "TileServerHandler"

    .line 153
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a([BLcom/amap/api/mapcore2d/bs;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    if-nez v1, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v2, v1, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 121
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bs;->c()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    .line 120
    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/ba;->a([B[BZLjava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-gez p1, :cond_2

    return v0

    .line 125
    :cond_2
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/bw;->a(Lcom/amap/api/mapcore2d/bs;I)V

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    if-nez v0, :cond_3

    return p1

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/an;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 130
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    .line 131
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ba;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bw;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v1, v0, p2}, Lcom/amap/api/mapcore2d/u;->a([BLcom/amap/api/mapcore2d/bs;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    const/4 p1, -0x1

    :goto_0
    const-string v0, "TileServerHandler"

    const-string v1, "saveImgToMemory"

    .line 139
    invoke-static {p2, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return p1

    :cond_5
    :goto_2
    return v0

    :cond_6
    :goto_3
    return v0
.end method

.method protected synthetic a([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bw;->b([B)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amap/api/mapcore2d/an;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    return-void
.end method

.method protected b([B)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 86
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/bs;

    .line 87
    invoke-virtual {p0, p1, v3}, Lcom/amap/api/mapcore2d/bw;->a([BLcom/amap/api/mapcore2d/bs;)I

    move-result v4

    if-gez v4, :cond_3

    if-nez v1, :cond_1

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 92
    :cond_1
    new-instance v4, Lcom/amap/api/mapcore2d/bs;

    invoke-direct {v4, v3}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/bs;)V

    .line 93
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/an;->h:Z

    if-eqz v3, :cond_2

    iget v3, v4, Lcom/amap/api/mapcore2d/bs;->d:I

    const/16 v5, 0x9

    if-le v3, v5, :cond_2

    iget v3, v4, Lcom/amap/api/mapcore2d/bs;->b:I

    iget v5, v4, Lcom/amap/api/mapcore2d/bs;->c:I

    iget v6, v4, Lcom/amap/api/mapcore2d/bs;->d:I

    .line 95
    invoke-static {v3, v5, v6}, Lcom/amap/api/mapcore2d/cl;->a(III)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 97
    iput-boolean v3, v4, Lcom/amap/api/mapcore2d/bs;->i:Z

    .line 99
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method protected b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->f:Lcom/amap/api/maps2d/model/TileProvider;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->f:Lcom/amap/api/maps2d/model/TileProvider;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/bs;

    iget v1, v1, Lcom/amap/api/mapcore2d/bs;->b:I

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/bs;

    iget v3, v3, Lcom/amap/api/mapcore2d/bs;->c:I

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/bs;

    iget v2, v2, Lcom/amap/api/mapcore2d/bs;->d:I

    .line 56
    invoke-interface {v0, v1, v3, v2}, Lcom/amap/api/maps2d/model/TileProvider;->getTile(III)Lcom/amap/api/maps2d/model/Tile;

    move-result-object v0

    .line 58
    iget-object v0, v0, Lcom/amap/api/maps2d/model/Tile;->data:[B

    return-object v0

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/amap/api/mapcore2d/bj;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bw;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/bs;

    .line 67
    new-instance v3, Lcom/amap/api/mapcore2d/bs;

    invoke-direct {v3, v2}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/bs;)V

    .line 68
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v2, "AMAP_SDK_Android_2DMap_5.2.0"

    .line 195
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 196
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platinfo"

    .line 197
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "5.2.0"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "2dmap"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-INFO"

    .line 200
    sget-object v2, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    .line 202
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    .line 203
    sget-object v2, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logversion"

    const-string v2, "2.1"

    .line 204
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 8

    .line 216
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bs;

    iget v0, v0, Lcom/amap/api/mapcore2d/bs;->b:I

    .line 217
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/bs;

    iget v2, v2, Lcom/amap/api/mapcore2d/bs;->c:I

    .line 218
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/bs;

    iget v3, v3, Lcom/amap/api/mapcore2d/bs;->d:I

    .line 219
    sget v4, Lcom/amap/api/mapcore2d/q;->i:I

    if-nez v4, :cond_0

    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cl;->a(III)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/amap/api/mapcore2d/ax;->a()Lcom/amap/api/mapcore2d/ax;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/ax;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 222
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bs;

    iget v0, v0, Lcom/amap/api/mapcore2d/bs;->d:I

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    .line 223
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/bs;

    iget v4, v4, Lcom/amap/api/mapcore2d/bs;->b:I

    if-lt v4, v0, :cond_1

    sub-int/2addr v4, v0

    goto :goto_0

    :cond_1
    if-gez v4, :cond_2

    add-int/2addr v4, v0

    .line 229
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bw;->b:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->j:Lcom/amap/api/mapcore2d/cb;

    invoke-interface {v0, v4, v2, v3}, Lcom/amap/api/mapcore2d/cb;->a(III)Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bw;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/bs;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bs;->b()V

    :goto_1
    return-object v0
.end method
