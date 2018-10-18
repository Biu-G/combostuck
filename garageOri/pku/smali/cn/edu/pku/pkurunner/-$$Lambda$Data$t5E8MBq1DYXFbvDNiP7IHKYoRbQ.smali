.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$t5E8MBq1DYXFbvDNiP7IHKYoRbQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcn/edu/pku/pkurunner/Model/User;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->lambda$t5E8MBq1DYXFbvDNiP7IHKYoRbQ(Lcn/edu/pku/pkurunner/Model/User;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
