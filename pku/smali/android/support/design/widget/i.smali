.class Landroid/support/design/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/support/design/widget/i;->a:Landroid/view/View;

    return-void
.end method

.method private e()V
    .locals 4

    .line 52
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/i;->d:I

    iget-object v2, p0, Landroid/support/design/widget/i;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/i;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 53
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/i;->e:I

    iget-object v2, p0, Landroid/support/design/widget/i;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/i;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/i;->b:I

    .line 45
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/i;->c:I

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/i;->e()V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 63
    iget v0, p0, Landroid/support/design/widget/i;->d:I

    if-eq v0, p1, :cond_0

    .line 64
    iput p1, p0, Landroid/support/design/widget/i;->d:I

    .line 65
    invoke-direct {p0}, Landroid/support/design/widget/i;->e()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    .line 87
    iget v0, p0, Landroid/support/design/widget/i;->d:I

    return v0
.end method

.method public b(I)Z
    .locals 1

    .line 78
    iget v0, p0, Landroid/support/design/widget/i;->e:I

    if-eq v0, p1, :cond_0

    .line 79
    iput p1, p0, Landroid/support/design/widget/i;->e:I

    .line 80
    invoke-direct {p0}, Landroid/support/design/widget/i;->e()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/support/design/widget/i;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 95
    iget v0, p0, Landroid/support/design/widget/i;->b:I

    return v0
.end method
