.class abstract Lcom/amap/api/mapcore2d/bj;
.super Lcom/amap/api/mapcore2d/ev;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore2d/ev;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ev;-><init>()V

    const/4 v0, 0x1

    .line 191
    iput v0, p0, Lcom/amap/api/mapcore2d/bj;->b:I

    const/4 v1, 0x0

    .line 193
    iput v1, p0, Lcom/amap/api/mapcore2d/bj;->f:I

    .line 29
    iput v0, p0, Lcom/amap/api/mapcore2d/bj;->b:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/amap/api/mapcore2d/bj;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bj;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bj;->a:Ljava/lang/Object;

    return-void
.end method

.method private b([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bj;->a([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const-string v0, "GetDataMayThrow"

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bj;->b()[B

    move-result-object v1

    .line 100
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/bj;->b([B)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ProtocalHandler"

    .line 106
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :catch_1
    move-exception v0

    .line 103
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bj;->c()Ljava/lang/Object;

    .line 104
    new-instance v1, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bj;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bj;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected abstract a([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method protected b()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const-string v0, "getData"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    :goto_0
    iget v3, p0, Lcom/amap/api/mapcore2d/bj;->b:I

    if-ge v2, v3, :cond_1

    .line 71
    :try_start_0
    invoke-static {v1}, Lcom/amap/api/mapcore2d/eu;->a(Z)Lcom/amap/api/mapcore2d/eu;

    move-result-object v3

    .line 72
    invoke-virtual {v3, p0}, Lcom/amap/api/mapcore2d/eu;->c(Lcom/amap/api/mapcore2d/ev;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    .line 77
    iget v4, p0, Lcom/amap/api/mapcore2d/bj;->b:I

    if-ge v2, v4, :cond_0

    .line 79
    :try_start_1
    iget v4, p0, Lcom/amap/api/mapcore2d/bj;->f:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "ProtocalHandler"

    .line 87
    invoke-static {v3, v4, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catch_1
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/co;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/co;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
