.class Lcom/amap/api/mapcore2d/br;
.super Lcom/amap/api/mapcore2d/bo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bo<",
        "Lcom/amap/api/mapcore2d/bs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bo;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized b(IZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bs;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->a:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    monitor-exit p0

    return-object v1

    .line 131
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/br;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    move p1, v0

    .line 136
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 146
    iget-object v5, p0, Lcom/amap/api/mapcore2d/br;->a:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore2d/bs;

    if-nez v5, :cond_2

    goto :goto_2

    .line 150
    :cond_2
    iget v6, v5, Lcom/amap/api/mapcore2d/bs;->a:I

    if-eqz p2, :cond_3

    if-nez v6, :cond_4

    .line 153
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v5, p0, Lcom/amap/api/mapcore2d/br;->a:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-gez v6, :cond_4

    .line 161
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v5, p0, Lcom/amap/api/mapcore2d/br;->a:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_1
    if-lt v4, p1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_6
    :goto_3
    monitor-exit p0

    return-object v2

    .line 179
    :catch_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 126
    monitor-exit p0

    throw p1
.end method
