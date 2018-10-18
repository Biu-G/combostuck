.class public final Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 124
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 123
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BitmapDescriptorFactory"

    const-string v1, "getViewBitmap"

    .line 129
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static defaultMarker()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    const-string v0, "defaultMarker"

    .line 226
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amap/api/mapcore2d/ai$a;->b:Lcom/amap/api/mapcore2d/ai$a;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ai$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "BitmapDescriptorFactory"

    .line 229
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static defaultMarker(F)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    const-string v0, "defaultMarker"

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 245
    :try_start_0
    div-int/lit8 p0, p0, 0x1e

    mul-int/lit8 p0, p0, 0x1e

    int-to-float p0, p0

    const/high16 v1, 0x43a50000    # 330.0f

    cmpl-float v2, p0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/high16 p0, 0x43a50000    # 330.0f

    goto :goto_0

    :cond_0
    cmpg-float v2, p0, v3

    if-gez v2, :cond_1

    const/4 p0, 0x0

    :cond_1
    :goto_0
    const-string v2, ""

    cmpl-float v3, p0, v3

    if-nez v3, :cond_2

    const-string v2, "RED"

    goto :goto_1

    :cond_2
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_3

    const-string v2, "ORANGE"

    goto :goto_1

    :cond_3
    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_4

    const-string v2, "YELLOW"

    goto :goto_1

    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_5

    const-string v2, "GREEN"

    goto :goto_1

    :cond_5
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_6

    const-string v2, "CYAN"

    goto :goto_1

    :cond_6
    const/high16 v3, 0x43520000    # 210.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_7

    const-string v2, "AZURE"

    goto :goto_1

    :cond_7
    const/high16 v3, 0x43700000    # 240.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_8

    const-string v2, "BLUE"

    goto :goto_1

    :cond_8
    const/high16 v3, 0x43870000    # 270.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_9

    const-string v2, "VIOLET"

    goto :goto_1

    :cond_9
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_a

    const-string v2, "MAGENTAV"

    goto :goto_1

    :cond_a
    cmpl-float p0, p0, v1

    if-nez p0, :cond_b

    const-string v2, "ROSE"

    .line 273
    :cond_b
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2d.png"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "BitmapDescriptorFactory"

    .line 275
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 5

    const-string v0, "fromAsset"

    const/4 v1, 0x0

    .line 164
    :try_start_0
    const-class v2, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/assets/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 184
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "BitmapDescriptorFactory"

    .line 186
    invoke-static {p0, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :goto_0
    return-object v2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object p0, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object p0, v1

    :goto_1
    :try_start_3
    const-string v3, "BitmapDescriptorFactory"

    .line 179
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    .line 184
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v1

    :catchall_1
    move-exception v2

    :goto_2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    :cond_2
    throw v2
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 293
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-direct {v1, p0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "BitmapDescriptorFactory"

    const-string v2, "fromBitmap"

    .line 296
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    const-string v0, "fromFile"

    const/4 v1, 0x0

    .line 203
    :try_start_0
    sget-object v2, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v2, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 206
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 208
    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    const-string v2, "BitmapDescriptorFactory"

    .line 212
    invoke-static {p0, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 2

    const-string v0, "fromPath"

    .line 145
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 146
    invoke-static {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "BitmapDescriptorFactory"

    .line 148
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    const-string v0, "fromResource"

    const/4 v1, 0x0

    .line 77
    :try_start_0
    sget-object v2, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 81
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    const-string v2, "BitmapDescriptorFactory"

    .line 85
    invoke-static {p0, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromView(Landroid/view/View;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 4

    const-string v0, "fromView"

    const/4 v1, 0x0

    .line 100
    :try_start_0
    sget-object v2, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 102
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 105
    invoke-static {v3}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    const-string v2, "BitmapDescriptorFactory"

    .line 109
    invoke-static {p0, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
