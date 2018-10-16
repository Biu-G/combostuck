.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$5RS96HT4Wju8u3X5Ie9lGV6LedY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Model/Record;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Model/Record;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$5RS96HT4Wju8u3X5Ie9lGV6LedY;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    iput p2, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$5RS96HT4Wju8u3X5Ie9lGV6LedY;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$5RS96HT4Wju8u3X5Ie9lGV6LedY;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    iget v1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$5RS96HT4Wju8u3X5Ie9lGV6LedY;->f$1:I

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/Data;->lambda$5RS96HT4Wju8u3X5Ie9lGV6LedY(Lcn/edu/pku/pkurunner/Model/Record;ILcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
