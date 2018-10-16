.class public Lcom/amap/api/mapcore2d/df;
.super Lcom/amap/api/mapcore2d/ev;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ev;-><init>()V

    const-string v0, "1"

    .line 15
    iput-object v0, p0, Lcom/amap/api/mapcore2d/df;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amap/api/mapcore2d/df;->a:[B

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ev;-><init>()V

    const-string v0, "1"

    .line 15
    iput-object v0, p0, Lcom/amap/api/mapcore2d/df;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amap/api/mapcore2d/df;->a:[B

    .line 24
    iput-object p2, p0, Lcom/amap/api/mapcore2d/df;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .line 29
    sget-object v0, Lcom/amap/api/mapcore2d/db;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 30
    array-length v1, v0

    const/16 v2, 0x32

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 31
    iget-object v3, p0, Lcom/amap/api/mapcore2d/df;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cv;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a_()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amap/api/mapcore2d/df;->a:[B

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/zip"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Length"

    .line 42
    iget-object v2, p0, Lcom/amap/api/mapcore2d/df;->a:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .line 56
    sget-object v0, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/df;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "1"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "open"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 58
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/df;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
