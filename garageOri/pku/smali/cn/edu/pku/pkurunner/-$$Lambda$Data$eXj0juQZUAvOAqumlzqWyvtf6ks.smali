.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Data$eXj0juQZUAvOAqumlzqWyvtf6ks;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcn/edu/pku/pkurunner/Data;->lambda$eXj0juQZUAvOAqumlzqWyvtf6ks(Lorg/xutils/DbManager;II)V

    return-void
.end method
