.class Landroid/support/transition/q;
.super Landroid/support/transition/x;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/t;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/x;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/q;
    .locals 0

    .line 32
    invoke-static {p0}, Landroid/support/transition/x;->d(Landroid/view/View;)Landroid/support/transition/x;

    move-result-object p0

    check-cast p0, Landroid/support/transition/q;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    iget-object v0, p0, Landroid/support/transition/q;->a:Landroid/support/transition/x$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/x$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Landroid/support/transition/q;->a:Landroid/support/transition/x$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/x$a;->b(Landroid/view/View;)V

    return-void
.end method
