.class public final Lcom/github/paolorotolo/appintro/AppIntroViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;
    }
.end annotation


# static fields
.field private static final ON_ILLEGALLY_REQUESTED_NEXT_PAGE_MAX_INTERVAL:I = 0x3e8


# instance fields
.field private currentTouchDownX:F

.field private illegallyRequestedNextPageLastCalled:J

.field private lockPage:I

.field private mScroller:Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;

.field private nextPageRequestedListener:Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;

.field private nextPagingEnabled:Z

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pagingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->mScroller:Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->pagingEnabled:Z

    .line 26
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPagingEnabled:Z

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->lockPage:I

    .line 29
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->initViewPagerScroller()V

    return-void
.end method

.method private checkCanRequestNextPage(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPageRequestedListener:Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPageRequestedListener:Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;

    invoke-interface {p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;->onCanRequestNextPage()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkIllegallyRequestedNextPage(Landroid/view/MotionEvent;)V
    .locals 4

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->currentTouchDownX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 v0, 0x19

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->illegallyRequestedNextPageLastCalled:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->illegallyRequestedNextPageLastCalled:J

    .line 120
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPageRequestedListener:Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPageRequestedListener:Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;

    invoke-interface {p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;->onIllegallyRequestedNextPage()V

    :cond_0
    return-void
.end method

.method private checkPagingState(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->pagingEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPagingEnabled:Z

    if-nez v0, :cond_2

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->currentTouchDownX:F

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 98
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->detectSwipeToRight(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private detectSwipeToRight(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->currentTouchDownX:F

    sub-float/2addr p1, v1

    .line 154
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private initViewPagerScroller()V
    .locals 5

    .line 133
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string v3, "sInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    new-instance v1, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v1, v3, v2}, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->mScroller:Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;

    .line 140
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->mScroller:Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 36
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public getLockPage()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->lockPage:I

    return v0
.end method

.method public isNextPagingEnabled()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPagingEnabled:Z

    return v0
.end method

.method public isPagingEnabled()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->pagingEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->currentTouchDownX:F

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->checkPagingState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->checkCanRequestNextPage(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 65
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->checkIllegallyRequestedNextPage(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->currentTouchDownX:F

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->checkPagingState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->checkCanRequestNextPage(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 81
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->checkIllegallyRequestedNextPage(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-eqz v0, :cond_1

    .line 54
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p1, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public setLockPage(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->lockPage:I

    return-void
.end method

.method public setNextPagingEnabled(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPagingEnabled:Z

    if-nez p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->lockPage:I

    :cond_0
    return-void
.end method

.method public setOnNextPageRequestedListener(Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->nextPageRequestedListener:Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;

    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->pagingEnabled:Z

    return-void
.end method

.method public setScrollDurationFactor(D)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->mScroller:Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;

    invoke-virtual {v0, p1, p2}, Lcom/github/paolorotolo/appintro/ScrollerCustomDuration;->setScrollDurationFactor(D)V

    return-void
.end method
