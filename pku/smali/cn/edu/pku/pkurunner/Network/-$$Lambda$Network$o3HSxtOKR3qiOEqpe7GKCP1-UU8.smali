.class public final synthetic Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$o3HSxtOKR3qiOEqpe7GKCP1-UU8;

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

    check-cast p1, Lcn/edu/pku/pkurunner/Network/DataPack;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Network/Network;->lambda$o3HSxtOKR3qiOEqpe7GKCP1-UU8(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
