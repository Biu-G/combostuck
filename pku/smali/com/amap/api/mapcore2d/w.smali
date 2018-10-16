.class public Lcom/amap/api/mapcore2d/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    .line 6
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    const-wide/16 v0, 0x1

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->d:D

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    .line 12
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    return-void
.end method

.method private constructor <init>(DDJJ)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    .line 6
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    const-wide/16 v0, 0x1

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->d:D

    .line 44
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/w;->c:D

    .line 45
    iput-wide p3, p0, Lcom/amap/api/mapcore2d/w;->d:D

    .line 46
    iput-wide p5, p0, Lcom/amap/api/mapcore2d/w;->a:J

    .line 47
    iput-wide p7, p0, Lcom/amap/api/mapcore2d/w;->b:J

    return-void
.end method

.method constructor <init>(DDZ)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    .line 6
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    const-wide/16 v0, 0x1

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->d:D

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    double-to-long p1, p1

    .line 24
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/w;->a:J

    mul-double p3, p3, v0

    double-to-long p1, p3

    .line 25
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/w;->b:J

    goto :goto_0

    .line 27
    :cond_0
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/w;->c:D

    .line 28
    iput-wide p3, p0, Lcom/amap/api/mapcore2d/w;->d:D

    :goto_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    .line 6
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    const-wide/16 v0, 0x1

    .line 7
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->c:D

    .line 8
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->d:D

    int-to-long v0, p1

    .line 17
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    int-to-long p1, p2

    .line 18
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/w;->b:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public a(D)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/w;->d:D

    return-void
.end method

.method public b()I
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public b(D)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/amap/api/mapcore2d/w;->c:D

    return-void
.end method

.method public c()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    return-wide v0
.end method

.method public e()D
    .locals 4

    .line 105
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 107
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->b:J

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v0

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 109
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->d:D

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->d:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 56
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 58
    :cond_2
    check-cast p1, Lcom/amap/api/mapcore2d/w;

    .line 59
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->a:J

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/w;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 61
    :cond_3
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->b:J

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/w;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 63
    :cond_4
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/w;->c:D

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    .line 66
    :cond_5
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/w;->d:D

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public f()D
    .locals 4

    .line 115
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v0, v2

    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 122
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/w;->c:D

    .line 124
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->c:D

    return-wide v0
.end method

.method public g()Lcom/amap/api/mapcore2d/w;
    .locals 10

    .line 128
    new-instance v9, Lcom/amap/api/mapcore2d/w;

    iget-wide v1, p0, Lcom/amap/api/mapcore2d/w;->c:D

    iget-wide v3, p0, Lcom/amap/api/mapcore2d/w;->d:D

    iget-wide v5, p0, Lcom/amap/api/mapcore2d/w;->a:J

    iget-wide v7, p0, Lcom/amap/api/mapcore2d/w;->b:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amap/api/mapcore2d/w;-><init>(DDJJ)V

    return-object v9
.end method

.method public hashCode()I
    .locals 7

    .line 76
    iget-wide v0, p0, Lcom/amap/api/mapcore2d/w;->a:J

    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->b:J

    iget-wide v5, p0, Lcom/amap/api/mapcore2d/w;->b:J

    ushr-long/2addr v5, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 79
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 81
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/w;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long v1, v2, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
