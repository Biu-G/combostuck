.class public Lcn/edu/pku/pkurunner/View/RunningProgressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/View/ProgressableView;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:F

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->h:F

    iput v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->i:F

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->j:Z

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->h:F

    iput v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->i:F

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->j:Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(F)F
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private a(FFF)F
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr p2, p1

    return p2
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0c006f

    .line 47
    invoke-static {p1, v0, p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a:Landroid/view/View;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->b:Landroid/widget/FrameLayout;

    .line 49
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a:Landroid/view/View;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->c:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a:Landroid/view/View;

    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a:Landroid/view/View;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->d:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a:Landroid/view/View;

    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->e:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 56
    sget-object v0, Lcn/edu/pku/pkurunner/R$styleable;->RunningProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 71
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :pswitch_1
    iget v1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->setSecondaryProgress(F)V

    goto :goto_1

    .line 68
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->setMainText(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :pswitch_3
    iget v1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->setMainProgress(F)V

    goto :goto_1

    .line 74
    :pswitch_4
    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->setDayMode(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;FII)V
    .locals 0

    sub-int/2addr p4, p3

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    const/4 p4, 0x0

    .line 105
    invoke-direct {p0, p2, p4, p3}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 85
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 87
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->d:Landroid/widget/ImageView;

    iget p3, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->h:F

    invoke-direct {p0, p3}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(F)F

    move-result p3

    invoke-direct {p0, p1, p3, p2, p4}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(Landroid/view/View;FII)V

    .line 88
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->c:Landroid/widget/ImageView;

    iget p3, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->i:F

    invoke-direct {p0, p3}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(F)F

    move-result p3

    invoke-direct {p0, p1, p3, p2, p4}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(Landroid/view/View;FII)V

    .line 89
    iget p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->h:F

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    iget-object p5, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->d:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getX()F

    move-result p5

    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p5, v0

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setX(F)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    iget-object p5, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->d:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getX()F

    move-result p5

    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p5, v0

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setX(F)V

    .line 94
    :goto_0
    iget p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->i:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    .line 95
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    iget-object p3, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->c:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getX()F

    move-result p3

    iget-object p5, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->c:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getWidth()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p3, p5

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setX(F)V

    .line 96
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->e:Landroid/widget/ImageView;

    const/high16 p3, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, p3, p2, p4}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(Landroid/view/View;FII)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    iget-object p3, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->c:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getX()F

    move-result p3

    iget-object p5, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p3, p5

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setX(F)V

    .line 99
    iget-object p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->e:Landroid/widget/ImageView;

    const/high16 p3, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, p3, p2, p4}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->a(Landroid/view/View;FII)V

    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    const v1, 0x7f0f013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->invalidate()V

    return-void
.end method

.method public setActiveMode(Z)V
    .locals 0

    return-void
.end method

.method public setCollapseMode(Z)V
    .locals 0

    return-void
.end method

.method public setDayMode(Z)V
    .locals 6

    .line 138
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->j:Z

    .line 139
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06018a

    if-eqz p1, :cond_0

    const v3, 0x7f06018a

    goto :goto_0

    :cond_0
    const v3, 0x7f0600bf

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 140
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06002d

    if-eqz p1, :cond_1

    const v4, 0x7f06002d

    goto :goto_1

    :cond_1
    const v4, 0x7f06018a

    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v4, 0x3f5eb852    # 0.87f

    if-eqz p1, :cond_2

    const v5, 0x3f5eb852    # 0.87f

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 142
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p1, :cond_3

    const v2, 0x7f06002d

    :cond_3
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v1, 0x3f5eb852    # 0.87f

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 144
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const p1, 0x7f08007d

    goto :goto_3

    :cond_5
    const p1, 0x7f08007c

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->invalidate()V

    return-void
.end method

.method public setMainBonusProgress(F)V
    .locals 0

    return-void
.end method

.method public setMainProgress(F)V
    .locals 0

    .line 114
    iput p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->h:F

    .line 115
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->invalidate()V

    return-void
.end method

.method public setMainText(Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->invalidate()V

    return-void
.end method

.method public setReferenceTime(Ljava/util/Date;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hours is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x6

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->setDayMode(Z)V

    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 0

    .line 120
    iput p1, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->i:F

    .line 121
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->invalidate()V

    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/RunningProgressView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/RunningProgressView;->invalidate()V

    return-void
.end method

.method public setSleepingIndicatorText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setWeatherDrawable(Lcn/edu/pku/pkurunner/GlideRequest;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/edu/pku/pkurunner/GlideRequest<",
            "TT;>;)",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
