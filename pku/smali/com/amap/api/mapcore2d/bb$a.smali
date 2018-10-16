.class public Lcom/amap/api/mapcore2d/bb$a;
.super Lcom/amap/api/mapcore2d/bb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field p:F

.field q:F

.field r:F

.field s:F

.field t:J

.field u:I

.field v:I

.field private w:J


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bb;-><init>()V

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bb$a;->t:J

    const/4 v2, 0x0

    .line 112
    iput v2, p0, Lcom/amap/api/mapcore2d/bb$a;->u:I

    .line 113
    iput v2, p0, Lcom/amap/api/mapcore2d/bb$a;->v:I

    .line 115
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bb$a;->w:J

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 8

    const-string v0, "midPoint"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 276
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->b()Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 276
    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 277
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 278
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->b()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 278
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 280
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v4, v5

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "MutiTouchGestureDetector"

    .line 289
    invoke-static {v4, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v5, "MutiTouchGestureDetector"

    .line 286
    invoke-static {v4, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v4

    const-string v5, "MutiTouchGestureDetector"

    .line 283
    invoke-static {v4, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    .line 294
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->c()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 294
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 295
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 296
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->c()Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    .line 297
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 296
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 298
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    add-float v1, v5, p2

    goto :goto_2

    :catch_3
    move-exception p2

    const-string v2, "MutiTouchGestureDetector"

    .line 307
    invoke-static {p2, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception p2

    const-string v2, "MutiTouchGestureDetector"

    .line 304
    invoke-static {p2, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception p2

    const-string v2, "MutiTouchGestureDetector"

    .line 301
    invoke-static {p2, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_2
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->u:I

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->v:I

    if-eqz p2, :cond_0

    .line 310
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->u:I

    int-to-float v4, p2

    .line 311
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->v:I

    int-to-float v1, p2

    :cond_0
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v4, p2

    div-float/2addr v1, p2

    .line 315
    invoke-virtual {p1, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 8

    const-string v0, "distance"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 233
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->b()Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 233
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 234
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 235
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->b()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 235
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 237
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    sub-float/2addr v4, v5

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "MutiTouchGestureDetector"

    .line 246
    invoke-static {v4, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v5, "MutiTouchGestureDetector"

    .line 243
    invoke-static {v4, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v4

    const-string v5, "MutiTouchGestureDetector"

    .line 240
    invoke-static {v4, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    .line 251
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->c()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 251
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 252
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 253
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->c()Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 253
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    sub-float v1, v5, p1

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v2, "MutiTouchGestureDetector"

    .line 264
    invoke-static {p1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception p1

    const-string v2, "MutiTouchGestureDetector"

    .line 261
    invoke-static {p1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception p1

    const-string v2, "MutiTouchGestureDetector"

    .line 258
    invoke-static {p1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    mul-float v4, v4, v4

    mul-float v1, v1, v1

    add-float/2addr v4, v1

    float-to-double v0, v4

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;II)Z
    .locals 10

    .line 119
    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->u:I

    .line 120
    iput p3, p0, Lcom/amap/api/mapcore2d/bb$a;->v:I

    .line 121
    invoke-static {p1}, Lcom/amap/api/mapcore2d/bb;->a(Landroid/view/MotionEvent;)V

    .line 123
    invoke-static {}, Lcom/amap/api/mapcore2d/bb;->a()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 137
    :pswitch_1
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->n:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->n:I

    .line 138
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->n:I

    if-ne p2, v3, :cond_4

    .line 139
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/bb$a;->m:Z

    .line 140
    sput v1, Lcom/amap/api/mapcore2d/bb$a;->j:F

    .line 141
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb$a;->b(Landroid/view/MotionEvent;)F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->h:F

    .line 142
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->h:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_4

    .line 143
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 144
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 145
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 146
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/bb$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 147
    iput v2, p0, Lcom/amap/api/mapcore2d/bb$a;->b:I

    .line 148
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/bb$a;->k:Z

    .line 149
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb$b;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->e:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lcom/amap/api/mapcore2d/bb$b;->a(Landroid/graphics/PointF;)Z

    move-result p1

    or-int/2addr p3, p1

    .line 150
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->f:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/amap/api/mapcore2d/bb$a;->r:F

    .line 151
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->f:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/amap/api/mapcore2d/bb$a;->s:F

    goto/16 :goto_0

    .line 162
    :pswitch_2
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->n:I

    sub-int/2addr p2, v3

    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->n:I

    .line 163
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->n:I

    if-ne p2, v3, :cond_1

    .line 164
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/bb$a;->m:Z

    .line 165
    iput v2, p0, Lcom/amap/api/mapcore2d/bb$a;->b:I

    .line 170
    :cond_1
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->n:I

    if-nez p2, :cond_4

    .line 171
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/bb$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 172
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bb$a;->l:Z

    .line 173
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bb$a;->m:Z

    .line 174
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/bb$a;->k:Z

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb$b;

    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->i:F

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->f:Landroid/graphics/PointF;

    invoke-interface {p1, p2, v0}, Lcom/amap/api/mapcore2d/bb$b;->b(FLandroid/graphics/PointF;)Z

    move-result p1

    or-int/2addr p1, p3

    .line 181
    iput p3, p0, Lcom/amap/api/mapcore2d/bb$a;->b:I

    move p3, p1

    goto/16 :goto_0

    .line 186
    :pswitch_3
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->b:I

    if-ne p2, v3, :cond_3

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 192
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bb$a;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bb$a;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 194
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb$b;

    iget v2, p0, Lcom/amap/api/mapcore2d/bb$a;->p:F

    sub-float v2, p2, v2

    iget v4, p0, Lcom/amap/api/mapcore2d/bb$a;->q:F

    sub-float v4, v0, v4

    invoke-interface {v1, v2, v4}, Lcom/amap/api/mapcore2d/bb$b;->a(FF)Z

    move-result v1

    or-int/2addr p3, v1

    .line 196
    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->p:F

    .line 197
    iput v0, p0, Lcom/amap/api/mapcore2d/bb$a;->q:F

    .line 198
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb$b;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/graphics/Matrix;

    invoke-interface {p2, v0}, Lcom/amap/api/mapcore2d/bb$b;->a(Landroid/graphics/Matrix;)Z

    move-result p2

    or-int/2addr p2, p3

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/bb$a;->t:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1e

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    const/4 p3, 0x1

    goto/16 :goto_0

    :cond_2
    move p3, p2

    goto/16 :goto_0

    .line 204
    :cond_3
    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->b:I

    if-ne p2, v2, :cond_4

    .line 205
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb$a;->b(Landroid/view/MotionEvent;)F

    move-result p2

    .line 206
    iput v1, p0, Lcom/amap/api/mapcore2d/bb$a;->i:F

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 208
    iget v0, p0, Lcom/amap/api/mapcore2d/bb$a;->h:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/bb$a;->w:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xa

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    .line 210
    iput-wide v4, p0, Lcom/amap/api/mapcore2d/bb$a;->w:J

    .line 211
    iget v0, p0, Lcom/amap/api/mapcore2d/bb$a;->h:F

    div-float v0, p2, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/bb$a;->i:F

    .line 212
    sput v1, Lcom/amap/api/mapcore2d/bb$a;->j:F

    .line 213
    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->h:F

    .line 214
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->g:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/bb$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 215
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb$b;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->g:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/amap/api/mapcore2d/bb$a;->r:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->g:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/amap/api/mapcore2d/bb$a;->s:F

    sub-float/2addr v0, v1

    invoke-interface {p1, p2, v0}, Lcom/amap/api/mapcore2d/bb$b;->a(FF)Z

    move-result p1

    or-int/2addr p1, p3

    .line 218
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->g:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->r:F

    .line 219
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->g:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->s:F

    .line 220
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb$b;

    iget p3, p0, Lcom/amap/api/mapcore2d/bb$a;->i:F

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->f:Landroid/graphics/PointF;

    invoke-interface {p2, p3, v0}, Lcom/amap/api/mapcore2d/bb$b;->a(FLandroid/graphics/PointF;)Z

    move-result p2

    or-int p3, p1, p2

    .line 221
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/bb$a;->l:Z

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/mapcore2d/bb$a;->o:J

    .line 157
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bb$a;->k:Z

    .line 158
    iput p3, p0, Lcom/amap/api/mapcore2d/bb$a;->b:I

    goto :goto_0

    .line 128
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bb$a;->t:J

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bb$a;->p:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/bb$a;->q:F

    .line 131
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 132
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->e:Landroid/graphics/PointF;

    iget p2, p0, Lcom/amap/api/mapcore2d/bb$a;->p:F

    iget v0, p0, Lcom/amap/api/mapcore2d/bb$a;->q:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 133
    iput v3, p0, Lcom/amap/api/mapcore2d/bb$a;->b:I

    :cond_4
    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
