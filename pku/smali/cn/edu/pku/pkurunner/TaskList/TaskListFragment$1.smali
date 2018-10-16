.class Lcn/edu/pku/pkurunner/TaskList/TaskListFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment$1;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 75
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment$1;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;Z)Z

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 68
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment$1;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;Z)Z

    return-void
.end method
