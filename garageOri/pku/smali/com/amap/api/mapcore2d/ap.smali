.class Lcom/amap/api/mapcore2d/ap;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/amap/api/mapcore2d/y;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/as;Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 99
    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/ap;->f:Z

    const-string v0, "LocationView"

    .line 45
    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->e:Lcom/amap/api/mapcore2d/y;

    :try_start_0
    const-string p3, "location_selected2d.png"

    .line 47
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    const-string p3, "location_pressed2d.png"

    .line 48
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->b:Landroid/graphics/Bitmap;

    .line 49
    iget-object p3, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p3, v1}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    .line 50
    iget-object p3, p0, Lcom/amap/api/mapcore2d/ap;->b:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p3, v1}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->b:Landroid/graphics/Bitmap;

    const-string p3, "location_unselected2d.png"

    .line 51
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->c:Landroid/graphics/Bitmap;

    .line 52
    iget-object p3, p0, Lcom/amap/api/mapcore2d/ap;->c:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p3, v1}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v1, "LocationView"

    .line 54
    invoke-static {p3, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    .line 57
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    const/16 p3, 0x14

    invoke-virtual {p1, p2, p3, p3, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 59
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/ap$1;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/ap$1;-><init>(Lcom/amap/api/mapcore2d/ap;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/ap$2;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/ap$2;-><init>(Lcom/amap/api/mapcore2d/ap;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ap;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ap;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/ap;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/ap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ap;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/ap;)Landroid/widget/ImageView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/ap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/y;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ap;->e:Lcom/amap/api/mapcore2d/y;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "destory"

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    .line 36
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ap;->b:Landroid/graphics/Bitmap;

    .line 37
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LocationView"

    .line 39
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 102
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ap;->f:Z

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ap;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
