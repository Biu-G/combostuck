.class public Lcom/amap/api/mapcore2d/er;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/er$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore2d/es;

.field private b:Lcom/amap/api/mapcore2d/ev;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ev;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/er;-><init>(Lcom/amap/api/mapcore2d/ev;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore2d/ev;JJ)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amap/api/mapcore2d/er;->b:Lcom/amap/api/mapcore2d/ev;

    .line 49
    iget-object v0, p1, Lcom/amap/api/mapcore2d/ev;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p1, Lcom/amap/api/mapcore2d/ev;->e:Ljava/net/Proxy;

    .line 54
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore2d/es;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/er;->b:Lcom/amap/api/mapcore2d/ev;

    iget v1, v1, Lcom/amap/api/mapcore2d/ev;->c:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/er;->b:Lcom/amap/api/mapcore2d/ev;

    iget v2, v2, Lcom/amap/api/mapcore2d/ev;->d:I

    invoke-direct {v0, v1, v2, p1}, Lcom/amap/api/mapcore2d/es;-><init>(IILjava/net/Proxy;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/er;->a:Lcom/amap/api/mapcore2d/es;

    .line 56
    iget-object p1, p0, Lcom/amap/api/mapcore2d/er;->a:Lcom/amap/api/mapcore2d/es;

    invoke-virtual {p1, p4, p5}, Lcom/amap/api/mapcore2d/es;->b(J)V

    .line 57
    iget-object p1, p0, Lcom/amap/api/mapcore2d/er;->a:Lcom/amap/api/mapcore2d/es;

    invoke-virtual {p1, p2, p3}, Lcom/amap/api/mapcore2d/es;->a(J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/er$a;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore2d/er;->a:Lcom/amap/api/mapcore2d/es;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/er;->b:Lcom/amap/api/mapcore2d/ev;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ev;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/er;->b:Lcom/amap/api/mapcore2d/ev;

    .line 68
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ev;->e()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/er;->b:Lcom/amap/api/mapcore2d/ev;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ev;->f()Ljava/util/Map;

    move-result-object v3

    .line 67
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amap/api/mapcore2d/es;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/mapcore2d/er$a;)V

    return-void
.end method
