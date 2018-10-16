.class abstract Lcom/amap/api/mapcore2d/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bb$a;,
        Lcom/amap/api/mapcore2d/bb$b;
    }
.end annotation


# static fields
.field static j:F = 1.0f

.field private static p:Ljava/lang/reflect/Method; = null

.field private static q:Ljava/lang/reflect/Method; = null

.field private static r:Z = false

.field private static s:Z = false


# instance fields
.field a:Lcom/amap/api/mapcore2d/bb$b;

.field b:I

.field c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Matrix;

.field e:Landroid/graphics/PointF;

.field f:Landroid/graphics/PointF;

.field g:Landroid/graphics/PointF;

.field h:F

.field i:F

.field k:Z

.field l:Z

.field m:Z

.field public n:I

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/amap/api/mapcore2d/bb;->b:I

    .line 27
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Landroid/graphics/Matrix;

    .line 28
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bb;->d:Landroid/graphics/Matrix;

    .line 29
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bb;->e:Landroid/graphics/PointF;

    .line 30
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bb;->f:Landroid/graphics/PointF;

    .line 31
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bb;->g:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    iput v1, p0, Lcom/amap/api/mapcore2d/bb;->h:F

    .line 33
    iput v1, p0, Lcom/amap/api/mapcore2d/bb;->i:F

    .line 35
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bb;->k:Z

    .line 36
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bb;->l:Z

    .line 37
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bb;->m:Z

    .line 48
    iput v0, p0, Lcom/amap/api/mapcore2d/bb;->n:I

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bb;->o:J

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb$b;)Lcom/amap/api/mapcore2d/bb$a;
    .locals 0

    .line 60
    new-instance p0, Lcom/amap/api/mapcore2d/bb$a;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bb$a;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb$b;

    return-object p0
.end method

.method static synthetic a(Landroid/view/MotionEvent;)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/amap/api/mapcore2d/bb;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/amap/api/mapcore2d/bb;->r:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    .line 13
    sget-object v0, Lcom/amap/api/mapcore2d/bb;->p:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static b(Landroid/view/MotionEvent;)V
    .locals 7

    const-string v0, "checkSDKForMuti"

    .line 90
    sget-boolean v1, Lcom/amap/api/mapcore2d/bb;->s:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 92
    sput-boolean v1, Lcom/amap/api/mapcore2d/bb;->s:Z

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getX"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/amap/api/mapcore2d/bb;->p:Ljava/lang/reflect/Method;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "getY"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/bb;->q:Ljava/lang/reflect/Method;

    .line 98
    sget-object p0, Lcom/amap/api/mapcore2d/bb;->p:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/amap/api/mapcore2d/bb;->q:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    .line 99
    sput-boolean v1, Lcom/amap/api/mapcore2d/bb;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "MutiTouchGestureDetector"

    .line 101
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    .line 13
    sget-object v0, Lcom/amap/api/mapcore2d/bb;->q:Ljava/lang/reflect/Method;

    return-object v0
.end method
