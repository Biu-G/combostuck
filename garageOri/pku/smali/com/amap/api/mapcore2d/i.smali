.class Lcom/amap/api/mapcore2d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Landroid/graphics/Bitmap;

    .line 8
    iput-object v0, p0, Lcom/amap/api/mapcore2d/i;->b:Landroid/graphics/Canvas;

    .line 12
    iput-object p1, p0, Lcom/amap/api/mapcore2d/i;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lcom/amap/api/mapcore2d/i;->a:Landroid/graphics/Bitmap;

    .line 18
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->a:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/i;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/j;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->b:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore2d/i;->b:Landroid/graphics/Canvas;

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/j;->a(Landroid/graphics/Canvas;)V

    .line 38
    iget-object p1, p0, Lcom/amap/api/mapcore2d/i;->b:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
