.class Landroid/support/transition/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/t;
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v0, Landroid/support/transition/s;

    invoke-direct {v0, p0}, Landroid/support/transition/s;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    .line 36
    :cond_0
    invoke-static {p0}, Landroid/support/transition/q;->a(Landroid/view/ViewGroup;)Landroid/support/transition/q;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/support/transition/w;->a(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroid/support/transition/v;->a(Landroid/view/ViewGroup;Z)V

    :goto_0
    return-void
.end method
