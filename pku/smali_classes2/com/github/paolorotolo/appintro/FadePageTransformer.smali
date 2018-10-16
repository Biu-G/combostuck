.class Lcom/github/paolorotolo/appintro/FadePageTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-void
.end method
