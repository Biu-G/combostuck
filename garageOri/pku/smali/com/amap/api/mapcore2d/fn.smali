.class public final Lcom/amap/api/mapcore2d/fn;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Lcom/amap/api/mapcore2d/fm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/fm;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/fm;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClientActionHandler"

    const-string v1, "ACTION_DESTROY"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/fm;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "ClientActionHandler"

    const-string v1, "ACTION_STOP_LOCATION"

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/fm;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string v0, "ClientActionHandler"

    const-string v1, "ACTION_GET_LOCATION"

    goto :goto_0

    :pswitch_3
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/fm;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    const-string v0, "ClientActionHandler"

    const-string v1, "ACTION_START_LOCATION"

    goto :goto_0

    :pswitch_4
    :try_start_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/fm;->b(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "ClientActionHandler"

    const-string v1, "ACTION_REMOVE_LISTENER"

    goto :goto_0

    :pswitch_5
    :try_start_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/fm;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationListener;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    return-void

    :catch_5
    move-exception p1

    const-string v0, "ClientActionHandler"

    const-string v1, "ACTION_SET_LISTENER"

    goto :goto_0

    :pswitch_6
    :try_start_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fn;->a:Lcom/amap/api/mapcore2d/fm;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/fm;->a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "ClientActionHandler"

    const-string v1, "ACTION_SET_OPTION"

    goto :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
