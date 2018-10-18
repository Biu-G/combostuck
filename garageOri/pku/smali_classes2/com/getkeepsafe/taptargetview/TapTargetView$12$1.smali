.class Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView$12;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView$12;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x2

    .line 440
    new-array v0, v0, [I

    .line 442
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->a:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/TapTarget;->bounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 444
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getLocationOnScreen([I)V

    .line 445
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    neg-int v3, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    neg-int v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 447
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->c:Landroid/content/Context;

    const-string v1, "window"

    .line 449
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 450
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 451
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 453
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 454
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 459
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/getkeepsafe/taptargetview/TapTargetView;->ab:I

    .line 460
    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->ac:I

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a()V

    .line 464
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->requestFocus()Z

    .line 465
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->c()V

    .line 466
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 468
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetView$12;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iput-boolean v4, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->E:Z

    :cond_1
    return-void
.end method
