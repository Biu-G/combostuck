.class public final Lcom/amap/api/mapcore2d/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/fq$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/String;

.field d:J

.field e:Landroid/net/wifi/WifiInfo;

.field f:Z

.field g:I

.field private h:Lcom/amap/api/mapcore2d/fx;

.field private i:Lcom/amap/api/mapcore2d/fw;

.field private j:Lcom/amap/api/mapcore2d/fq$a;

.field private k:Lcom/amap/api/mapcore2d/fz;

.field private l:Landroid/net/ConnectivityManager;

.field private m:Lcom/amap/api/mapcore2d/gb;

.field private n:Ljava/lang/StringBuilder;

.field private o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

.field private p:Lcom/amap/api/mapcore2d/fi;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->k:Lcom/amap/api/mapcore2d/fz;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->l:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->m:Lcom/amap/api/mapcore2d/gb;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/fq;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amap/api/mapcore2d/fq;->d:J

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->e:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fq;->f:Z

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->q:Ljava/lang/String;

    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/api/mapcore2d/fq;->g:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/gf;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/fq;->a(Landroid/content/Context;)V

    new-instance p1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/amap/api/mapcore2d/fx;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/mapcore2d/fx;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fq;->b:Z

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/fx;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    if-nez p1, :cond_1

    new-instance p1, Lcom/amap/api/mapcore2d/fw;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore2d/fw;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->k:Lcom/amap/api/mapcore2d/fz;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/fz;->a(Landroid/content/Context;)Lcom/amap/api/mapcore2d/fz;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->k:Lcom/amap/api/mapcore2d/fz;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->l:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->l:Landroid/net/ConnectivityManager;

    :cond_3
    new-instance p1, Lcom/amap/api/mapcore2d/gb;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/gb;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->m:Lcom/amap/api/mapcore2d/gb;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fq;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "NetLocation"

    const-string v1, "<init>"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static varargs a(Lcom/amap/api/mapcore2d/fi;[Ljava/lang/String;)Lcom/amap/api/mapcore2d/fi;
    .locals 3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "shake"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore2d/fl;->a()Lcom/amap/api/mapcore2d/fl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/fl;->a(Lcom/amap/api/mapcore2d/fi;)Lcom/amap/api/mapcore2d/fi;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object p1, p1, v0

    const-string v0, "fusion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/amap/api/mapcore2d/fl;->a()Lcom/amap/api/mapcore2d/fl;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/fl;->b(Lcom/amap/api/mapcore2d/fi;)Lcom/amap/api/mapcore2d/fi;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Lcom/amap/api/mapcore2d/fl;->a()Lcom/amap/api/mapcore2d/fl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/fl;->a(Lcom/amap/api/mapcore2d/fi;)Lcom/amap/api/mapcore2d/fi;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/fq;)Lcom/amap/api/mapcore2d/fx;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/fq;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(J)Z
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x320

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const-wide/16 p1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/fs;->a(Lcom/amap/api/mapcore2d/fi;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->a()J

    move-result-wide p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/fq$a;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/fq$a;-><init>(Lcom/amap/api/mapcore2d/fq;B)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fx;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fw;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()Lcom/amap/api/mapcore2d/fi;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore2d/fi;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/fi;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/fx;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    return-object v0

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->m:Lcom/amap/api/mapcore2d/gb;

    if-nez v2, :cond_1

    new-instance v2, Lcom/amap/api/mapcore2d/gb;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/gb;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/fq;->m:Lcom/amap/api/mapcore2d/gb;

    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/fq;->m:Lcom/amap/api/mapcore2d/gb;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isNeedAddress()Z

    move-result v5

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isOffset()Z

    move-result v6

    iget-object v7, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    iget-object v8, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    iget-object v9, p0, Lcom/amap/api/mapcore2d/fq;->l:Landroid/net/ConnectivityManager;

    iget-object v10, p0, Lcom/amap/api/mapcore2d/fq;->q:Ljava/lang/String;

    iget-object v11, p0, Lcom/amap/api/mapcore2d/fq;->c:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcom/amap/api/mapcore2d/gb;->a(Landroid/content/Context;ZZLcom/amap/api/mapcore2d/fw;Lcom/amap/api/mapcore2d/fx;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v2, Lcom/amap/api/mapcore2d/fr;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/fr;-><init>()V

    const/4 v3, 0x0

    const-string v4, ""

    :try_start_1
    iget-object v5, p0, Lcom/amap/api/mapcore2d/fq;->m:Lcom/amap/api/mapcore2d/gb;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/gb;->a()[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x4

    :try_start_2
    iget-object v6, p0, Lcom/amap/api/mapcore2d/fq;->k:Lcom/amap/api/mapcore2d/fz;

    iget-object v7, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore2d/gc;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8}, Lcom/amap/api/mapcore2d/fz;->a(Landroid/content/Context;[BLjava/lang/String;)Lcom/amap/api/mapcore2d/ga;

    move-result-object v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/fq;->k:Lcom/amap/api/mapcore2d/fz;

    invoke-virtual {v6, v5}, Lcom/amap/api/mapcore2d/fz;->a(Lcom/amap/api/mapcore2d/ga;)Lcom/amap/api/mapcore2d/ex;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v3, v5, Lcom/amap/api/mapcore2d/ex;->a:[B

    iget-object v4, v5, Lcom/amap/api/mapcore2d/ex;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    if-eqz v3, :cond_15

    array-length v6, v3

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v6, "\"status\":\"0\""

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0, v5}, Lcom/amap/api/mapcore2d/fr;->a(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore2d/ex;)Lcom/amap/api/mapcore2d/fi;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v5, "</body></html>"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x5

    if-eqz v1, :cond_7

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/fx;->a(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    const-string v2, "make sure you are logged in to the network"

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    const-string v2, "request may be intercepted"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :cond_7
    invoke-static {v3}, Lcom/amap/api/mapcore2d/fy;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    const-string v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :cond_9
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/fr;->a([B)Lcom/amap/api/mapcore2d/fi;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/amap/api/mapcore2d/fi;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/fi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    const-string v2, "location is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fq;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->getLocationDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " #csid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    :cond_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/amap/api/mapcore2d/fs;->a(Lcom/amap/api/mapcore2d/fi;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->getLocationType()I

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "-5"

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "1"

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "2"

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "14"

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "24"

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "-1"

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_1

    :cond_e
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/fi;->setLocationType(I)V

    goto :goto_2

    :cond_f
    :goto_1
    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/fi;->setLocationType(I)V

    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    :cond_11
    return-object v0

    :cond_12
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "location faile retype:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fi;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rdesc:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_13

    goto :goto_3

    :cond_13
    const-string v1, "null"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :cond_15
    :goto_4
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    const-string v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "NetLocation"

    const-string v4, "getApsLoc req"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    const-string v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception v2

    const-string v3, "NetLocation"

    const-string v4, "getApsLoc buildV4Dot2"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildV4Dot2 error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :catch_2
    move-exception v2

    const-string v3, "NetLocation"

    const-string v4, "getApsLoc"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get parames error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/fi;->setLocationDetail(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v2, p0, Lcom/amap/api/mapcore2d/fq;->d:J

    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore2d/fq;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/fs;->a(Lcom/amap/api/mapcore2d/fi;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/mapcore2d/fq;->d:J

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fw;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "NetLocation"

    const-string v4, "getLocation getCgiListParam"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/fx;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "NetLocation"

    const-string v3, "getLocation getScanResultsParam"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fq;->d()Lcom/amap/api/mapcore2d/fi;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/fq;->a(Lcom/amap/api/mapcore2d/fi;[Ljava/lang/String;)Lcom/amap/api/mapcore2d/fi;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->p:Lcom/amap/api/mapcore2d/fi;

    return-object v0
.end method

.method public final a(Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;)V
    .locals 4

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    if-nez p1, :cond_0

    new-instance p1, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isWifiActiveScan()Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->isWifiScan()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/fx;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/fq;->k:Lcom/amap/api/mapcore2d/fz;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getHttpTimeOut()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->o:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;->getLocationProtocol()Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    move-result-object v2

    sget-object v3, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->HTTPS:Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/amap/api/mapcore2d/fz;->a(JZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fq;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->c:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->i:Lcom/amap/api/mapcore2d/fw;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/fw;->g()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fq;->h:Lcom/amap/api/mapcore2d/fx;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/fx;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    throw v1

    :catch_0
    iput-object v0, p0, Lcom/amap/api/mapcore2d/fq;->j:Lcom/amap/api/mapcore2d/fq$a;

    return-void
.end method
