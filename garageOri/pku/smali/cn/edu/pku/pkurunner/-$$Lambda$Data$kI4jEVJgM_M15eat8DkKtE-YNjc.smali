.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$kI4jEVJgM_M15eat8DkKtE-YNjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Model/Record;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Model/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$kI4jEVJgM_M15eat8DkKtE-YNjc;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$kI4jEVJgM_M15eat8DkKtE-YNjc;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Data;->lambda$kI4jEVJgM_M15eat8DkKtE-YNjc(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
