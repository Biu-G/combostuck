.class public Lcn/edu/pku/pkurunner/Map/MapFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/Map/MapContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Map/MapFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps2d/MapView;

.field private b:Lcom/amap/api/maps2d/AMap;

.field private c:Lcom/amap/api/maps2d/model/MyLocationStyle;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/support/constraint/Group;

.field private m:Lcn/edu/pku/pkurunner/View/GPSInfoView;

.field private n:Landroid/app/ProgressDialog;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field public presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

.field private q:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "Landroid/support/v4/widget/NestedScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Landroid/os/PowerManager;

.field public shouldRevealAnimation:Z

.field private t:Landroid/os/PowerManager$WakeLock;

.field private u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->shouldRevealAnimation:Z

    .line 97
    new-instance v0, Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Map/MapPresenter;-><init>(Lcn/edu/pku/pkurunner/Map/MapContract$View;)V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    return-void
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/Map/MapFragment;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/Map/MapFragment;Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    return-object p1
.end method

.method private a()V
    .locals 6

    .line 477
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 478
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v1, :cond_0

    const-string v3, "FabX"

    .line 481
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 483
    :cond_0
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const/4 v3, 0x0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 484
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x3e8

    .line 485
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 486
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 488
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    .line 489
    new-array v1, v1, [I

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060162

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 490
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 491
    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$ibiZKfHyAstoBrbJ-St7ShsAnNg;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$ibiZKfHyAstoBrbJ-St7ShsAnNg;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x1f4

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 493
    new-instance v4, Lcn/edu/pku/pkurunner/Map/MapFragment$2;

    invoke-direct {v4, p0}, Lcn/edu/pku/pkurunner/Map/MapFragment$2;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 512
    iget-object v4, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->p:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 513
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 514
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private a(Lcn/edu/pku/pkurunner/Map/MapFragment$a;)V
    .locals 7

    .line 520
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 521
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v1, :cond_0

    const-string v3, "FabX"

    .line 524
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 526
    :cond_0
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    int-to-float v0, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 527
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x3e8

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 529
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 531
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    .line 532
    new-array v3, v3, [I

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060162

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060147

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 533
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 534
    new-instance v3, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$43w8VpZFTs9sortc6PnaR1mk1bQ;

    invoke-direct {v3, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$43w8VpZFTs9sortc6PnaR1mk1bQ;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 536
    new-instance v1, Lcn/edu/pku/pkurunner/Map/MapFragment$3;

    invoke-direct {v1, p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment$3;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;Lcn/edu/pku/pkurunner/Map/MapFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->p:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 556
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$cJG8LUCXayFGHt95qsG3uh32Li0;

    invoke-direct {v1, p1}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$cJG8LUCXayFGHt95qsG3uh32Li0;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setOnMapTouchListener(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Landroid/view/MotionEvent;)V
    .locals 1

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)Z
    .locals 1

    .line 124
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->onFabPauseClick(Z)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcn/edu/pku/pkurunner/Map/MapFragment;)Lcn/edu/pku/pkurunner/View/GPSInfoView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->m:Lcn/edu/pku/pkurunner/View/GPSInfoView;

    return-object p0
.end method

.method private synthetic b()V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/MainActivity;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/MainActivity;->switchFromRunningToRecordList()V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->onFabPauseClick(Z)Z

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/MainActivity;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/MainActivity;->switchFromRunningToRecordList()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)Z
    .locals 1

    .line 117
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->onFabRunClick(Z)Z

    move-result p1

    return p1
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->onFabRunClick(Z)Z

    return-void
.end method

.method public static synthetic lambda$43w8VpZFTs9sortc6PnaR1mk1bQ(Lcn/edu/pku/pkurunner/Map/MapFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$6bhv4bBGhugflFyIVMve5UTsKe4(Lcn/edu/pku/pkurunner/Map/MapFragment;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$8mCDeBwKMxS0FHPefMXv3tIPgBg(Lcn/edu/pku/pkurunner/Map/MapFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->b()V

    return-void
.end method

.method public static synthetic lambda$PnsWTxihQZaJttqd6llZfsAWYZQ(Lcn/edu/pku/pkurunner/Map/MapFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->c()V

    return-void
.end method

.method public static synthetic lambda$TClPMgU5SdgjxjG-fmzcV7bpGcg(Lcn/edu/pku/pkurunner/Map/MapFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$cJG8LUCXayFGHt95qsG3uh32Li0(Lio/reactivex/ObservableEmitter;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Lio/reactivex/ObservableEmitter;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic lambda$ibiZKfHyAstoBrbJ-St7ShsAnNg(Lcn/edu/pku/pkurunner/Map/MapFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$kyy5VjyZHw71DgIMAueniIBhjxI(Lcn/edu/pku/pkurunner/Map/MapFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$l3hm-xKVUcnupUmRIOdgUU_rn5Q(Lcn/edu/pku/pkurunner/Map/MapFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$s2MFuu67FRIZX-NqTY9n_9DJDJs(Lcn/edu/pku/pkurunner/Map/MapFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismissNotification()V
    .locals 4

    .line 363
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public dismissWaitingDialog()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public getAMap()Lcom/amap/api/maps2d/AMap;
    .locals 1

    .line 272
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    return-object v0
.end method

.method public getActivityFromContract()Lcn/edu/pku/pkurunner/MainActivity;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/MainActivity;

    return-object v0
.end method

.method public getFragmentContext()Landroid/content/Context;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLocationListener()Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;
    .locals 1

    .line 277
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    return-object v0
.end method

.method public indicatorShowUpAnimation()V
    .locals 12

    .line 574
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->q:Landroid/support/design/widget/BottomSheetBehavior;

    const-string v1, "peekHeight"

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget v4, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->r:I

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->r:I

    mul-int/lit16 v4, v4, 0xc0

    div-int/lit8 v4, v4, 0x6c

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 576
    new-instance v1, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x2ee

    .line 577
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x9c4

    .line 578
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 580
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->q:Landroid/support/design/widget/BottomSheetBehavior;

    const-string v9, "peekHeight"

    new-array v10, v2, [I

    iget v11, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->r:I

    mul-int/lit16 v11, v11, 0xc0

    div-int/lit8 v11, v11, 0x6c

    aput v11, v10, v5

    iget v11, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->r:I

    aput v11, v10, v6

    invoke-static {v1, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 582
    new-instance v9, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v9}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 584
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 586
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 587
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 588
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public varargs makeSnackBar(II[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 267
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public varargs makeToast(II[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 262
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public varargs makeWaitingDialog(I[Ljava/lang/Object;)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 282
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    .line 283
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 284
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 285
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 286
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 287
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public notifyGPSInfo()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->m:Lcn/edu/pku/pkurunner/View/GPSInfoView;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->notifyVisible()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MAP:onCreate"

    .line 102
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 391
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0002

    .line 392
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "MAP:onCreateView"

    .line 109
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c0034

    .line 110
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    .line 112
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f090065

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    .line 113
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    const p2, 0x7f0f007f

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f007f

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0081

    :goto_0
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$s2MFuu67FRIZX-NqTY9n_9DJDJs;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$s2MFuu67FRIZX-NqTY9n_9DJDJs;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$kyy5VjyZHw71DgIMAueniIBhjxI;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$kyy5VjyZHw71DgIMAueniIBhjxI;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const v1, 0x7f090064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    .line 120
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 121
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->isRunningPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    const p2, 0x7f0f0080

    :cond_3
    invoke-virtual {p0, p2}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    new-instance p2, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$TClPMgU5SdgjxjG-fmzcV7bpGcg;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$TClPMgU5SdgjxjG-fmzcV7bpGcg;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    new-instance p2, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$l3hm-xKVUcnupUmRIOdgUU_rn5Q;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$l3hm-xKVUcnupUmRIOdgUU_rn5Q;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    :cond_4
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f09006a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->f:Landroid/widget/TextView;

    .line 128
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f09006c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->g:Landroid/widget/TextView;

    .line 129
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f09006e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->h:Landroid/widget/TextView;

    .line 130
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f09006b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->i:Landroid/widget/TextView;

    .line 131
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f09006d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->j:Landroid/widget/TextView;

    .line 132
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f09006f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->k:Landroid/widget/TextView;

    .line 134
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f090066

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/View/GPSInfoView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->m:Lcn/edu/pku/pkurunner/View/GPSInfoView;

    .line 136
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f090067

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/Group;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->l:Landroid/support/constraint/Group;

    .line 138
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p2, 0x7f090069

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps2d/MapView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    .line 139
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {p1, p3}, Lcom/amap/api/maps2d/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    if-nez p1, :cond_5

    .line 141
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/MapView;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    .line 143
    :cond_5
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    new-instance p2, Lcn/edu/pku/pkurunner/Map/MapFragment$1;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/Map/MapFragment$1;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/AMap;->setLocationSource(Lcom/amap/api/maps2d/LocationSource;)V

    .line 155
    new-instance p1, Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-direct {p1}, Lcom/amap/api/maps2d/model/MyLocationStyle;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 156
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 157
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    const p2, 0x7f0800a2

    invoke-static {p2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 158
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, p2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->anchor(FF)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 159
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060031

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 160
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060032

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->radiusFillColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 161
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    iget-object p2, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/AMap;->setMyLocationStyle(Lcom/amap/api/maps2d/model/MyLocationStyle;)V

    .line 162
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 163
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/UiSettings;->setScaleControlsEnabled(Z)V

    .line 164
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    .line 165
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/UiSettings;->setCompassEnabled(Z)V

    .line 166
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 167
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amap/api/maps2d/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 168
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    new-instance p3, Lcom/amap/api/maps2d/model/LatLng;

    const-wide v0, 0x4043ff1465e89225L    # 39.99281

    const-wide v2, 0x405d13e5753a3ec0L    # 116.31088

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {p3}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    .line 169
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    const/high16 p3, 0x41900000    # 18.0f

    invoke-static {p3}, Lcom/amap/api/maps2d/CameraUpdateFactory;->zoomTo(F)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    .line 171
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p3, 0x7f09000f

    invoke-virtual {p1, p3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->p:Landroid/view/View;

    .line 173
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    const p3, 0x7f090063

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 174
    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->q:Landroid/support/design/widget/BottomSheetBehavior;

    .line 175
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->q:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetBehavior;->getPeekHeight()I

    move-result p1

    iput p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->r:I

    .line 177
    invoke-virtual {p0, p2}, Lcn/edu/pku/pkurunner/Map/MapFragment;->setHasOptionsMenu(Z)V

    .line 178
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "MAP:onDestroy"

    .line 218
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->a()V

    .line 220
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->releaseWakeLock()V

    .line 221
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->dismissNotification()V

    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onDestroy()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    .line 225
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    .line 226
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    .line 227
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->o:Landroid/view/View;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f090140

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 245
    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 246
    iget-boolean p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->shouldRevealAnimation:Z

    if-eqz p1, :cond_1

    .line 247
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a()V

    .line 248
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->shouldRevealAnimation:Z

    .line 251
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->updateUnitPreference()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 434
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 428
    :pswitch_0
    new-instance p1, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$8mCDeBwKMxS0FHPefMXv3tIPgBg;

    invoke-direct {p1, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$8mCDeBwKMxS0FHPefMXv3tIPgBg;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Lcn/edu/pku/pkurunner/Map/MapFragment$a;)V

    return v2

    .line 406
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unchecking!"

    .line 407
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 408
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 409
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->pauseAutoLocating()V

    goto :goto_0

    :cond_0
    const-string v0, "Checking!"

    .line 411
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 412
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 413
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->startAutoLocating()V

    :goto_0
    return v2

    .line 417
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unchecking!"

    .line 418
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 419
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 420
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->pauseGPSAssistant()V

    goto :goto_1

    :cond_1
    const-string v0, "Checking!"

    .line 422
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 423
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 424
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->startGPSAssistant()V

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f09005d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    const-string v0, "MAP:onPause"

    .line 188
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 190
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {v0, p1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->syncOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "MAP:onResume"

    .line 195
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 197
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f090140

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 199
    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onResume()V

    .line 202
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->start()V

    .line 203
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->shouldRevealAnimation:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a()V

    .line 205
    iput-boolean v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->shouldRevealAnimation:Z

    .line 208
    :cond_1
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->updateUnitPreference()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "MAP:onSaveInstanceState"

    .line 232
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 233
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->a:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 183
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public openDevelopSettings()V
    .locals 2

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 447
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openGPSSettings()V
    .locals 2

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public registerMapCenterHelper()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$6bhv4bBGhugflFyIVMve5UTsKe4;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$6bhv4bBGhugflFyIVMve5UTsKe4;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public releaseWakeLock()V
    .locals 1

    .line 567
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->t:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->t:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->t:Landroid/os/PowerManager$WakeLock;

    const-string v0, "Wake lock released"

    .line 569
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public requireWakeLock()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->s:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->s:Landroid/os/PowerManager;

    .line 561
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->s:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "pku runner"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->t:Landroid/os/PowerManager$WakeLock;

    .line 562
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->t:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "Wake lock acquired"

    .line 563
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public varargs setAssistantText(ID[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 463
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->m:Lcn/edu/pku/pkurunner/View/GPSInfoView;

    invoke-virtual {p0, p1, p4}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setInfoText(Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->m:Lcn/edu/pku/pkurunner/View/GPSInfoView;

    invoke-virtual {p1, p2, p3}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setSignalStrength(D)V

    return-void
.end method

.method public setLocatingPointEnabled(Z)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    const v1, 0x7f0800a2

    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 470
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->c:Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setMyLocationStyle(Lcom/amap/api/maps2d/model/MyLocationStyle;)V

    .line 471
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public setPresenter(Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;)V
    .locals 0
    .param p1    # Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    check-cast p1, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->setPresenter(Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;)V

    return-void
.end method

.method public showNotification()V
    .locals 4

    .line 358
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcn/edu/pku/pkurunner/Service/NotificationDisplayService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public switchToPaused()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    const v1, 0x7f0f0080

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchToReset()V
    .locals 10

    .line 381
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->b:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->clear()V

    .line 382
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    const v1, 0x7f0f0081

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->q:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->r:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 385
    invoke-virtual/range {v2 .. v9}, Lcn/edu/pku/pkurunner/Map/MapFragment;->updateTextView(DDDZ)V

    .line 386
    new-instance v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$PnsWTxihQZaJttqd6llZfsAWYZQ;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$PnsWTxihQZaJttqd6llZfsAWYZQ;-><init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V

    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Lcn/edu/pku/pkurunner/Map/MapFragment$a;)V

    return-void
.end method

.method public switchToRunning()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->d:Landroid/widget/Button;

    const v1, 0x7f0f0082

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->e:Landroid/widget/Button;

    const v1, 0x7f0f007f

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->q:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->r:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method

.method public toggleGPSAssistantIndication(Z)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->m:Lcn/edu/pku/pkurunner/View/GPSInfoView;

    invoke-virtual {v0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setPersistent(Z)V

    return-void
.end method

.method public toggleRunningIndication(Z)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->l:Landroid/support/constraint/Group;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/constraint/Group;->setVisibility(I)V

    return-void
.end method

.method public unregisterMapCenterHelper()V
    .locals 0

    return-void
.end method

.method public updateTextSci(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)V
    .locals 4

    .line 327
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->k:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f0f007c

    invoke-virtual {p0, v0, v2}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    sget-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->C:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 331
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->i:Landroid/widget/TextView;

    const v0, 0x7f0f007a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->j:Landroid/widget/TextView;

    const v0, 0x7f0f007e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->f:Landroid/widget/TextView;

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 335
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 336
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->i:Landroid/widget/TextView;

    const v0, 0x7f0f0079

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->j:Landroid/widget/TextView;

    const v0, 0x7f0f007d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 341
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->f:Landroid/widget/TextView;

    const/high16 v0, 0x42040000    # 33.0f

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 343
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method public updateTextView(DDDZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p7, :cond_0

    .line 303
    iget-object p7, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->h:Landroid/widget/TextView;

    const v2, 0x7f0f0075

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    aput-object p5, v3, v0

    invoke-virtual {p0, v2, v3}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p7, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p5, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->f:Landroid/widget/TextView;

    const p6, 0x7f0f0073

    new-array p7, v1, [Ljava/lang/Object;

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/Map/SpeedHelper;->meterToPlanckLength(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p7, v0

    invoke-virtual {p0, p6, p7}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->g:Landroid/widget/TextView;

    const p2, 0x7f0f0077

    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcn/edu/pku/pkurunner/Map/SpeedHelper;->secondToPlanckTime(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, p5, v0

    invoke-virtual {p0, p2, p5}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 307
    :cond_0
    iget-object p7, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->h:Landroid/widget/TextView;

    const v2, 0x7f0f0074

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    aput-object p5, v3, v0

    invoke-virtual {p0, v2, v3}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p7, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p5, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->f:Landroid/widget/TextView;

    const p6, 0x7f0f0072

    new-array p7, v1, [Ljava/lang/Object;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v2

    double-to-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p7, v0

    invoke-virtual {p0, p6, p7}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide p1, 0x40ac200000000000L    # 3600.0

    div-double p1, p3, p1

    double-to-int p1, p1

    mul-int/lit16 p2, p1, 0xe10

    int-to-double p5, p2

    sub-double/2addr p3, p5

    const-wide/high16 p5, 0x404e000000000000L    # 60.0

    div-double p5, p3, p5

    double-to-int p2, p5

    mul-int/lit8 p5, p2, 0x3c

    int-to-double p5, p5

    sub-double/2addr p3, p5

    double-to-int p3, p3

    const/4 p4, 0x2

    if-nez p1, :cond_1

    const p1, 0x7f0f0078

    .line 317
    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-virtual {p0, p1, p4}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p5, 0x7f0f0076

    const/4 p6, 0x3

    .line 319
    new-array p6, p6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p6, p4

    invoke-virtual {p0, p5, p6}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 321
    :goto_0
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public varargs updateWaitingDialog(I[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 292
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment;->n:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
