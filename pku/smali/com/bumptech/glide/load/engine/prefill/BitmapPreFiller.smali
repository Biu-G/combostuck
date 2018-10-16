.class public final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final c:Lcom/bumptech/glide/load/DecodeFormat;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/bumptech/glide/load/engine/prefill/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->d:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->a:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 31
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->c:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->c()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method


# virtual methods
.method varargs a([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/b;
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->a:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 60
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->a:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 63
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    .line 64
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->d()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 71
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->d()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 72
    invoke-static {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->a(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v6

    .line 73
    div-int/2addr v5, v6

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_1
    new-instance p1, Lcom/bumptech/glide/load/engine/prefill/b;

    invoke-direct {p1, v1}, Lcom/bumptech/glide/load/engine/prefill/b;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public varargs preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->e:Lcom/bumptech/glide/load/engine/prefill/a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->e:Lcom/bumptech/glide/load/engine/prefill/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/a;->a()V

    .line 40
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    const/4 v1, 0x0

    .line 41
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 42
    aget-object v2, p1, v1

    .line 43
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_3

    .line 46
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->c:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->c:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888_DISALLOW_HARDWARE:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    :goto_2
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .line 49
    :cond_3
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->b()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->a([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/b;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->a:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/engine/prefill/a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->e:Lcom/bumptech/glide/load/engine/prefill/a;

    .line 54
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->e:Lcom/bumptech/glide/load/engine/prefill/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
