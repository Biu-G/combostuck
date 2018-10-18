.class Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f09007f

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/Guideline;

    const v1, 0x7f09007e

    .line 348
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/Guideline;

    const v2, 0x7f09007d

    .line 349
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/Guideline;

    const v3, 0x7f09007c

    .line 350
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/Guideline;

    const v4, 0x7f090083

    .line 351
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 352
    iget-object v4, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v6, 0x42900000    # 72.0f

    invoke-static {v4, p2, v5, v6}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;FFF)F

    move-result v4

    .line 353
    iget-object v5, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-static {v5}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    const/high16 v0, 0x42600000    # 56.0f

    add-float/2addr v0, v4

    .line 354
    iget-object v5, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-static {v5}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)F

    move-result v5

    mul-float v0, v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    const/high16 v0, 0x42e00000    # 112.0f

    add-float/2addr v4, v0

    .line 355
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    const/high16 v0, 0x41000000    # 8.0f

    add-float/2addr v4, v0

    .line 356
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)F

    move-result v0

    mul-float v4, v4, v0

    float-to-int v0, v4

    invoke-virtual {v3, v0}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    .line 357
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    const/4 v1, 0x0

    const/high16 v2, -0x3cb80000    # -200.0f

    invoke-static {v0, p2, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;FFF)F

    move-result p2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)F

    move-result v0

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 332
    :pswitch_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->dismiss()V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
