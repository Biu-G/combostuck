.class final Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/paolorotolo/appintro/AppIntroBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PagerOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;


# direct methods
.method private constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/paolorotolo/appintro/AppIntroBase;Lcom/github/paolorotolo/appintro/AppIntroBase$1;)V
    .locals 0

    .line 870
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 874
    iget-object p3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p3}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$600(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 875
    iget-object p3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p3, p3, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p3}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ge p1, p3, :cond_1

    .line 876
    iget-object p3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p3, p3, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p3, p1}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p3

    instance-of p3, p3, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p3, p3, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    add-int/lit8 v0, p1, 0x1

    .line 877
    invoke-virtual {p3, v0}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p3

    instance-of p3, p3, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;

    if-eqz p3, :cond_0

    .line 878
    iget-object p3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p3, p3, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p3, p1}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 879
    iget-object p3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object p3, p3, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p3, v0}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p3

    .line 881
    move-object v0, p1

    check-cast v0, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;

    .line 883
    move-object v1, p3

    check-cast v1, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;

    .line 888
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 889
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$700(Lcom/github/paolorotolo/appintro/AppIntroBase;)Landroid/animation/ArgbEvaluator;

    move-result-object p1

    .line 890
    invoke-interface {v0}, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;->getDefaultBackgroundColor()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 891
    invoke-interface {v1}, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;->getDefaultBackgroundColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 889
    invoke-virtual {p1, p2, p3, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 893
    invoke-interface {v0, p1}, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;->setBackgroundColor(I)V

    .line 894
    invoke-interface {v1, p1}, Lcom/github/paolorotolo/appintro/ISlideBackgroundColorHolder;->setBackgroundColor(I)V

    goto :goto_0

    .line 897
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Color transitions are only available if all slides implement ISlideBackgroundColorHolder."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 905
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->slidesNumber:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v0, p1}, Lcom/github/paolorotolo/appintro/IndicatorController;->selectPosition(I)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isNextPagingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 911
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, v2, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getLockPage()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 912
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-boolean v2, v2, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    invoke-virtual {v0, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setProgressButtonEnabled(Z)V

    .line 913
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    goto :goto_0

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setProgressButtonEnabled(Z)V

    goto :goto_0

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-boolean v1, v1, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setProgressButtonEnabled(Z)V

    .line 921
    :goto_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onPageSelected(I)V

    .line 923
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget v0, v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->slidesNumber:I

    if-lez v0, :cond_4

    .line 924
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$800(Lcom/github/paolorotolo/appintro/AppIntroBase;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 925
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, v2, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v2, p1}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$200(Lcom/github/paolorotolo/appintro/AppIntroBase;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v1, v1, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {v2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$800(Lcom/github/paolorotolo/appintro/AppIntroBase;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v2, v2, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    iget-object v3, v3, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    .line 928
    invoke-virtual {v3}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 927
    invoke-static {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$200(Lcom/github/paolorotolo/appintro/AppIntroBase;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 931
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;->this$0:Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->access$802(Lcom/github/paolorotolo/appintro/AppIntroBase;I)I

    return-void
.end method
