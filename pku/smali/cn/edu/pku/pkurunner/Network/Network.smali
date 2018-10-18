.class public Lcn/edu/pku/pkurunner/Network/Network;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Network/Network$a;
    }
.end annotation


# static fields
.field private static a:Lcn/edu/pku/pkurunner/Network/Service/WeatherService; = null

.field private static b:Lcn/edu/pku/pkurunner/Network/Service/TaskService; = null

.field private static c:Lcn/edu/pku/pkurunner/Network/Service/LoginService; = null

.field private static d:Lcn/edu/pku/pkurunner/Network/Service/RecordService; = null

.field private static e:Lcn/edu/pku/pkurunner/Network/Service/GymRecordService; = null

.field private static f:Lcn/edu/pku/pkurunner/Network/Service/ActivityService; = null

.field public static final photoBaseUrl:Ljava/lang/String; = "https://pkunewyouth.pku.edu.cn/"

.field public static weather:Lcn/edu/pku/pkurunner/Model/Weather;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    new-instance v0, Lcn/edu/pku/pkurunner/Model/GymRecord;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Model/GymRecord;-><init>(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    new-instance v0, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Model/Record;-><init>(Lcn/edu/pku/pkurunner/Model/Record$Inner;)V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/User$Inner;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    new-instance v0, Lcn/edu/pku/pkurunner/Model/User;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Model/User;-><init>(Lcn/edu/pku/pkurunner/Model/User$Inner;)V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Network/DataPack;->isSuccess()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;

    .line 287
    new-instance v2, Lcn/edu/pku/pkurunner/Model/GymRecord;

    invoke-direct {v2, v1}, Lcn/edu/pku/pkurunner/Model/GymRecord;-><init>(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/util/Map;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 86
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Authorization"

    .line 87
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcn/edu/pku/pkurunner/Model/User;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    :cond_0
    const-string v1, "Platform"

    const-string v2, "Android"

    .line 91
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "ClientVersion"

    const-string v2, "v1.2.3"

    .line 92
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Weather;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    sput-object p0, Lcn/edu/pku/pkurunner/Network/Network;->weather:Lcn/edu/pku/pkurunner/Model/Weather;

    return-void
.end method

.method private static synthetic b(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    new-instance v0, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Model/Record;-><init>(Lcn/edu/pku/pkurunner/Model/Record$Inner;)V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Network/DataPack;->isSuccess()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/Record$Inner;

    .line 182
    new-instance v2, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-direct {v2, v1}, Lcn/edu/pku/pkurunner/Model/Record;-><init>(Lcn/edu/pku/pkurunner/Model/Record$Inner;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    new-instance v0, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Model/Record;-><init>(Lcn/edu/pku/pkurunner/Model/Record$Inner;)V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static clearActivity20180420()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 322
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->f:Lcn/edu/pku/pkurunner/Network/Service/ActivityService;

    .line 323
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Network/Service/ActivityService;->clear20180420(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 324
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wVFFg6Kdv2kNGhcKbXiIbvEqSOw;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wVFFg6Kdv2kNGhcKbXiIbvEqSOw;

    .line 325
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getGymRecords()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord;",
            ">;>;"
        }
    .end annotation

    .line 280
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->e:Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;

    .line 281
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;->getGymRecords(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 282
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Network/Network$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 283
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;

    .line 284
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getLatestVersion(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/Version;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 137
    sget-object p0, Lcn/edu/pku/pkurunner/Network/Network;->c:Lcn/edu/pku/pkurunner/Network/Service/LoginService;

    .line 138
    invoke-interface {p0}, Lcn/edu/pku/pkurunner/Network/Service/LoginService;->getLatestVersionForOffline()Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcn/edu/pku/pkurunner/Network/Network;->c:Lcn/edu/pku/pkurunner/Network/Service/LoginService;

    .line 139
    invoke-interface {p0}, Lcn/edu/pku/pkurunner/Network/Service/LoginService;->getLatestVersion()Lio/reactivex/Observable;

    move-result-object p0

    .line 140
    :goto_0
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getMinVersion()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/Version;",
            ">;"
        }
    .end annotation

    .line 131
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->c:Lcn/edu/pku/pkurunner/Network/Service/LoginService;

    .line 132
    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Network/Service/LoginService;->getMinVersion()Lio/reactivex/Observable;

    move-result-object v0

    .line 133
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getRecords(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;>;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->d:Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    .line 176
    invoke-interface {v0, p0}, Lcn/edu/pku/pkurunner/Network/Service/RecordService;->getRecords(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 177
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcn/edu/pku/pkurunner/Network/Network$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 178
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$HwGC19Ps9cZBckabFvWg3HnYIMU;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$HwGC19Ps9cZBckabFvWg3HnYIMU;

    .line 179
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getReverseEncoding(Lcn/edu/pku/pkurunner/Model/Point;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->d:Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    const-string v1, "%.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bff87dda9f692c2c5f28102eb8d6dad7"

    const/16 v2, 0x3e8

    .line 270
    invoke-interface {v0, p0, v1, v2}, Lcn/edu/pku/pkurunner/Network/Service/RecordService;->reverseEncoding(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    .line 275
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;

    .line 276
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleRecord(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation

    .line 196
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->d:Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    .line 197
    invoke-interface {v0, p0, p1}, Lcn/edu/pku/pkurunner/Network/Service/RecordService;->getSingleRecord(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    .line 198
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcn/edu/pku/pkurunner/Network/Network$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 199
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$u2Eh4_2fZ4R7egyY8FSvAc_xkas;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$u2Eh4_2fZ4R7egyY8FSvAc_xkas;

    .line 200
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getTasks()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Task;",
            ">;>;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->b:Lcn/edu/pku/pkurunner/Network/Service/TaskService;

    .line 162
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Network/Service/TaskService;->getList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 163
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Network/Network$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 164
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$F6laaxfgPJb97wY_5gxD-HJEKAg;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$F6laaxfgPJb97wY_5gxD-HJEKAg;

    .line 165
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getUserStatus()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/UserStatus;",
            ">;"
        }
    .end annotation

    .line 262
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->d:Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    .line 263
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/Network/Service/RecordService;->getStatus(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 264
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Network/Network$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 265
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getWeather()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/Weather;",
            ">;"
        }
    .end annotation

    .line 149
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->a:Lcn/edu/pku/pkurunner/Network/Service/WeatherService;

    .line 150
    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Network/Service/WeatherService;->getWeather()Lio/reactivex/Observable;

    move-result-object v0

    .line 151
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;

    .line 152
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 83
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 84
    sget-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://pkunewyouth.pku.edu.cn/"

    .line 98
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 99
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 100
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    .line 103
    const-class v0, Lcn/edu/pku/pkurunner/Network/Service/WeatherService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Network/Service/WeatherService;

    sput-object v0, Lcn/edu/pku/pkurunner/Network/Network;->a:Lcn/edu/pku/pkurunner/Network/Service/WeatherService;

    .line 104
    const-class v0, Lcn/edu/pku/pkurunner/Network/Service/TaskService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Network/Service/TaskService;

    sput-object v0, Lcn/edu/pku/pkurunner/Network/Network;->b:Lcn/edu/pku/pkurunner/Network/Service/TaskService;

    .line 105
    const-class v0, Lcn/edu/pku/pkurunner/Network/Service/LoginService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Network/Service/LoginService;

    sput-object v0, Lcn/edu/pku/pkurunner/Network/Network;->c:Lcn/edu/pku/pkurunner/Network/Service/LoginService;

    .line 106
    const-class v0, Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    sput-object v0, Lcn/edu/pku/pkurunner/Network/Network;->d:Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    .line 107
    const-class v0, Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;

    sput-object v0, Lcn/edu/pku/pkurunner/Network/Network;->e:Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;

    .line 108
    const-class v0, Lcn/edu/pku/pkurunner/Network/Service/ActivityService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/Network/Service/ActivityService;

    sput-object p0, Lcn/edu/pku/pkurunner/Network/Network;->f:Lcn/edu/pku/pkurunner/Network/Service/ActivityService;

    return-void
.end method

.method public static synthetic lambda$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$F6laaxfgPJb97wY_5gxD-HJEKAg(Ljava/util/Map;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Ljava/util/Map;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$HwGC19Ps9cZBckabFvWg3HnYIMU(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->b(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$cccPGUWAvSvm3ONuHhO49VMMj_Y(Lcn/edu/pku/pkurunner/Model/User$Inner;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Lcn/edu/pku/pkurunner/Model/User$Inner;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$iTz00fTxEHcj8D-6WG8HEy8YpEw(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->b(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$lOsHi1a8cbWyrpG3DjEWtJiz6Uc(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$o3HSxtOKR3qiOEqpe7GKCP1-UU8(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->b(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$py1IH-WUwTvRk3ambjlqH9nyopk(Lcn/edu/pku/pkurunner/Model/Weather;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Lcn/edu/pku/pkurunner/Model/Weather;)V

    return-void
.end method

.method public static synthetic lambda$r7Rm47rNGWiFwC5PKtkj4HsdbfA(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$u2Eh4_2fZ4R7egyY8FSvAc_xkas(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->c(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wVFFg6Kdv2kNGhcKbXiIbvEqSOw(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wkrN3qQDKFUJN1gr66g4wiwbEdM(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Network/Network;->a(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static loginNew(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/User;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->c:Lcn/edu/pku/pkurunner/Network/Service/LoginService;

    .line 119
    invoke-interface {v0, p0}, Lcn/edu/pku/pkurunner/Network/Service/LoginService;->login(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 120
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcn/edu/pku/pkurunner/Network/Network$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 121
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$cccPGUWAvSvm3ONuHhO49VMMj_Y;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$cccPGUWAvSvm3ONuHhO49VMMj_Y;

    .line 122
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static signUpActivity20180420(Z)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 310
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->f:Lcn/edu/pku/pkurunner/Network/Service/ActivityService;

    .line 311
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "red"

    goto :goto_0

    :cond_0
    const-string p0, "blue"

    :goto_0
    const v2, 0x133edc4

    invoke-interface {v0, v2, v1, p0}, Lcn/edu/pku/pkurunner/Network/Service/ActivityService;->signUp20180420(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 312
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;

    .line 313
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static uploadGymRecordGetOut(ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord;",
            ">;"
        }
    .end annotation

    .line 294
    sget-object v0, Lcn/edu/pku/pkurunner/Network/Network;->e:Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;

    .line 296
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-interface {v0, v1, p0, p1}, Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;->verifyGymRecord(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 299
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcn/edu/pku/pkurunner/Network/Network$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 300
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$lOsHi1a8cbWyrpG3DjEWtJiz6Uc;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$lOsHi1a8cbWyrpG3DjEWtJiz6Uc;

    .line 301
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static uploadRecord(Lcn/edu/pku/pkurunner/Model/Record;Ljava/io/File;)Lio/reactivex/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 213
    :try_start_0

    const-wide v2,0x405d13bc710cb288L
    const-wide v4,0x405d13e7ced92233L
    const-wide v6,0x4043ff3355786435L
    const-wide v8,0x4043ff7802546324L
    const v10,0x0
  


    const v11,0x0    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x1    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x2    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const v11,0x3    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x4    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x5    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x6    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const v11,0x7    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;



    const v11,0x8    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x9    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x10    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const v11,0x11    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x12    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x13    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x14    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const v11,0x15    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x16    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x17    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x18    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const v11,0x19    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x20    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x21    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeS()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;


    const v11,0x22    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeB()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const v11,0x23    
    new-instance v1, Lcn/edu/pku/pkurunner/Model/Point;
    invoke-direct{v1}, Lcn/edu/pku/pkurunner/Model/Point;-><init>()V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setRecordDbId(I)V
    invoke-virtual{v1,v10}, Lcn/edu/pku/pkurunner/Model/Point;->setStatus(I)V
    invoke-virtual{v1,v11}, Lcn/edu/pku/pkurunner/Model/Point;->setSequence(I)V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLatitudeS()V
    invoke-virtual{v1},Lcn/edu/pku/pkurunner/Model/Point;->setLongitudeB()V
   
    .line 214
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Point;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "agent"

    const-string v3, "Android v1.2+"

    .line 222
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 224
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 228
    sget-object v3, Lcn/edu/pku/pkurunner/Network/Network;->d:Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    .line 230
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getDuration()I

    move-result v5

    .line 232
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getDate()Ljava/util/Date;

    move-result-object v6

    .line 233
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getStep()I

    move-result v9

    .line 229
    invoke-interface/range {v3 .. v9}, Lcn/edu/pku/pkurunner/Network/Service/RecordService;->uploadRecordWithoutPhoto(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    .line 236
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcn/edu/pku/pkurunner/Network/Network$a;

    invoke-direct {p1, v2}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 237
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$iTz00fTxEHcj8D-6WG8HEy8YpEw;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$iTz00fTxEHcj8D-6WG8HEy8YpEw;

    .line 238
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v3, "image/jpeg"

    .line 240
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v11

    .line 241
    sget-object v4, Lcn/edu/pku/pkurunner/Network/Network;->d:Lcn/edu/pku/pkurunner/Network/Service/RecordService;

    .line 243
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getDuration()I

    move-result v6

    .line 245
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getDate()Ljava/util/Date;

    move-result-object v7

    .line 246
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 248
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getStep()I

    move-result v10

    .line 242
    invoke-interface/range {v4 .. v11}, Lcn/edu/pku/pkurunner/Network/Service/RecordService;->uploadRecord(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;ILokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p0

    .line 250
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcn/edu/pku/pkurunner/Network/Network$a;

    invoke-direct {p1, v2}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V

    .line 251
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;

    .line 252
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 217
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 218
    invoke-static {p0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
