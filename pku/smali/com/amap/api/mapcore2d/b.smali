.class Lcom/amap/api/mapcore2d/b;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/amap/api/mapcore2d/bb$b;
.implements Lcom/amap/api/mapcore2d/bm$a;
.implements Lcom/amap/api/mapcore2d/l$a;
.implements Lcom/amap/api/mapcore2d/n$a;
.implements Lcom/amap/api/mapcore2d/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/b$b;,
        Lcom/amap/api/mapcore2d/b$a;
    }
.end annotation


# static fields
.field private static aH:I

.field private static aI:Landroid/graphics/Paint;

.field private static aJ:Landroid/graphics/Bitmap;


# instance fields
.field private A:Lcom/amap/api/mapcore2d/d;

.field private B:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

.field private C:Z

.field private D:Lcom/amap/api/mapcore2d/bc;

.field private E:Lcom/amap/api/mapcore2d/cd;

.field private F:Lcom/amap/api/mapcore2d/bk;

.field private G:Lcom/amap/api/maps2d/LocationSource;

.field private H:Lcom/amap/api/mapcore2d/p;

.field private I:Lcom/amap/api/mapcore2d/a;

.field private J:Z

.field private K:Z

.field private L:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

.field private M:Lcom/amap/api/mapcore2d/k;

.field private N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

.field private O:Lcom/amap/api/mapcore2d/av;

.field private P:Z

.field private Q:Z

.field private R:Landroid/view/View;

.field private S:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

.field private T:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

.field private U:Lcom/amap/api/mapcore2d/ay;

.field private V:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

.field private W:Landroid/graphics/drawable/Drawable;

.field private Z:Lcom/amap/api/mapcore2d/ah;

.field a:Lcom/amap/api/mapcore2d/az;

.field private aA:F

.field private aB:F

.field private aC:I

.field private aD:I

.field private aE:J

.field private aF:I

.field private aG:I

.field private aK:I

.field private aL:Z

.field private aM:Lcom/amap/api/mapcore2d/b$a;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

.field private ae:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

.field private af:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

.field private ag:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

.field private ah:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

.field private ai:Z

.field private aj:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

.field private ak:Ljava/util/Timer;

.field private al:Ljava/lang/Thread;

.field private am:Ljava/util/TimerTask;

.field private an:Landroid/os/Handler;

.field private ao:Landroid/os/Handler;

.field private ap:Landroid/graphics/Point;

.field private aq:Landroid/view/GestureDetector;

.field private ar:Lcom/amap/api/mapcore2d/bb$a;

.field private as:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/GestureDetector$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private at:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bb$b;",
            ">;"
        }
    .end annotation
.end field

.field private au:Landroid/widget/Scroller;

.field private av:I

.field private aw:I

.field private ax:Landroid/graphics/Matrix;

.field private ay:F

.field private az:Z

.field public b:Lcom/amap/api/mapcore2d/aq;

.field c:[F

.field d:Z

.field e:Lcom/amap/api/mapcore2d/as;

.field f:Lcom/amap/api/mapcore2d/ce;

.field public g:Lcom/amap/api/mapcore2d/au;

.field protected h:Lcom/amap/api/mapcore2d/al;

.field public i:Lcom/amap/api/mapcore2d/bu;

.field public j:Lcom/amap/api/mapcore2d/at;

.field final k:Landroid/os/Handler;

.field l:I

.field m:F

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Z

.field private q:Lcom/amap/api/maps2d/model/Marker;

.field private r:Lcom/amap/api/mapcore2d/ab;

.field private final s:[I

.field private t:Z

.field private u:I

.field private v:Lcom/amap/api/maps2d/CameraUpdate;

.field private w:J

.field private x:Lcom/amap/api/maps2d/AMap$CancelableCallback;

.field private y:Lcom/amap/api/mapcore2d/ap;

.field private z:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    .line 2046
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore2d/b;->aH:I

    const/4 v0, 0x0

    .line 2047
    sput-object v0, Lcom/amap/api/mapcore2d/b;->aI:Landroid/graphics/Paint;

    .line 2048
    sput-object v0, Lcom/amap/api/mapcore2d/b;->aJ:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1429
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->p:Z

    const/16 v2, 0x15

    .line 104
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->s:[I

    .line 107
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->t:Z

    .line 108
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->u:I

    const/4 v2, 0x2

    .line 109
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    .line 119
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->d:Z

    .line 124
    new-instance v2, Lcom/amap/api/mapcore2d/as;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/as;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/as;

    .line 131
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->C:Z

    const/4 v2, 0x0

    .line 140
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/a;

    .line 141
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->J:Z

    .line 142
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    .line 158
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 160
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->P:Z

    .line 161
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Z

    .line 167
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->W:Landroid/graphics/drawable/Drawable;

    .line 169
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aa:Z

    .line 170
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ab:Z

    .line 171
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    .line 177
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Z

    .line 178
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->aj:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    .line 182
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ak:Ljava/util/Timer;

    .line 184
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->al:Ljava/lang/Thread;

    .line 186
    new-instance v3, Lcom/amap/api/mapcore2d/b$1;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/b$1;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/TimerTask;

    .line 196
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->an:Landroid/os/Handler;

    .line 198
    new-instance v3, Lcom/amap/api/mapcore2d/b$2;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/b$2;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/os/Handler;

    .line 214
    new-instance v3, Lcom/amap/api/mapcore2d/b$3;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/b$3;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    .line 613
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->l:I

    .line 2013
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->as:Ljava/util/ArrayList;

    .line 2014
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->at:Ljava/util/ArrayList;

    .line 2016
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->av:I

    .line 2017
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    .line 2018
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ax:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2019
    iput v3, p0, Lcom/amap/api/mapcore2d/b;->ay:F

    .line 2020
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->az:Z

    const-wide/16 v3, 0x0

    .line 2025
    iput-wide v3, p0, Lcom/amap/api/mapcore2d/b;->aE:J

    .line 2026
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aF:I

    .line 2027
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2498
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aK:I

    .line 2500
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aL:Z

    .line 2724
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->aM:Lcom/amap/api/mapcore2d/b$a;

    const/high16 v0, -0x40800000    # -1.0f

    .line 2825
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->m:F

    .line 1430
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->x()V

    .line 1431
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->setClickable(Z)V

    .line 1432
    invoke-direct {p0, p1, v2}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method

.method private A()V
    .locals 4

    .line 1836
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1837
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->P:Z

    .line 1838
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1839
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    .line 1841
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 1842
    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/m;->isChangeFinished:Z

    .line 1843
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/m;)V

    .line 1845
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->Q:Z

    if-eqz v0, :cond_2

    .line 1846
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->Q:Z

    .line 1848
    invoke-static {}, Lcom/amap/api/mapcore2d/m;->a()Lcom/amap/api/mapcore2d/m;

    move-result-object v0

    .line 1849
    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/m;->isChangeFinished:Z

    .line 1850
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/m;)V

    .line 1852
    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->ab:Z

    .line 1853
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_4

    .line 1854
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    .line 1855
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps2d/model/Marker;)V

    :cond_3
    const/4 v0, 0x0

    .line 1856
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/maps2d/model/Marker;

    .line 1857
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    :cond_4
    return-void
.end method

.method private B()V
    .locals 4

    .line 2152
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    if-nez v0, :cond_0

    return-void

    .line 2155
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->aF:I

    sub-int/2addr v0, v1

    .line 2156
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    sub-int/2addr v1, v2

    .line 2157
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aF:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 2158
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 2159
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/aq;->d(II)V

    return-void
.end method

