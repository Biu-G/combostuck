.class Lcom/amap/api/mapcore2d/bu;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bu$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/mapcore2d/y;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore2d/bu$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/y;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    new-instance p1, Lcom/amap/api/mapcore2d/bu$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/bu$a;-><init>(Lcom/amap/api/mapcore2d/bu;Lcom/amap/api/mapcore2d/bu$1;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bu;->d:Lcom/amap/api/mapcore2d/bu$a;

    .line 18
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bu;->b:Lcom/amap/api/mapcore2d/y;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    .line 52
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-interface {v1, p1}, Lcom/amap/api/mapcore2d/ak;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ak;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bu;->b(Lcom/amap/api/mapcore2d/ak;)Z

    .line 96
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bu;->c()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v1, p1}, Lcom/amap/api/mapcore2d/ak;->a(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->remove()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/ak;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method c()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bu;->d:Lcom/amap/api/mapcore2d/bu$a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 89
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v3, Lcom/amap/api/mapcore2d/ak;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method
