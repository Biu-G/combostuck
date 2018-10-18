.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$DA-e70eP_hhYCrqg6yOzCsU_qdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$DA-e70eP_hhYCrqg6yOzCsU_qdQ;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$DA-e70eP_hhYCrqg6yOzCsU_qdQ;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$DA-e70eP_hhYCrqg6yOzCsU_qdQ(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
