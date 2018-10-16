.class Lcom/amap/api/mapcore2d/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public g:Landroid/graphics/PointF;

.field public h:I

.field public i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/amap/api/mapcore2d/bs;->a:I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/amap/api/mapcore2d/bs;->h:I

    .line 130
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bs;->i:Z

    .line 41
    iput p1, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    .line 42
    iput p2, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    .line 43
    iput p3, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    .line 44
    iput p4, p0, Lcom/amap/api/mapcore2d/bs;->e:I

    .line 45
    iget p1, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    iget p2, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    iget p3, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/cl;->a(III)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bs;->f:Z

    .line 46
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bs;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore2d/bs;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/amap/api/mapcore2d/bs;->a:I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/amap/api/mapcore2d/bs;->h:I

    .line 130
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bs;->i:Z

    .line 50
    iget v0, p1, Lcom/amap/api/mapcore2d/bs;->b:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    .line 51
    iget v0, p1, Lcom/amap/api/mapcore2d/bs;->c:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    .line 52
    iget v0, p1, Lcom/amap/api/mapcore2d/bs;->d:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    .line 53
    iget v0, p1, Lcom/amap/api/mapcore2d/bs;->e:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bs;->e:I

    .line 54
    iget-object v0, p1, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bs;->g:Landroid/graphics/PointF;

    .line 55
    iget p1, p1, Lcom/amap/api/mapcore2d/bs;->a:I

    iput p1, p0, Lcom/amap/api/mapcore2d/bs;->a:I

    .line 56
    iget p1, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    iget v0, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/cl;->a(III)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bs;->f:Z

    .line 57
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bs;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore2d/bs;
    .locals 1

    .line 62
    new-instance v0, Lcom/amap/api/mapcore2d/bs;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bs;-><init>(Lcom/amap/api/mapcore2d/bs;)V

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/bs;->f:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/amap/api/mapcore2d/q;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "-"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bs;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->j:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bs;->a()Lcom/amap/api/mapcore2d/bs;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/amap/api/mapcore2d/bs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 74
    :cond_1
    check-cast p1, Lcom/amap/api/mapcore2d/bs;

    .line 75
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bs;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bs;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    iget v3, p1, Lcom/amap/api/mapcore2d/bs;->d:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->e:I

    iget p1, p1, Lcom/amap/api/mapcore2d/bs;->e:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 82
    iget v0, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v1, p0, Lcom/amap/api/mapcore2d/bs;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
