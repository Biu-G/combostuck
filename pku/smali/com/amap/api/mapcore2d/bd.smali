.class Lcom/amap/api/mapcore2d/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 228
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 229
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 230
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 231
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/amap/api/mapcore2d/bd;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 49
    :cond_0
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    .line 51
    invoke-static {p0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "mNinePatchChunk"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/bd;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 31
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    .line 34
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    invoke-static {p1, v4}, Lcom/amap/api/mapcore2d/bd;->a([BLandroid/graphics/Rect;)V

    .line 36
    new-instance p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Landroid/graphics/Bitmap;[B)V
    .locals 13

    .line 178
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [I

    .line 179
    array-length v4, v0

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    array-length v7, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    .line 179
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 181
    :goto_0
    array-length v3, v0

    const/high16 v4, -0x1000000

    if-ge v2, v3, :cond_1

    .line 182
    aget v3, v0, v2

    if-ne v4, v3, :cond_0

    const/16 v3, 0xc

    .line 183
    invoke-static {p1, v3, v2}, Lcom/amap/api/mapcore2d/bd;->a([BII)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    :goto_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 188
    aget v3, v0, v2

    if-ne v4, v3, :cond_2

    const/16 v3, 0x10

    .line 189
    array-length v0, v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v3, v0}, Lcom/amap/api/mapcore2d/bd;->a([BII)V

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 195
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 196
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    array-length v12, v0

    move-object v5, p0

    move-object v6, v0

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 198
    :goto_4
    array-length p0, v0

    if-ge v1, p0, :cond_5

    .line 199
    aget p0, v0, v1

    if-ne v4, p0, :cond_4

    const/16 p0, 0x14

    .line 200
    invoke-static {p1, p0, v1}, Lcom/amap/api/mapcore2d/bd;->a([BII)V

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 204
    :cond_5
    :goto_5
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_7

    .line 205
    aget v1, v0, p0

    if-ne v4, v1, :cond_6

    const/16 v1, 0x18

    .line 206
    array-length v0, v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/bd;->a([BII)V

    goto :goto_7

    :cond_6
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method

.method private static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 214
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 215
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 216
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 217
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static a([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    .line 221
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 222
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 223
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 224
    aput-byte p2, p0, p1

    return-void
.end method

.method private static a([BLandroid/graphics/Rect;)V
    .locals 1

    const/16 v0, 0xc

    .line 84
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/bd;->a([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    const/16 v0, 0x10

    .line 85
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/bd;->a([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    const/16 v0, 0x14

    .line 86
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/bd;->a([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    const/16 v0, 0x18

    .line 87
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/bd;->a([BI)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 101
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v10, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 103
    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v3, -0x2

    .line 107
    new-array v11, v6, [I

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    .line 108
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 109
    aget v0, v11, v10

    const/high16 v1, -0x1000000

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_1
    array-length v3, v11

    sub-int/2addr v3, v2

    aget v3, v11, v3

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 112
    :goto_2
    array-length v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v5, v4, :cond_4

    .line 113
    aget v12, v11, v5

    if-eq v6, v12, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 115
    invoke-static {v9, v5}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/io/OutputStream;I)V

    .line 116
    aget v6, v11, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 121
    array-length v4, v11

    invoke-static {v9, v4}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/io/OutputStream;I)V

    :cond_5
    add-int/lit8 v4, v7, 0x1

    if-eqz v0, :cond_6

    add-int/lit8 v4, v4, -0x1

    :cond_6
    if-eqz v3, :cond_7

    add-int/lit8 v4, v4, -0x1

    :cond_7
    const/4 v0, 0x2

    add-int/lit8 v3, v8, -0x2

    .line 133
    new-array v5, v3, [I

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v11, p0

    move-object v12, v5

    move/from16 v18, v3

    .line 134
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 135
    aget v3, v5, v10

    if-ne v3, v1, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 136
    :goto_4
    array-length v6, v5

    sub-int/2addr v6, v2

    aget v6, v5, v6

    if-ne v6, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 138
    :goto_5
    array-length v6, v5

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v8, v6, :cond_b

    .line 139
    aget v13, v5, v8

    if-eq v11, v13, :cond_a

    add-int/lit8 v12, v12, 0x1

    .line 141
    invoke-static {v9, v8}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/io/OutputStream;I)V

    .line 142
    aget v11, v5, v8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_c

    add-int/lit8 v12, v12, 0x1

    .line 147
    array-length v5, v5

    invoke-static {v9, v5}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/io/OutputStream;I)V

    :cond_c
    add-int/lit8 v5, v12, 0x1

    if-eqz v3, :cond_d

    add-int/lit8 v5, v5, -0x1

    :cond_d
    if-eqz v1, :cond_e

    add-int/lit8 v5, v5, -0x1

    :cond_e
    const/4 v1, 0x0

    :goto_7
    mul-int v3, v4, v5

    if-ge v1, v3, :cond_f

    .line 160
    invoke-static {v9, v2}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/io/OutputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 164
    :cond_f
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 165
    aput-byte v2, v1, v10

    int-to-byte v4, v7

    .line 166
    aput-byte v4, v1, v2

    int-to-byte v2, v12

    .line 167
    aput-byte v2, v1, v0

    const/4 v0, 0x3

    int-to-byte v2, v3

    .line 168
    aput-byte v2, v1, v0

    move-object/from16 v0, p0

    .line 169
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/bd;->a(Landroid/graphics/Bitmap;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/amap/api/mapcore2d/bd;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method
