.class public Lcom/amap/api/mapcore2d/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore2d/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/y;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/amap/api/mapcore2d/g;->b:Lcom/amap/api/mapcore2d/y;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 46
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/cm;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "002"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "11K"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "001"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "145"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/amap/api/mapcore2d/cq;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore2d/cq$a;

    move-result-object v1

    .line 64
    sget v2, Lcom/amap/api/mapcore2d/cq;->a:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    .line 65
    iget-object v2, p0, Lcom/amap/api/mapcore2d/g;->b:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/y;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x2

    .line 66
    iput v4, v2, Landroid/os/Message;->what:I

    .line 67
    iget-object v4, v1, Lcom/amap/api/mapcore2d/cq$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 68
    iget-object v4, v1, Lcom/amap/api/mapcore2d/cq$a;->a:Ljava/lang/String;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/amap/api/mapcore2d/g;->b:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v4}, Lcom/amap/api/mapcore2d/y;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    if-eqz v1, :cond_7

    .line 74
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cq$a;->u:Lcom/amap/api/mapcore2d/cq$a$a;

    if-eqz v2, :cond_3

    .line 75
    invoke-static {}, Lcom/amap/api/mapcore2d/cm;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v2

    iget-object v4, v1, Lcom/amap/api/mapcore2d/cq$a;->u:Lcom/amap/api/mapcore2d/cq$a$a;

    iget-boolean v4, v4, Lcom/amap/api/mapcore2d/cq$a$a;->a:Z

    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore2d/cy;->a(Z)V

    .line 78
    :cond_3
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cq$a;->w:Lcom/amap/api/mapcore2d/cq$a$c;

    if-eqz v2, :cond_4

    .line 79
    new-instance v2, Lcom/amap/api/mapcore2d/cx;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/content/Context;

    const-string v5, "2dmap"

    iget-object v6, v1, Lcom/amap/api/mapcore2d/cq$a;->w:Lcom/amap/api/mapcore2d/cq$a$c;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/cq$a$c;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/amap/api/mapcore2d/cq$a;->w:Lcom/amap/api/mapcore2d/cq$a$c;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/cq$a$c;->b:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/mapcore2d/cx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cx;->a()V

    .line 87
    :cond_4
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cq$a;->t:Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    .line 88
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cq$a;->t:Lorg/json/JSONObject;

    .line 91
    sget v4, Lcom/amap/api/mapcore2d/q;->q:I

    const-string v5, "t"

    .line 94
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "t"

    .line 95
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 98
    :cond_5
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    move-result-object v5

    const-string v6, "period_day"

    invoke-virtual {v5, v6, v4}, Lcom/amap/api/mapcore2d/bg;->b(Ljava/lang/String;I)V

    const-string v4, "able"

    .line 100
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    const-string v4, "able"

    .line 101
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v4, v5}, Lcom/amap/api/mapcore2d/cq;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 103
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    const-string v6, "UpdateDataActiveEnable"

    invoke-static {v6, v4}, Lcom/amap/api/mapcore2d/bg;->b(Ljava/lang/String;Z)V

    .line 104
    invoke-static {v4}, Lcom/amap/api/maps2d/MapsInitializer;->setUpdateDataActiveEnable(Z)V

    :cond_6
    const-string v4, "oi"

    .line 108
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "oi"

    .line 109
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2, v5}, Lcom/amap/api/mapcore2d/cq;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 111
    invoke-static {v2}, Lcom/amap/api/mapcore2d/q;->a(Z)V

    :cond_7
    if-eqz v1, :cond_b

    .line 118
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cq$a;->v:Lcom/amap/api/mapcore2d/cq$a$d;

    if-eqz v2, :cond_b

    .line 120
    iget-object v1, v1, Lcom/amap/api/mapcore2d/cq$a;->v:Lcom/amap/api/mapcore2d/cq$a$d;

    if-eqz v1, :cond_a

    .line 122
    iget-object v2, v1, Lcom/amap/api/mapcore2d/cq$a$d;->b:Ljava/lang/String;

    .line 123
    iget-object v4, v1, Lcom/amap/api/mapcore2d/cq$a$d;->a:Ljava/lang/String;

    .line 124
    iget-object v1, v1, Lcom/amap/api/mapcore2d/cq$a$d;->c:Ljava/lang/String;

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_0

    .line 130
    :cond_8
    new-instance v3, Lcom/amap/api/mapcore2d/ea;

    invoke-direct {v3, v4, v2, v1}, Lcom/amap/api/mapcore2d/ea;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/amap/api/mapcore2d/dz;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/cm;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/dz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ea;Lcom/amap/api/mapcore2d/cy;)V

    .line 132
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dz;->a()V

    goto :goto_1

    .line 127
    :cond_9
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/dz;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/cm;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/dz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ea;Lcom/amap/api/mapcore2d/cy;)V

    .line 128
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dz;->a()V

    goto :goto_1

    .line 135
    :cond_a
    new-instance v1, Lcom/amap/api/mapcore2d/dz;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/cm;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore2d/dz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ea;Lcom/amap/api/mapcore2d/cy;)V

    .line 136
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dz;->a()V

    .line 140
    :cond_b
    :goto_1
    sput-object v0, Lcom/amap/api/mapcore2d/q;->p:Lcom/amap/api/mapcore2d/cy;

    .line 141
    iget-object v1, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore2d/dg;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)Lcom/amap/api/mapcore2d/dg;

    .line 142
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/g;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/g;->interrupt()V

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    .line 145
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
