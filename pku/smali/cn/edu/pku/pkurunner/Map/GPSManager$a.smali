.class Lcn/edu/pku/pkurunner/Map/GPSManager$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/GPSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JJLio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lio/reactivex/ObservableEmitter<",
            "Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/16 p3, 0xf

    .line 205
    iput p3, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->a:I

    .line 211
    iput-wide p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->b:J

    .line 212
    iput-object p5, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->c:Lio/reactivex/ObservableEmitter;

    .line 213
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->c()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 246
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->e()V

    .line 247
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->cancel()V

    .line 248
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->c:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;

    const/4 v2, 0x1

    const-string v3, "Accurate"

    invoke-direct {v1, v2, v0, v3}, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;-><init>(ZZLjava/lang/String;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->c:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;

    const-string v2, "Not accurate"

    invoke-direct {v1, v0, v0, v2}, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;-><init>(ZZLjava/lang/String;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->a(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 8

    .line 218
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->d()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->d()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    .line 219
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->d()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->d()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->c:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;

    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->MOCK_LOCATION:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    invoke-direct {p2, v0}, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;-><init>(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 224
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/GPSManager;->e()V

    .line 225
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->cancel()V

    return-void

    .line 230
    :cond_1
    iget v2, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->a:I

    int-to-double v2, v2

    cmpg-double v2, v0, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_2

    .line 231
    invoke-direct {p0, v3}, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->a(Z)V

    .line 233
    :cond_2
    iget-wide v4, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->b:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long p1, p1, v4

    if-gez p1, :cond_3

    .line 234
    iget p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->a:I

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->a:I

    .line 236
    :cond_3
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->c:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$a;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v2, v3, v0}, Lcn/edu/pku/pkurunner/Map/GPSManager$a$a;-><init>(ZZLjava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
