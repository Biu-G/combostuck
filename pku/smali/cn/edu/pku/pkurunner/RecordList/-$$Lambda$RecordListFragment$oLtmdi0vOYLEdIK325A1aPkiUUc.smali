.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$oLtmdi0vOYLEdIK325A1aPkiUUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

.field private final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$oLtmdi0vOYLEdIK325A1aPkiUUc;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$oLtmdi0vOYLEdIK325A1aPkiUUc;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$oLtmdi0vOYLEdIK325A1aPkiUUc;->f$0:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListFragment$oLtmdi0vOYLEdIK325A1aPkiUUc;->f$1:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->lambda$oLtmdi0vOYLEdIK325A1aPkiUUc(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Ljava/io/File;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
