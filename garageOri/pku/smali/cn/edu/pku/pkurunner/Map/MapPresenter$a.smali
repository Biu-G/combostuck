.class Lcn/edu/pku/pkurunner/Map/MapPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/MapPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Lcn/edu/pku/pkurunner/Model/Point;

.field d:J

.field final synthetic e:Lcn/edu/pku/pkurunner/Map/MapPresenter;


# direct methods
.method private constructor <init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 600
    iput p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;Lcn/edu/pku/pkurunner/Map/MapPresenter$1;)V
    .locals 0

    .line 598
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;-><init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 606
    iput v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    return-void
.end method

.method a(Lcn/edu/pku/pkurunner/Model/Point;FJ)Z
    .locals 3

    const/high16 v0, 0x42340000    # 45.0f

    cmpl-float p2, p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    .line 621
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    iget p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    return v0

    .line 626
    :cond_0
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    if-nez p2, :cond_1

    .line 627
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    .line 628
    iput-wide p3, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->d:J

    return v1

    .line 632
    :cond_1
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p2

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/amap/api/maps2d/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)F

    move-result p2

    iget v2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1a

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_2

    .line 633
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    return v0

    .line 638
    :cond_2
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    .line 639
    iput-wide p3, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->d:J

    return v1
.end method

.method b()V
    .locals 1

    .line 644
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method b(Lcn/edu/pku/pkurunner/Model/Point;FJ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, p2, v4

    const/4 v5, -0x1

    const v6, 0x7f0f00e2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v4, :cond_0

    .line 656
    iget-object v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr v1, v8

    iput v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    .line 658
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v1, v7}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;Z)Z

    .line 659
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Lcn/edu/pku/pkurunner/Map/MapContract$View;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v1, v6, v5, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    return-void

    .line 662
    :cond_0
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    if-nez v4, :cond_1

    .line 663
    iput-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    .line 664
    iput-wide v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->d:J

    .line 665
    iget-object v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v2}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v1, v8}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;Z)Z

    return-void

    .line 669
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    iget-object v9, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v9}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/amap/api/maps2d/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)F

    move-result v4

    .line 670
    iget v9, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr v9, v8

    mul-int/lit8 v9, v9, 0x1a

    int-to-float v9, v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_2

    .line 671
    iget-object v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr v1, v8

    iput v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    .line 673
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v1, v7}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;Z)Z

    .line 674
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Lcn/edu/pku/pkurunner/Map/MapContract$View;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v1, v6, v5, v2}, Lcn/edu/pku/pkurunner/Map/MapContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    return-void

    .line 678
    :cond_2
    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v5, v8}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;Z)Z

    .line 679
    iget v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    const-wide v9, 0x408f400000000000L    # 1000.0

    if-nez v5, :cond_3

    .line 681
    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v5}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    iget-object v6, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v6}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c(Lcn/edu/pku/pkurunner/Map/MapPresenter;)D

    move-result-wide v6

    float-to-double v11, v4

    add-double/2addr v6, v11

    invoke-static {v5, v6, v7}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;D)D

    .line 683
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v5}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d(Lcn/edu/pku/pkurunner/Map/MapPresenter;)D

    move-result-wide v5

    iget-wide v7, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->d:J

    sub-long v7, v2, v7

    long-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;D)D

    goto/16 :goto_3

    .line 686
    :cond_3
    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    if-eq v5, v6, :cond_4

    .line 688
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v4}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v5}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/edu/pku/pkurunner/Model/Point;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V

    .line 689
    invoke-virtual {v1, v8}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V

    .line 690
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v4}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 693
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v5

    iget-object v11, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v11}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v11

    sub-double/2addr v5, v11

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v11

    iget-object v13, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v13}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v13

    sub-double/2addr v11, v13

    .line 695
    iget v13, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr v13, v8

    int-to-double v13, v13

    div-double/2addr v5, v13

    .line 696
    iget v13, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    add-int/2addr v13, v8

    int-to-double v13, v13

    div-double/2addr v11, v13

    .line 697
    :goto_1
    iget v13, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    if-gt v8, v13, :cond_5

    .line 698
    iget-object v13, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v13}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v14, Lcn/edu/pku/pkurunner/Model/Point;

    new-instance v15, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v7, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v7}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v16

    int-to-double v9, v8

    mul-double v18, v5, v9

    move-wide/from16 v20, v5

    add-double v5, v16, v18

    iget-object v7, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v7}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v16

    mul-double v9, v9, v11

    add-double v9, v16, v9

    invoke-direct {v15, v5, v6, v9, v10}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v14, v15}, Lcn/edu/pku/pkurunner/Model/Point;-><init>(Lcom/amap/api/maps2d/model/LatLng;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v5, v20

    const/4 v7, 0x0

    const-wide v9, 0x408f400000000000L    # 1000.0

    goto :goto_1

    .line 699
    :cond_5
    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v5}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    iget-object v6, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v6}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->c(Lcn/edu/pku/pkurunner/Map/MapPresenter;)D

    move-result-wide v6

    float-to-double v8, v4

    add-double/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->a(Lcn/edu/pku/pkurunner/Map/MapPresenter;D)D

    .line 701
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    iget-object v5, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->e:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v5}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->d(Lcn/edu/pku/pkurunner/Map/MapPresenter;)D

    move-result-wide v5

    iget-wide v7, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->d:J

    sub-long v7, v2, v7

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->b(Lcn/edu/pku/pkurunner/Map/MapPresenter;D)D

    goto/16 :goto_0

    .line 703
    :goto_2
    iput v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->b:I

    .line 704
    iget-object v4, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 706
    :goto_3
    iput-object v1, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->c:Lcn/edu/pku/pkurunner/Model/Point;

    .line 707
    iput-wide v2, v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$a;->d:J

    return-void
.end method
