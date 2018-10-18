.class public Landroid/support/design/shape/ShapePathModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# static fields
.field private static final a:Landroid/support/design/shape/CornerTreatment;

.field private static final b:Landroid/support/design/shape/EdgeTreatment;


# instance fields
.field private c:Landroid/support/design/shape/CornerTreatment;

.field private d:Landroid/support/design/shape/CornerTreatment;

.field private e:Landroid/support/design/shape/CornerTreatment;

.field private f:Landroid/support/design/shape/CornerTreatment;

.field private g:Landroid/support/design/shape/EdgeTreatment;

.field private h:Landroid/support/design/shape/EdgeTreatment;

.field private i:Landroid/support/design/shape/EdgeTreatment;

.field private j:Landroid/support/design/shape/EdgeTreatment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroid/support/design/shape/CornerTreatment;

    invoke-direct {v0}, Landroid/support/design/shape/CornerTreatment;-><init>()V

    sput-object v0, Landroid/support/design/shape/ShapePathModel;->a:Landroid/support/design/shape/CornerTreatment;

    .line 28
    new-instance v0, Landroid/support/design/shape/EdgeTreatment;

    invoke-direct {v0}, Landroid/support/design/shape/EdgeTreatment;-><init>()V

    sput-object v0, Landroid/support/design/shape/ShapePathModel;->b:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->a:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->c:Landroid/support/design/shape/CornerTreatment;

    .line 42
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->a:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->d:Landroid/support/design/shape/CornerTreatment;

    .line 43
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->a:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->e:Landroid/support/design/shape/CornerTreatment;

    .line 44
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->a:Landroid/support/design/shape/CornerTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->f:Landroid/support/design/shape/CornerTreatment;

    .line 45
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->b:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->g:Landroid/support/design/shape/EdgeTreatment;

    .line 46
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->b:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->h:Landroid/support/design/shape/EdgeTreatment;

    .line 47
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->b:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->i:Landroid/support/design/shape/EdgeTreatment;

    .line 48
    sget-object v0, Landroid/support/design/shape/ShapePathModel;->b:Landroid/support/design/shape/EdgeTreatment;

    iput-object v0, p0, Landroid/support/design/shape/ShapePathModel;->j:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method


# virtual methods
.method public getBottomEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->i:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->f:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->e:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public getLeftEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->j:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->h:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopEdge()Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->g:Landroid/support/design/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->c:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCorner()Landroid/support/design/shape/CornerTreatment;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/support/design/shape/ShapePathModel;->d:Landroid/support/design/shape/CornerTreatment;

    return-object v0
.end method

.method public setAllCorners(Landroid/support/design/shape/CornerTreatment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->c:Landroid/support/design/shape/CornerTreatment;

    .line 58
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->d:Landroid/support/design/shape/CornerTreatment;

    .line 59
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->e:Landroid/support/design/shape/CornerTreatment;

    .line 60
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->f:Landroid/support/design/shape/CornerTreatment;

    return-void
.end method

.method public setAllEdges(Landroid/support/design/shape/EdgeTreatment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->j:Landroid/support/design/shape/EdgeTreatment;

    .line 70
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->g:Landroid/support/design/shape/EdgeTreatment;

    .line 71
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->h:Landroid/support/design/shape/EdgeTreatment;

    .line 72
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->i:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public setBottomEdge(Landroid/support/design/shape/EdgeTreatment;)V
    .locals 0

    .line 236
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->i:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public setBottomLeftCorner(Landroid/support/design/shape/CornerTreatment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->f:Landroid/support/design/shape/CornerTreatment;

    return-void
.end method

.method public setBottomRightCorner(Landroid/support/design/shape/CornerTreatment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->e:Landroid/support/design/shape/CornerTreatment;

    return-void
.end method

.method public setCornerTreatments(Landroid/support/design/shape/CornerTreatment;Landroid/support/design/shape/CornerTreatment;Landroid/support/design/shape/CornerTreatment;Landroid/support/design/shape/CornerTreatment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->c:Landroid/support/design/shape/CornerTreatment;

    .line 89
    iput-object p2, p0, Landroid/support/design/shape/ShapePathModel;->d:Landroid/support/design/shape/CornerTreatment;

    .line 90
    iput-object p3, p0, Landroid/support/design/shape/ShapePathModel;->e:Landroid/support/design/shape/CornerTreatment;

    .line 91
    iput-object p4, p0, Landroid/support/design/shape/ShapePathModel;->f:Landroid/support/design/shape/CornerTreatment;

    return-void
.end method

.method public setEdgeTreatments(Landroid/support/design/shape/EdgeTreatment;Landroid/support/design/shape/EdgeTreatment;Landroid/support/design/shape/EdgeTreatment;Landroid/support/design/shape/EdgeTreatment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->j:Landroid/support/design/shape/EdgeTreatment;

    .line 108
    iput-object p2, p0, Landroid/support/design/shape/ShapePathModel;->g:Landroid/support/design/shape/EdgeTreatment;

    .line 109
    iput-object p3, p0, Landroid/support/design/shape/ShapePathModel;->h:Landroid/support/design/shape/EdgeTreatment;

    .line 110
    iput-object p4, p0, Landroid/support/design/shape/ShapePathModel;->i:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public setLeftEdge(Landroid/support/design/shape/EdgeTreatment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->j:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public setRightEdge(Landroid/support/design/shape/EdgeTreatment;)V
    .locals 0

    .line 218
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->h:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public setTopEdge(Landroid/support/design/shape/EdgeTreatment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->g:Landroid/support/design/shape/EdgeTreatment;

    return-void
.end method

.method public setTopLeftCorner(Landroid/support/design/shape/CornerTreatment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->c:Landroid/support/design/shape/CornerTreatment;

    return-void
.end method

.method public setTopRightCorner(Landroid/support/design/shape/CornerTreatment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Landroid/support/design/shape/ShapePathModel;->d:Landroid/support/design/shape/CornerTreatment;

    return-void
.end method
