.class public abstract Lcn/edu/pku/pkurunner/Storage/StorageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NetworkMethodWrapper(Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcn/edu/pku/pkurunner/Storage/-$$Lambda$StorageUtil$Z4ykf8Vg-V-HFsS8IN0WgBXI7YU;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Storage/-$$Lambda$StorageUtil$Z4ykf8Vg-V-HFsS8IN0WgBXI7YU;-><init>(Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 18
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 19
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    :try_start_0
    invoke-interface {p0}, Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;->produce()Ljava/lang/Object;

    move-result-object p0

    .line 13
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$Z4ykf8Vg-V-HFsS8IN0WgBXI7YU(Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Storage/StorageUtil;->a(Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static sizeToReadableString(J)Ljava/lang/String;
    .locals 8

    long-to-double p0, p0

    const/4 v0, 0x5

    .line 24
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 26
    array-length v1, v0

    const/4 v2, 0x0

    move-wide v3, p0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_1

    aget-char p1, v0, p0

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    div-double/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x54

    :goto_1
    const-string p0, "%.1f %c"

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 2
        0x42s
        0x4bs
        0x4ds
        0x47s
        0x54s
    .end array-data
.end method
