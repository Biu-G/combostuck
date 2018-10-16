.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$UA-Oyjxv4TzbopTJCg-u88c5qJ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

.field private final synthetic f$1:Lcn/edu/pku/pkurunner/Model/Record;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Lcn/edu/pku/pkurunner/Model/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$UA-Oyjxv4TzbopTJCg-u88c5qJ0;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$UA-Oyjxv4TzbopTJCg-u88c5qJ0;->f$1:Lcn/edu/pku/pkurunner/Model/Record;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$UA-Oyjxv4TzbopTJCg-u88c5qJ0;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$UA-Oyjxv4TzbopTJCg-u88c5qJ0;->f$1:Lcn/edu/pku/pkurunner/Model/Record;

    check-cast p1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$UA-Oyjxv4TzbopTJCg-u88c5qJ0(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
