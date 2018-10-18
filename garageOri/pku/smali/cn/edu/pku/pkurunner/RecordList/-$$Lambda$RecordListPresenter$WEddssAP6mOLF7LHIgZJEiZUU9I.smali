.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iput p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;->f$1:I

    iput p3, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iget v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;->f$1:I

    iget v2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;->f$2:I

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$WEddssAP6mOLF7LHIgZJEiZUU9I(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;IILandroid/util/Pair;)V

    return-void
.end method
