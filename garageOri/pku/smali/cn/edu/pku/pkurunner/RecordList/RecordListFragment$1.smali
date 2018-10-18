.class Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 125
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Z)Z

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 118
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$1;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->a(Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;Z)Z

    return-void
.end method
