.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->lambda$NAqtrOkTwe8dddL7P45qVFfTDJs(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
