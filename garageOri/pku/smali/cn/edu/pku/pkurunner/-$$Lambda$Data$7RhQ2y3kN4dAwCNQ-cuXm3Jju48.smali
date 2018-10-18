.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$7RhQ2y3kN4dAwCNQ-cuXm3Jju48;

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

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Point;

    check-cast p2, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/Data;->lambda$7RhQ2y3kN4dAwCNQ-cuXm3Jju48(Lcn/edu/pku/pkurunner/Model/Point;Lcn/edu/pku/pkurunner/Model/Point;)I

    move-result p1

    return p1
.end method
