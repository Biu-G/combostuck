.class public Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;
    }
.end annotation


# static fields
.field private static j:Ljava/text/SimpleDateFormat;


# instance fields
.field private final A:I

.field private final B:I

.field private k:Lcom/amap/api/maps2d/MapView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Lcom/amap/api/maps2d/AMap;

.field private w:Landroid/view/Window;

.field private x:F

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd\nHH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->j:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    const/16 v0, 0xc8

    .line 58
    iput v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->y:I

    const/16 v0, 0x70

    iput v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->z:I

    const/16 v0, 0x48

    iput v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->A:I

    const/16 v0, 0x8

    iput v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->B:I

    return-void
.end method

.method private a([D[D)D
    .locals 8

    const/4 v0, 0x0

    .line 241
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    mul-double v1, v1, v3

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    aget-wide v6, p2, v3

    mul-double v4, v4, v6

    add-double/2addr v1, v4

    aget-wide v4, p1, v0

    aget-wide v6, p1, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    aget-wide v6, p2, v0

    aget-wide p1, p2, v3

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    mul-double v4, v4, p1

    div-double/2addr v1, v4

    return-wide v1
.end method

.method private a(FFF)F
    .locals 1

    const/4 v0, 0x0

    .line 364
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

.method static synthetic a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)F
    .locals 0

    .line 47
    iget p0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->x:F

    return p0
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;FFF)F
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(FFF)F

    move-result p0

    return p0
.end method

.method private a()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->w:Landroid/view/Window;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->x:F

    if-eqz v0, :cond_0

    .line 326
    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$1;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    :cond_0
    return-void
.end method

