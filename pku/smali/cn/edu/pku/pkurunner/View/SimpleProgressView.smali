.class public Lcn/edu/pku/pkurunner/View/SimpleProgressView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/View/ProgressableView;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method private a()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->c:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    invoke-static {v1}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->h:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    invoke-static {v1}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->f:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->g:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->j:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->e:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->j:Z

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->d:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->i:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0c0071

    .line 50
    invoke-static {p1, v0, p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->b:Landroid/widget/LinearLayout;

    .line 52
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f09014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->e:Landroid/widget/ProgressBar;

    .line 53
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->f:Landroid/widget/ProgressBar;

    .line 54
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f09014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->g:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f09014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->h:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f090150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->i:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->c:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a:Landroid/view/View;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->d:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 61
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    if-eqz p2, :cond_1

    .line 64
    sget-object v0, Lcn/edu/pku/pkurunner/R$styleable;->SimpleProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 94
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setSleepingIndicatorText(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setMainText(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :pswitch_2
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setMainProgress(F)V

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x1

    .line 85
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setDayMode(Z)V

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :pswitch_5
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setSecondaryProgress(F)V

    goto :goto_1

    .line 88
    :pswitch_6
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setCollapseMode(Z)V

    goto :goto_1

    .line 73
    :pswitch_7
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setMainBonusProgress(F)V

    goto :goto_1

    .line 91
    :pswitch_8
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setActiveMode(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->g:Landroid/widget/TextView;

    const v1, 0x7f0f013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 154
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setActiveMode(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->k:Z

    .line 173
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a()V

    .line 174
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setCollapseMode(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->j:Z

    .line 166
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->a()V

    .line 167
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setDayMode(Z)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f060164

    goto :goto_0

    :cond_0
    const v2, 0x7f0600bf

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f08007d

    goto :goto_1

    :cond_1
    const v1, 0x7f08007c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    const p1, 0x7f0600c0

    goto :goto_2

    :cond_2
    const p1, 0x7f0600b8

    :goto_2
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 132
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setMainBonusProgress(F)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->e:Landroid/widget/ProgressBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 145
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setMainProgress(F)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->e:Landroid/widget/ProgressBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setMainText(Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setReferenceTime(Ljava/util/Date;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result p1

    const/4 v0, 0x6

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 139
    :goto_0
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->setDayMode(Z)V

    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->f:Landroid/widget/ProgressBar;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setSleepingIndicatorText(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->invalidate()V

    return-void
.end method

.method public setWeatherDrawable(Lcn/edu/pku/pkurunner/GlideRequest;)Lcom/bumptech/glide/request/target/ViewTarget;
    .locals 1
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

    .line 160
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/SimpleProgressView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    return-object p1
.end method
