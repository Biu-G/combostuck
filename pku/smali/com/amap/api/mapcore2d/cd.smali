.class Lcom/amap/api/mapcore2d/cd;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:Z

.field private e:I

.field private f:Lcom/amap/api/mapcore2d/b;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cd;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/cd;->d:Z

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore2d/cd;->e:I

    .line 26
    iput v0, p0, Lcom/amap/api/mapcore2d/cd;->g:I

    const/16 v0, 0xa

    .line 28
    iput v0, p0, Lcom/amap/api/mapcore2d/cd;->h:I

    const-string v0, "WaterMarkerView"

    .line 50
    iput-object p2, p0, Lcom/amap/api/mapcore2d/cd;->f:Lcom/amap/api/mapcore2d/b;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 54
    :try_start_0
    sget-object p2, Lcom/amap/api/mapcore2d/q;->e:Lcom/amap/api/mapcore2d/q$a;

    sget-object v1, Lcom/amap/api/mapcore2d/q$a;->b:Lcom/amap/api/mapcore2d/q$a;

    if-ne p2, v1, :cond_0

    const-string p2, "apl2d.data"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "ap2d.data"

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 59
    :goto_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    .line 60
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 64
    sget-object p2, Lcom/amap/api/mapcore2d/q;->e:Lcom/amap/api/mapcore2d/q$a;

    sget-object v1, Lcom/amap/api/mapcore2d/q$a;->b:Lcom/amap/api/mapcore2d/q$a;

    if-ne p2, v1, :cond_1

    const-string p2, "apl12d.data"

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p2, "ap12d.data"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 70
    :goto_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    .line 71
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    sget v1, Lcom/amap/api/mapcore2d/q;->a:F

    invoke-static {p2, v1}, Lcom/amap/api/mapcore2d/cm;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 74
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/cd;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "WaterMarkerView"

    .line 77
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cd;->c:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cd;->c:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cd;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "destory"

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    .line 40
    iput-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    .line 41
    iput-object v1, p0, Lcom/amap/api/mapcore2d/cd;->c:Landroid/graphics/Paint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WaterMarkerView"

    .line 43
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/amap/api/mapcore2d/cd;->g:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cd;->d:Z

    .line 95
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->invalidate()V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cd;->d:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/graphics/Point;
    .locals 4

    .line 99
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore2d/cd;->h:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/cd;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/amap/api/mapcore2d/cd;->g:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_2

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 118
    iget v1, p0, Lcom/amap/api/mapcore2d/cd;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 119
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/2addr v1, v3

    iput v1, p0, Lcom/amap/api/mapcore2d/cd;->h:I

    goto :goto_0

    .line 120
    :cond_1
    iget v1, p0, Lcom/amap/api/mapcore2d/cd;->g:I

    const/16 v2, 0xa

    if-ne v1, v3, :cond_2

    .line 121
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore2d/cd;->h:I

    goto :goto_0

    .line 123
    :cond_2
    iput v2, p0, Lcom/amap/api/mapcore2d/cd;->h:I

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 129
    :cond_3
    sget-object v0, Lcom/amap/api/mapcore2d/q;->e:Lcom/amap/api/mapcore2d/q$a;

    sget-object v1, Lcom/amap/api/mapcore2d/q$a;->b:Lcom/amap/api/mapcore2d/q$a;

    if-ne v0, v1, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/cd;->h:I

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/cd;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cd;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/cd;->h:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/cd;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cd;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method
