.class public Lcom/amap/api/mapcore2d/az$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:I

.field final synthetic c:Lcom/amap/api/mapcore2d/az;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/az;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/az$b;->a:Z

    .line 287
    iput p1, p0, Lcom/amap/api/mapcore2d/az$b;->b:I

    .line 254
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/az$b;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az$a;->a(Lcom/amap/api/mapcore2d/az$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$a;->b()V

    .line 294
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/az$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/az$b;->b:I

    .line 295
    iget v0, p0, Lcom/amap/api/mapcore2d/az$b;->b:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/amap/api/mapcore2d/az$b;->b:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_2

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 301
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 306
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/an;

    .line 307
    iget-object v2, v2, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 308
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bv;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/az$c;->a:Z

    .line 326
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 327
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 332
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/an;

    .line 333
    iget-object v2, v2, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 334
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bv;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 360
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 367
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/an;

    .line 368
    iget-object v2, v2, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 369
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bv;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 391
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 396
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/an;

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, v2, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bv;->c()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public e()V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 419
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 424
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$b;->c:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/an;

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, v2, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bv;->h()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method