.method private a(Lcn/edu/pku/pkurunner/Model/Record;)V
    .locals 8

    .line 61
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->getRecordPlaceHintForOfflineUser(Lcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordDetailViewFragment$41LoWwwnHyzEXTRyHPl_RNvVpkA;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordDetailViewFragment$41LoWwwnHyzEXTRyHPl_RNvVpkA;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;)V

    sget-object v2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 64
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getPlace()Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getPlaceString(Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;)Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->t:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->UNKNOWN:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    if-ne v0, v4, :cond_1

    const v0, 0x7f060046

    goto :goto_0

    :cond_1
    const v0, 0x7f060180

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 73
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_1
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f0f014c

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getDistance()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f0f0096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060137

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->isUploaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f0f0098

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->isVerified()Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f0f0099

    new-array v3, v2, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getInvalidReason()I

    move-result v4

    invoke-static {v4}, Lcn/edu/pku/pkurunner/Exception/ServerException;->getLocalizedMessage(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 87
    invoke-virtual {p0, v1, v3}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 90
    :cond_4
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f0f0097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600b6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    :goto_2
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->o:Landroid/widget/TextView;

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->j:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getAccumulateBearing()D

    move-result-wide v0

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v3

    double-to-int v0, v0

    if-nez v0, :cond_5

    .line 98
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->p:Landroid/widget/TextView;

    const v1, 0x7f0f0094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 100
    :cond_5
    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->p:Landroid/widget/TextView;

    const v3, 0x7f0f0093

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-lez v0, :cond_6

    const v6, 0x7f0f0091

    goto :goto_3

    :cond_6
    const v6, 0x7f0f0092

    .line 101
    :goto_3
    invoke-virtual {p0, v6}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 100
    invoke-virtual {p0, v3, v4}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_4
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->r:Landroid/widget/TextView;

    const v1, 0x7f0f009a

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f0f0095

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getDistance()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v6

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getDuration()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Ljava/util/ArrayList;)V

    .line 110
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getPhotoRemotePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, ""

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 115
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://pkunewyouth.pku.edu.cn/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getPhotoRemotePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p0}, Lcn/edu/pku/pkurunner/GlideApp;->with(Landroid/support/v4/app/Fragment;)Lcn/edu/pku/pkurunner/GlideRequests;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lcn/edu/pku/pkurunner/GlideRequests;->load(Ljava/lang/String;)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object p1

    const v0, 0x7f0600b8

    .line 118
    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/GlideRequest;->placeholder(I)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object p1

    const v0, 0x7f080092

    .line 119
    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/GlideRequest;->error(I)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/GlideRequest;->centerCrop()Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 121
    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object p1

    .line 122
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->u:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_6

    .line 112
    :cond_8
    :goto_5
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->u:Landroid/widget/ImageView;

    const v0, 0x7f08007a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->u:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_6
    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_8

    .line 128
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 132
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide v2, 0x4056800000000000L    # 90.0

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v7, 0x0

    move-wide v9, v7

    const-wide v11, 0x4066800000000000L    # 180.0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/edu/pku/pkurunner/Model/Point;

    .line 136
    invoke-virtual {v13}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v13}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v16

    cmpl-double v13, v14, v7

    if-lez v13, :cond_2

    move-wide v7, v14

    :cond_2
    cmpg-double v13, v14, v2

    if-gez v13, :cond_3

    move-wide v2, v14

    :cond_3
    cmpl-double v13, v16, v9

    if-lez v13, :cond_4

    move-wide/from16 v9, v16

    :cond_4
    cmpg-double v13, v16, v11

    if-gez v13, :cond_1

    move-wide/from16 v11, v16

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    add-double v13, v7, v2

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    add-double v17, v9, v11

    div-double v5, v17, v15

    const/4 v15, 0x1

    .line 145
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-wide/from16 v19, v5

    if-ge v15, v4, :cond_7

    add-int/lit8 v4, v15, -0x1

    .line 146
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/edu/pku/pkurunner/Model/Point;

    .line 147
    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/Point;->getStatus()I

    move-result v5

    move-object/from16 v21, v1

    const/4 v1, 0x2

    if-ne v5, v1, :cond_6

    invoke-virtual {v6}, Lcn/edu/pku/pkurunner/Model/Point;->getStatus()I

    move-result v5

    const/4 v1, 0x1

    if-ne v5, v1, :cond_6

    .line 148
    iget-object v1, v0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    new-instance v5, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v5}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 149
    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    const v5, 0x7f0f009c

    .line 150
    invoke-virtual {v0, v5}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 148
    invoke-virtual {v1, v4}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    .line 151
    iget-object v1, v0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    new-instance v4, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v4}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 152
    invoke-virtual {v6}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    const v5, 0x7f0f009d

    .line 153
    invoke-virtual {v0, v5}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v4

    .line 151
    invoke-virtual {v1, v4}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    goto :goto_2

    .line 156
    :cond_6
    iget-object v1, v0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    new-instance v5, Lcom/amap/api/maps2d/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps2d/model/PolylineOptions;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amap/api/maps2d/model/LatLng;

    .line 157
    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v0, v16

    invoke-virtual {v6}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v0, v6

    invoke-virtual {v5, v0}, Lcom/amap/api/maps2d/model/PolylineOptions;->add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amap/api/maps2d/model/PolylineOptions;->color(I)Lcom/amap/api/maps2d/model/PolylineOptions;

    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v5, v19

    move-object/from16 v1, v21

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v21, v1

    const/4 v0, 0x0

    sub-double/2addr v7, v2

    .line 161
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    sub-double v0, v4, v0

    sub-double/2addr v9, v11

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v13

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v11

    .line 162
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v9, v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v6, v2

    sub-double/2addr v4, v6

    move-object/from16 v2, p0

    .line 164
    iget-object v3, v2, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    move-object/from16 v7, v21

    const/4 v8, 0x0

    .line 165
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v8}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v6

    const v8, 0x7f0f009e

    .line 166
    invoke-virtual {v2, v8}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v6

    .line 164
    invoke-virtual {v3, v6}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    .line 167
    iget-object v3, v2, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 168
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v7}, Lcn/edu/pku/pkurunner/Model/Point;->toLatLng()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v6

    const v7, 0x7f0f009b

    .line 169
    invoke-virtual {v2, v7}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v6

    .line 167
    invoke-virtual {v3, v6}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    .line 170
    iget-object v3, v2, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    move-wide/from16 v7, v19

    invoke-direct {v6, v13, v14, v7, v8}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {v6}, Lcom/amap/api/maps2d/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    .line 171
    iget-object v3, v2, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/amap/api/maps2d/CameraUpdateFactory;->zoomTo(F)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    return-void

    :cond_8
    :goto_3
    move-object v2, v0

    return-void
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 214
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    new-instance v2, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;-><init>(I)V

    .line 217
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/edu/pku/pkurunner/Model/Point;

    .line 218
    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/Point;->getStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a()V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v2, v4}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a(Lcn/edu/pku/pkurunner/Model/Point;)V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {v2, v4}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a(Lcn/edu/pku/pkurunner/Model/Point;)V

    .line 229
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->b()[D

    move-result-object v4

    .line 230
    invoke-direct {p0, v0, v4}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a([D[D)D

    move-result-wide v5

    const-wide v7, 0x3fee147ae147ae14L    # 0.94

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 232
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->c()Lcn/edu/pku/pkurunner/Model/Point;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data
.end method

.method public static synthetic lambda$41LoWwwnHyzEXTRyHPl_RNvVpkA(Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 308
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->w:Landroid/view/Window;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    const/4 v0, 0x0

    const v1, 0x7f0c0037

    .line 247
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090086

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps2d/MapView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    const p2, 0x7f09007b

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->t:Landroid/widget/ImageView;

    const p2, 0x7f09008b

    .line 251
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->l:Landroid/widget/TextView;

    const p2, 0x7f090088

    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->m:Landroid/widget/TextView;

    const p2, 0x7f09008d

    .line 253
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->n:Landroid/widget/TextView;

    const p2, 0x7f090087

    .line 254
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->o:Landroid/widget/TextView;

    const p2, 0x7f090089

    .line 255
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->p:Landroid/widget/TextView;

    const p2, 0x7f09008a

    .line 256
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->q:Landroid/widget/TextView;

    const p2, 0x7f09008e

    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->r:Landroid/widget/TextView;

    const p2, 0x7f09008c

    .line 258
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->s:Landroid/widget/TextView;

    const p2, 0x7f090083

    .line 259
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->u:Landroid/widget/ImageView;

    .line 261
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {p2, p3}, Lcom/amap/api/maps2d/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 262
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {p2}, Lcom/amap/api/maps2d/MapView;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object p2

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    .line 264
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p2}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/amap/api/maps2d/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 265
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p2}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/amap/api/maps2d/UiSettings;->setScaleControlsEnabled(Z)V

    .line 266
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p2}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    .line 267
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p2}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/amap/api/maps2d/UiSettings;->setCompassEnabled(Z)V

    .line 268
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p2}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/amap/api/maps2d/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 269
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p2}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/amap/api/maps2d/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 271
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {p2, v0}, Lcom/amap/api/maps2d/AMap;->setMyLocationEnabled(Z)V

    .line 273
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "record"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcn/edu/pku/pkurunner/Model/Record;

    .line 274
    invoke-direct {p0, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a(Lcn/edu/pku/pkurunner/Model/Record;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 299
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->onDestroy()V

    .line 300
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onDestroy()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    .line 302
    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->v:Lcom/amap/api/maps2d/AMap;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->onPause()V

    .line 288
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 293
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->onResume()V

    .line 294
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 315
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->k:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 281
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->onStart()V

    .line 282
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;->a()V

    return-void
.end method
