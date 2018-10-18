.class public Lcn/edu/pku/pkurunner/View/GPSInfoView;
.super Landroid/support/v7/widget/CardView;
.source "SourceFile"


# static fields
.field private static final i:[I

.field private static final j:I


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->i:[I

    .line 38
    sget-object v0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->i:[I

    array-length v0, v0

    sput v0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->j:I

    return-void

    :array_0
    .array-data 4
        0x7f0800ab
        0x7f0800ac
        0x7f0800ad
        0x7f0800ae
        0x7f0800af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->h:Z

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->h:Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 121
    sget v0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->j:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private a()V
    .locals 4

    const-string v0, "translationY"

    const/4 v1, 0x2

    .line 125
    new-array v1, v1, [F

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getOuterHeight()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0c0069

    .line 51
    invoke-static {p1, v0, p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09013e

    .line 52
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->e:Landroid/widget/ImageView;

    const v0, 0x7f09013f

    .line 53
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->f:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 56
    sget-object v0, Lcn/edu/pku/pkurunner/R$styleable;->GPSInfoView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 63
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setInfoText(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :pswitch_1
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setSignalStrength(I)V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setAppear(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 73
    new-instance p1, Lcn/edu/pku/pkurunner/View/-$$Lambda$GPSInfoView$k1ptb8V_g8HgIQOJPqCTdZYY_XU;

    invoke-direct {p1, p0}, Lcn/edu/pku/pkurunner/View/-$$Lambda$GPSInfoView$k1ptb8V_g8HgIQOJPqCTdZYY_XU;-><init>(Lcn/edu/pku/pkurunner/View/GPSInfoView;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x3

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-virtual {p1, v0, v1, p2}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/View/-$$Lambda$GPSInfoView$R-XKIR8xRo7jXtgCEAbcsv_lMj0;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/View/-$$Lambda$GPSInfoView$R-XKIR8xRo7jXtgCEAbcsv_lMj0;-><init>(Lcn/edu/pku/pkurunner/View/GPSInfoView;)V

    .line 76
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 81
    invoke-virtual {p1, v0, v1, p2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/View/-$$Lambda$GPSInfoView$69SqfbaAiHYsoHipCdV_iUGlsbk;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/View/-$$Lambda$GPSInfoView$69SqfbaAiHYsoHipCdV_iUGlsbk;-><init>(Lcn/edu/pku/pkurunner/View/GPSInfoView;)V

    .line 83
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->g:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->h:Z

    if-nez p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    const-string v0, "translationY"

    const/4 v1, 0x2

    .line 132
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getOuterHeight()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private synthetic b(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->a()V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getTranslationY()F

    move-result v0

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getOuterHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getOuterHeight()F
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    return v0
.end method

.method public static synthetic lambda$69SqfbaAiHYsoHipCdV_iUGlsbk(Lcn/edu/pku/pkurunner/View/GPSInfoView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$R-XKIR8xRo7jXtgCEAbcsv_lMj0(Lcn/edu/pku/pkurunner/View/GPSInfoView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$k1ptb8V_g8HgIQOJPqCTdZYY_XU(Lcn/edu/pku/pkurunner/View/GPSInfoView;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public notifyVisible()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->g:Lio/reactivex/ObservableEmitter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppear(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->getOuterHeight()F

    move-result p1

    neg-float p1, p1

    :goto_0
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setTranslationY(F)V

    .line 108
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->invalidate()V

    return-void
.end method

.method public setInfoText(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->invalidate()V

    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->h:Z

    .line 113
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setAppear(Z)V

    return-void
.end method

.method public setSignalStrength(D)V
    .locals 2

    .line 98
    sget v0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->j:I

    int-to-double v0, v0

    mul-double v0, v0, p1

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setSignalStrength(I)V

    return-void
.end method

.method public setSignalStrength(I)V
    .locals 2

    .line 92
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->a(I)I

    move-result p1

    .line 93
    iget-object v0, p0, Lcn/edu/pku/pkurunner/View/GPSInfoView;->e:Landroid/widget/ImageView;

    sget-object v1, Lcn/edu/pku/pkurunner/View/GPSInfoView;->i:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->invalidate()V

    return-void
.end method
