.class abstract Lcom/amap/api/mapcore2d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/amap/api/mapcore2d/e;->d:I

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->e:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->f:Z

    .line 81
    new-instance v0, Lcom/amap/api/mapcore2d/e$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/e$1;-><init>(Lcom/amap/api/mapcore2d/e;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->g:Ljava/lang/Runnable;

    .line 25
    iput p1, p0, Lcom/amap/api/mapcore2d/e;->a:I

    .line 26
    iput p2, p0, Lcom/amap/api/mapcore2d/e;->b:I

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/e;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/amap/api/mapcore2d/e;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/e;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/e;->h()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/e;)Landroid/os/Handler;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/amap/api/mapcore2d/e;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/e;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/e;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/e;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/e;->i()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->e:Z

    return-void
.end method

.method private h()V
    .locals 2

    .line 54
    iget v0, p0, Lcom/amap/api/mapcore2d/e;->d:I

    iget v1, p0, Lcom/amap/api/mapcore2d/e;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/e;->d:I

    .line 55
    iget v0, p0, Lcom/amap/api/mapcore2d/e;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/e;->d:I

    iget v1, p0, Lcom/amap/api/mapcore2d/e;->a:I

    if-le v0, v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/e;->g()V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/e;->b(Z)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/e;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/amap/api/mapcore2d/e;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/e;->e:Z

    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/e;->f:Z

    return-void
.end method

.method protected abstract c()V
.end method

.method public d()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/e;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->e:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->f:Z

    .line 38
    iput v0, p0, Lcom/amap/api/mapcore2d/e;->d:I

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/e;->i()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/amap/api/mapcore2d/n;->a()Lcom/amap/api/mapcore2d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/n;->b()V

    .line 45
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/e;->g()V

    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore2d/e;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/e;->e:Z

    return v0
.end method