.method private C()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 7

    .line 2195
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->h()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2199
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    .line 2200
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v3

    .line 2201
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 2202
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    move-result v1

    .line 2203
    invoke-static {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition;->fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method private D()V
    .locals 11

    .line 2828
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_0

    return-void

    .line 2831
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    .line 2832
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 2833
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v1

    .line 2834
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x32

    const/16 v4, 0x78

    const/16 v5, 0x64

    if-gt v2, v4, :cond_2

    :cond_1
    const/16 v3, 0x64

    goto :goto_0

    :cond_2
    const/16 v6, 0xa0

    const/16 v7, 0x1e0

    if-gt v2, v6, :cond_3

    .line 2838
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, v7, :cond_1

    const/16 v3, 0x78

    goto :goto_0

    :cond_3
    const/16 v4, 0xf0

    if-gt v2, v4, :cond_5

    .line 2844
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_4

    const/16 v3, 0x3c

    goto :goto_0

    :cond_4
    const/16 v3, 0x46

    goto :goto_0

    :cond_5
    const/16 v0, 0x140

    if-gt v2, v0, :cond_6

    goto :goto_0

    :cond_6
    if-gt v2, v7, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x28

    :goto_0
    int-to-float v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 2856
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->m:F

    .line 2860
    :cond_8
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->E()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2864
    :cond_9
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    move-result v1

    .line 2866
    iget v2, p0, Lcom/amap/api/mapcore2d/b;->m:F

    .line 2867
    iget-wide v3, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v5

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v7

    mul-double v3, v3, v5

    const-wide v5, 0x415854a640000000L    # 6378137.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    float-to-double v9, v1

    .line 2868
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v5

    div-double/2addr v3, v7

    double-to-float v0, v3

    float-to-double v3, v0

    .line 2869
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->s:[I

    float-to-int v1, v1

    aget v0, v0, v1

    int-to-double v5, v0

    float-to-double v7, v2

    mul-double v3, v3, v7

    div-double/2addr v5, v3

    double-to-int v0, v5

    .line 2870
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->s:[I

    aget v1, v2, v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cm;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 2872
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bk;->a(I)V

    .line 2873
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bk;->a(Ljava/lang/String;)V

    .line 2874
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->invalidate()V

    return-void
.end method

.method private E()Lcom/amap/api/maps2d/model/LatLng;
    .locals 5

    .line 2989
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->h()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2993
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v1

    .line 2994
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v3

    .line 2995
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private F()Lcom/amap/api/mapcore2d/ae;
    .locals 4

    .line 3000
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->h()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3004
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 3005
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/amap/api/mapcore2d/ae;->a:I

    .line 3006
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/amap/api/mapcore2d/ae;->b:I

    return-object v1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->aj:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    return-object p0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 7

    .line 2299
    new-instance v6, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 2300
    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ae;)V

    .line 2301
    iget p1, v6, Lcom/amap/api/mapcore2d/ae;->b:I

    add-int/lit8 p1, p1, -0x3c

    iput p1, v6, Lcom/amap/api/mapcore2d/ae;->b:I

    .line 2302
    new-instance p1, Lcom/amap/api/mapcore2d/s;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/s;-><init>()V

    .line 2303
    iget v0, v6, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v1, v6, Lcom/amap/api/mapcore2d/ae;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/s;)V

    .line 2304
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, p1, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v3, p1, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 3

    const-string p2, "doScale"

    .line 2627
    :try_start_0
    iget-object p3, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {p3}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    return-void

    :catch_0
    move-exception p3

    const-string p4, "AMapDelegateImpGLSurfaceView"

    .line 2631
    invoke-static {p3, p4, p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    :cond_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 2637
    iput p2, p0, Lcom/amap/api/mapcore2d/b;->aK:I

    .line 2638
    iget-object p3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p3, p3, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result p3

    div-int/2addr p3, p2

    .line 2639
    iget-object p4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p4, p4, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result p4

    div-int/2addr p4, p2

    float-to-double p1, p1

    .line 2640
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 2641
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v0

    float-to-double v0, v0

    add-double/2addr v0, p1

    double-to-float p1, v0

    .line 2642
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result p1

    .line 2643
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_2

    .line 2644
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    aput v0, p2, v2

    .line 2645
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aput p1, p2, v1

    .line 2646
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget p2, p2, v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    aget v0, v0, v1

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    .line 2647
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    invoke-virtual {p2, p3, p4}, Lcom/amap/api/mapcore2d/az$d;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object p2

    .line 2648
    iget-object p3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p3, p3, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p3, p1}, Lcom/amap/api/mapcore2d/az$c;->a(F)V

    .line 2649
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/az$c;->a(Lcom/amap/api/mapcore2d/w;)V

    .line 2650
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->D()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private a(II)V
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    if-nez v0, :cond_0

    return-void

    .line 2166
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->aF:I

    .line 2167
    iput p2, p0, Lcom/amap/api/mapcore2d/b;->aG:I

    .line 2168
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->B()V

    return-void
.end method

.method private a(IILcom/amap/api/mapcore2d/ae;)V
    .locals 7

    .line 2900
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    .line 2901
    new-instance v1, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2902
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v2, p1, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/av;->k:D

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v6, p1, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 2907
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->e()D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p3, Lcom/amap/api/mapcore2d/ae;->a:I

    .line 2908
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->f()D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p3, Lcom/amap/api/mapcore2d/ae;->b:I

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2030
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    .line 2031
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/view/GestureDetector;

    .line 2032
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/bb;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb$b;)Lcom/amap/api/mapcore2d/bb$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ar:Lcom/amap/api/mapcore2d/bb$a;

    .line 2033
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    .line 2034
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2035
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 2036
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    .line 2037
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aD:I

    .line 2038
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->av:I

    .line 2039
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1465
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/q;->b:Ljava/lang/String;

    const-string v0, "initEnviornment"

    .line 1467
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    .line 1470
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore2d/g;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/amap/api/mapcore2d/g;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/y;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->al:Ljava/lang/Thread;

    .line 1472
    new-instance v1, Lcom/amap/api/mapcore2d/bi;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/bi;-><init>(Lcom/amap/api/mapcore2d/y;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/mapcore2d/ah;

    const/16 v1, 0xde

    const/16 v2, 0xd7

    const/16 v3, 0xd6

    .line 1473
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->setBackgroundColor(I)V

    .line 1475
    invoke-static {}, Lcom/amap/api/mapcore2d/n;->a()Lcom/amap/api/mapcore2d/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore2d/n;->a(Lcom/amap/api/mapcore2d/n$a;)V

    .line 1477
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/mapcore2d/l$a;)V

    .line 1478
    new-instance v1, Lcom/amap/api/mapcore2d/a;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/a;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/a;

    .line 1479
    new-instance v1, Lcom/amap/api/mapcore2d/d;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/d;-><init>(Lcom/amap/api/mapcore2d/y;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/d;

    .line 1480
    new-instance v1, Lcom/amap/api/mapcore2d/k;

    invoke-direct {v1, p1}, Lcom/amap/api/mapcore2d/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    .line 1481
    new-instance p1, Lcom/amap/api/mapcore2d/bu;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p1, v1, p0}, Lcom/amap/api/mapcore2d/bu;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/y;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    .line 1482
    new-instance p1, Lcom/amap/api/mapcore2d/az;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    sget v2, Lcom/amap/api/mapcore2d/q;->j:I

    invoke-direct {p1, v1, p0, v2}, Lcom/amap/api/mapcore2d/az;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    .line 1484
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/bu;->a(Z)V

    .line 1485
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    .line 1487
    new-instance p1, Lcom/amap/api/mapcore2d/aq;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    invoke-direct {p1, v1}, Lcom/amap/api/mapcore2d/aq;-><init>(Lcom/amap/api/mapcore2d/az;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    .line 1488
    new-instance p1, Lcom/amap/api/mapcore2d/ca;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/ca;-><init>(Lcom/amap/api/mapcore2d/y;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    .line 1491
    new-instance p1, Lcom/amap/api/mapcore2d/ce;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-direct {p1, v1, v2, p0}, Lcom/amap/api/mapcore2d/ce;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/aq;Lcom/amap/api/mapcore2d/y;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    .line 1492
    new-instance p1, Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p1, v1, p0}, Lcom/amap/api/mapcore2d/au;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/y;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    .line 1493
    new-instance p1, Lcom/amap/api/mapcore2d/ap;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/as;

    invoke-direct {p1, v1, v2, p0}, Lcom/amap/api/mapcore2d/ap;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/as;Lcom/amap/api/mapcore2d/y;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    .line 1494
    new-instance p1, Lcom/amap/api/mapcore2d/cd;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p1, v1, p0}, Lcom/amap/api/mapcore2d/cd;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    .line 1495
    new-instance p1, Lcom/amap/api/mapcore2d/bk;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p1, v1, p0}, Lcom/amap/api/mapcore2d/bk;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    .line 1496
    new-instance p1, Lcom/amap/api/mapcore2d/p;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/as;

    invoke-direct {p1, v1, v2, p0}, Lcom/amap/api/mapcore2d/p;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/as;Lcom/amap/api/mapcore2d/y;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    .line 1497
    new-instance p1, Lcom/amap/api/mapcore2d/at;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p1, v1, p2, p0}, Lcom/amap/api/mapcore2d/at;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    .line 1498
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1501
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->y()V

    .line 1502
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {p2, v1, p1}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1503
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {p2, v1, p1}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1504
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {p2, v1, p1}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    new-instance p2, Lcom/amap/api/mapcore2d/au$a;

    invoke-direct {p2, p1}, Lcom/amap/api/mapcore2d/au$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1507
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1, v1, p2}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    new-instance p1, Lcom/amap/api/mapcore2d/au$a;

    const/4 v3, -0x2

    const/4 v4, -0x2

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    const-wide/16 v9, 0x0

    invoke-direct {v5, v9, v10, v9, v10}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x53

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore2d/au$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1512
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p2, v1, p1}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    new-instance p1, Lcom/amap/api/mapcore2d/au$a;

    const/4 v3, -0x2

    const/4 v4, -0x2

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v5, v9, v10, v9, v10}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x53

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore2d/au$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1518
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {p2, v1, p1}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p1, 0x8

    .line 1520
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->c()Lcom/amap/api/mapcore2d/al;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/al;->isMyLocationButtonEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1521
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/ap;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 1524
    invoke-static {p2, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/p;->setVisibility(I)V

    .line 1527
    new-instance p1, Lcom/amap/api/mapcore2d/au$a;

    const/4 v2, -0x2

    const/4 v3, -0x2

    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, v9, v10, v9, v10}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x33

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore2d/au$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1532
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {p2, v1, p1}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    new-instance p1, Lcom/amap/api/mapcore2d/bc;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/amap/api/mapcore2d/bc;-><init>(Lcom/amap/api/mapcore2d/y;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    .line 1534
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    sget p2, Lcom/amap/api/mapcore2d/h;->a:I

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/ce;->setId(I)V

    .line 1536
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->al:Ljava/lang/Thread;

    const-string p2, "AuthThread"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1537
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->al:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1538
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ak:Ljava/util/Timer;

    if-nez p1, :cond_1

    .line 1539
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ak:Ljava/util/Timer;

    .line 1540
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ak:Ljava/util/Timer;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/TimerTask;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1543
    :cond_1
    new-instance p1, Lcom/amap/api/mapcore2d/c;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore2d/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "AMapDelegateImpGLSurfaceView"

    .line 1546
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1862
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 1865
    new-instance v1, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/s;-><init>()V

    .line 1866
    invoke-virtual {p0, v0, p1, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/s;)V

    .line 1867
    new-instance p1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v0, v1, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 1868
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ab;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ab;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 1870
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz p1, :cond_0

    .line 1871
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {p1, v0}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps2d/model/Marker;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    return-void
.end method

.method private a(ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 2

    const-string p1, "cameraChangeFinish"

    .line 2774
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->L:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-nez v0, :cond_0

    return-void

    .line 2777
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2780
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 2785
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 2787
    invoke-static {v0, v1, p1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    :cond_3
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->L:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    invoke-interface {p1, p2}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2793
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->J:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->D()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 2174
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ar:Lcom/amap/api/mapcore2d/bb$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/amap/api/mapcore2d/bb$a;->a(Landroid/view/MotionEvent;II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 2176
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aq:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move v0, v1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 2178
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    if-eqz v1, :cond_1

    .line 2179
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/l;->b()V

    .line 2181
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 2182
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Landroid/view/MotionEvent;)V

    .line 2184
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 2185
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->A()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "handleTouch"

    .line 2188
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->ag:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->w()V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/cd;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ay;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->U:Lcom/amap/api/mapcore2d/ay;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->aj:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->L:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-object p0
.end method

.method static synthetic k(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object p0
.end method

.method static synthetic l(Lcom/amap/api/mapcore2d/b;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    return p0
.end method

.method public static m()I
    .locals 1

    .line 2051
    sget v0, Lcom/amap/api/mapcore2d/b;->aH:I

    return v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->E()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized n()Landroid/graphics/Paint;
    .locals 4

    const-class v0, Lcom/amap/api/mapcore2d/b;

    monitor-enter v0

    .line 2055
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aI:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 2056
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/amap/api/mapcore2d/b;->aI:Landroid/graphics/Paint;

    .line 2057
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aI:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2058
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aI:Landroid/graphics/Paint;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2059
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 2061
    sget-object v2, Lcom/amap/api/mapcore2d/b;->aI:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2063
    :cond_0
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aI:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2054
    monitor-exit v0

    throw v1

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
    .end array-data
.end method

.method static synthetic n(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/k;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    return-object p0
.end method

.method private w()V
    .locals 4

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Lcom/amap/api/maps2d/CameraUpdate;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Lcom/amap/api/maps2d/CameraUpdate;

    iget-wide v1, p0, Lcom/amap/api/mapcore2d/b;->w:J

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/b;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps2d/CameraUpdate;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->v:Lcom/amap/api/maps2d/CameraUpdate;

    const-wide/16 v1, 0x0

    .line 374
    iput-wide v1, p0, Lcom/amap/api/mapcore2d/b;->w:J

    .line 375
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$CancelableCallback;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "handleUnHandleMessage"

    .line 378
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private x()V
    .locals 9

    const-string v0, "setLayerType"

    .line 1400
    const-class v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1402
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    if-eqz v6, :cond_0

    .line 1403
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setLayerType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 1411
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x2

    .line 1412
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v5, v2, v1

    invoke-virtual {v6, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 1414
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private y()V
    .locals 3

    .line 1579
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;)V

    .line 1580
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1583
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private z()V
    .locals 2

    .line 1823
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az;->a()V

    .line 1824
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/aq;->b(Z)V

    .line 1826
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aq;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 1828
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    .line 1830
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    return-void
.end method


# virtual methods
.method public AMapInvalidate()V
    .locals 1

    .line 3036
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 3037
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/au;->postInvalidate()V

    return-void
.end method

.method public a(F)F
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 528
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->b()I

    move-result p1

    int-to-float p1, p1

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 531
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/az$c;->a()I

    move-result p1

    int-to-float p1, p1

    :cond_2
    return p1

    :cond_3
    :goto_0
    return p1
.end method

.method public a()Lcom/amap/api/mapcore2d/az;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    return-object v0
.end method

.method public a(DDLcom/amap/api/mapcore2d/ae;)V
    .locals 4

    .line 2929
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    if-nez v0, :cond_0

    return-void

    .line 2932
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    new-instance v1, Lcom/amap/api/mapcore2d/w;

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v2

    double-to-int p1, p1

    mul-double p3, p3, v2

    double-to-int p2, p3

    invoke-direct {v1, p1, p2}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    .line 2934
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result p2

    iput p2, p5, Lcom/amap/api/mapcore2d/ae;->a:I

    .line 2935
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result p1

    iput p1, p5, Lcom/amap/api/mapcore2d/ae;->b:I

    return-void
.end method

.method public a(DDLcom/amap/api/mapcore2d/s;)V
    .locals 6

    .line 2914
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    .line 2915
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/r;->a(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 2916
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/r;->a(D)J

    move-result-wide p2

    long-to-int p2, p2

    .line 2917
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v1, p1, p2}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 2918
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v2, p1, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/av;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 2922
    iget p2, p1, Landroid/graphics/PointF;->x:F

    float-to-double p2, p2

    iput-wide p2, p5, Lcom/amap/api/mapcore2d/s;->a:D

    .line 2923
    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double p1, p1

    iput-wide p1, p5, Lcom/amap/api/mapcore2d/s;->b:D

    :cond_0
    return-void
.end method

.method public a(FLandroid/graphics/Point;ZJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 701
    iget-object v3, v0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 706
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    move-result v3

    add-float v4, v3, v1

    .line 707
    invoke-static {v4}, Lcom/amap/api/mapcore2d/cm;->b(F)F

    move-result v4

    sub-float v3, v4, v3

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    return-void

    .line 713
    :cond_1
    new-instance v3, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore2d/b;->F()Lcom/amap/api/mapcore2d/ae;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 718
    new-instance v5, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/ae;-><init>()V

    .line 719
    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v6, v7, v5}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/ae;)V

    .line 720
    iget v6, v3, Lcom/amap/api/mapcore2d/ae;->a:I

    iget v7, v5, Lcom/amap/api/mapcore2d/ae;->a:I

    sub-int/2addr v6, v7

    .line 721
    iget v7, v3, Lcom/amap/api/mapcore2d/ae;->b:I

    iget v8, v5, Lcom/amap/api/mapcore2d/ae;->b:I

    sub-int/2addr v7, v8

    int-to-double v8, v6

    float-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 722
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double v14, v8, v14

    sub-double/2addr v14, v8

    double-to-int v1, v14

    int-to-double v6, v7

    .line 723
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double v8, v6, v8

    sub-double/2addr v8, v6

    double-to-int v6, v8

    .line 724
    iget v7, v5, Lcom/amap/api/mapcore2d/ae;->a:I

    add-int/2addr v7, v1

    iput v7, v3, Lcom/amap/api/mapcore2d/ae;->a:I

    .line 725
    iget v1, v5, Lcom/amap/api/mapcore2d/ae;->b:I

    add-int/2addr v1, v6

    iput v1, v3, Lcom/amap/api/mapcore2d/ae;->b:I

    .line 726
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    iget v5, v3, Lcom/amap/api/mapcore2d/ae;->b:I

    int-to-double v6, v5

    iget v3, v3, Lcom/amap/api/mapcore2d/ae;->a:I

    int-to-double v8, v3

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/mapcore2d/w;-><init>(DDZ)V

    .line 727
    iget-object v3, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 728
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/w;)Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 732
    iget-object v1, v0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-wide/from16 v5, p4

    long-to-int v5, v5

    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/amap/api/mapcore2d/aq;->a(FIII)Z

    goto :goto_0

    .line 735
    :cond_2
    iget-object v2, v0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;)V

    .line 736
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/l;->b()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public a(IILcom/amap/api/mapcore2d/s;)V
    .locals 7

    .line 2886
    new-instance v1, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2887
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v2, p1, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/av;->k:D

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v6, p1, Lcom/amap/api/mapcore2d/av;->o:Lcom/amap/api/mapcore2d/av$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/av$a;)Lcom/amap/api/mapcore2d/w;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 2892
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->b()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v0

    .line 2893
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/w;->a()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide p1

    .line 2894
    iput-wide v0, p3, Lcom/amap/api/mapcore2d/s;->b:D

    .line 2895
    iput-wide p1, p3, Lcom/amap/api/mapcore2d/s;->a:D

    :cond_0
    return-void
.end method

.method protected a(Lcom/amap/api/interfaces/MapCameraMessage;ZJ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "newLatLngBoundsWithSize"

    .line 3052
    iget-object v3, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    if-nez v3, :cond_0

    return-void

    .line 3056
    :cond_0
    :try_start_0
    iget-object v3, v0, Lcom/amap/api/interfaces/MapCameraMessage;->bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-eqz v3, :cond_5

    .line 3057
    iget-object v4, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 3060
    :cond_1
    iget-object v4, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v6

    iget-object v8, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double v8, v8, v6

    const/4 v10, 0x0

    sub-double/2addr v4, v8

    double-to-float v4, v4

    .line 3061
    iget-object v5, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v8, v8, v6

    iget-object v5, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v5, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v10, v10, v6

    const/4 v5, 0x0

    sub-double/2addr v8, v10

    double-to-float v5, v8

    .line 3062
    iget-object v8, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double v8, v8, v6

    iget-object v10, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v10, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double v10, v10, v6

    const/4 v12, 0x0

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-int v8, v8

    .line 3063
    iget-object v9, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v12, v9, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v12, v12, v6

    iget-object v3, v3, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v14, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v14, v14, v6

    const/4 v3, 0x0

    add-double/2addr v12, v14

    div-double/2addr v12, v10

    double-to-int v3, v12

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v7, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move v11, v4

    :goto_0
    cmpl-float v4, v5, v6

    if-nez v4, :cond_3

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    move v12, v5

    .line 3068
    :goto_1
    new-instance v4, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v4, v8, v3}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    if-eqz p2, :cond_4

    .line 3070
    iget-object v3, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    move-wide/from16 v5, p3

    long-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;I)V

    goto :goto_2

    .line 3072
    :cond_4
    iget-object v3, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;)V

    .line 3074
    :goto_2
    iget-object v10, v1, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    iget v13, v0, Lcom/amap/api/interfaces/MapCameraMessage;->width:I

    iget v14, v0, Lcom/amap/api/interfaces/MapCameraMessage;->height:I

    iget v15, v0, Lcom/amap/api/interfaces/MapCameraMessage;->padding:I

    invoke-virtual/range {v10 .. v15}, Lcom/amap/api/mapcore2d/aq;->a(FFIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 3080
    invoke-static {v0, v3, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "showInfoWindow"

    if-nez p1, :cond_0

    return-void

    .line 1121
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getSnippet()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1125
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()V

    .line 1126
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/interfaces/IMarker;)V

    .line 1127
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v2, :cond_2

    .line 1128
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v2, v1}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    .line 1131
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->W:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 1132
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    const-string v3, "infowindow_bg2d.9.png"

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/bd;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->W:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 1136
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v0, :cond_4

    .line 1140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    .line 1142
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1143
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1147
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1148
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1149
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1150
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, -0x1000000

    .line 1151
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1152
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1153
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1154
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1156
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1157
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1158
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    .line 1160
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1161
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1162
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 1163
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->b()Lcom/amap/api/mapcore2d/s;

    move-result-object v1

    const/4 v2, -0x2

    if-eqz v0, :cond_7

    .line 1167
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1168
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v5, v0

    move v4, v2

    goto :goto_2

    :cond_7
    const/4 v4, -0x2

    const/4 v5, -0x2

    .line 1170
    :goto_2
    new-instance v0, Lcom/amap/api/mapcore2d/au$a;

    .line 1171
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getRealPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v6

    iget-wide v2, v1, Lcom/amap/api/mapcore2d/s;->a:D

    double-to-int v2, v2

    neg-int v2, v2

    .line 1172
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    iget-wide v1, v1, Lcom/amap/api/mapcore2d/s;->b:D

    double-to-int v1, v1

    neg-int v1, v1

    add-int/lit8 v8, v1, 0x2

    const/16 v9, 0x51

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/mapcore2d/au$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1175
    check-cast p1, Lcom/amap/api/mapcore2d/ay;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->U:Lcom/amap/api/mapcore2d/ay;

    .line 1176
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    if-eqz p1, :cond_8

    .line 1177
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lcom/amap/api/mapcore2d/au;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 1594
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->j()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1611
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 1612
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->h:Ljava/lang/String;

    .line 1611
    invoke-virtual {p1, v2, v1}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 1614
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 1615
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/lang/String;

    .line 1614
    invoke-virtual {p1, v2, v0}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 1619
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void

    .line 1624
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 1625
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/az$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/an;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1628
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 1629
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->h:Ljava/lang/String;

    .line 1628
    invoke-virtual {p1, v2, v0}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 1633
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void

    .line 1636
    :cond_3
    new-instance p1, Lcom/amap/api/mapcore2d/an;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    invoke-direct {p1, v2}, Lcom/amap/api/mapcore2d/an;-><init>(Lcom/amap/api/mapcore2d/av;)V

    .line 1637
    new-instance v2, Lcom/amap/api/mapcore2d/bv;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    invoke-direct {v2, v3, p1}, Lcom/amap/api/mapcore2d/bv;-><init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)V

    iput-object v2, p1, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 1638
    new-instance v2, Lcom/amap/api/mapcore2d/b$4;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/b$4;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p1, Lcom/amap/api/mapcore2d/an;->j:Lcom/amap/api/mapcore2d/cb;

    .line 1647
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->h:Ljava/lang/String;

    iput-object v2, p1, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    .line 1648
    iput-boolean v0, p1, Lcom/amap/api/mapcore2d/an;->e:Z

    .line 1650
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    .line 1651
    iput-boolean v0, p1, Lcom/amap/api/mapcore2d/an;->f:Z

    .line 1653
    sget v2, Lcom/amap/api/mapcore2d/q;->c:I

    iput v2, p1, Lcom/amap/api/mapcore2d/an;->c:I

    .line 1654
    sget v2, Lcom/amap/api/mapcore2d/q;->d:I

    iput v2, p1, Lcom/amap/api/mapcore2d/an;->d:I

    .line 1655
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-virtual {v2, p1, v3}, Lcom/amap/api/mapcore2d/az$a;->a(Lcom/amap/api/mapcore2d/an;Landroid/content/Context;)Z

    .line 1656
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 1657
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->h:Ljava/lang/String;

    .line 1656
    invoke-virtual {p1, v2, v0}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 1661
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void
.end method

