.class public Landroid/support/v4/widget/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field a:F

.field b:Z

.field c:I

.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2327
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2313
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2331
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 2332
    iput p3, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2319
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2313
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2321
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->a:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2322
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2323
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
    .locals 1
    .param p1    # Landroid/support/v4/widget/DrawerLayout$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2336
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 2313
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 2337
    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2341
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2313
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2345
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 2313
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    return-void
.end method