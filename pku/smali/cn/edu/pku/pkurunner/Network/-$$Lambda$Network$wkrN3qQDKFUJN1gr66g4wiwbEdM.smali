.class public final synthetic Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$wkrN3qQDKFUJN1gr66g4wiwbEdM;

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

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Network/Network;->lambda$wkrN3qQDKFUJN1gr66g4wiwbEdM(Ljava/util/ArrayList;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
