.class public Lcom/amap/api/mapcore2d/az$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/amap/api/mapcore2d/az;

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 1449
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1447
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/az$c;->a:Z

    .line 1450
    iput-object p2, p0, Lcom/amap/api/mapcore2d/az$c;->c:Lcom/amap/api/mapcore2d/b;

    .line 1451
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$c;->d:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/az$1;)V
    .locals 0

    .line 1444
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/az$c;-><init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;
    .locals 0

    .line 1444
    iget-object p0, p0, Lcom/amap/api/mapcore2d/az$c;->c:Lcom/amap/api/mapcore2d/b;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 3

    const-string v0, "getMaxZoomLevel"

    .line 1684
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v1, v1, Lcom/amap/api/mapcore2d/av;->i:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "Mediator"

    .line 1686
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(F)V
    .locals 12

    .line 1478
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v0, v0, Lcom/amap/api/mapcore2d/av;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput p1, v0, Lcom/amap/api/mapcore2d/av;->j:F

    float-to-int v0, p1

    .line 1482
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-wide v1, v1, Lcom/amap/api/mapcore2d/av;->d:D

    const/4 v3, 0x1

    shl-int v4, v3, v0

    int-to-double v4, v4

    div-double/2addr v1, v4

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v4, v0

    .line 1484
    sget-wide v6, Lcom/amap/api/mapcore2d/az;->a:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v6, v6, Lcom/amap/api/mapcore2d/av;->b:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double v4, v4, v10

    add-double/2addr v4, v8

    mul-double v6, v6, v4

    double-to-int v4, v6

    iput v4, v0, Lcom/amap/api/mapcore2d/av;->a:I

    .line 1487
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v0, v0, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-double v4, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v0, v0, Lcom/amap/api/mapcore2d/av;->b:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    div-double/2addr v1, v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    const v0, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    sub-float v4, v0, v4

    .line 1494
    iget-object v5, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v6, v6, Lcom/amap/api/mapcore2d/av;->b:I

    int-to-float v6, v6

    div-float/2addr v0, v4

    div-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v5, Lcom/amap/api/mapcore2d/av;->a:I

    .line 1495
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v0, v0, Lcom/amap/api/mapcore2d/av;->a:I

    int-to-double v4, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v0, v0, Lcom/amap/api/mapcore2d/av;->b:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v6

    div-double/2addr v1, v4

    .line 1501
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput-wide v1, v0, Lcom/amap/api/mapcore2d/av;->k:D

    .line 1502
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput p1, v0, v3

    .line 1503
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ce;->a(F)V

    :cond_1
    const/4 p1, 0x0

    .line 1507
    invoke-virtual {p0, p1, p1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void
.end method

.method public a(I)V
    .locals 2

    const-string v0, "setMaxZoomLevel"

    if-gtz p1, :cond_0

    return-void

    .line 1697
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput p1, v1, Lcom/amap/api/mapcore2d/av;->i:I

    .line 1698
    invoke-static {p1}, Lcom/amap/api/mapcore2d/q;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Mediator"

    .line 1700
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 1638
    sget v0, Lcom/amap/api/mapcore2d/q;->n:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/amap/api/mapcore2d/q;->o:I

    if-eq p2, v0, :cond_1

    .line 1640
    :cond_0
    sput p1, Lcom/amap/api/mapcore2d/q;->n:I

    .line 1641
    sput p2, Lcom/amap/api/mapcore2d/q;->o:I

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1642
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/cc;)V
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/w;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1658
    :cond_0
    sget-boolean v0, Lcom/amap/api/mapcore2d/q;->s:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1660
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 1661
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    .line 1662
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput-object p1, v0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    :cond_1
    const/4 p1, 0x0

    .line 1664
    invoke-virtual {p0, p1, p1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 1779
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/cc;

    .line 1780
    invoke-interface {v1, p1, p2}, Lcom/amap/api/mapcore2d/cc;->a(ZZ)V

    goto :goto_0

    .line 1782
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    if-eqz p1, :cond_1

    .line 1783
    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/bu;->a(Z)V

    .line 1784
    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 3

    const-string v0, "getMinZoomLevel"

    .line 1707
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v1, v1, Lcom/amap/api/mapcore2d/av;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "Mediator"

    .line 1709
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 2

    const-string v0, "setMinZoomLevel"

    if-gtz p1, :cond_0

    return-void

    .line 1720
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput p1, v1, Lcom/amap/api/mapcore2d/av;->h:I

    .line 1721
    invoke-static {p1}, Lcom/amap/api/mapcore2d/q;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Mediator"

    .line 1723
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/cc;)V
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/w;)V
    .locals 2

    .line 1669
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->f()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1670
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1672
    sget-boolean v0, Lcom/amap/api/mapcore2d/q;->s:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 1674
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    .line 1675
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput-object p1, v0, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    :cond_0
    const/4 p1, 0x0

    .line 1677
    invoke-virtual {p0, p1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 1728
    sget v0, Lcom/amap/api/mapcore2d/q;->n:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1732
    sget v0, Lcom/amap/api/mapcore2d/q;->o:I

    return v0
.end method

.method public e()F
    .locals 3

    const-string v0, "getZoomLevel"

    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v1, v1, Lcom/amap/api/mapcore2d/av;->j:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "Mediator"

    .line 1740
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/amap/api/mapcore2d/w;
    .locals 2

    .line 1746
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    .line 1747
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 1748
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/az$b;->a:Z

    if-eqz v1, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->b:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/av;->m:Lcom/amap/api/mapcore2d/w;

    :cond_0
    return-object v0
.end method

.method public g()Lcom/amap/api/mapcore2d/b;
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$c;->c:Lcom/amap/api/mapcore2d/b;

    return-object v0
.end method
