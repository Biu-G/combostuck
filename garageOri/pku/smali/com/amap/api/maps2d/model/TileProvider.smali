.class public interface abstract Lcom/amap/api/maps2d/model/TileProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_TILE:Lcom/amap/api/maps2d/model/Tile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/amap/api/maps2d/model/Tile;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/amap/api/maps2d/model/Tile;-><init>(II[B)V

    sput-object v0, Lcom/amap/api/maps2d/model/TileProvider;->NO_TILE:Lcom/amap/api/maps2d/model/Tile;

    return-void
.end method


# virtual methods
.method public abstract getTile(III)Lcom/amap/api/maps2d/model/Tile;
.end method

.method public abstract getTileHeight()I
.end method

.method public abstract getTileWidth()I
.end method
