.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Ws6RBo0i2jO0CCLbAyfPd-KiuFk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Model/Record;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Model/Record;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Ws6RBo0i2jO0CCLbAyfPd-KiuFk;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    iput p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Ws6RBo0i2jO0CCLbAyfPd-KiuFk;->f$1:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Ws6RBo0i2jO0CCLbAyfPd-KiuFk;->f$0:Lcn/edu/pku/pkurunner/Model/Record;

    iget v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Ws6RBo0i2jO0CCLbAyfPd-KiuFk;->f$1:I

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$Ws6RBo0i2jO0CCLbAyfPd-KiuFk(Lcn/edu/pku/pkurunner/Model/Record;ILio/reactivex/ObservableEmitter;)V

    return-void
.end method
