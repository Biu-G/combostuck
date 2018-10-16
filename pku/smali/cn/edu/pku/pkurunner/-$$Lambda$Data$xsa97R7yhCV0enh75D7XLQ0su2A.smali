.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$xsa97R7yhCV0enh75D7XLQ0su2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Model/Record;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$xsa97R7yhCV0enh75D7XLQ0su2A;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$xsa97R7yhCV0enh75D7XLQ0su2A;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$xsa97R7yhCV0enh75D7XLQ0su2A;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$xsa97R7yhCV0enh75D7XLQ0su2A;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/Data;->lambda$xsa97R7yhCV0enh75D7XLQ0su2A(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
