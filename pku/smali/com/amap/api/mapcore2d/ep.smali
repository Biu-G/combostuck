.class public Lcom/amap/api/mapcore2d/ep;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ep$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/ep;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/ep;
    .locals 1

    .line 45
    sget-object v0, Lcom/amap/api/mapcore2d/ep;->a:Lcom/amap/api/mapcore2d/ep;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amap/api/mapcore2d/ep;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ep;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/ep;->a:Lcom/amap/api/mapcore2d/ep;

    .line 48
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/ep;->a:Lcom/amap/api/mapcore2d/ep;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ev;Z)Lcom/amap/api/mapcore2d/ex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/co;
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ep;->b(Lcom/amap/api/mapcore2d/ev;)V

    .line 213
    iget-object v0, p1, Lcom/amap/api/mapcore2d/ev;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore2d/ev;->e:Ljava/net/Proxy;

    .line 218
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/es;

    iget v2, p1, Lcom/amap/api/mapcore2d/ev;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/ev;->d:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore2d/es;-><init>(IILjava/net/Proxy;Z)V

    .line 222
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ev;->l()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ev;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ev;->m()[B

    move-result-object p1

    .line 222
    invoke-virtual {v1, p2, v0, p1}, Lcom/amap/api/mapcore2d/es;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/mapcore2d/ex;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    new-instance p1, Lcom/amap/api/mapcore2d/co;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore2d/co;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 227
    throw p1
.end method

.method public a(Lcom/amap/api/mapcore2d/ev;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/co;
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/ep;->a(Lcom/amap/api/mapcore2d/ev;Z)Lcom/amap/api/mapcore2d/ex;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p1, Lcom/amap/api/mapcore2d/ex;->a:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "BaseNetManager"

    const-string v1, "makeSyncPostRequest"

    .line 130
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p1, Lcom/amap/api/mapcore2d/co;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore2d/co;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 128
    throw p1
.end method

.method protected b(Lcom/amap/api/mapcore2d/ev;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/co;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ev;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ev;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance p1, Lcom/amap/api/mapcore2d/co;

    const-string v0, "request url is empty"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore2d/co;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_1
    new-instance p1, Lcom/amap/api/mapcore2d/co;

    const-string v0, "requeust is null"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore2d/co;-><init>(Ljava/lang/String;)V

    throw p1
.end method