.method public a(FF)Z
    .locals 2

    .line 2381
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    if-eqz v0, :cond_0

    .line 2382
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/aq;->b(Z)V

    .line 2383
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->az:Z

    if-eqz v0, :cond_1

    .line 2384
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aA:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aA:F

    .line 2385
    iget p1, p0, Lcom/amap/api/mapcore2d/b;->aB:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/amap/api/mapcore2d/b;->aB:F

    .line 2387
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2388
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->az:Z

    return p1
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 4

    const-string v0, "onScale"

    const/4 v1, 0x0

    .line 2432
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 2436
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 2442
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->r()V

    .line 2443
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->aA:F

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aB:F

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/PointF;FF)V

    .line 2444
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->az:Z

    const-wide/16 p1, 0x8

    .line 2445
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->postInvalidateDelayed(J)V

    .line 2446
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/az;->a(Z)V

    return p2
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 3

    const-string p1, "startScale"

    const/4 v0, 0x0

    .line 2471
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 2475
    invoke-static {v1, v2, p1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->c()Lcom/amap/api/mapcore2d/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_1

    return v0

    :catch_1
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 2482
    invoke-static {v0, v1, p1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-eqz p1, :cond_2

    .line 2486
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->p:Z

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/az;->a(Z)V

    .line 2487
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/az$a;->a(Z)V

    .line 2488
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iput-boolean v0, p1, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 2491
    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->az:Z

    return v0
.end method

.method public addCircle(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/maps2d/model/Circle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v1, :cond_0

    return-object v0

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/z;

    move-result-object p1

    .line 784
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    if-eqz p1, :cond_1

    .line 786
    new-instance v1, Lcom/amap/api/maps2d/model/Circle;

    invoke-direct {v1, p1}, Lcom/amap/api/maps2d/model/Circle;-><init>(Lcom/amap/api/interfaces/ICircle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "addCircle"

    .line 788
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public addGroundOverlay(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/maps2d/model/GroundOverlay;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v1, :cond_0

    return-object v0

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/aa;

    move-result-object p1

    .line 803
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    if-eqz p1, :cond_1

    .line 805
    new-instance v1, Lcom/amap/api/maps2d/model/GroundOverlay;

    invoke-direct {v1, p1}, Lcom/amap/api/maps2d/model/GroundOverlay;-><init>(Lcom/amap/api/mapcore2d/aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "addGroundOverlay"

    .line 807
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 843
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore2d/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-direct {v1, p1, v2}, Lcom/amap/api/mapcore2d/ay;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/at;)V

    .line 846
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/at;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 847
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 848
    new-instance p1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {p1, v1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/interfaces/IMarker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "addMarker"

    .line 850
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public addPolygon(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/maps2d/model/Polygon;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    if-nez v1, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/af;

    move-result-object p1

    .line 825
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    if-eqz p1, :cond_2

    .line 828
    new-instance v1, Lcom/amap/api/maps2d/model/Polygon;

    invoke-direct {v1, p1}, Lcom/amap/api/maps2d/model/Polygon;-><init>(Lcom/amap/api/mapcore2d/af;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "addPolygon"

    .line 831
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v1, :cond_0

    return-object v0

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/v;->a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/ag;

    move-result-object p1

    .line 766
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    if-eqz p1, :cond_1

    .line 768
    new-instance v1, Lcom/amap/api/maps2d/model/Polyline;

    invoke-direct {v1, p1}, Lcom/amap/api/maps2d/model/Polyline;-><init>(Lcom/amap/api/interfaces/IPolyline;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "addPolyline"

    .line 770
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public addText(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3149
    new-instance v0, Lcom/amap/api/mapcore2d/bp;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/y;Lcom/amap/api/maps2d/model/TextOptions;Lcom/amap/api/mapcore2d/at;)V

    .line 3151
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/at;->a(Lcom/amap/api/mapcore2d/aj;)V

    .line 3152
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 3153
    new-instance p1, Lcom/amap/api/maps2d/model/Text;

    invoke-direct {p1, v0}, Lcom/amap/api/maps2d/model/Text;-><init>(Lcom/amap/api/mapcore2d/aj;)V

    return-object p1
.end method

.method public addTileOverlay(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 874
    :cond_0
    new-instance v6, Lcom/amap/api/mapcore2d/bt;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v3, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bt;-><init>(Lcom/amap/api/maps2d/model/TileOverlayOptions;Lcom/amap/api/mapcore2d/bu;Lcom/amap/api/mapcore2d/av;Lcom/amap/api/mapcore2d/az;Landroid/content/Context;)V

    .line 880
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {p1, v6}, Lcom/amap/api/mapcore2d/bu;->a(Lcom/amap/api/mapcore2d/ak;)V

    .line 881
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 882
    new-instance p1, Lcom/amap/api/maps2d/model/TileOverlay;

    invoke-direct {p1, v6}, Lcom/amap/api/maps2d/model/TileOverlay;-><init>(Lcom/amap/api/interfaces/ITileOverlay;)V

    return-object p1
.end method

.method public animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/b;->animateCameraWithCallback(Lcom/amap/api/maps2d/CameraUpdate;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V

    return-void
.end method

.method public animateCameraWithCallback(Lcom/amap/api/maps2d/CameraUpdate;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xfa

    .line 606
    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore2d/b;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps2d/CameraUpdate;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 609
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public animateCameraWithDurationAndCallback(Lcom/amap/api/maps2d/CameraUpdate;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/amap/api/interfaces/MapCameraMessage;

    move-result-object v0

    .line 624
    iget-object v1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v2, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBounds:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne v1, v2, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->v:Lcom/amap/api/maps2d/CameraUpdate;

    .line 627
    iput-wide p2, p0, Lcom/amap/api/mapcore2d/b;->w:J

    .line 628
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->x:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-void

    .line 632
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 639
    :try_start_0
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 640
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/aq;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 641
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/aq;->g()V

    :cond_4
    if-eqz p4, :cond_5

    .line 645
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 646
    :cond_5
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->J:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_6

    .line 647
    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    .line 649
    :cond_6
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->scrollBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne p1, v1, :cond_9

    .line 650
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->r()V

    .line 651
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez p1, :cond_7

    return-void

    .line 654
    :cond_7
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    if-nez p1, :cond_8

    return-void

    .line 657
    :cond_8
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    iget p4, v0, Lcom/amap/api/interfaces/MapCameraMessage;->xPixel:F

    float-to-int p4, p4

    iget v0, v0, Lcom/amap/api/interfaces/MapCameraMessage;->yPixel:F

    float-to-int v0, v0

    long-to-int p2, p2

    invoke-virtual {p1, p4, v0, p2}, Lcom/amap/api/mapcore2d/aq;->a(III)V

    .line 659
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto/16 :goto_3

    .line 660
    :cond_9
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomIn:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne p1, v1, :cond_a

    .line 661
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/aq;->a(I)Z

    goto/16 :goto_3

    .line 662
    :cond_a
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomOut:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne p1, v1, :cond_b

    .line 663
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/aq;->b(I)Z

    goto/16 :goto_3

    .line 664
    :cond_b
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomTo:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne p1, v1, :cond_c

    .line 665
    iget p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->zoom:F

    .line 667
    iget-object p4, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    long-to-int p2, p2

    invoke-virtual {p4, p1, p2}, Lcom/amap/api/mapcore2d/aq;->a(FI)F

    goto/16 :goto_3

    .line 668
    :cond_c
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne p1, v1, :cond_e

    .line 669
    iget v3, v0, Lcom/amap/api/interfaces/MapCameraMessage;->amount:F

    .line 670
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->focus:Landroid/graphics/Point;

    if-nez p1, :cond_d

    .line 672
    new-instance p1, Landroid/graphics/Point;

    iget-object p4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p4, p4, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p1, p4, v0}, Landroid/graphics/Point;-><init>(II)V

    :cond_d
    move-object v4, p1

    const/4 v5, 0x1

    move-object v2, p0

    move-wide v6, p2

    .line 673
    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;ZJ)V

    goto/16 :goto_3

    .line 674
    :cond_e
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newCameraPosition:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-wide v2, 0x412e848000000000L    # 1000000.0

    if-ne p1, v1, :cond_f

    .line 675
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->cameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 676
    iget-object p4, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    iget v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {p4, v0}, Lcom/amap/api/mapcore2d/aq;->c(F)F

    .line 677
    iget-object p4, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double v0, v0, v2

    double-to-int p4, v0

    .line 678
    iget-object p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 679
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    new-instance v1, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v1, p4, p1}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    long-to-int p1, p2

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;I)V

    goto :goto_3

    .line 680
    :cond_f
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeCenter:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne p1, v1, :cond_10

    .line 681
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->cameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 682
    iget-object p4, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double v0, v0, v2

    double-to-int p4, v0

    .line 683
    iget-object p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 684
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    new-instance v1, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v1, p4, p1}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    long-to-int p1, p2

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;I)V

    goto :goto_3

    .line 685
    :cond_10
    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBounds:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-eq p1, v1, :cond_12

    iget-object p1, v0, Lcom/amap/api/interfaces/MapCameraMessage;->nowType:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBoundsWithSize:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    if-ne p1, v1, :cond_11

    goto :goto_1

    .line 691
    :cond_11
    iput-boolean p4, v0, Lcom/amap/api/interfaces/MapCameraMessage;->isChangeFinished:Z

    .line 692
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/as;

    check-cast v0, Lcom/amap/api/mapcore2d/m;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/m;)V

    goto :goto_3

    .line 687
    :cond_12
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->r()V

    .line 688
    invoke-virtual {p0, v0, p4, p2, p3}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/interfaces/MapCameraMessage;ZJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string p2, "AMapDelegateImpGLSurfaceView"

    const-string p3, "animateCameraWithDurationAndCallback"

    .line 695
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .line 2732
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2733
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2734
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2735
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    sub-float/2addr v3, v4

    .line 2736
    iget p1, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    sub-float/2addr p1, v4

    float-to-double v4, p1

    float-to-double v6, v3

    .line 2737
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2738
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 2739
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()I

    move-result p1

    int-to-double v5, p1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v10

    sub-double/2addr v8, v5

    .line 2740
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    int-to-double v10, v1

    add-double/2addr v5, v10

    double-to-float p1, v5

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 2741
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    int-to-double v1, v2

    add-double/2addr v3, v1

    double-to-float p1, v3

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public b()Lcom/amap/api/mapcore2d/bc;
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    return-object v0
.end method

.method public b(DDLcom/amap/api/mapcore2d/ae;)V
    .locals 6

    .line 2966
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    if-nez v0, :cond_0

    return-void

    .line 2969
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    .line 2970
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/r;->a(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 2971
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/r;->a(D)J

    move-result-wide p2

    long-to-int p2, p2

    .line 2972
    new-instance v1, Lcom/amap/api/mapcore2d/w;

    invoke-direct {v1, p1, p2}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 2973
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v2, p1, Lcom/amap/api/mapcore2d/av;->l:Lcom/amap/api/mapcore2d/w;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/av;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/w;Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 2978
    iget p2, p1, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iput p2, p5, Lcom/amap/api/mapcore2d/ae;->a:I

    .line 2979
    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iput p1, p5, Lcom/amap/api/mapcore2d/ae;->b:I

    :cond_1
    return-void
.end method

.method public b(F)V
    .locals 0

    .line 2117
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->ay:F

    return-void
.end method

.method public b(IILcom/amap/api/mapcore2d/s;)V
    .locals 2

    if-eqz p3, :cond_0

    int-to-long v0, p1

    .line 2959
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/amap/api/mapcore2d/s;->a:D

    int-to-long p1, p2

    .line 2960
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/r;->a(J)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/amap/api/mapcore2d/s;->b:D

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 5

    .line 1679
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->k()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_1

    return-void

    .line 1698
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1701
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 1702
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void

    .line 1707
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/az$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/an;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 1709
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1, v0, v2}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 1710
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void

    .line 1772
    :cond_3
    new-instance p1, Lcom/amap/api/mapcore2d/an;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/mapcore2d/av;

    invoke-direct {p1, v3}, Lcom/amap/api/mapcore2d/an;-><init>(Lcom/amap/api/mapcore2d/av;)V

    .line 1773
    new-instance v3, Lcom/amap/api/mapcore2d/bv;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    invoke-direct {v3, v4, p1}, Lcom/amap/api/mapcore2d/bv;-><init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)V

    iput-object v3, p1, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 1774
    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/an;->g:Z

    const-wide/32 v3, 0x1d4c0

    .line 1775
    iput-wide v3, p1, Lcom/amap/api/mapcore2d/an;->i:J

    .line 1777
    new-instance v3, Lcom/amap/api/mapcore2d/b$5;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/b$5;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p1, Lcom/amap/api/mapcore2d/an;->j:Lcom/amap/api/mapcore2d/cb;

    .line 1788
    iput-object v0, p1, Lcom/amap/api/mapcore2d/an;->b:Ljava/lang/String;

    .line 1789
    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/an;->e:Z

    .line 1791
    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    .line 1792
    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/an;->f:Z

    const/16 v3, 0x12

    .line 1793
    iput v3, p1, Lcom/amap/api/mapcore2d/an;->c:I

    const/16 v3, 0x9

    .line 1794
    iput v3, p1, Lcom/amap/api/mapcore2d/an;->d:I

    .line 1795
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/amap/api/mapcore2d/az$a;->a(Lcom/amap/api/mapcore2d/an;Landroid/content/Context;)Z

    .line 1796
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {p1, v0, v2}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;Z)Z

    .line 1797
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void
.end method

.method public b(FLandroid/graphics/PointF;)Z
    .locals 1

    const-string p1, "endScale"

    const/4 p2, 0x0

    .line 2454
    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/b;->az:Z

    .line 2456
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return p2

    :catch_0
    move-exception p2

    const-string v0, "AMapDelegateImpGLSurfaceView"

    .line 2460
    invoke-static {p2, v0, p1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/l;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 3

    const-string v0, "onScale"

    .line 2416
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 2420
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ax:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2424
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/amap/api/mapcore2d/ab;)Z
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->U:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->U:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected c(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .line 2747
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2748
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2749
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2750
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    sub-float/2addr v3, v4

    .line 2751
    iget p1, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    sub-float/2addr p1, v4

    float-to-double v4, p1

    float-to-double v6, v3

    .line 2752
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2753
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 2754
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->q()I

    move-result p1

    int-to-double v5, p1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v10

    add-double/2addr v8, v5

    .line 2755
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    int-to-double v10, v1

    add-double/2addr v5, v10

    double-to-float p1, v5

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 2756
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    int-to-double v1, v2

    add-double/2addr v3, v1

    double-to-float p1, v3

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public c()Lcom/amap/api/mapcore2d/al;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    return-object v0
.end method

.method public c(F)Z
    .locals 4

    const-string v0, "onScale"

    const/4 v1, 0x0

    .line 2396
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 2400
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(F)V

    return v1
.end method

.method public clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "clear"

    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()V

    .line 892
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v1, :cond_0

    return-void

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/v;->a()V

    .line 896
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/at;->c()V

    .line 897
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bu;->b()V

    .line 898
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-eqz v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bc;->a()V

    .line 902
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 908
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 904
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "amapApi"

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1896
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1897
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->av:I

    sub-int/2addr v0, v1

    .line 1898
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    sub-int/2addr v1, v2

    .line 1899
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->av:I

    .line 1900
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    .line 1901
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/av;->n:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/az$d;->a(II)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 1904
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1905
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/l;->b()V

    .line 1906
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->L:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 1907
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->C()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    const/4 v1, 0x1

    .line 1908
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    goto :goto_0

    .line 1912
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/az$c;->b(Lcom/amap/api/mapcore2d/w;)V

    :goto_0
    return-void

    .line 1916
    :cond_2
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method public d()Lcom/amap/api/mapcore2d/bh;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    return-object v0
.end method

.method public destroy()V
    .locals 3

    const-string v0, "destroy"

    .line 1268
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ak:Ljava/util/Timer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ak:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1270
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ak:Ljava/util/Timer;

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 1274
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/TimerTask;

    .line 1276
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1277
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1279
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 1280
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1283
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->al:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    .line 1284
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->al:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1285
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->al:Ljava/lang/Thread;

    .line 1288
    :cond_4
    invoke-static {}, Lcom/amap/api/mapcore2d/n;->a()Lcom/amap/api/mapcore2d/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore2d/n;->b(Lcom/amap/api/mapcore2d/n$a;)V

    .line 1289
    invoke-static {}, Lcom/amap/api/mapcore2d/bm;->a()Lcom/amap/api/mapcore2d/bm;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore2d/bm;->a(Lcom/amap/api/mapcore2d/bm$a;)V

    .line 1290
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore2d/l;->b(Lcom/amap/api/mapcore2d/l$a;)V

    .line 1291
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ce;->a()V

    .line 1292
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk;->a()V

    .line 1293
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cd;->a()V

    .line 1294
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ap;->a()V

    .line 1295
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/p;->a()V

    .line 1296
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/v;->b()V

    .line 1297
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/at;->f()V

    .line 1298
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->W:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 1299
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1301
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/au;->removeAllViews()V

    .line 1302
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()V

    .line 1303
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    if-eqz v1, :cond_6

    .line 1304
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bu;->f()V

    .line 1306
    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v1, :cond_7

    .line 1307
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$b;->b()V

    .line 1308
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->z()V

    .line 1312
    :cond_7
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    .line 1313
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ah:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    .line 1315
    sput-object v2, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    .line 1316
    sput-object v2, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    .line 1317
    invoke-static {}, Lcom/amap/api/mapcore2d/dg;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 1322
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1191
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1193
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1194
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/au;->removeView(Landroid/view/View;)V

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1198
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1201
    :cond_1
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    .line 1203
    :cond_2
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->U:Lcom/amap/api/mapcore2d/ay;

    return-void
.end method

.method f()Landroid/graphics/Point;
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cd;->c()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1556
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->p:Z

    return v0
.end method

.method public getAMapProjection()Lcom/amap/api/maps2d/Projection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3174
    new-instance v0, Lcom/amap/api/maps2d/Projection;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/mapcore2d/ah;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/Projection;-><init>(Lcom/amap/api/interfaces/IProjection;)V

    return-object v0
.end method

.method public getAMapUiSettings()Lcom/amap/api/maps2d/UiSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3163
    new-instance v0, Lcom/amap/api/maps2d/UiSettings;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/UiSettings;-><init>(Lcom/amap/api/interfaces/IUiSettings;)V

    return-object v0
.end method

.method public getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->E()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getZoomLevel()F

    move-result v1

    .line 558
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getLogoPosition()I
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cd;->d()I

    move-result v0

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public getMapBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->d()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMapScreenMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .line 3042
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3045
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapScreenShot(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->aj:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    const/4 p1, 0x1

    .line 1329
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->aa:Z

    return-void
.end method

.method public getMapType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->u:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->c()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->a()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 564
    :cond_1
    :goto_0
    sget v0, Lcom/amap/api/mapcore2d/q;->c:I

    int-to-float v0, v0

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->b()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 574
    :cond_1
    :goto_0
    sget v0, Lcom/amap/api/mapcore2d/q;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public getMyLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/d;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/d;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/d;->a:Landroid/location/Location;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnCameraChangeListener()Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2810
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->L:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method public getScalePerPixel()F
    .locals 8

    .line 1358
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 1359
    new-instance v1, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/s;-><init>()V

    .line 1360
    new-instance v2, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/s;-><init>()V

    const/4 v3, 0x0

    .line 1361
    invoke-virtual {p0, v3, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/s;)V

    .line 1362
    invoke-virtual {p0, v0, v3, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/s;)V

    .line 1363
    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v6, v1, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v6, v2, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {v3, v1}, Lcom/amap/api/mapcore2d/cm;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 4

    const-string v0, "getZoomLevel"

    .line 540
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v1, :cond_0

    goto :goto_1

    .line 544
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 546
    invoke-static {v1, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    :goto_1
    return v2
.end method

.method public h()Lcom/amap/api/mapcore2d/w;
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->f()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/amap/api/mapcore2d/aq;
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    return-object v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->C:Z

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->k()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .line 1666
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1669
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 1670
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/az$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1672
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/an;->a()Z

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public k()Z
    .locals 3

    .line 1805
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1813
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->i:Ljava/lang/String;

    .line 1815
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/az;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/az$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/an;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1817
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/an;->a()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public l()Lcom/amap/api/mapcore2d/bb;
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ar:Lcom/amap/api/mapcore2d/bb$a;

    return-object v0
.end method

.method public moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/mapcore2d/a;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/amap/api/interfaces/MapCameraMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/a;->a(Lcom/amap/api/interfaces/MapCameraMessage;)V

    return-void
.end method

.method public o()F
    .locals 1

    .line 2121
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->ay:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1891
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "onDoubleTap"

    const/4 v1, 0x1

    .line 2506
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/al;->isZoomGesturesEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 2510
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->t:Z

    if-eqz v0, :cond_2

    .line 2513
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/al;->isZoomInByScreenCenter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2514
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/aq;->c()Z

    goto :goto_0

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Lcom/amap/api/mapcore2d/aq;->c(II)Z

    .line 2519
    :cond_2
    :goto_0
    iget p1, p0, Lcom/amap/api/mapcore2d/b;->aK:I

    if-le p1, v1, :cond_3

    return v1

    .line 2522
    :cond_3
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->aL:Z

    .line 2523
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-eqz p1, :cond_4

    .line 2524
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$c;->e()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ce;->a(F)V

    :cond_4
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2210
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    .line 2211
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->aL:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/k;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2212
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/k;->a(Z)V

    .line 2213
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v1, :cond_0

    .line 2214
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v1}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_0
    const/4 v1, 0x0

    .line 2215
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2217
    :cond_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aL:Z

    .line 2218
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aK:I

    .line 2219
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    if-nez v0, :cond_2

    .line 2220
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    goto :goto_0

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ap:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 2070
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->n()Landroid/graphics/Paint;

    move-result-object v6

    .line 2071
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->m()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2072
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 2073
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v1

    .line 2077
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getLeft()I

    move-result v0

    int-to-float v8, v0

    .line 2078
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getTop()I

    move-result v0

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_1

    int-to-float v12, v11

    .line 2081
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v8, v0

    move-object v0, p1

    move v1, v8

    move v2, v12

    move v4, v12

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2082
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v9, v0

    move-object v0, p1

    move v1, v12

    move v2, v9

    move v3, v12

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit16 v11, v11, 0x100

    goto :goto_1

    .line 2086
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aa:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2087
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->setDrawingCacheEnabled(Z)V

    .line 2088
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->buildDrawingCache()V

    .line 2089
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2090
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x10

    .line 2091
    iput v3, v2, Landroid/os/Message;->what:I

    .line 2092
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2093
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2094
    iput-boolean v10, p0, Lcom/amap/api/mapcore2d/b;->aa:Z

    .line 2097
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    if-eqz v0, :cond_3

    .line 2098
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/az$c;->a(II)V

    .line 2099
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-eqz v0, :cond_4

    .line 2100
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ax:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aA:F

    iget v4, p0, Lcom/amap/api/mapcore2d/b;->aB:F

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/amap/api/mapcore2d/az$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    .line 2102
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/k;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2103
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2105
    :cond_5
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->ai:Z

    if-nez p1, :cond_6

    .line 2106
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2107
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->ai:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "AMapDelegateImpGLSurfaceView"

    const-string v1, "onDraw"

    .line 2110
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const-string p2, "onFling"

    .line 2238
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ar:Lcom/amap/api/mapcore2d/bb$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/bb$a;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ar:Lcom/amap/api/mapcore2d/bb$a;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/bb$a;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    goto :goto_0

    .line 2242
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    const/4 p1, 0x0

    .line 2243
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    .line 2245
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/al;->isScrollGesturesEnabled()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v1

    :catch_0
    move-exception p1

    const-string v0, "AMapDelegateImpGLSurfaceView"

    .line 2249
    invoke-static {p1, v0, p2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 2251
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2261
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->au:Landroid/widget/Scroller;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->av:I

    iget v4, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    neg-float p1, p3

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 v5, p1, 0x5

    neg-float p1, p4

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 v6, p1, 0x5

    iget p1, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    neg-int v7, p1

    iget v8, p0, Lcom/amap/api/mapcore2d/b;->aC:I

    iget p1, p0, Lcom/amap/api/mapcore2d/b;->aD:I

    neg-int v9, p1

    iget v10, p0, Lcom/amap/api/mapcore2d/b;->aD:I

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1934
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1937
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1940
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/az$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    .line 1941
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/mapcore2d/aq;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1946
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1949
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/az$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    .line 1953
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/mapcore2d/aq;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x0

    .line 2272
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    .line 2273
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2274
    new-instance v0, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/s;-><init>()V

    .line 2275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/s;)V

    .line 2276
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2277
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->P:Z

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/at;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    .line 2280
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    if-nez p1, :cond_1

    return-void

    .line 2283
    :cond_1
    new-instance p1, Lcom/amap/api/maps2d/model/Marker;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    invoke-direct {p1, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/interfaces/IMarker;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/maps2d/model/Marker;

    .line 2284
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2285
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getRealPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    .line 2286
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    .line 2287
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ab;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2288
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->r:Lcom/amap/api/mapcore2d/ab;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/at;->c(Lcom/amap/api/mapcore2d/ab;)V

    .line 2289
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz p1, :cond_2

    .line 2290
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->q:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {p1, v0}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps2d/model/Marker;)V

    .line 2291
    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->ab:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2294
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 1985
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$b;->d()V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->d()V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1880
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$b;->c()V

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->e()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1886
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const-string p1, "onScroll"

    .line 2313
    iget-object p3, p0, Lcom/amap/api/mapcore2d/b;->ar:Lcom/amap/api/mapcore2d/bb$a;

    iget-boolean p3, p3, Lcom/amap/api/mapcore2d/bb$a;->k:Z

    const/4 p4, 0x1

    if-nez p3, :cond_3

    .line 2314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object p3, p0, Lcom/amap/api/mapcore2d/b;->ar:Lcom/amap/api/mapcore2d/bb$a;

    iget-wide v2, p3, Lcom/amap/api/mapcore2d/bb$a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2318
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/al;->isScrollGesturesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2319
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->ac:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p4

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 2323
    invoke-static {v0, v1, p1}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    :cond_1
    iget p1, p0, Lcom/amap/api/mapcore2d/b;->aK:I

    if-le p1, p4, :cond_2

    .line 2326
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    return p4

    .line 2337
    :cond_2
    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    .line 2338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 2340
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(II)V

    .line 2341
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2342
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->r()V

    return p4

    :cond_3
    :goto_0
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "onSingleTapConfirmed"

    .line 2540
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2543
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/az$a;->b(Landroid/view/MotionEvent;)Z

    .line 2544
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->as:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/GestureDetector$OnGestureListener;

    .line 2545
    invoke-interface {v3, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2547
    :cond_1
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->ac:Z

    .line 2548
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->P:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 2549
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->P:Z

    return v3

    .line 2553
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 2554
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    .line 2555
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2556
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 2557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 2556
    invoke-virtual {v2, v1, v4, v5}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->S:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    if-eqz v1, :cond_4

    .line 2559
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/at;->e()Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    .line 2560
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->isVisible()Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 2563
    :cond_3
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/interfaces/IMarker;)V

    .line 2564
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->S:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    invoke-interface {p1, v1}, Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps2d/model/Marker;)V

    return v3

    .line 2568
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/at;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2570
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/at;->e()Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2571
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->isVisible()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 2574
    :cond_5
    new-instance v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v1, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/interfaces/IMarker;)V

    .line 2576
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->V:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    if-eqz v2, :cond_8

    .line 2577
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->V:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    invoke-interface {v2, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2578
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/at;->b()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v1, :cond_6

    goto :goto_1

    .line 2584
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/at;->e()Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2585
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->isViewMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2586
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ab;->getRealPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2588
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    .line 2589
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cm;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    .line 2588
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/aq;->a(Lcom/amap/api/mapcore2d/w;)V

    .line 2590
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v1

    .line 2591
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/l;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 2596
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2579
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/at;->c(Lcom/amap/api/mapcore2d/ab;)V

    return v3

    .line 2599
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 2600
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/at;->c(Lcom/amap/api/mapcore2d/ab;)V

    return v3

    :cond_9
    :goto_3
    return v3

    .line 2603
    :cond_a
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ah:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    if-eqz v1, :cond_b

    .line 2604
    new-instance v1, Lcom/amap/api/mapcore2d/s;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/s;-><init>()V

    .line 2605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v2, p1, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/s;)V

    .line 2606
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ah:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/mapcore2d/s;->b:D

    iget-wide v6, v1, Lcom/amap/api/mapcore2d/s;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {p1, v2}, Lcom/amap/api/maps2d/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return v3

    :catch_1
    move-exception p1

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 2609
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_c
    :goto_4
    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1990
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1991
    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1992
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/av;->a(Landroid/graphics/Point;)V

    .line 1993
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/az$c;->a(II)V

    .line 1994
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aq;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aq;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/aq;->a()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    .line 1996
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/aq;->b()F

    move-result v3

    .line 1995
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/aq;->a(FF)V

    .line 1997
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/aq;->a(F)V

    .line 1998
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/aq;->b(F)V

    .line 2000
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->redrawInfoWindow()V

    .line 2001
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aM:Lcom/amap/api/mapcore2d/b$a;

    if-eqz v0, :cond_1

    .line 2002
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aM:Lcom/amap/api/mapcore2d/b$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/api/mapcore2d/b$a;->a(IIII)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1958
    sget-boolean v0, Lcom/amap/api/mapcore2d/q;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_1

    return v1

    .line 1964
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 1968
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    if-eqz v0, :cond_3

    .line 1969
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1970
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1971
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1972
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1973
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1976
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/az$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1979
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/view/MotionEvent;)Z

    .line 1980
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1929
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 2125
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aA:F

    .line 2126
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aB:F

    return-void
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected r()V
    .locals 2

    .line 2804
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public redrawInfoWindow()V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->U:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/view/View;

    .line 1211
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/au$a;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->U:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay;->getRealPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/au$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/au;->a()V

    :cond_1
    return-void
.end method

.method public removeGLOverlay(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/v;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeMarker(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "removeMarker"

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/at;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 514
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/at;->b(Lcom/amap/api/mapcore2d/ab;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removecache()V
    .locals 1

    const/4 v0, 0x0

    .line 3098
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->removecache(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    return-void
.end method

.method public removecache(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 2

    .line 3102
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->an:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3104
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/b$b;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore2d/b$b;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/content/Context;Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    .line 3106
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->an:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3107
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->an:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AMapDelegateImpGLSurfaceView"

    const-string v1, "removecache"

    .line 3109
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method s()V
    .locals 2

    .line 2818
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1923
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->o:Z

    .line 1924
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setInfoWindowAdapter(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->T:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    return-void
.end method

.method public setLocationSource(Lcom/amap/api/maps2d/LocationSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    if-nez v0, :cond_0

    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    instance-of v0, v0, Lcom/amap/api/mapcore2d/c;

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps2d/LocationSource;->deactivate()V

    .line 1040
    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    if-eqz p1, :cond_2

    .line 1042
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    goto :goto_0

    .line 1044
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    :goto_0
    return-void
.end method

.method public setLogoPosition(I)V
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cd;->a(I)V

    .line 1341
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cd;->invalidate()V

    .line 1342
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bk;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1343
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bk;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMapLanguage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3086
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3089
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3093
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/az;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setMapType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 922
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->u:I

    .line 923
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->a(Z)V

    .line 924
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/cd;->a(Z)V

    goto :goto_0

    .line 926
    :cond_0
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->u:I

    const/4 p1, 0x0

    .line 927
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Z)V

    .line 928
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->E:Lcom/amap/api/mapcore2d/cd;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cd;->a(Z)V

    .line 930
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/d;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/LocationSource;->activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V

    .line 955
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    .line 956
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-nez v0, :cond_3

    .line 957
    new-instance v0, Lcom/amap/api/mapcore2d/bc;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/bc;-><init>(Lcom/amap/api/mapcore2d/y;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    goto :goto_0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bc;->a()V

    const/4 v0, 0x0

    .line 962
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps2d/LocationSource;->deactivate()V

    .line 966
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    goto :goto_0

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ap;->a(Z)V

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 972
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/al;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/al;->setMyLocationButtonEnabled(Z)V

    .line 973
    :cond_4
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->C:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "AMapDelegateImpGLSurfaceView"

    const-string v1, "setMyLocationEnabled"

    .line 975
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setMyLocationRotateAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bc;->a(F)V

    :cond_0
    return-void
.end method

.method public setMyLocationStyle(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 993
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->b()Lcom/amap/api/mapcore2d/bc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 994
    new-instance v0, Lcom/amap/api/mapcore2d/bc;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/bc;-><init>(Lcom/amap/api/mapcore2d/y;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-eqz v0, :cond_3

    .line 998
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1000
    invoke-virtual {p1, v2, v3}, Lcom/amap/api/maps2d/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    instance-of v0, v0, Lcom/amap/api/mapcore2d/c;

    if-eqz v0, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    check-cast v0, Lcom/amap/api/mapcore2d/c;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/c;->a(J)V

    .line 1007
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    check-cast v0, Lcom/amap/api/mapcore2d/c;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->getMyLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/c;->a(I)V

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bc;->a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V

    :cond_3
    return-void
.end method

.method public setMyLocationType(I)V
    .locals 1

    .line 3179
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bc;->a(I)V

    :cond_0
    return-void
.end method

.method public setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2800
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->L:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->S:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    return-void
.end method

.method public setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1068
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ah:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    return-void
.end method

.method public setOnMapLongClickListener(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    return-void
.end method

.method public setOnMapTouchListener(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    return-void
.end method

.method public setOnMaploadedListener(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ag:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->V:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    return-void
.end method

.method public setOnMarkerDragListener(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    return-void
.end method

.method public setOnMyLocationChangeListener(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1222
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Z)V

    .line 941
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setZoomPosition(I)V
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ce;->a(I)V

    .line 1352
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ce;->invalidate()V

    :cond_0
    return-void
.end method

.method public showCompassEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1246
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/p;->setVisibility(I)V

    goto :goto_0

    .line 1248
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/p;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showMyLocationButtonEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1237
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ap;->setVisibility(I)V

    goto :goto_0

    .line 1239
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/ap;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ap;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showMyLocationOverlay(Landroid/location/Location;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 442
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/LocationSource;

    if-nez v0, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-nez v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-nez v0, :cond_2

    .line 450
    new-instance v0, Lcom/amap/api/mapcore2d/bc;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->n:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/bc;-><init>(Lcom/amap/api/mapcore2d/y;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    .line 454
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/location/Location;)V

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    .line 492
    :cond_4
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Landroid/location/Location;

    goto :goto_1

    .line 443
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    if-eqz p1, :cond_6

    .line 444
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bc;->a()V

    :cond_6
    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/bc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 494
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public showScaleEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1255
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bk;->setVisibility(I)V

    .line 1256
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->s()V

    goto :goto_0

    .line 1258
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/bk;->a(Ljava/lang/String;)V

    .line 1259
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bk;->a(I)V

    .line 1260
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->F:Lcom/amap/api/mapcore2d/bk;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bk;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showZoomControlsEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1228
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ce;->setVisibility(I)V

    goto :goto_0

    .line 1230
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/ce;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ce;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    if-nez v0, :cond_0

    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/k;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Lcom/amap/api/mapcore2d/k;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/k;->a(Z)V

    .line 748
    invoke-static {}, Lcom/amap/api/mapcore2d/l;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/l;->b()V

    .line 749
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_1
    const/4 v0, 0x0

    .line 752
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/aq;->b(Z)V

    return-void
.end method

.method public t()V
    .locals 1

    .line 3012
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    const/4 v0, 0x0

    .line 3014
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    :cond_0
    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 2

    .line 3028
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
