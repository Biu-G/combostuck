.class Lcom/amap/api/mapcore2d/at$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/amap/api/mapcore2d/ac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ac;Lcom/amap/api/mapcore2d/ac;)I
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 62
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->getZIndex()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ac;->getZIndex()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ac;->getZIndex()F

    move-result p1

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ac;->getZIndex()F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "MapOverlayImageView"

    const-string v0, "compare"

    .line 69
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/amap/api/mapcore2d/ac;

    check-cast p2, Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/at$a;->a(Lcom/amap/api/mapcore2d/ac;Lcom/amap/api/mapcore2d/ac;)I

    move-result p1

    return p1
.end method
