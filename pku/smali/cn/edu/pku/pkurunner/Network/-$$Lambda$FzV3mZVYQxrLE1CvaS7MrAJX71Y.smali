.class public final synthetic Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$FzV3mZVYQxrLE1CvaS7MrAJX71Y;

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

    check-cast p1, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding;->getStreetName()Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method
