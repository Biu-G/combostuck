.class Lcom/amap/api/mapcore2d/ce;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/amap/api/mapcore2d/aq;

.field private j:Lcom/amap/api/mapcore2d/y;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/aq;Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/amap/api/mapcore2d/ce;->k:I

    const-string v1, "ZoomControllerView"

    .line 60
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ce;->setWillNotDraw(Z)V

    .line 62
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->i:Lcom/amap/api/mapcore2d/aq;

    .line 63
    iput-object p3, p0, Lcom/amap/api/mapcore2d/ce;->j:Lcom/amap/api/mapcore2d/y;

    :try_start_0
    const-string p2, "zoomin_selected2d.png"

    .line 66
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    .line 67
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_unselected2d.png"

    .line 69
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    .line 70
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_selected2d.png"

    .line 73
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    .line 74
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_unselected2d.png"

    .line 76
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    .line 77
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_pressed2d.png"

    .line 80
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_pressed2d.png"

    .line 81
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->f:Landroid/graphics/Bitmap;

    .line 83
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/graphics/Bitmap;

    .line 85
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->f:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->f:Landroid/graphics/Bitmap;

    .line 88
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    .line 89
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    new-instance p3, Lcom/amap/api/mapcore2d/ce$1;

    invoke-direct {p3, p0}, Lcom/amap/api/mapcore2d/ce$1;-><init>(Lcom/amap/api/mapcore2d/ce;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    .line 107
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/ce$2;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/ce$2;-><init>(Lcom/amap/api/mapcore2d/ce;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/ce$3;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/ce$3;-><init>(Lcom/amap/api/mapcore2d/ce;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/ce$4;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/ce$4;-><init>(Lcom/amap/api/mapcore2d/ce;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    const/4 p2, -0x2

    const/16 p3, 0x14

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 171
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v0, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->setOrientation(I)V

    .line 174
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->addView(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ZoomControllerView"

    .line 179
    invoke-static {p1, p2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/ce;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/y;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->j:Lcom/amap/api/mapcore2d/y;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/ce;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/mapcore2d/ce;)Lcom/amap/api/mapcore2d/aq;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->i:Lcom/amap/api/mapcore2d/aq;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/mapcore2d/ce;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "destory"

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 38
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 40
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 42
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    .line 45
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    .line 46
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    .line 47
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/graphics/Bitmap;

    .line 49
    iput-object v1, p0, Lcom/amap/api/mapcore2d/ce;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ZoomControllerView"

    .line 51
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->j:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMaxZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->j:Lcom/amap/api/mapcore2d/y;

    .line 198
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMinZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 199
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->j:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMinZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 202
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->j:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->getMaxZoomLevel()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 205
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ZoomControllerView"

    const-string v1, "setZoomBitmap"

    .line 209
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/amap/api/mapcore2d/ce;->k:I

    .line 185
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->removeView(Landroid/view/View;)V

    .line 186
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->removeView(Landroid/view/View;)V

    .line 187
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->addView(Landroid/view/View;)V

    .line 188
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ce;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->addView(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/amap/api/mapcore2d/ce;->k:I

    return v0
.end method
