.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

.field private final synthetic f$1:Ljava/io/File;

.field private final synthetic f$2:Lcn/edu/pku/pkurunner/Model/Record;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/io/File;Lcn/edu/pku/pkurunner/Model/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;->f$2:Lcn/edu/pku/pkurunner/Model/Record;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;->f$2:Lcn/edu/pku/pkurunner/Model/Record;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/io/File;Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
