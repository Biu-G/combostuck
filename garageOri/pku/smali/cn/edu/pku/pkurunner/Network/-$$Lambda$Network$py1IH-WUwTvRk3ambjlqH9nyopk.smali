.class public final synthetic Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$py1IH-WUwTvRk3ambjlqH9nyopk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Weather;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Network/Network;->lambda$py1IH-WUwTvRk3ambjlqH9nyopk(Lcn/edu/pku/pkurunner/Model/Weather;)V

    return-void
.end method
