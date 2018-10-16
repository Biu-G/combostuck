.class public Lcn/edu/pku/pkurunner/TaskList/BadgeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static f:F = 0.5f

.field private static g:F = 0.77f


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->e:Z

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->e:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->e:Z

    const/16 v1, 0x8

    const v2, 0x7f08006e

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver;->resolve(Ljava/lang/String;)I

    move-result v0

    .line 104
    iget-object v3, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->invalidate()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0c0068

    .line 41
    invoke-static {p1, v0, p0}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->a:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->a:Landroid/view/View;

    const v1, 0x7f09013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->a:Landroid/view/View;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 46
    sget-object v0, Lcn/edu/pku/pkurunner/R$styleable;->BadgeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 55
    :pswitch_0
    sget v2, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    sput v2, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->g:F

    goto :goto_1

    .line 52
    :pswitch_1
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->setDistance(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 75
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 76
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    iget-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget p3, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->f:F

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    iget-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 77
    iget-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getY()F

    move-result p2

    iget-object p3, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->b:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    sget p4, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->g:F

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p2, p3

    .line 78
    iget-object p3, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setX(F)V

    .line 79
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setY(F)V

    return-void
.end method

.method public setBadgeSeries(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->d:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->a()V

    return-void
.end method

.method public setDistance(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->c:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->invalidate()V

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->e:Z

    .line 94
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->a()V

    return-void
.end method
