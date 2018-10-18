.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    iput p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;->f$1:I

    iput p3, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;->f$2:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    iget v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;->f$1:I

    iget v2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$PH3_rWlJTPOOXYd3Lg15zBEZCKI;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->lambda$PH3_rWlJTPOOXYd3Lg15zBEZCKI(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;IILio/reactivex/ObservableEmitter;)V

    return-void
.end method
