.class Lcom/amap/api/mapcore2d/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/v;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/v;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amap/api/mapcore2d/v$a;->a:Lcom/amap/api/mapcore2d/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/v;Lcom/amap/api/mapcore2d/v$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/v$a;-><init>(Lcom/amap/api/mapcore2d/v;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const-string v0, "compare"

    .line 45
    check-cast p1, Lcom/amap/api/mapcore2d/ad;

    .line 46
    check-cast p2, Lcom/amap/api/mapcore2d/ad;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 49
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ad;->getZIndex()F

    move-result v1

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ad;->getZIndex()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 51
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ad;->getZIndex()F

    move-result p1

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ad;->getZIndex()F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "GLOverlayLayer"

    .line 56
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
