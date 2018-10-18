.class Lcom/amap/api/mapcore2d/ce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ce;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/aq;Lcom/amap/api/mapcore2d/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ce;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ce;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ce;->b(Lcom/amap/api/mapcore2d/ce;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ce;->a(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ce;->c(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/y;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/y;->getZoomLevel()F

    move-result p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ce;->c(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMaxZoomLevel()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ce;->e(Lcom/amap/api/mapcore2d/ce;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ce;->d(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ce;->e(Lcom/amap/api/mapcore2d/ce;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ce;->f(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ce;->c(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getZoomLevel()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ce;->a(F)V

    .line 101
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce$1;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ce;->g(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/aq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/aq;->c()Z

    return-void
.end method
