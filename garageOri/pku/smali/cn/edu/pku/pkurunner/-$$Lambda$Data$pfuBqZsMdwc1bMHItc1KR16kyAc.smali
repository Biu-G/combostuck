.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$pfuBqZsMdwc1bMHItc1KR16kyAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$pfuBqZsMdwc1bMHItc1KR16kyAc;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$pfuBqZsMdwc1bMHItc1KR16kyAc;->f$0:I

    check-cast p1, Lcn/edu/pku/pkurunner/Model/GymRecord;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Data;->lambda$pfuBqZsMdwc1bMHItc1KR16kyAc(ILcn/edu/pku/pkurunner/Model/GymRecord;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method