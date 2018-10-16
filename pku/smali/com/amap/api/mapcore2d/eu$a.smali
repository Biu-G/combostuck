.class Lcom/amap/api/mapcore2d/eu$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/eu$1;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/eu$a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 445
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 453
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/mapcore2d/ey;

    .line 454
    iget-object v0, p1, Lcom/amap/api/mapcore2d/ey;->b:Lcom/amap/api/mapcore2d/ew;

    .line 455
    iget-object p1, p1, Lcom/amap/api/mapcore2d/ey;->a:Lcom/amap/api/mapcore2d/co;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ew;->a(Lcom/amap/api/mapcore2d/co;)V

    goto :goto_0

    .line 448
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/mapcore2d/ey;

    .line 449
    iget-object p1, p1, Lcom/amap/api/mapcore2d/ey;->b:Lcom/amap/api/mapcore2d/ew;

    .line 450
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ew;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 462
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
