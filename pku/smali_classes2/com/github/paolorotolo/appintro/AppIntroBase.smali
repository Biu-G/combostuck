.class public abstract Lcom/github/paolorotolo/appintro/AppIntroBase;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;,
        Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;,
        Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR:I = 0x1

.field private static final DEFAULT_SCROLL_DURATION_FACTOR:I = 0x1

.field private static final INSTANCE_DATA_COLOR_TRANSITIONS_ENABLED:Ljava/lang/String; = "com.github.paolorotolo.appintro_color_transitions_enabled"

.field private static final INSTANCE_DATA_IMMERSIVE_MODE_ENABLED:Ljava/lang/String; = "com.github.paolorotolo.appintro_immersive_mode_enabled"

.field private static final INSTANCE_DATA_IMMERSIVE_MODE_STICKY:Ljava/lang/String; = "com.github.paolorotolo.appintro_immersive_mode_sticky"

.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private areColorTransitionsEnabled:Z

.field private final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field protected backButton:Landroid/view/View;

.field protected baseProgressButtonEnabled:Z

.field private currentlySelectedItem:I

.field protected doneButton:Landroid/view/View;

.field protected final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private isGoBackLockEnabled:Z

.field private isImmersiveModeEnabled:Z

.field private isImmersiveModeSticky:Z

.field protected isVibrateOn:Z

.field protected isWizardMode:Z

.field protected mController:Lcom/github/paolorotolo/appintro/IndicatorController;

.field protected mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

.field protected mVibrator:Landroid/os/Vibrator;

.field protected nextButton:Landroid/view/View;

.field protected pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

.field protected permissionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/paolorotolo/appintro/PermissionObject;",
            ">;"
        }
    .end annotation
.end field

.field protected progressButtonEnabled:Z

.field protected savedCurrentItem:I

.field protected selectedIndicatorColor:I

.field protected showBackButtonWithDone:Z

.field protected skipButton:Landroid/view/View;

.field protected skipButtonEnabled:Z

.field protected slidesNumber:I

.field protected unselectedIndicatorColor:I

.field protected vibrateIntensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/github/paolorotolo/appintro/AppIntroBase;

    invoke-static {v0}, Lcom/github/paolorotolo/appintro/util/LogHelper;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->fragments:Ljava/util/List;

    .line 46
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/16 v0, 0x14

    .line 52
    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->vibrateIntensity:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->selectedIndicatorColor:I

    .line 54
    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->unselectedIndicatorColor:I

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->permissionsArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isVibrateOn:Z

    .line 62
    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    .line 64
    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButtonEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    .line 66
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->showBackButtonWithDone:Z

    .line 68
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isGoBackLockEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    .line 70
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeSticky:Z

    .line 71
    iput-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->areColorTransitionsEnabled:Z

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->currentlySelectedItem:I

    return-void
.end method

