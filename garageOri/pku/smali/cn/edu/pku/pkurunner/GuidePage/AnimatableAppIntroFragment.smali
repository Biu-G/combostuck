.class public Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;
.super Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 26
    invoke-static/range {v0 .. v5}, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIII)Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIII)Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 32
    new-instance v0, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title_typeface"

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc"

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc_typeface"

    .line 37
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "drawable"

    .line 38
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "bg_color"

    .line 39
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title_color"

    .line 40
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "desc_color"

    .line 41
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;II)Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;
    .locals 8
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 51
    invoke-static/range {v0 .. v7}, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIII)Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IIII)Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;
    .locals 3
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 59
    new-instance v0, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 61
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title_typeface"

    .line 62
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc"

    .line 63
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "desc_typeface"

    .line 64
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "drawable"

    .line 65
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "bg_color"

    .line 66
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title_color"

    .line 67
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "desc_color"

    .line 68
    invoke-virtual {v1, p0, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0c0031

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900aa

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;->a:Landroid/widget/ImageView;

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/github/paolorotolo/appintro/AppIntroBaseFragment;->onStart()V

    .line 92
    iget-object v0, p0, Lcn/edu/pku/pkurunner/GuidePage/AnimatableAppIntroFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method
