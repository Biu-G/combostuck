.class Lcom/amap/api/mapcore2d/ay$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ay;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ay$1;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "run"

    const-string v1, "MarkerThread"

    .line 654
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/ay$a;->setName(Ljava/lang/String;)V

    .line 655
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    .line 656
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    .line 657
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 658
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->b(Lcom/amap/api/mapcore2d/ay;)I

    move-result v1

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_1

    .line 659
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;I)I

    goto :goto_1

    .line 661
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->c(Lcom/amap/api/mapcore2d/ay;)I

    .line 663
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->d(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/at;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 665
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->e(Lcom/amap/api/mapcore2d/ay;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xfa

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "MarkerDelegateImp"

    .line 667
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 670
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 674
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method
