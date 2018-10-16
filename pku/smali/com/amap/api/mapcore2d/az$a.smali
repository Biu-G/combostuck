.class public Lcom/amap/api/mapcore2d/az$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/amap/api/mapcore2d/bn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bn<",
            "Lcom/amap/api/mapcore2d/an;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field final synthetic k:Lcom/amap/api/mapcore2d/az;

.field private l:Z

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/az;Landroid/content/Context;)V
    .locals 4

    .line 657
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/az$a;->l:Z

    const/4 v1, 0x1

    .line 643
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/az$a;->m:Z

    const/4 v2, 0x0

    .line 647
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 652
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/az$a;->b:Z

    .line 653
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    const-string v2, "zh_cn"

    .line 654
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->d:Ljava/lang/String;

    .line 774
    iput v0, p0, Lcom/amap/api/mapcore2d/az$a;->e:I

    .line 775
    iput v0, p0, Lcom/amap/api/mapcore2d/az$a;->f:I

    const-string v2, "SatelliteMap3"

    .line 777
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->h:Ljava/lang/String;

    const-string v2, "GridTmc3"

    .line 778
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->i:Ljava/lang/String;

    const-string v2, "SateliteTmc3"

    .line 779
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->j:Ljava/lang/String;

    .line 1191
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/az$a;->o:Z

    if-nez p2, :cond_0

    return-void

    .line 661
    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->n:Landroid/content/Context;

    .line 662
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 664
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 665
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 667
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget v3, v3, Lcom/amap/api/mapcore2d/av;->a:I

    div-int/2addr v2, v3

    .line 668
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az$a;->c()I

    move-result v3

    add-int/2addr v2, v3

    .line 669
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget p1, p1, Lcom/amap/api/mapcore2d/av;->a:I

    div-int/2addr v0, p1

    .line 670
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az$a;->c()I

    move-result p1

    add-int/2addr v0, p1

    mul-int p1, v2, v0

    add-int/2addr p1, v2

    add-int/2addr p1, v0

    .line 671
    iput p1, p0, Lcom/amap/api/mapcore2d/az$a;->e:I

    .line 673
    iget p1, p0, Lcom/amap/api/mapcore2d/az$a;->e:I

    div-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amap/api/mapcore2d/az$a;->f:I

    .line 674
    iget p1, p0, Lcom/amap/api/mapcore2d/az$a;->f:I

    if-nez p1, :cond_1

    .line 675
    iput v1, p0, Lcom/amap/api/mapcore2d/az$a;->f:I

    goto :goto_0

    .line 676
    :cond_1
    iget p1, p0, Lcom/amap/api/mapcore2d/az$a;->f:I

    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    .line 677
    iput v0, p0, Lcom/amap/api/mapcore2d/az$a;->f:I

    :cond_2
    :goto_0
    const-string p1, "zh_cn"

    .line 680
    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/az$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/az;Landroid/content/Context;Lcom/amap/api/mapcore2d/az$1;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/az$a;-><init>(Lcom/amap/api/mapcore2d/az;Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lcom/amap/api/mapcore2d/bn;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bn;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 790
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    const-string v1, ""

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 798
    :cond_1
    sget-object p2, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "zh_cn"

    .line 792
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "GridMapV3"

    .line 793
    iput-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "en"

    .line 794
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "GridMapEnV3"

    .line 795
    iput-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    .line 809
    :cond_4
    :goto_1
    new-instance p2, Lcom/amap/api/mapcore2d/an;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    invoke-direct {p2, v0}, Lcom/amap/api/mapcore2d/an;-><init>(Lcom/amap/api/mapcore2d/av;)V

    .line 812
    new-instance v0, Lcom/amap/api/mapcore2d/az$a$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/az$a$2;-><init>(Lcom/amap/api/mapcore2d/az$a;)V

    iput-object v0, p2, Lcom/amap/api/mapcore2d/an;->j:Lcom/amap/api/mapcore2d/cb;

    .line 836
    sget-object v0, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 839
    iput-boolean v0, p2, Lcom/amap/api/mapcore2d/an;->h:Z

    goto :goto_3

    .line 837
    :cond_6
    :goto_2
    iput-boolean v1, p2, Lcom/amap/api/mapcore2d/an;->h:Z

    .line 841
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    iput-object v0, p2, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    .line 843
    iput-boolean v1, p2, Lcom/amap/api/mapcore2d/an;->e:Z

    .line 846
    iput-boolean v1, p2, Lcom/amap/api/mapcore2d/an;->f:Z

    .line 848
    sget v0, Lcom/amap/api/mapcore2d/q;->c:I

    iput v0, p2, Lcom/amap/api/mapcore2d/an;->c:I

    .line 849
    sget v0, Lcom/amap/api/mapcore2d/q;->d:I

    iput v0, p2, Lcom/amap/api/mapcore2d/an;->d:I

    .line 850
    new-instance v0, Lcom/amap/api/mapcore2d/bv;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-direct {v0, v2, p2}, Lcom/amap/api/mapcore2d/bv;-><init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)V

    .line 852
    iput-object v0, p2, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 853
    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    .line 855
    invoke-virtual {p0, p2, p1}, Lcom/amap/api/mapcore2d/az$a;->a(Lcom/amap/api/mapcore2d/an;Landroid/content/Context;)Z

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1332
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1335
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/an;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1339
    :cond_0
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/an;->a()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1342
    :cond_1
    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore2d/an;->a(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az$a;)Z
    .locals 0

    .line 641
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/az$a;->o:Z

    return p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1353
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/az$a;->m:Z

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/v;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 962
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 968
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v4, v3}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/an;

    if-nez v4, :cond_1

    goto :goto_1

    .line 973
    :cond_1
    iget-object v5, v4, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lcom/amap/api/mapcore2d/an;->e:Z

    if-ne v5, v1, :cond_2

    .line 975
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/an;->a()Z

    move-result v5

    if-ne v5, v1, :cond_2

    .line 977
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d()V
    .locals 3

    .line 1090
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/an;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1096
    :cond_0
    iput v1, v2, Lcom/amap/api/mapcore2d/an;->l:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    .line 989
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 995
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/an;

    if-nez v3, :cond_1

    goto :goto_1

    .line 999
    :cond_1
    iget-object v3, v3, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-nez v0, :cond_0

    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/an;

    if-eqz v1, :cond_1

    .line 1134
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/an;->b()V

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->clear()V

    .line 1138
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V
    .locals 1

    .line 1287
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/az$a;->l:Z

    if-eqz v0, :cond_2

    .line 1289
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1290
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1291
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1292
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/az$a;->a(Landroid/graphics/Canvas;)V

    .line 1293
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bu;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1294
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/az$a;->b(Landroid/graphics/Canvas;)V

    .line 1296
    :cond_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/bu;->a(Landroid/graphics/Canvas;)V

    .line 1297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1298
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bu;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1299
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/az$a;->b(Landroid/graphics/Canvas;)V

    .line 1302
    :cond_1
    iget-boolean p2, p0, Lcom/amap/api/mapcore2d/az$a;->b:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 1303
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore2d/az$a;->a(Z)V

    .line 1304
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object p2

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z

    .line 1305
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore2d/b;->c(F)Z

    .line 1306
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/b;->p()V

    goto :goto_0

    .line 1310
    :cond_2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/az$a;->a(Landroid/graphics/Canvas;)V

    .line 1311
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/bu;->a(Landroid/graphics/Canvas;)V

    .line 1312
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/az$a;->b(Landroid/graphics/Canvas;)V

    .line 1314
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/az$a;->c(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Mediator"

    const-string p3, "draw"

    .line 1317
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_a

    const-string v0, ""

    .line 695
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "zh_cn"

    .line 703
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "en"

    .line 704
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 712
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    const-string v1, ""

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 720
    :cond_3
    sget-object v0, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "zh_cn"

    .line 714
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GridMapV3"

    .line 715
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v0, "en"

    .line 716
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GridMapEnV3"

    .line 717
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    .line 723
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/az$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/an;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/an;

    .line 724
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 725
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    new-instance v2, Lcom/amap/api/mapcore2d/an;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    invoke-direct {v2, v3}, Lcom/amap/api/mapcore2d/an;-><init>(Lcom/amap/api/mapcore2d/av;)V

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/an;

    .line 726
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore2d/bv;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amap/api/mapcore2d/bv;-><init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)V

    iput-object v2, v0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 727
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore2d/az$a$1;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/az$a$1;-><init>(Lcom/amap/api/mapcore2d/az$a;)V

    iput-object v2, v0, Lcom/amap/api/mapcore2d/an;->j:Lcom/amap/api/mapcore2d/cb;

    .line 750
    sget-object v0, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    const-string v2, ""

    .line 751
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/an;->h:Z

    goto :goto_3

    .line 752
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/an;->h:Z

    .line 757
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/an;->e:Z

    .line 761
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    .line 762
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/an;->f:Z

    .line 764
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    sget v2, Lcom/amap/api/mapcore2d/q;->c:I

    iput v2, v0, Lcom/amap/api/mapcore2d/an;->c:I

    .line 765
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    sget v2, Lcom/amap/api/mapcore2d/q;->d:I

    iput v2, v0, Lcom/amap/api/mapcore2d/an;->d:I

    .line 767
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az$a;->n:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore2d/az$a;->a(Lcom/amap/api/mapcore2d/an;Landroid/content/Context;)Z

    .line 769
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 771
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$a;->d:Ljava/lang/String;

    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1252
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/az$a;->l:Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method a(Lcom/amap/api/mapcore2d/an;Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1012
    :cond_0
    iget-object v1, p1, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 1016
    :cond_1
    iget-object v1, p1, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/az$a;->d(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    return v0

    .line 1021
    :cond_2
    new-instance v1, Lcom/amap/api/mapcore2d/bn;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/bn;-><init>()V

    iput-object v1, p1, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    .line 1023
    new-instance v1, Lcom/amap/api/mapcore2d/ba;

    iget v4, p0, Lcom/amap/api/mapcore2d/az$a;->e:I

    iget v5, p0, Lcom/amap/api/mapcore2d/az$a;->f:I

    iget-boolean v6, p1, Lcom/amap/api/mapcore2d/an;->g:Z

    iget-wide v7, p1, Lcom/amap/api/mapcore2d/an;->i:J

    move-object v3, v1

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/mapcore2d/ba;-><init>(IIZJLcom/amap/api/mapcore2d/an;)V

    iput-object v1, p1, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    .line 1027
    new-instance v1, Lcom/amap/api/mapcore2d/u;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 1028
    invoke-static {v3}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object v3

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/b;->d:Z

    invoke-direct {v1, p2, v3, p1}, Lcom/amap/api/mapcore2d/u;-><init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/an;)V

    iput-object v1, p1, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    .line 1030
    iget-object p2, p1, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    .line 1031
    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/mapcore2d/ba;)V

    .line 1034
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result p2

    .line 1036
    iget-boolean v1, p1, Lcom/amap/api/mapcore2d/an;->e:Z

    if-eqz v1, :cond_6

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr p2, v2

    :goto_0
    if-ltz p2, :cond_7

    .line 1045
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v1, p2}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/an;

    if-nez v1, :cond_4

    goto :goto_1

    .line 1050
    :cond_4
    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/an;->e:Z

    if-ne v1, v2, :cond_5

    .line 1051
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v1, p2, p1}, Lcom/amap/api/mapcore2d/bn;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 1038
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/bn;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1057
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az$a;->d()V

    .line 1058
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/an;->a()Z

    move-result p2

    if-ne p2, v2, :cond_8

    .line 1059
    iget-object p1, p1, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    :cond_8
    return v0
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 6

    const-string v0, ""

    .line 860
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 867
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/an;

    if-nez v3, :cond_1

    goto :goto_1

    .line 872
    :cond_1
    iget-object v4, v3, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 873
    invoke-virtual {v3, p2}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    .line 875
    iget-boolean v4, v3, Lcom/amap/api/mapcore2d/an;->e:Z

    if-nez v4, :cond_2

    return v5

    :cond_2
    if-ne p2, v5, :cond_4

    .line 884
    iget p2, v3, Lcom/amap/api/mapcore2d/an;->c:I

    iget v0, v3, Lcom/amap/api/mapcore2d/an;->d:I

    if-le p2, v0, :cond_3

    .line 885
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    iget v0, v3, Lcom/amap/api/mapcore2d/an;->c:I

    .line 886
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/az$c;->a(I)V

    .line 887
    iget-object p2, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    iget v0, v3, Lcom/amap/api/mapcore2d/an;->d:I

    .line 888
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/az$c;->b(I)V

    .line 890
    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/az$a;->c(Ljava/lang/String;)V

    .line 891
    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return v5

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/an;
    .locals 6

    const-string v0, ""

    .line 1101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    .line 1102
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bn;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1108
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az$a;->a:Lcom/amap/api/mapcore2d/bn;

    invoke-virtual {v4, v3}, Lcom/amap/api/mapcore2d/bn;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/an;

    if-nez v4, :cond_1

    goto :goto_1

    .line 1112
    :cond_1
    iget-object v5, v4, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public b()V
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$a;->k:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/az$c;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1322
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/az$a;->m:Z

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
