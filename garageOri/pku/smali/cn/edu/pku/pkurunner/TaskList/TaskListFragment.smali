.class public Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private e:Z

.field private f:Landroid/app/ProgressDialog;

.field private g:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 90
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->g:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;->syncData()V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    .line 58
    iget-boolean p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->e:Z

    return p1
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->e:Z

    return p1
.end method

.method private synthetic b()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->g:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;->syncData()V

    return-void
.end method

.method private static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$DFu3GO3uBV8hYoU877jBWuC_mro(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$OKW_7hNhXC7K02VL48huIc8ICKE(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$OQiX0TfVZ4qswcRF-cQbpeQQe0s(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Us84rICY875eCepnRlMz_wh5zTs(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->b()V

    return-void
.end method

.method public static synthetic lambda$rdzGLzADhlGqVtMBVPrOIpRVlBg(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a()V

    return-void
.end method


# virtual methods
.method public cancelRefresh()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public dismissWaitingDialog()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public getTaskCardAdapter()Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->b:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    return-object v0
.end method

.method public varargs makeSnackBar(II[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public varargs makeToast(II[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 159
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 98
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0004

    .line 99
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c003a

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a:Landroid/view/View;

    const p2, 0x7f090098

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 56
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 p2, 0x3

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 57
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$Us84rICY875eCepnRlMz_wh5zTs;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$Us84rICY875eCepnRlMz_wh5zTs;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 58
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$OQiX0TfVZ4qswcRF-cQbpeQQe0s;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$OQiX0TfVZ4qswcRF-cQbpeQQe0s;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V

    .line 60
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a:Landroid/view/View;

    const p2, 0x7f090097

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 61
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 64
    new-instance p3, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment$1;

    invoke-direct {p3, p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment$1;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 79
    new-instance p3, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 80
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080084

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 83
    new-instance p2, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    invoke-direct {p2}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;-><init>()V

    iput-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->b:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    .line 84
    iget-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->b:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    iget-object p3, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->g:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$2EUvrk0dLpFsmOxDQF4SxzFGMeE;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$2EUvrk0dLpFsmOxDQF4SxzFGMeE;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V

    invoke-virtual {p2, p0, p3, v0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->setPresenter(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$b;)V

    .line 85
    iget-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->b:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 87
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a:Landroid/view/View;

    const p2, 0x7f090099

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->c:Landroid/widget/TextView;

    .line 88
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->d:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$rdzGLzADhlGqVtMBVPrOIpRVlBg;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$rdzGLzADhlGqVtMBVPrOIpRVlBg;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 93
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->a:Landroid/view/View;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f06012f
        0x7f0600ae
        0x7f060036
    .end array-data
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->g:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;->start()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 139
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->g:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;->start()V

    return-void
.end method

.method public setPresenter(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V
    .locals 0
    .param p1    # Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->g:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    check-cast p1, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->setPresenter(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V

    return-void
.end method

.method public showCongratulationsDialog(II)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0039

    const/4 v3, 0x0

    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090096

    .line 201
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 202
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f090095

    .line 203
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 204
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f00a7

    .line 207
    invoke-virtual {p0, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$OKW_7hNhXC7K02VL48huIc8ICKE;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$OKW_7hNhXC7K02VL48huIc8ICKE;

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showTaskDetailDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 217
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    sget-object v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$DFu3GO3uBV8hYoU877jBWuC_mro;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListFragment$DFu3GO3uBV8hYoU877jBWuC_mro;

    .line 218
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showWaitingDialog(I)V
    .locals 2

    .line 174
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    .line 175
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 176
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u540c\u6b65\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 178
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 179
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 180
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public toggleNotice(Ljava/lang/Boolean;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateWaitingDialog(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
