.class Landroid/support/design/widget/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/b;->b(Landroid/support/design/widget/b$d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/b$d;

.field final synthetic c:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;ZLandroid/support/design/widget/b$d;)V
    .locals 0

    .line 459
    iput-object p1, p0, Landroid/support/design/widget/b$2;->c:Landroid/support/design/widget/b;

    iput-boolean p2, p0, Landroid/support/design/widget/b$2;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/b$2;->b:Landroid/support/design/widget/b$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 470
    iget-object p1, p0, Landroid/support/design/widget/b$2;->c:Landroid/support/design/widget/b;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/b;->b:I

    .line 471
    iget-object p1, p0, Landroid/support/design/widget/b$2;->c:Landroid/support/design/widget/b;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/widget/b;->c:Landroid/animation/Animator;

    .line 473
    iget-object p1, p0, Landroid/support/design/widget/b$2;->b:Landroid/support/design/widget/b$d;

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Landroid/support/design/widget/b$2;->b:Landroid/support/design/widget/b$d;

    invoke-interface {p1}, Landroid/support/design/widget/b$d;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 462
    iget-object v0, p0, Landroid/support/design/widget/b$2;->c:Landroid/support/design/widget/b;

    iget-object v0, v0, Landroid/support/design/widget/b;->v:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v1, p0, Landroid/support/design/widget/b$2;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 464
    iget-object v0, p0, Landroid/support/design/widget/b$2;->c:Landroid/support/design/widget/b;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/design/widget/b;->b:I

    .line 465
    iget-object v0, p0, Landroid/support/design/widget/b$2;->c:Landroid/support/design/widget/b;

    iput-object p1, v0, Landroid/support/design/widget/b;->c:Landroid/animation/Animator;

    return-void
.end method
