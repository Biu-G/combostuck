.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iput p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;->f$1:I

    iput p3, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iget v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;->f$1:I

    iget v2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;->f$2:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$RkXN8f-ZcZIRpRWbr0_GiJ30yq0(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;IILjava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