.method static synthetic access$100(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->handleBeforeSlideChanged()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeSticky:Z

    return p0
.end method

.method static synthetic access$200(Lcom/github/paolorotolo/appintro/AppIntroBase;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->handleSlideChanged(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/github/paolorotolo/appintro/AppIntroBase;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->handleIllegalSlideChangeAttempt()V

    return-void
.end method

.method static synthetic access$600(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->areColorTransitionsEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/github/paolorotolo/appintro/AppIntroBase;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/github/paolorotolo/appintro/AppIntroBase;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->currentlySelectedItem:I

    return p0
.end method

.method static synthetic access$802(Lcom/github/paolorotolo/appintro/AppIntroBase;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->currentlySelectedItem:I

    return p1
.end method

.method static synthetic access$900(Lcom/github/paolorotolo/appintro/AppIntroBase;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    return p0
.end method

.method private handleBeforeSlideChanged()Z
    .locals 7

    .line 265
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 267
    sget-object v1, Lcom/github/paolorotolo/appintro/AppIntroBase;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "User wants to move away from slide: %s. Checking if this should be allowed..."

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/github/paolorotolo/appintro/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    instance-of v1, v0, Lcom/github/paolorotolo/appintro/ISlidePolicy;

    if-eqz v1, :cond_0

    .line 273
    check-cast v0, Lcom/github/paolorotolo/appintro/ISlidePolicy;

    .line 275
    sget-object v1, Lcom/github/paolorotolo/appintro/AppIntroBase;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Current fragment implements ISlidePolicy."

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/github/paolorotolo/appintro/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-interface {v0}, Lcom/github/paolorotolo/appintro/ISlidePolicy;->isPolicyRespected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    sget-object v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Slide policy not respected, denying change request."

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/github/paolorotolo/appintro/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    .line 284
    :cond_0
    sget-object v0, Lcom/github/paolorotolo/appintro/AppIntroBase;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Change request will be allowed."

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Lcom/github/paolorotolo/appintro/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private handleIllegalSlideChangeAttempt()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    instance-of v1, v0, Lcom/github/paolorotolo/appintro/ISlidePolicy;

    if-eqz v1, :cond_0

    .line 251
    check-cast v0, Lcom/github/paolorotolo/appintro/ISlidePolicy;

    .line 253
    invoke-interface {v0}, Lcom/github/paolorotolo/appintro/ISlidePolicy;->isPolicyRespected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-interface {v0}, Lcom/github/paolorotolo/appintro/ISlidePolicy;->onUserIllegallyRequestedNextPage()V

    :cond_0
    return-void
.end method

.method private handleSlideChanged(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 290
    instance-of v0, p1, Lcom/github/paolorotolo/appintro/ISlideSelectionListener;

    if-eqz v0, :cond_0

    .line 291
    move-object v0, p1

    check-cast v0, Lcom/github/paolorotolo/appintro/ISlideSelectionListener;

    invoke-interface {v0}, Lcom/github/paolorotolo/appintro/ISlideSelectionListener;->onSlideDeselected()V

    :cond_0
    if-eqz p2, :cond_1

    .line 295
    instance-of v0, p2, Lcom/github/paolorotolo/appintro/ISlideSelectionListener;

    if-eqz v0, :cond_1

    .line 296
    move-object v0, p2

    check-cast v0, Lcom/github/paolorotolo/appintro/ISlideSelectionListener;

    invoke-interface {v0}, Lcom/github/paolorotolo/appintro/ISlideSelectionListener;->onSlideSelected()V

    .line 299
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onSlideChanged(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private initController()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/DefaultIndicatorController;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    .line 235
    :cond_0
    sget v0, Lcom/github/paolorotolo/appintro/R$id;->indicator_container:I

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 236
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v1, p0}, Lcom/github/paolorotolo/appintro/IndicatorController;->newInstance(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->slidesNumber:I

    invoke-interface {v0, v1}, Lcom/github/paolorotolo/appintro/IndicatorController;->initialize(I)V

    .line 239
    iget v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->selectedIndicatorColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->selectedIndicatorColor:I

    invoke-interface {v0, v2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setSelectedIndicatorColor(I)V

    .line 241
    :cond_1
    iget v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->unselectedIndicatorColor:I

    if-eq v0, v1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->unselectedIndicatorColor:I

    invoke-interface {v0, v1}, Lcom/github/paolorotolo/appintro/IndicatorController;->setUnselectedIndicatorColor(I)V

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->currentlySelectedItem:I

    invoke-interface {v0, v1}, Lcom/github/paolorotolo/appintro/IndicatorController;->selectPosition(I)V

    return-void
.end method


# virtual methods
.method public addSlide(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 385
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->fragments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setOffScreenPageLimit(I)V

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p1}, Lcom/github/paolorotolo/appintro/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public askForPermissions([Ljava/lang/String;I)V
    .locals 2

    .line 805
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Invalid Slide Number"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 809
    :cond_0
    new-instance v0, Lcom/github/paolorotolo/appintro/PermissionObject;

    invoke-direct {v0, p1, p2}, Lcom/github/paolorotolo/appintro/PermissionObject;-><init>([Ljava/lang/String;I)V

    .line 810
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->permissionsArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 811
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setSwipeLock(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBackButtonVisibilityWithDone()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getPager()Lcom/github/paolorotolo/appintro/AppIntroViewPager;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    return-object v0
.end method

.method public getSlides()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {v0}, Lcom/github/paolorotolo/appintro/PagerAdapter;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWizardMode()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    return v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public isProgressButtonEnabled()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    return v0
.end method

.method public isSkipButtonEnabled()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButtonEnabled:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isGoBackLockEnabled:Z

    if-nez v0, :cond_0

    .line 165
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCanRequestNextPage()Z
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->handleBeforeSlideChanged()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->requestWindowFeature(I)Z

    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setContentView(I)V

    .line 81
    new-instance p1, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase$WindowGestureListener;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;Lcom/github/paolorotolo/appintro/AppIntroBase$1;)V

    invoke-direct {p1, p0, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 83
    sget p1, Lcom/github/paolorotolo/appintro/R$id;->next:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->nextButton:Landroid/view/View;

    .line 84
    sget p1, Lcom/github/paolorotolo/appintro/R$id;->done:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->doneButton:Landroid/view/View;

    .line 85
    sget p1, Lcom/github/paolorotolo/appintro/R$id;->skip:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButton:Landroid/view/View;

    .line 86
    sget p1, Lcom/github/paolorotolo/appintro/R$id;->back:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->backButton:Landroid/view/View;

    const-string p1, "vibrator"

    .line 87
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mVibrator:Landroid/os/Vibrator;

    .line 88
    new-instance p1, Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->fragments:Ljava/util/List;

    invoke-direct {p1, v1, v3}, Lcom/github/paolorotolo/appintro/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    .line 89
    sget p1, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    .line 91
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->doneButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroBase$1;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntroBase$1;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroBase$2;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntroBase$2;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->nextButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase$NextButtonOnClickListener;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;Lcom/github/paolorotolo/appintro/AppIntroBase$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->backButton:Landroid/view/View;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroBase$3;

    invoke-direct {v1, p0}, Lcom/github/paolorotolo/appintro/AppIntroBase$3;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mPagerAdapter:Lcom/github/paolorotolo/appintro/PagerAdapter;

    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 131
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase$PagerOnPageChangeListener;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;Lcom/github/paolorotolo/appintro/AppIntroBase$1;)V

    invoke-virtual {p1, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {p1, p0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setOnNextPageRequestedListener(Lcom/github/paolorotolo/appintro/AppIntroViewPager$OnNextPageRequestedListener;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setScrollDurationFactor(I)V

    return-void
.end method

.method public onDonePressed()V
    .locals 0

    return-void
.end method

.method public onDonePressed(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 494
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onDonePressed()V

    return-void
.end method

.method public onIllegallyRequestedNextPage()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->handleIllegalSlideChangeAttempt()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x60

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 511
    :cond_1
    :goto_0
    sget p1, Lcom/github/paolorotolo/appintro/R$id;->view_pager:I

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    .line 512
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    .line 513
    iget-object p2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->fragments:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onDonePressed(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 515
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onNextPressed()V
    .locals 0

    return-void
.end method

.method protected onPageSelected(I)V
    .locals 0

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 139
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 142
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->fragments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->init(Landroid/os/Bundle;)V

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->savedCurrentItem:I

    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    .line 148
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v0, Lcom/github/paolorotolo/appintro/AppIntroBase$4;

    invoke-direct {v0, p0}, Lcom/github/paolorotolo/appintro/AppIntroBase$4;-><init>(Lcom/github/paolorotolo/appintro/AppIntroBase;)V

    invoke-virtual {p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->post(Ljava/lang/Runnable;)Z

    .line 155
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->fragments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->slidesNumber:I

    .line 157
    iget-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    invoke-virtual {p0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setProgressButtonEnabled(Z)V

    .line 158
    invoke-direct {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->initController()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 818
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 825
    sget-object p1, Lcom/github/paolorotolo/appintro/AppIntroBase;->TAG:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "Unexpected request code"

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/github/paolorotolo/appintro/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 822
    :cond_0
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    iget-object p3, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {p3}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 205
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "baseProgressButtonEnabled"

    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    const-string v0, "progressButtonEnabled"

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    const-string v0, "skipButtonEnabled"

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButtonEnabled:Z

    const-string v0, "currentItem"

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->savedCurrentItem:I

    .line 211
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "nextEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPagingEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "nextPagingEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const-string v1, "lockPage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setLockPage(I)V

    const-string v0, "com.github.paolorotolo.appintro_immersive_mode_enabled"

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    const-string v0, "com.github.paolorotolo.appintro_immersive_mode_sticky"

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeSticky:Z

    const-string v0, "com.github.paolorotolo.appintro_color_transitions_enabled"

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->areColorTransitionsEnabled:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "baseProgressButtonEnabled"

    .line 190
    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "progressButtonEnabled"

    .line 191
    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "nextEnabled"

    .line 192
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isPagingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "nextPagingEnabled"

    .line 193
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->isNextPagingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "skipButtonEnabled"

    .line 194
    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButtonEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lockPage"

    .line 195
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getLockPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "currentItem"

    .line 196
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.github.paolorotolo.appintro_immersive_mode_enabled"

    .line 198
    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.github.paolorotolo.appintro_immersive_mode_sticky"

    .line 199
    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeSticky:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.github.paolorotolo.appintro_color_transitions_enabled"

    .line 200
    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->areColorTransitionsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSkipPressed()V
    .locals 0

    return-void
.end method

.method public onSkipPressed(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 339
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onSkipPressed()V

    return-void
.end method

.method public onSlideChanged()V
    .locals 0

    return-void
.end method

.method public onSlideChanged(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 504
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->onSlideChanged()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 171
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 173
    iget-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 174
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeSticky:Z

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setImmersiveMode(ZZ)V

    :cond_0
    return-void
.end method

.method public setBackButtonVisibilityWithDone(Z)V
    .locals 0

    .line 601
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->showBackButtonWithDone:Z

    return-void
.end method

.method protected setButtonState(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 354
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 356
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setColorTransitionsEnabled(Z)V
    .locals 0

    .line 638
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->areColorTransitionsEnabled:Z

    return-void
.end method

.method public setCustomIndicator(Lcom/github/paolorotolo/appintro/IndicatorController;)V
    .locals 0
    .param p1    # Lcom/github/paolorotolo/appintro/IndicatorController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 628
    iput-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    return-void
.end method

.method public setCustomTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 2
    .param p1    # Landroid/support/v4/view/ViewPager$PageTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 682
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setDepthAnimation()V
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->DEPTH:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v1, v2}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setFadeAnimation()V
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FADE:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v1, v2}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setFlowAnimation()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->FLOW:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v1, v2}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setGoBackLock(Z)V
    .locals 0

    .line 749
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isGoBackLockEnabled:Z

    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setImmersiveMode(ZZ)V

    return-void
.end method

.method public setImmersiveMode(ZZ)V
    .locals 2

    .line 773
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 774
    iget-boolean v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x700

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 780
    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    const/16 p2, 0x1706

    .line 791
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeSticky:Z

    goto :goto_0

    :cond_1
    const/16 p2, 0xf06

    .line 794
    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeSticky:Z

    .line 797
    :goto_0
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 799
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isImmersiveModeEnabled:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setIndicatorColor(II)V
    .locals 2

    .line 694
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->selectedIndicatorColor:I

    .line 695
    iput p2, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->unselectedIndicatorColor:I

    .line 697
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {v1, p1}, Lcom/github/paolorotolo/appintro/IndicatorController;->setSelectedIndicatorColor(I)V

    :cond_0
    if-eq p2, v0, :cond_1

    .line 701
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    invoke-interface {p1, p2}, Lcom/github/paolorotolo/appintro/IndicatorController;->setUnselectedIndicatorColor(I)V

    :cond_1
    return-void
.end method

.method public setNavBarColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method public setNavBarColor(Ljava/lang/String;)V
    .locals 2

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method public setNextPageSwipeLock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 715
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setProgressButtonEnabled(Z)V

    goto :goto_0

    .line 719
    :cond_0
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setProgressButtonEnabled(Z)V

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setNextPagingEnabled(Z)V

    return-void
.end method

.method public setOffScreenPageLimit(I)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public setProgressButtonEnabled(Z)V
    .locals 3

    .line 404
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 407
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result p1

    iget v1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->slidesNumber:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_1

    .line 408
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->nextButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    .line 409
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->doneButton:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    .line 410
    iget-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    if-eqz p1, :cond_0

    .line 411
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->backButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->showBackButtonWithDone:Z

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->nextButton:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    .line 418
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->doneButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    .line 419
    iget-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    if-eqz p1, :cond_3

    .line 420
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    invoke-virtual {p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_2

    .line 421
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->backButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->backButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0

    .line 426
    :cond_3
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButtonEnabled:Z

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    goto :goto_0

    .line 430
    :cond_4
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->nextButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    .line 431
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->doneButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    .line 432
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->backButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    .line 433
    iget-object p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public setProgressIndicator()V
    .locals 1

    .line 618
    new-instance v0, Lcom/github/paolorotolo/appintro/ProgressIndicatorController;

    invoke-direct {v0}, Lcom/github/paolorotolo/appintro/ProgressIndicatorController;-><init>()V

    iput-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->mController:Lcom/github/paolorotolo/appintro/IndicatorController;

    return-void
.end method

.method protected setScrollDurationFactor(I)V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setScrollDurationFactor(D)V

    return-void
.end method

.method public setSlideOverAnimation()V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->SLIDE_OVER:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v1, v2}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setSwipeLock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 733
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->progressButtonEnabled:Z

    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    goto :goto_0

    .line 737
    :cond_0
    iget-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->baseProgressButtonEnabled:Z

    invoke-virtual {p0, v0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setProgressButtonEnabled(Z)V

    .line 739
    :goto_0
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPagingEnabled(Z)V

    return-void
.end method

.method public setVibrate(Z)V
    .locals 0

    .line 566
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isVibrateOn:Z

    return-void
.end method

.method public setVibrateIntensity(I)V
    .locals 0

    .line 610
    iput p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->vibrateIntensity:I

    return-void
.end method

.method public setWizardMode(Z)V
    .locals 1

    .line 582
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->isWizardMode:Z

    const/4 v0, 0x0

    .line 583
    iput-boolean v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButtonEnabled:Z

    .line 584
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButton:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    return-void
.end method

.method public setZoomAnimation()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->pager:Lcom/github/paolorotolo/appintro/AppIntroViewPager;

    new-instance v1, Lcom/github/paolorotolo/appintro/ViewPageTransformer;

    sget-object v2, Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;->ZOOM:Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;

    invoke-direct {v1, v2}, Lcom/github/paolorotolo/appintro/ViewPageTransformer;-><init>(Lcom/github/paolorotolo/appintro/ViewPageTransformer$TransformType;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/github/paolorotolo/appintro/AppIntroViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method public showSkipButton(Z)V
    .locals 1

    .line 325
    iput-boolean p1, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButtonEnabled:Z

    .line 326
    iget-object v0, p0, Lcom/github/paolorotolo/appintro/AppIntroBase;->skipButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/github/paolorotolo/appintro/AppIntroBase;->setButtonState(Landroid/view/View;Z)V

    return-void
.end method

.method public showStatusBar(Z)V
    .locals 1

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/github/paolorotolo/appintro/AppIntroBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method
