.class Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppBarStateChangeWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;,
        Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;
    }
.end annotation


# instance fields
.field private a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

.field private b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;


# direct methods
.method public constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;)V
    .locals 1

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->IDLE:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    .line 465
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 6

    if-nez p2, :cond_1

    .line 471
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->EXPANDED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    if-eq p2, v0, :cond_0

    .line 472
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->EXPANDED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    invoke-interface {p2, p1, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;)V

    .line 474
    :cond_0
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->EXPANDED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    goto :goto_0

    .line 475
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-double v0, p2

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p2

    int-to-double v2, p2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    cmpl-double p2, v0, v2

    if-ltz p2, :cond_3

    .line 476
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->COLLAPSED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    if-eq p2, v0, :cond_2

    .line 477
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->COLLAPSED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    invoke-interface {p2, p1, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;)V

    .line 479
    :cond_2
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->COLLAPSED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    goto :goto_0

    .line 481
    :cond_3
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->IDLE:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    if-eq p2, v0, :cond_4

    .line 482
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->IDLE:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    invoke-interface {p2, p1, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$a;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;)V

    .line 484
    :cond_4
    sget-object p1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->IDLE:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    :goto_0
    return-void
.end method
