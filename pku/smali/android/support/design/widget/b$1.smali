.class Landroid/support/design/widget/b$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/b;->a(Landroid/support/design/widget/b$d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/b$d;

.field final synthetic c:Landroid/support/design/widget/b;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;ZLandroid/support/design/widget/b$d;)V
    .locals 0

    .line 388
    iput-object p1, p0, Landroid/support/design/widget/b$1;->c:Landroid/support/design/widget/b;

    iput-boolean p2, p0, Landroid/support/design/widget/b$1;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/b$1;->b:Landroid/support/design/widget/b$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 402
    iput-boolean p1, p0, Landroid/support/design/widget/b$1;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 407
    iget-object p1, p0, Landroid/support/design/widget/b$1;->c:Landroid/support/design/widget/b;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/b;->b:I

    .line 408
    iget-object p1, p0, Landroid/support/design/widget/b$1;->c:Landroid/support/design/widget/b;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/widget/b;->c:Landroid/animation/Animator;

    .line 410
    iget-boolean p1, p0, Landroid/support/design/widget/b$1;->d:Z

    if-nez p1, :cond_1

    .line 411
    iget-object p1, p0, Landroid/support/design/widget/b$1;->c:Landroid/support/design/widget/b;

    iget-object p1, p1, Landroid/support/design/widget/b;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v0, p0, Landroid/support/design/widget/b$1;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-boolean v1, p0, Landroid/support/design/widget/b$1;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 412
    iget-object p1, p0, Landroid/support/design/widget/b$1;->b:Landroid/support/design/widget/b$d;

    if-eqz p1, :cond_1

    .line 413
    iget-object p1, p0, Landroid/support/design/widget/b$1;->b:Landroid/support/design/widget/b$d;

    invoke-interface {p1}, Landroid/support/design/widget/b$d;->b()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 393
    iget-object v0, p0, Landroid/support/design/widget/b$1;->c:Landroid/support/design/widget/b;

    iget-object v0, v0, Landroid/support/design/widget/b;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v1, p0, Landroid/support/design/widget/b$1;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 395
    iget-object v0, p0, Landroid/support/design/widget/b$1;->c:Landroid/support/design/widget/b;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/design/widget/b;->b:I

    .line 396
    iget-object v0, p0, Landroid/support/design/widget/b$1;->c:Landroid/support/design/widget/b;

    iput-object p1, v0, Landroid/support/design/widget/b;->c:Landroid/animation/Animator;

    .line 397
    iput-boolean v2, p0, Landroid/support/design/widget/b$1;->d:Z

    return-void
.end method
