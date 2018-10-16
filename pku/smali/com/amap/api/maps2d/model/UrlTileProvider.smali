.class public abstract Lcom/amap/api/maps2d/model/UrlTileProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps2d/model/TileProvider;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/amap/api/maps2d/model/UrlTileProvider;->a:I

    .line 29
    iput p2, p0, Lcom/amap/api/maps2d/model/UrlTileProvider;->b:I

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 75
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 79
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-wide v1

    :cond_0
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    invoke-static {p0, v0}, Lcom/amap/api/maps2d/model/UrlTileProvider;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getTile(III)Lcom/amap/api/maps2d/model/Tile;
    .locals 2

    const-string v0, "getTile"

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    .line 54
    sget-object p1, Lcom/amap/api/maps2d/model/UrlTileProvider;->NO_TILE:Lcom/amap/api/maps2d/model/Tile;

    return-object p1

    :cond_0
    const-string p2, "UrlTileProvider"

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x6f

    invoke-static {p2, p3, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    :try_start_0
    new-instance p2, Lcom/amap/api/maps2d/model/Tile;

    iget p3, p0, Lcom/amap/api/maps2d/model/UrlTileProvider;->a:I

    iget v1, p0, Lcom/amap/api/maps2d/model/UrlTileProvider;->b:I

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/maps2d/model/UrlTileProvider;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p2, p3, v1, p1}, Lcom/amap/api/maps2d/model/Tile;-><init>(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "UrlTileProvider"

    .line 60
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object p2, Lcom/amap/api/maps2d/model/UrlTileProvider;->NO_TILE:Lcom/amap/api/maps2d/model/Tile;

    :goto_0
    return-object p2
.end method

.method public getTileHeight()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/amap/api/maps2d/model/UrlTileProvider;->b:I

    return v0
.end method

.method public abstract getTileUrl(III)Ljava/net/URL;
.end method

.method public getTileWidth()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/amap/api/maps2d/model/UrlTileProvider;->a:I

    return v0
.end method
