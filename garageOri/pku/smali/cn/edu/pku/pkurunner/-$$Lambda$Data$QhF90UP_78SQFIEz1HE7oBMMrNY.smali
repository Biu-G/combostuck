.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$QhF90UP_78SQFIEz1HE7oBMMrNY;

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

    check-cast p1, Lcn/edu/pku/pkurunner/Model/PartialRecord;

    check-cast p2, Lcn/edu/pku/pkurunner/Model/PartialRecord;

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/Data;->lambda$QhF90UP_78SQFIEz1HE7oBMMrNY(Lcn/edu/pku/pkurunner/Model/PartialRecord;Lcn/edu/pku/pkurunner/Model/PartialRecord;)I

    move-result p1

    return p1
.end method
