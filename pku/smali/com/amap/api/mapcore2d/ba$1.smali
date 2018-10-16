.class Lcom/amap/api/mapcore2d/ba$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ba;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/amap/api/mapcore2d/ba;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ba;Ljava/util/List;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ba$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 277
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 279
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 281
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 283
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ba;->b(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_9

    .line 294
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba$1;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/bx;

    if-nez v4, :cond_2

    goto/16 :goto_4

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v5}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/bx;->b()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 301
    iget-object v5, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v5}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v5

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 303
    iget-object v5, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v5}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v5

    const/16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 305
    iget-object v5, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v5}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v5

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/bx;->a()Ljava/util/List;

    move-result-object v4

    .line 308
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_2
    if-ge v6, v5, :cond_8

    .line 311
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 317
    iget-object v7, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v7}, Lcom/amap/api/mapcore2d/ba;->b(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Path;

    move-result-object v7

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v7, 0x0

    goto :goto_3

    .line 319
    :cond_7
    iget-object v9, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v9}, Lcom/amap/api/mapcore2d/ba;->b(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Path;

    move-result-object v9

    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 322
    :cond_8
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/ba;->b(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v5}, Lcom/amap/api/mapcore2d/ba;->a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 323
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba$1;->b:Lcom/amap/api/mapcore2d/ba;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/ba;->b(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
