.class abstract Lcom/amap/api/mapcore2d/f;
.super Lcom/amap/api/mapcore2d/aw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore2d/aw;"
    }
.end annotation


# instance fields
.field protected a:Lcom/amap/api/mapcore2d/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bo<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Lcom/amap/api/mapcore2d/bq;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/az;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/aw;-><init>(Lcom/amap/api/mapcore2d/az;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/f;->c:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    .line 115
    new-instance p1, Lcom/amap/api/mapcore2d/f$1;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/f$1;-><init>(Lcom/amap/api/mapcore2d/f;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/f;->e:Ljava/lang/Runnable;

    .line 196
    new-instance p1, Lcom/amap/api/mapcore2d/f$2;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/f$2;-><init>(Lcom/amap/api/mapcore2d/f;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/f;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/f;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/f;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/f;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/f;->c:Z

    return p0
.end method


# virtual methods
.method protected abstract a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method protected a()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    .line 26
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/bq;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->f()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/f;->f:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/f;->e:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/bq;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;

    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bq;->a()V

    return-void
.end method

.method protected abstract b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method public b()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bo;->a()V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->e()V

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bo;->b()V

    :cond_1
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    .line 41
    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->f:Ljava/lang/Runnable;

    .line 42
    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->e:Ljava/lang/Runnable;

    .line 43
    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/az;

    return-void
.end method

.method public c()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/amap/api/mapcore2d/aw;->c()V

    .line 50
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->e()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/f;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 65
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/f;->c:Z

    .line 66
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Lcom/amap/api/mapcore2d/bq;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/f;->f()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/f;->f:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/f;->e:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/bq;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;

    .line 71
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bq;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AsyncServer"

    const-string v2, "onResume"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/f;->c:Z

    .line 82
    iget-object v1, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 85
    iget-object v4, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 90
    iget-object v4, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iput-object v2, p0, Lcom/amap/api/mapcore2d/f;->d:Ljava/util/Vector;

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bq;->b()V

    .line 98
    iput-object v2, p0, Lcom/amap/api/mapcore2d/f;->g:Lcom/amap/api/mapcore2d/bq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AsyncServer"

    const-string v2, "stopThreads"

    .line 101
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected abstract f()I
.end method

.method protected abstract g()I
.end method
