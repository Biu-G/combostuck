.class Lcom/amap/api/mapcore2d/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ba$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/amap/api/mapcore2d/ba$a;

.field protected final b:I

.field protected final c:I

.field protected final d:[Lcom/amap/api/mapcore2d/ba$a;

.field private e:Z

.field private f:J

.field private g:Lcom/amap/api/mapcore2d/an;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IIZJLcom/amap/api/mapcore2d/an;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ba;->e:Z

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ba;->f:J

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba;->h:Landroid/graphics/Paint;

    .line 270
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba;->i:Landroid/graphics/Path;

    .line 31
    iput p1, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    .line 32
    iput p2, p0, Lcom/amap/api/mapcore2d/ba;->c:I

    .line 33
    iput-object p6, p0, Lcom/amap/api/mapcore2d/ba;->g:Lcom/amap/api/mapcore2d/an;

    .line 34
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/ba;->e:Z

    const-wide/32 p1, 0xf4240

    mul-long p4, p4, p1

    .line 35
    iput-wide p4, p0, Lcom/amap/api/mapcore2d/ba;->f:J

    .line 37
    iget p1, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    if-lez p1, :cond_0

    .line 38
    iget p1, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    new-array p1, p1, [Lcom/amap/api/mapcore2d/ba$a;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    .line 39
    iget p1, p0, Lcom/amap/api/mapcore2d/ba;->c:I

    new-array p1, p1, [Lcom/amap/api/mapcore2d/ba$a;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    goto :goto_0

    .line 41
    :cond_0
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    .line 42
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Paint;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->h:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ba;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba;->h:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ba;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba;->i:Landroid/graphics/Path;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/bx;",
            ">;)V"
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/amap/api/mapcore2d/ba$1;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore2d/ba$1;-><init>(Lcom/amap/api/mapcore2d/ba;Ljava/util/List;)V

    .line 328
    new-instance p2, Lcom/amap/api/mapcore2d/i;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/amap/api/mapcore2d/i;-><init>(Landroid/graphics/Bitmap$Config;)V

    .line 329
    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/i;->a(Landroid/graphics/Bitmap;)V

    .line 330
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/i;->a(Lcom/amap/api/mapcore2d/j;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/ba;)Landroid/graphics/Path;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ba;->i:Landroid/graphics/Path;

    return-object p0
.end method

.method private d()J
    .locals 2

    .line 190
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 198
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/ba;->c:I

    if-ge v1, v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_1
    iget v2, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    if-ge v1, v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    move-object v3, v2

    const/4 v2, 0x0

    .line 207
    :goto_2
    iget v4, p0, Lcom/amap/api/mapcore2d/ba;->c:I

    if-ge v2, v4, :cond_3

    .line 208
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v4, v4, v2

    if-nez v4, :cond_1

    .line 209
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aput-object v3, v4, v2

    goto :goto_3

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/ba$a;->d:J

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/ba$a;->d:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 214
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v4, v4, v2

    .line 215
    iget-object v5, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aput-object v3, v5, v2

    move-object v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 223
    :goto_4
    iget v3, p0, Lcom/amap/api/mapcore2d/ba;->c:I

    if-ge v1, v3, :cond_6

    .line 224
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 225
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v3, v3, v1

    iput-boolean v0, v3, Lcom/amap/api/mapcore2d/ba$a;->c:Z

    if-gez v2, :cond_5

    .line 227
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->d:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/amap/api/mapcore2d/ba$a;->e:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return v2
.end method

.method protected a(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    const-string v1, ""

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 53
    :goto_0
    iget v4, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    if-ge v3, v4, :cond_7

    .line 54
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ba$a;->b:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ba$a;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v3

    iget-boolean p1, p1, Lcom/amap/api/mapcore2d/ba$a;->c:Z

    if-nez p1, :cond_3

    return v0

    .line 64
    :cond_3
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/ba;->e:Z

    if-ne p1, v2, :cond_4

    .line 65
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ba;->d()J

    move-result-wide v4

    .line 66
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v3

    iget-wide v6, p1, Lcom/amap/api/mapcore2d/ba$a;->f:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/ba;->f:J

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    .line 67
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v3

    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/ba$a;->c:Z

    return v0

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    if-nez p1, :cond_5

    return v0

    .line 74
    :cond_5
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v3

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ba;->d()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/amap/api/mapcore2d/ba$a;->d:J

    return v3

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v0
.end method

.method protected declared-synchronized a([B[BZLjava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BZ",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/bx;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 108
    monitor-exit p0

    return v0

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->b()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_1

    .line 118
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ba;->a()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    if-gez v1, :cond_2

    .line 122
    monitor-exit p0

    return v0

    .line 124
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    .line 125
    monitor-exit p0

    return v0

    .line 128
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iput-object v3, v2, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ba$a;->g:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 136
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ba$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 137
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iput-object v3, v2, Lcom/amap/api/mapcore2d/ba$a;->g:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_6

    if-eqz p1, :cond_6

    .line 142
    :try_start_4
    iget-object p2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p2, p2, v1

    array-length p3, p1

    .line 143
    invoke-static {p1, v2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p2, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    const-string p2, "BitmapManager"

    const-string p3, "setBitmapData"

    .line 146
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 150
    :try_start_6
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    array-length p3, p2

    .line 151
    invoke-static {p2, v2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_2
    move-exception p1

    :try_start_7
    const-string p2, "BitmapManager"

    const-string p3, "setBitmapData"

    .line 154
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catch_3
    :cond_7
    :goto_1
    if-eqz p4, :cond_8

    .line 158
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    iget-object p2, p0, Lcom/amap/api/mapcore2d/ba;->g:Lcom/amap/api/mapcore2d/an;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/an;->a:Lcom/amap/api/mapcore2d/av;

    iget p2, p2, Lcom/amap/api/mapcore2d/av;->a:I

    iget-object p3, p0, Lcom/amap/api/mapcore2d/ba;->g:Lcom/amap/api/mapcore2d/an;

    iget-object p3, p3, Lcom/amap/api/mapcore2d/an;->a:Lcom/amap/api/mapcore2d/av;

    iget p3, p3, Lcom/amap/api/mapcore2d/av;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    .line 161
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p4}, Lcom/amap/api/mapcore2d/ba;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 168
    :cond_8
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/ba$a;->g:Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p1, :cond_9

    .line 170
    monitor-exit p0

    return v0

    .line 173
    :cond_9
    :try_start_8
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    if-eqz p1, :cond_a

    .line 174
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    iput-boolean v3, p1, Lcom/amap/api/mapcore2d/ba$a;->c:Z

    .line 175
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    iput-object p5, p1, Lcom/amap/api/mapcore2d/ba$a;->b:Ljava/lang/String;

    .line 176
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ba;->d()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/amap/api/mapcore2d/ba$a;->d:J

    .line 178
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/ba;->e:Z

    if-ne p1, v3, :cond_a

    .line 179
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, p1, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ba;->d()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/amap/api/mapcore2d/ba$a;->f:J
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    const/4 v1, -0x1

    :goto_2
    :try_start_9
    const-string p2, "BitmapManager"

    const-string p3, "setBitmapData"

    .line 183
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 186
    :cond_a
    :goto_3
    monitor-exit p0

    return v1

    .line 106
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 82
    iget v1, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected b()I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 238
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    if-ge v1, v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    new-instance v2, Lcom/amap/api/mapcore2d/ba$a;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/ba$a;-><init>(Lcom/amap/api/mapcore2d/ba;)V

    aput-object v2, v0, v1

    .line 241
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v0, v0, v1

    iput v1, v0, Lcom/amap/api/mapcore2d/ba$a;->e:I

    return v1

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/amap/api/mapcore2d/ba$a;->c:Z

    if-nez v2, :cond_1

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected c()V
    .locals 3

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/ba;->b:I

    if-ge v0, v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    .line 260
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ba;->a:[Lcom/amap/api/mapcore2d/ba$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
