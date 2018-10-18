.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Gyh0hH67M0_HK2UZr4CHrWLHYQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Gyh0hH67M0_HK2UZr4CHrWLHYQI;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iput p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Gyh0hH67M0_HK2UZr4CHrWLHYQI;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Gyh0hH67M0_HK2UZr4CHrWLHYQI;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iget v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Gyh0hH67M0_HK2UZr4CHrWLHYQI;->f$1:I

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$Gyh0hH67M0_HK2UZr4CHrWLHYQI(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;ILcn/edu/pku/pkurunner/Model/Record;)V

    return-void
.end method
