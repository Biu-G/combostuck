.class public Lcn/edu/pku/pkurunner/Data;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/edu/pku/pkurunner/Model/User;

.field private static b:Lcn/edu/pku/pkurunner/Network/Model/UserStatus;

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static final e:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lorg/xutils/DbManager$DaoConfig;

.field private static g:Lorg/xutils/DbManager;

.field private static h:Landroid/content/SharedPreferences;

.field private static i:Ljava/io/File;

.field private static j:Landroid/content/SharedPreferences;

.field private static k:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Data;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcn/edu/pku/pkurunner/Data;->d:Z

    .line 61
    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;

    sput-object v0, Lcn/edu/pku/pkurunner/Data;->e:Lio/reactivex/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/PartialPoint;Lcn/edu/pku/pkurunner/Model/PartialPoint;)I
    .locals 0

    .line 415
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/PartialPoint;->getSequence()I

    move-result p0

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/PartialPoint;->getSequence()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/PartialRecord;Lcn/edu/pku/pkurunner/Model/PartialRecord;)I
    .locals 0

    .line 406
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/PartialRecord;->getDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/PartialRecord;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Point;Lcn/edu/pku/pkurunner/Model/Point;)I
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Point;->getSequence()I

    move-result p0

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Point;->getSequence()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic a(ILcn/edu/pku/pkurunner/Model/GymRecord;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 827
    invoke-virtual {p1, p0}, Lcn/edu/pku/pkurunner/Model/GymRecord;->setId(I)V

    .line 828
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0, p1}, Lcn/edu/pku/pkurunner/Model/User;->setGymRecordById(ILcn/edu/pku/pkurunner/Model/GymRecord;)V

    .line 830
    :try_start_0
    sget-object p0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/GymRecord;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 832
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 833
    new-instance p1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v0, 0x4

    .line 835
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    .line 833
    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(ILcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 501
    invoke-virtual {p1, p0}, Lcn/edu/pku/pkurunner/Model/Record;->setId(I)V

    .line 502
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0, p1}, Lcn/edu/pku/pkurunner/Model/User;->setRecordById(ILcn/edu/pku/pkurunner/Model/Record;)V

    .line 503
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->isDetailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/Point;

    .line 506
    invoke-virtual {v1, p0}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V

    goto :goto_0

    .line 510
    :cond_0
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 511
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v1, Lcn/edu/pku/pkurunner/Model/Point;

    const-string v2, "recordDbId"

    const-string v3, "="

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    .line 512
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 513
    sget-object p0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 515
    new-instance p1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v0, 0x4

    const-string v1, "Cannot update record and track"

    invoke-direct {p1, v0, v1, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Record;ILcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 621
    invoke-virtual {p2, v0}, Lcn/edu/pku/pkurunner/Model/Record;->setDetailed(Z)V

    .line 622
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcn/edu/pku/pkurunner/Model/Record;->setTrack(Ljava/util/ArrayList;)V

    .line 623
    invoke-virtual {p2, p1}, Lcn/edu/pku/pkurunner/Model/Record;->setId(I)V

    .line 624
    sget-object p0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/Model/User;->setRecordById(ILcn/edu/pku/pkurunner/Model/Record;)V

    .line 626
    :try_start_0
    sget-object p0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    invoke-static {p2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 628
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 629
    new-instance p1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 p2, 0x4

    .line 631
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    .line 629
    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 749
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Model/Record;->setPlaceHint(Ljava/lang/String;)V

    .line 751
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 753
    invoke-static {p0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/User;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Model/User;->setRecords(Ljava/util/ArrayList;)V

    .line 264
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getGymRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Model/User;->setGymRecords(Ljava/util/ArrayList;)V

    .line 265
    sput-object p0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    .line 266
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->saveCurrentUserIdToFile()V

    .line 268
    :try_start_0
    sget-object p0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-interface {p0, v0}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    .line 272
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 270
    invoke-static {p0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    sput-object p0, Lcn/edu/pku/pkurunner/Data;->b:Lcn/edu/pku/pkurunner/Network/Model/UserStatus;

    .line 343
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .locals 1

    .line 140
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->f:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    return-void
.end method

.method private static synthetic a(ILio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 851
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->getGymRecordById(I)Lcn/edu/pku/pkurunner/Model/GymRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/GymRecord;->isUploaded()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 854
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 858
    :cond_0
    :try_start_0
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v1, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 860
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 861
    new-instance v1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v2, 0x8

    const-string v3, "Delete gymRecord failed"

    invoke-direct {v1, v2, v3, v0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 866
    :goto_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->deleteGymRecordById(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 867
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 870
    :cond_1
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find GymRecord with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic a(ILjava/util/ArrayList;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 671
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0, p1}, Lcn/edu/pku/pkurunner/Model/User;->provideTrackForRecord(ILjava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p1

    .line 672
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 673
    new-instance p1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find Record with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 678
    :cond_0
    :try_start_0
    sget-object p1, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {p1, p0}, Lcn/edu/pku/pkurunner/Model/User;->getRecordById(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object p0

    .line 679
    sget-object p1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 680
    sget-object p1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 682
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 683
    new-instance p1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update record/Save track failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    .line 683
    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    .line 688
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(ILjava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 703
    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Model/PartialPoint;->assignInfoToTrack(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    .line 705
    :try_start_0
    sget-object p1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {p1, p0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 707
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 708
    new-instance p1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save partialTrack failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    .line 708
    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    .line 713
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "photo"

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcn/edu/pku/pkurunner/Data;->j:Landroid/content/SharedPreferences;

    const-string v1, "user"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcn/edu/pku/pkurunner/Data;->h:Landroid/content/SharedPreferences;

    const-string v1, "speed-unit"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/Data;->k:Landroid/content/SharedPreferences;

    .line 88
    sget-object v0, Lcn/edu/pku/pkurunner/Photo/PhotoFile;->PicutreType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/Data;->i:Ljava/io/File;

    .line 90
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v1, "data.db"

    .line 91
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/Data;->e:Lio/reactivex/functions/Function;

    .line 92
    invoke-interface {v1, p0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {v0, p0}, Lorg/xutils/DbManager$DaoConfig;->setDbDir(Ljava/io/File;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object p0

    const/4 v0, 0x7

    .line 93
    invoke-virtual {p0, v0}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object p0

    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$hw_7sJxtMiVE-4Z6BF6VLO0mPts;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$hw_7sJxtMiVE-4Z6BF6VLO0mPts;

    .line 94
    invoke-virtual {p0, v0}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object p0

    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;

    .line 95
    invoke-virtual {p0, v0}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object p0

    sput-object p0, Lcn/edu/pku/pkurunner/Data;->f:Lorg/xutils/DbManager$DaoConfig;

    .line 128
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->a()V

    .line 130
    :try_start_0
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->c()V

    .line 131
    invoke-static {v2}, Lcn/edu/pku/pkurunner/Data;->setValid(Z)V

    const/4 p0, 0x1

    .line 132
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcn/edu/pku/pkurunner/Exception/DataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Model/Record;->setPhotoName(Ljava/lang/String;)V

    .line 727
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->a(Ljava/lang/String;)V

    .line 729
    :try_start_0
    sget-object p1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 731
    invoke-interface {p2, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    .line 733
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 378
    :try_start_0
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v2, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "userId"

    const-string v3, "="

    sget-object v4, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v1, v2}, Lcn/edu/pku/pkurunner/Model/User;->setRecords(Ljava/util/ArrayList;)V

    .line 382
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/Record;

    .line 383
    sget-object v3, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v4, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-interface {v3, v4}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v3

    const-string v4, "recordDbId"

    const-string v5, "="

    .line 384
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    sget-object v4, Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 387
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lcn/edu/pku/pkurunner/Model/Record;->setTrack(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 390
    :cond_1
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcn/edu/pku/pkurunner/Model/User;->setRecords(Ljava/util/ArrayList;)V

    .line 393
    :cond_2
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v2, Lcn/edu/pku/pkurunner/Model/GymRecord;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "userId"

    const-string v3, "="

    sget-object v4, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    .line 394
    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v1, v2}, Lcn/edu/pku/pkurunner/Model/User;->setGymRecords(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 399
    :cond_3
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcn/edu/pku/pkurunner/Model/User;->setGymRecords(Ljava/util/ArrayList;)V

    .line 403
    :goto_1
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v2, Lcn/edu/pku/pkurunner/Model/PartialRecord;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 404
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 405
    sget-object v2, Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 408
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/PartialRecord;

    .line 409
    sget-object v3, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v3}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/edu/pku/pkurunner/Model/PartialRecord;->toRecord(Ljava/lang/String;)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object v2

    .line 410
    invoke-static {v2}, Lcn/edu/pku/pkurunner/Data;->saveRecordToDatabase(Lcn/edu/pku/pkurunner/Model/Record;)I

    move-result v2

    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/edu/pku/pkurunner/Model/PartialRecord;

    .line 413
    sget-object v5, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v6, Lcn/edu/pku/pkurunner/Model/PartialPoint;

    invoke-interface {v5, v6}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v5

    const-string v6, "recordDbId"

    const-string v7, "="

    .line 414
    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/PartialRecord;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v4

    .line 415
    sget-object v5, Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 416
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/edu/pku/pkurunner/Model/PartialPoint;

    .line 417
    invoke-virtual {v5}, Lcn/edu/pku/pkurunner/Model/PartialPoint;->toPoint()Lcn/edu/pku/pkurunner/Model/Point;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 420
    :cond_5
    invoke-static {v2, v3}, Lcn/edu/pku/pkurunner/Data;->provideTrackForRecord(ILjava/util/ArrayList;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$Data$IPEfHBm5lmKlFmoLWuw_lw-HzQY;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$IPEfHBm5lmKlFmoLWuw_lw-HzQY;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcn/edu/pku/pkurunner/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;

    invoke-direct {v3, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 421
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_3

    .line 428
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 431
    invoke-virtual {v1}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 432
    new-instance v2, Lcn/edu/pku/pkurunner/Exception/DataException;

    .line 433
    invoke-virtual {v1}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    .line 432
    invoke-interface {p0, v2}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->clearPartialData()V

    const/4 p1, 0x1

    .line 424
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .line 904
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastUsed"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->setToken(Ljava/lang/String;)V

    .line 303
    :try_start_0
    sget-object p0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 306
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v1, 0x2

    .line 308
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    .line 306
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    .line 310
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 898
    sput-object p0, Lcn/edu/pku/pkurunner/Data;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private static synthetic a(Lorg/xutils/DbManager;)V
    .locals 0

    .line 94
    invoke-interface {p0}, Lorg/xutils/DbManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

.method private static synthetic a(Lorg/xutils/DbManager;II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "Added photoName and photoRemotePath."

    .line 100
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 102
    :try_start_0
    const-class v0, Lcn/edu/pku/pkurunner/Model/Record;

    const-string v1, "photoName"

    invoke-interface {p0, v0, v1}, Lorg/xutils/DbManager;->addColumn(Ljava/lang/Class;Ljava/lang/String;)V

    .line 103
    const-class v0, Lcn/edu/pku/pkurunner/Model/Record;

    const-string v1, "photoRemotePath"

    invoke-interface {p0, v0, v1}, Lorg/xutils/DbManager;->addColumn(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    :goto_0
    :pswitch_1
    const-string v0, "Added PartialRecord and PartialPoint."

    .line 108
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    :pswitch_2
    const-string v0, "Added offline property to user."

    .line 110
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    :try_start_1
    const-class v0, Lcn/edu/pku/pkurunner/Model/User;

    const-string v1, "offline"

    invoke-interface {p0, v0, v1}, Lorg/xutils/DbManager;->addColumn(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xutils/ex/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    :goto_1
    :pswitch_3
    const-string v0, "Added placeHint to record."

    .line 117
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 119
    :try_start_2
    const-class v0, Lcn/edu/pku/pkurunner/Model/Record;

    const-string v1, "placeHint"

    invoke-interface {p0, v0, v1}, Lorg/xutils/DbManager;->addColumn(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xutils/ex/DbException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 121
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 126
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static addGymRecord(Lcn/edu/pku/pkurunner/Model/GymRecord;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/Exception/DataException;
        }
    .end annotation

    .line 804
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v0, p0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->addGymRecord(Lcn/edu/pku/pkurunner/Model/GymRecord;)I

    move-result p0
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 807
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 808
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v1, 0x2

    const-string v2, "Add record failed!"

    invoke-direct {v0, v1, v2, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic b(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 783
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v1, Lcn/edu/pku/pkurunner/Model/GymRecord;

    const-string v2, "userId"

    const-string v3, "="

    sget-object v4, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    .line 784
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v0, p0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 785
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->setGymRecords(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 787
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 788
    invoke-static {p0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v0}, Lorg/xutils/DbManager;->close()V

    const/4 v0, 0x0

    .line 145
    sput-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    return-void
.end method

.method private static synthetic b(ILio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 574
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->getRecordById(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->isUploaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    new-instance v1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v2, 0x40

    const-string v3, "\u8bb0\u5f55\u5df2\u4e0a\u4f20\uff01"

    invoke-direct {v1, v2, v3}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 580
    :cond_0
    :try_start_0
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v1, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 581
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v2, Lcn/edu/pku/pkurunner/Model/Point;

    const-string v3, "recordDbId"

    const-string v4, "="

    .line 582
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3, v4, p0}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p0

    .line 581
    invoke-interface {v1, v2, p0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 584
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 585
    new-instance v1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v2, 0x8

    const-string v3, "Delete record failed"

    invoke-direct {v1, v2, v3, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 590
    :goto_0
    sget-object p0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Model/User;->deleteRecord(Lcn/edu/pku/pkurunner/Model/Record;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 591
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 594
    :cond_1
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find Record with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic b(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->saveCurrentUserIdToFile()V

    .line 285
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    sget-object v1, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    invoke-interface {p0, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    .line 289
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic b(Lio/reactivex/ObservableEmitter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 158
    sput-boolean p1, Lcn/edu/pku/pkurunner/Data;->d:Z

    .line 159
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic c(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getRecords()Ljava/util/ArrayList;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Record;->getRecordId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/edu/pku/pkurunner/Model/Record;

    .line 463
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Record;->getRecordId()I

    move-result v3

    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 465
    sget-object v3, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v3, v2}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Record;->isDetailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object v3

    .line 468
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/edu/pku/pkurunner/Model/Point;

    .line 469
    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V

    .line 470
    sget-object v5, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v5, v4}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    goto :goto_2

    .line 473
    :cond_2
    sget-object v3, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v3, v2}, Lcn/edu/pku/pkurunner/Model/User;->addRecord(Lcn/edu/pku/pkurunner/Model/Record;)I
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 485
    :cond_3
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 477
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 478
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v1, 0x2

    const-string v2, "Cannot write to database"

    invoke-direct {v0, v1, v2, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/Exception/DataException;
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getCurrentUserIdFromFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v2, Lcn/edu/pku/pkurunner/Model/User;

    invoke-interface {v1, v2, v0}, Lorg/xutils/DbManager;->findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Model/User;

    sput-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 223
    sput-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 228
    new-instance v1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v2, 0x1

    .line 229
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static synthetic c(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->d()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$g2CR8C9SohpHc-Uf6lJkUoFlgUM;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$g2CR8C9SohpHc-Uf6lJkUoFlgUM;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 157
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static changeUserToken(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$eS97tk0qhri_kLkaWDYL6XlrCTc;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$eS97tk0qhri_kLkaWDYL6XlrCTc;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 311
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static clearPartialData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/Exception/DataException;
        }
    .end annotation

    .line 440
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v1, Lcn/edu/pku/pkurunner/Model/PartialRecord;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;)V

    .line 441
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v1, Lcn/edu/pku/pkurunner/Model/PartialPoint;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 444
    new-instance v1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v2, 0x8

    .line 445
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 374
    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$53vWSBYNuPTOM-pYK1yx74D0jb8;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$53vWSBYNuPTOM-pYK1yx74D0jb8;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static deleteGymRecordById(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 850
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$XAvMA_qidTs4Kgy62bUriyCC5B4;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$XAvMA_qidTs4Kgy62bUriyCC5B4;-><init>(I)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 874
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static deleteRecordById(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$NeHUyVNqeqSFaoreF3Z_VajNIuU;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$NeHUyVNqeqSFaoreF3Z_VajNIuU;-><init>(I)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 598
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentUserIdFromFile()Ljava/lang/String;
    .locals 3

    .line 206
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->h:Landroid/content/SharedPreferences;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDatabaseUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/edu/pku/pkurunner/Model/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/Exception/DataException;
        }
    .end annotation

    .line 246
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v1, Lcn/edu/pku/pkurunner/Model/User;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 249
    new-instance v1, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v2, 0x1

    .line 250
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static getGymRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord;",
            ">;"
        }
    .end annotation

    .line 769
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getGymRecords()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getGymRecordsFromServer()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord;",
            ">;>;"
        }
    .end annotation

    .line 778
    invoke-static {}, Lcn/edu/pku/pkurunner/Network/Network;->getGymRecords()Lio/reactivex/Observable;

    move-result-object v0

    .line 779
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$yab5CI6WPzFsgcwCGSl5st8onnU;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$yab5CI6WPzFsgcwCGSl5st8onnU;

    .line 780
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getLastUsedPhoto()Ljava/lang/String;
    .locals 3

    .line 908
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->j:Landroid/content/SharedPreferences;

    const-string v1, "lastUsed"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordPlaceHintForOfflineUser(Lcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->isPlaceHintAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getPlaceHint()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getTrack()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Network/Network;->getReverseEncoding(Lcn/edu/pku/pkurunner/Model/Point;)Lio/reactivex/Observable;

    move-result-object v0

    .line 747
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$kI4jEVJgM_M15eat8DkKtE-YNjc;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$kI4jEVJgM_M15eat8DkKtE-YNjc;-><init>(Lcn/edu/pku/pkurunner/Model/Record;)V

    .line 748
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation

    .line 357
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getRecords()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordsFromServer()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;>;"
        }
    .end annotation

    .line 455
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Network/Network;->getRecords(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 456
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$1y-mX5dP_XawyKMMxYq_b3G5Gds;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$1y-mX5dP_XawyKMMxYq_b3G5Gds;

    .line 457
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleRecord(I)Lcn/edu/pku/pkurunner/Model/Record;
    .locals 1

    .line 367
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->getRecordById(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleRecordFromServer(I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation

    .line 496
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->getRecordById(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->isUploaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    sget-object v1, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getRecordId()I

    move-result v0

    invoke-static {v1, v0}, Lcn/edu/pku/pkurunner/Network/Network;->getSingleRecord(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 499
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$_jlVyp7adFrK4SHhZht7_yFz78k;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$_jlVyp7adFrK4SHhZht7_yFz78k;-><init>(I)V

    .line 500
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 524
    :cond_0
    new-instance p0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(I)V

    invoke-static {p0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getSpeedUnitPreference()Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;
    .locals 3

    .line 916
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->k:Landroid/content/SharedPreferences;

    const-string v1, "unit"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->k:Landroid/content/SharedPreferences;

    const-string v1, "unit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 918
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->values()[Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    move-result-object v1

    if-ltz v0, :cond_1

    .line 919
    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    aget-object v0, v1, v0

    return-object v0

    .line 920
    :cond_1
    :goto_0
    sget-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->KilometerPerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    return-object v0

    .line 925
    :cond_2
    sget-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->KilometerPerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    return-object v0
.end method

.method public static getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Task;",
            ">;"
        }
    .end annotation

    .line 887
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getTasksFromServer()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Task;",
            ">;>;"
        }
    .end annotation

    .line 896
    invoke-static {}, Lcn/edu/pku/pkurunner/Network/Network;->getTasks()Lio/reactivex/Observable;

    move-result-object v0

    .line 897
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$VYKn-jSdzBsagUMYtYN-tQ8AiFo;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$VYKn-jSdzBsagUMYtYN-tQ8AiFo;

    .line 898
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getUser()Lcn/edu/pku/pkurunner/Model/User;
    .locals 1

    .line 188
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    return-object v0
.end method

.method public static getUserStatus()Lcn/edu/pku/pkurunner/Network/Model/UserStatus;
    .locals 1

    .line 320
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->b:Lcn/edu/pku/pkurunner/Network/Model/UserStatus;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$iq2eXs0WtKIPvCtOtLmnt7b_SvY;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$iq2eXs0WtKIPvCtOtLmnt7b_SvY;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static isValid()Z
    .locals 1

    .line 173
    sget-boolean v0, Lcn/edu/pku/pkurunner/Data;->d:Z

    return v0
.end method

.method public static synthetic lambda$0NgRDjF_LN8P8V4qw4Fp2KhLWN4(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$1y-mX5dP_XawyKMMxYq_b3G5Gds(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->c(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$53vWSBYNuPTOM-pYK1yx74D0jb8(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$5RS96HT4Wju8u3X5Ie9lGV6LedY(Lcn/edu/pku/pkurunner/Model/Record;ILcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Model/Record;ILcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$7RhQ2y3kN4dAwCNQ-cuXm3Jju48(Lcn/edu/pku/pkurunner/Model/Point;Lcn/edu/pku/pkurunner/Model/Point;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Model/Point;Lcn/edu/pku/pkurunner/Model/Point;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$G1HxFEO8aRMImjLqya-VviyBLRQ(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->c(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$IPEfHBm5lmKlFmoLWuw_lw-HzQY(Lio/reactivex/ObservableEmitter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(Lio/reactivex/ObservableEmitter;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$LPjt7TN7L21PD784aCdfgAdu7KQ(ILjava/util/ArrayList;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Data;->a(ILjava/util/ArrayList;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$NeHUyVNqeqSFaoreF3Z_VajNIuU(ILio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->b(ILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$QhF90UP_78SQFIEz1HE7oBMMrNY(Lcn/edu/pku/pkurunner/Model/PartialRecord;Lcn/edu/pku/pkurunner/Model/PartialRecord;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Model/PartialRecord;Lcn/edu/pku/pkurunner/Model/PartialRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VYKn-jSdzBsagUMYtYN-tQ8AiFo(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$XAvMA_qidTs4Kgy62bUriyCC5B4(ILio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(ILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$XdV0v6vV6lXwmQooyNPddeX9Fgs(Lcn/edu/pku/pkurunner/Model/PartialPoint;Lcn/edu/pku/pkurunner/Model/PartialPoint;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Model/PartialPoint;Lcn/edu/pku/pkurunner/Model/PartialPoint;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$_jlVyp7adFrK4SHhZht7_yFz78k(ILcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(ILcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$aK8r8wgKVPKpkbIAL0aH_IaJ04U(ILjava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Data;->a(ILjava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$eS97tk0qhri_kLkaWDYL6XlrCTc(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$eXj0juQZUAvOAqumlzqWyvtf6ks(Lorg/xutils/DbManager;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Data;->a(Lorg/xutils/DbManager;II)V

    return-void
.end method

.method public static synthetic lambda$g2CR8C9SohpHc-Uf6lJkUoFlgUM(Lio/reactivex/ObservableEmitter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->b(Lio/reactivex/ObservableEmitter;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$hw_7sJxtMiVE-4Z6BF6VLO0mPts(Lorg/xutils/DbManager;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->a(Lorg/xutils/DbManager;)V

    return-void
.end method

.method public static synthetic lambda$ig6lXl0KhpztFuYy7P74ixKRSLI(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->b(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$iq2eXs0WtKIPvCtOtLmnt7b_SvY(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$kI4jEVJgM_M15eat8DkKtE-YNjc(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$pfuBqZsMdwc1bMHItc1KR16kyAc(ILcn/edu/pku/pkurunner/Model/GymRecord;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->a(ILcn/edu/pku/pkurunner/Model/GymRecord;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$t5E8MBq1DYXFbvDNiP7IHKYoRbQ(Lcn/edu/pku/pkurunner/Model/User;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Model/User;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$xsa97R7yhCV0enh75D7XLQ0su2A(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Data;->a(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$yab5CI6WPzFsgcwCGSl5st8onnU(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->b(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static loadByUser()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 154
    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$G1HxFEO8aRMImjLqya-VviyBLRQ;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$G1HxFEO8aRMImjLqya-VviyBLRQ;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loadSpecificUser(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/Exception/DataException;
        }
    .end annotation

    .line 235
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    const-class v1, Lcn/edu/pku/pkurunner/Model/User;

    invoke-interface {v0, v1, p0}, Lorg/xutils/DbManager;->findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/Model/User;

    sput-object p0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    .line 236
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->saveCurrentUserIdToFile()V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 238
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 239
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v1, 0x1

    .line 240
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static login()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 260
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Network/Network;->loginNew(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 261
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;

    .line 262
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static provideTrackForPartialRecord(ILjava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$aK8r8wgKVPKpkbIAL0aH_IaJ04U;

    invoke-direct {v0, p0, p1}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$aK8r8wgKVPKpkbIAL0aH_IaJ04U;-><init>(ILjava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 714
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static provideTrackForRecord(ILjava/util/ArrayList;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$LPjt7TN7L21PD784aCdfgAdu7KQ;

    invoke-direct {v0, p0, p1}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$LPjt7TN7L21PD784aCdfgAdu7KQ;-><init>(ILjava/util/ArrayList;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 689
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static refreshUserStatus()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/UserStatus;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-static {}, Lcn/edu/pku/pkurunner/Network/Network;->getUserStatus()Lio/reactivex/Observable;

    move-result-object v0

    .line 340
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/-$$Lambda$Data$0NgRDjF_LN8P8V4qw4Fp2KhLWN4;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$0NgRDjF_LN8P8V4qw4Fp2KhLWN4;

    .line 341
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static saveCurrentUserIdToFile()V
    .locals 3

    .line 213
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    if-nez v0, :cond_0

    sget-object v0, Lcn/edu/pku/pkurunner/Data;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 214
    :cond_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id"

    sget-object v2, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public static savePartialRecordToDatabase(Lcn/edu/pku/pkurunner/Model/PartialRecord;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/Exception/DataException;
        }
    .end annotation

    .line 555
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v0, p0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 556
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/PartialRecord;->getId()I

    move-result p0
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 558
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 559
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v1, 0x2

    const-string v2, "Add partial record failed!"

    invoke-direct {v0, v1, v2, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static saveRecordToDatabase(Lcn/edu/pku/pkurunner/Model/Record;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/Exception/DataException;
        }
    .end annotation

    .line 536
    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->g:Lorg/xutils/DbManager;

    invoke-interface {v0, p0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->addRecord(Lcn/edu/pku/pkurunner/Model/Record;)I

    move-result p0
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 539
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    .line 540
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/DataException;

    const/4 v1, 0x2

    const-string v2, "Add record failed!"

    invoke-direct {v0, v1, v2, p0}, Lcn/edu/pku/pkurunner/Exception/DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static saveUserToDatabase()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 282
    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$ig6lXl0KhpztFuYy7P74ixKRSLI;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$ig6lXl0KhpztFuYy7P74ixKRSLI;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 290
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setPhotoForRecord(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 725
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$xsa97R7yhCV0enh75D7XLQ0su2A;

    invoke-direct {v0, p0, p1}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$xsa97R7yhCV0enh75D7XLQ0su2A;-><init>(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 734
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static setSpeedUnitPreference(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)V
    .locals 2

    .line 912
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unit"

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->ordinal()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUser(Lcn/edu/pku/pkurunner/Model/User;)V
    .locals 0

    .line 197
    sput-object p0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    return-void
.end method

.method public static setUserStatus(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V
    .locals 0

    .line 329
    sput-object p0, Lcn/edu/pku/pkurunner/Data;->b:Lcn/edu/pku/pkurunner/Network/Model/UserStatus;

    return-void
.end method

.method public static setValid(Z)V
    .locals 0

    .line 177
    sput-boolean p0, Lcn/edu/pku/pkurunner/Data;->d:Z

    return-void
.end method

.method public static uploadDatabaseToDropbox(Landroid/content/Context;Lcom/dropbox/core/v2/DbxClientV2;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 641
    new-instance v0, Ljava/io/File;

    const-string v1, "data.db"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->b()V

    .line 646
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    .line 647
    :try_start_1
    invoke-virtual {p1}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object p1

    const-string v1, "/data.db"

    invoke-virtual {p1, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;

    move-result-object p1

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;

    .line 648
    invoke-virtual {p1, v1}, Lcom/dropbox/core/v2/files/UploadBuilder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/UploadBuilder;

    move-result-object p1

    .line 649
    invoke-virtual {p1, p0}, Lcom/dropbox/core/v2/files/UploadBuilder;->uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v2/files/FileMetadata;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lcom/dropbox/core/DbxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 653
    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/FileMetadata;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 646
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    .line 650
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/dropbox/core/DbxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_1
    throw p1
    :try_end_5
    .catch Lcom/dropbox/core/DbxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 651
    throw p0
.end method

.method public static uploadGymRecordGetOut(ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 823
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->getGymRecordById(I)Lcn/edu/pku/pkurunner/Model/GymRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/GymRecord;->getRecordId()I

    move-result v0

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Network/Network;->uploadGymRecordGetOut(ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 824
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$pfuBqZsMdwc1bMHItc1KR16kyAc;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$pfuBqZsMdwc1bMHItc1KR16kyAc;-><init>(I)V

    .line 825
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static uploadRecordToServer(I)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation

    .line 608
    sget-object v0, Lcn/edu/pku/pkurunner/Data;->a:Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;->getRecordById(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    .line 612
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/edu/pku/pkurunner/Data;->i:Ljava/io/File;

    invoke-static {v3}, Lcn/edu/pku/pkurunner/Photo/PhotoFile;->getCompressedPhotoDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 617
    :goto_1
    invoke-static {v0, v2}, Lcn/edu/pku/pkurunner/Network/Network;->uploadRecord(Lcn/edu/pku/pkurunner/Model/Record;Ljava/io/File;)Lio/reactivex/Observable;

    move-result-object v1

    .line 618
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$Data$5RS96HT4Wju8u3X5Ie9lGV6LedY;

    invoke-direct {v2, v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$5RS96HT4Wju8u3X5Ie9lGV6LedY;-><init>(Lcn/edu/pku/pkurunner/Model/Record;I)V

    .line 619
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
