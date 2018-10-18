.class public final Lcom/amap/api/mapcore2d/ga;
.super Lcom/amap/api/mapcore2d/eq;
.source "SourceFile"


# instance fields
.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field h:[B

.field i:[B

.field j:Z

.field k:Ljava/lang/String;

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/eq;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->f:Ljava/util/Map;

    const-string p2, ""

    iput-object p2, p0, Lcom/amap/api/mapcore2d/ga;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->h:[B

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->i:[B

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/ga;->j:Z

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->l:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/ga;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->l:Ljava/util/Map;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->g:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->f:Ljava/util/Map;

    return-void
.end method

.method public final b([B)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ga;->h:[B

    return-void
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ga;->h:[B

    return-object v0
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ga;->i:[B

    return-object v0
.end method

.method public final e()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ga;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ga;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ga;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ga;->j:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ga;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ga;->m:Z

    return v0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ga;->j:Z

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ga;->m:Z

    return-void
.end method
