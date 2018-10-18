.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$EBdi0g2AXFLY5wnz49vMLZsWtLk;
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

    iput p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$EBdi0g2AXFLY5wnz49vMLZsWtLk;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$EBdi0g2AXFLY5wnz49vMLZsWtLk;->f$0:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$EBdi0g2AXFLY5wnz49vMLZsWtLk(ILjava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
