.class Lcom/getkeepsafe/taptargetview/TapTargetView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/taptargetview/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->N:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 230
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 234
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v4}, Lcom/getkeepsafe/taptargetview/TapTargetView;->d()V

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget v4, v4, Lcom/getkeepsafe/taptargetview/TapTarget;->c:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    .line 238
    iget-object v6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iput v0, v6, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    .line 239
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v6, v6, p1

    mul-float v7, v6, v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->P:I

    .line 240
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 241
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->L:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v4, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v3, v4, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v4, v4, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 243
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    mul-float v2, v6, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->T:I

    if-eqz v1, :cond_2

    .line 246
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v2, v2, v3

    iput v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->S:F

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->b:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    iput v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->S:F

    .line 249
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->Q:F

    mul-float v2, v2, p1

    iput v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->Q:F

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, p1, v3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(FF)F

    move-result p1

    mul-float p1, p1, v5

    float-to-int p1, p1

    iput p1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->U:I

    if-eqz v1, :cond_3

    .line 255
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->d()V

    .line 258
    :cond_3
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Landroid/graphics/Rect;)V

    return-void
.end method
