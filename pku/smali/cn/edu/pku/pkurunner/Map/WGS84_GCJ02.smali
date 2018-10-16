.class public Lcn/edu/pku/pkurunner/Map/WGS84_GCJ02;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DD)D
    .locals 18

    const-wide v4, 0x4072c00000000000L    # 300.0

    add-double v6, p0, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, p2, v8

    add-double/2addr v6, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v12, p0, v10

    mul-double v14, v12, p0

    add-double/2addr v6, v14

    mul-double v12, v12, p2

    add-double/2addr v6, v12

    .line 31
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v10

    add-double/2addr v6, v2

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v2, v2, p0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v10

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double v2, v2, v12

    mul-double v14, p0, v8

    mul-double v14, v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v12

    add-double/2addr v2, v14

    mul-double v2, v2, v8

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v14

    add-double/2addr v6, v2

    mul-double v2, p0, v10

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v12

    div-double v12, p0, v14

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    mul-double v12, v12, v16

    add-double/2addr v2, v12

    mul-double v2, v2, v8

    div-double/2addr v2, v14

    add-double/2addr v6, v2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double v2, p0, v2

    mul-double v2, v2, v10

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v12, 0x4062c00000000000L    # 150.0

    mul-double v2, v2, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    div-double v0, p0, v12

    mul-double v0, v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    mul-double v2, v2, v8

    div-double/2addr v2, v14

    add-double/2addr v6, v2

    return-wide v6
.end method

.method private static b(DD)D
    .locals 18

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p0, v4

    const-wide/high16 v8, -0x3fa7000000000000L    # -100.0

    add-double/2addr v8, v6

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v12, p2, v10

    add-double/2addr v8, v12

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double v14, p2, v12

    mul-double v14, v14, p2

    add-double/2addr v8, v14

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double v14, v14, p0

    mul-double v14, v14, p2

    add-double/2addr v8, v14

    .line 39
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double v14, v14, v12

    add-double/2addr v8, v14

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    mul-double v0, p0, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v12

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    mul-double v0, v0, v14

    mul-double v6, v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v14

    add-double/2addr v0, v6

    mul-double v0, v0, v4

    div-double/2addr v0, v10

    add-double/2addr v8, v0

    mul-double v0, p2, v12

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v14

    div-double v14, p2, v10

    mul-double v14, v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    mul-double v6, v6, v4

    div-double/2addr v6, v10

    add-double/2addr v8, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v2, p2, v6

    mul-double v2, v2, v12

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    mul-double v2, v2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    mul-double v0, v0, v6

    add-double/2addr v2, v0

    mul-double v2, v2, v4

    div-double/2addr v2, v10

    add-double/2addr v8, v2

    return-wide v8
.end method

.method private static c(DD)Z
    .locals 2

    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double p0, p0, v0

    if-gtz p0, :cond_1

    const-wide p0, 0x3fea89a027525461L    # 0.8293

    cmpg-double p0, p2, p0

    if-ltz p0, :cond_1

    const-wide p0, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double p0, p2, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static convert(DD)[D
    .locals 24

    .line 13
    invoke-static/range {p0 .. p3}, Lcn/edu/pku/pkurunner/Map/WGS84_GCJ02;->c(DD)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_0

    .line 14
    new-array v4, v7, [D

    aput-wide p0, v4, v6

    aput-wide p2, v4, v5

    return-object v4

    :cond_0
    const-wide v8, 0x405a400000000000L    # 105.0

    sub-double v8, p0, v8

    const-wide v10, 0x4041800000000000L    # 35.0

    sub-double v10, p2, v10

    .line 16
    invoke-static {v8, v9, v10, v11}, Lcn/edu/pku/pkurunner/Map/WGS84_GCJ02;->a(DD)D

    move-result-wide v12

    .line 17
    invoke-static {v8, v9, v10, v11}, Lcn/edu/pku/pkurunner/Map/WGS84_GCJ02;->b(DD)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v14, p2, v10

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    .line 19
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide v22, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double v22, v22, v18

    mul-double v22, v22, v18

    sub-double v20, v20, v22

    .line 21
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    mul-double v12, v12, v10

    const-wide v22, 0x415854c140000000L    # 6378245.0

    div-double v22, v22, v18

    .line 22
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v22, v22, v14

    mul-double v22, v22, v16

    div-double v12, v12, v22

    mul-double v8, v8, v10

    const-wide v10, 0x41582b102de355c1L    # 6335552.717000426

    mul-double v20, v20, v18

    div-double v10, v10, v20

    mul-double v10, v10, v16

    div-double/2addr v8, v10

    add-double v0, p0, v12

    add-double v2, p2, v8

    .line 26
    new-array v4, v7, [D

    aput-wide v0, v4, v6

    aput-wide v2, v4, v5

    return-object v4
.end method
