.class public Lcom/amap/api/mapcore2d/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/ak;


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/amap/api/mapcore2d/bu;

.field private c:Lcom/amap/api/mapcore2d/an;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/TileOverlayOptions;Lcom/amap/api/mapcore2d/bu;Lcom/amap/api/mapcore2d/av;Lcom/amap/api/mapcore2d/az;Landroid/content/Context;)V
    .locals 8

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/bu;

    .line 53
    new-instance p5, Lcom/amap/api/mapcore2d/an;

    invoke-direct {p5, p3}, Lcom/amap/api/mapcore2d/an;-><init>(Lcom/amap/api/mapcore2d/av;)V

    iput-object p5, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    .line 54
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    const/4 p5, 0x0

    iput-boolean p5, p3, Lcom/amap/api/mapcore2d/an;->e:Z

    .line 57
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iput-boolean p5, p3, Lcom/amap/api/mapcore2d/an;->g:Z

    .line 58
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result v0

    iput-boolean v0, p3, Lcom/amap/api/mapcore2d/an;->f:Z

    .line 60
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    new-instance v0, Lcom/amap/api/mapcore2d/bn;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bn;-><init>()V

    iput-object v0, p3, Lcom/amap/api/mapcore2d/an;->p:Lcom/amap/api/mapcore2d/bn;

    .line 61
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps2d/model/TileProvider;

    move-result-object v0

    iput-object v0, p3, Lcom/amap/api/mapcore2d/an;->k:Lcom/amap/api/maps2d/model/TileProvider;

    .line 62
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    new-instance v7, Lcom/amap/api/mapcore2d/ba;

    iget-object v0, p4, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget v1, v0, Lcom/amap/api/mapcore2d/az$a;->e:I

    iget-object v0, p4, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    iget v2, v0, Lcom/amap/api/mapcore2d/az$a;->f:I

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/ba;-><init>(IIZJLcom/amap/api/mapcore2d/an;)V

    iput-object v7, p3, Lcom/amap/api/mapcore2d/an;->n:Lcom/amap/api/mapcore2d/ba;

    .line 67
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object p3

    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iput-boolean p5, v0, Lcom/amap/api/mapcore2d/an;->f:Z

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iput-object p3, v0, Lcom/amap/api/mapcore2d/an;->m:Ljava/lang/String;

    .line 72
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    new-instance v0, Lcom/amap/api/mapcore2d/u;

    .line 73
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bu;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-direct {v0, p2, p5, v1}, Lcom/amap/api/mapcore2d/u;-><init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/an;)V

    iput-object v0, p3, Lcom/amap/api/mapcore2d/an;->o:Lcom/amap/api/mapcore2d/u;

    .line 75
    new-instance p2, Lcom/amap/api/mapcore2d/bv;

    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-direct {p2, p4, p3}, Lcom/amap/api/mapcore2d/bv;-><init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)V

    .line 76
    iget-object p3, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iput-object p2, p3, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    .line 77
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->isVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/bt;->d:Z

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bt;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bt;->e:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getZIndex()F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/bt;->f:F

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    sget v0, Lcom/amap/api/mapcore2d/bt;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore2d/bt;->a:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/amap/api/mapcore2d/bt;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bv;->c()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/an;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bv;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bv;->b()V

    return-void
.end method

.method public clearTileCache()V
    .locals 3

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/an;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TileOverlayDelegateImp"

    const-string v2, "remove"

    .line 109
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public equalsRemote(Lcom/amap/api/interfaces/ITileOverlay;)Z
    .locals 1

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-interface {p1}, Lcom/amap/api/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bt;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "TileOverlay"

    .line 116
    invoke-static {v0}, Lcom/amap/api/mapcore2d/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bt;->e:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/amap/api/mapcore2d/bt;->f:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bt;->d:Z

    return v0
.end method

.method public remove()V
    .locals 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->b:Lcom/amap/api/mapcore2d/bu;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bu;->b(Lcom/amap/api/mapcore2d/ak;)Z

    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/an;->b()V

    .line 95
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/an;->q:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bv;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TileOverlayDelegateImp"

    const-string v2, "remove"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bt;->d:Z

    .line 134
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->c:Lcom/amap/api/mapcore2d/an;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/an;->a(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/amap/api/mapcore2d/bt;->f:F

    return-void
.end method
