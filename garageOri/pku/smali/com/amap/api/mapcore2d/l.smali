.class Lcom/amap/api/mapcore2d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/l$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/l;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amap/api/mapcore2d/l;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/l;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/l;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/l;
    .locals 1

    .line 12
    sget-object v0, Lcom/amap/api/mapcore2d/l;->a:Lcom/amap/api/mapcore2d/l;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/l$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore2d/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore2d/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/l$a;

    if-eqz v1, :cond_0

    .line 22
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/l$a;->v()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/l$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore2d/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
