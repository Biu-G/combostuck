.class Landroid/support/v4/widget/a$a;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/a;

.field private b:Landroid/graphics/RadialGradient;

.field private c:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/a;I)V
    .locals 1

    .line 131
    iput-object p1, p0, Landroid/support/v4/widget/a$a;->a:Landroid/support/v4/widget/a;

    .line 132
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a$a;->c:Landroid/graphics/Paint;

    .line 134
    iput p2, p1, Landroid/support/v4/widget/a;->a:I

    .line 135
    invoke-virtual {p0}, Landroid/support/v4/widget/a$a;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/a$a;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 8

    .line 153
    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v2, p1

    iget-object p1, p0, Landroid/support/v4/widget/a$a;->a:Landroid/support/v4/widget/a;

    iget p1, p1, Landroid/support/v4/widget/a;->a:I

    int-to-float v3, p1

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Landroid/support/v4/widget/a$a;->b:Landroid/graphics/RadialGradient;

    .line 156
    iget-object p1, p0, Landroid/support/v4/widget/a$a;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v4/widget/a$a;->b:Landroid/graphics/RadialGradient;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 146
    iget-object v0, p0, Landroid/support/v4/widget/a$a;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a;->getWidth()I

    move-result v0

    .line 147
    iget-object v1, p0, Landroid/support/v4/widget/a$a;->a:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->getHeight()I

    move-result v1

    .line 148
    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/v4/widget/a$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    iget-object v3, p0, Landroid/support/v4/widget/a$a;->a:Landroid/support/v4/widget/a;

    iget v3, v3, Landroid/support/v4/widget/a;->a:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    .line 141
    invoke-direct {p0, p1}, Landroid/support/v4/widget/a$a;->a(I)V

    return-void
.end method
