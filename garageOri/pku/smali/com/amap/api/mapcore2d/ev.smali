.class public abstract Lcom/amap/api/mapcore2d/ev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:I

.field d:I

.field e:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 14
    iput v0, p0, Lcom/amap/api/mapcore2d/ev;->c:I

    .line 16
    iput v0, p0, Lcom/amap/api/mapcore2d/ev;->d:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ev;->e:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/amap/api/mapcore2d/ev;->c:I

    return-void
.end method

.method public final a(Ljava/net/Proxy;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ev;->e:Ljava/net/Proxy;

    return-void
.end method

.method public a_()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/amap/api/mapcore2d/ev;->d:I

    return-void
.end method

.method public abstract e()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method l()Ljava/lang/String;
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ev;->a_()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ev;->f()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ev;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_1
    invoke-static {v0}, Lcom/amap/api/mapcore2d/es;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ev;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ev;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()[B
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ev;->a_()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    array-length v1, v0

    if-nez v1, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ev;->f()Ljava/util/Map;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/amap/api/mapcore2d/es;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method
