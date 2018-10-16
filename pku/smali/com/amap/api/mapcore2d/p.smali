.class Lcom/amap/api/mapcore2d/p;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/amap/api/mapcore2d/as;

.field private e:Lcom/amap/api/mapcore2d/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/as;Lcom/amap/api/mapcore2d/y;)V
    .locals 5

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "CompassView"

    .line 39
    iput-object p2, p0, Lcom/amap/api/mapcore2d/p;->d:Lcom/amap/api/mapcore2d/as;

    .line 40
    iput-object p3, p0, Lcom/amap/api/mapcore2d/p;->e:Lcom/amap/api/mapcore2d/y;

    :try_start_0
    const-string p2, "maps_dav_compass_needle_large2d.png"

    .line 42
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 43
    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float p3, p3, v1

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    .line 44
    iget-object p3, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    .line 45
    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    const v1, 0x3f333333    # 0.7f

    mul-float p3, p3, v1

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 46
    iget-object p3, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-static {p3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/p;->a:Landroid/graphics/Bitmap;

    .line 48
    new-instance p3, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/p;->a:Landroid/graphics/Bitmap;

    invoke-direct {p3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 52
    iget-object v2, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 52
    invoke-virtual {p3, p2, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "CompassView"

    .line 57
    invoke-static {p2, p3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/p;->c:Landroid/widget/ImageView;

    .line 60
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p;->c:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p;->c:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/p;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p;->c:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/p$1;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/p$1;-><init>(Lcom/amap/api/mapcore2d/p;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p;->c:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/p$2;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/p$2;-><init>(Lcom/amap/api/mapcore2d/p;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    iget-object p1, p0, Lcom/amap/api/mapcore2d/p;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/p;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/p;)Landroid/graphics/Bitmap;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/p;)Landroid/widget/ImageView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amap/api/mapcore2d/p;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/p;)Landroid/graphics/Bitmap;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amap/api/mapcore2d/p;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/p;)Lcom/amap/api/mapcore2d/y;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amap/api/mapcore2d/p;->e:Lcom/amap/api/mapcore2d/y;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "destory"

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/p;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/amap/api/mapcore2d/p;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/amap/api/mapcore2d/p;->a:Landroid/graphics/Bitmap;

    .line 31
    iput-object v1, p0, Lcom/amap/api/mapcore2d/p;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CompassView"

    .line 33
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
