.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$XdV0v6vV6lXwmQooyNPddeX9Fgs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/edu/pku/pkurunner/Model/PartialPoint;

    check-cast p2, Lcn/edu/pku/pkurunner/Model/PartialPoint;

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/Data;->lambda$XdV0v6vV6lXwmQooyNPddeX9Fgs(Lcn/edu/pku/pkurunner/Model/PartialPoint;Lcn/edu/pku/pkurunner/Model/PartialPoint;)I

    move-result p1

    return p1
.end method
