.class public Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;


# instance fields
.field private a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;


# direct methods
.method public constructor <init>(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;)V
    .locals 0
    .param p1    # Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    .line 19
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {p1, p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->setPresenter(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f0f0124

    invoke-interface {p1, v2, v0, v1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->cancelRefresh()V

    return-void
.end method

.method private synthetic a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->getTaskCardAdapter()Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->refreshList()V

    .line 47
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    const v0, 0x7f0f0125

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->cancelRefresh()V

    return-void
.end method

.method public static synthetic lambda$4KM9nZ9TfinzDbDl5H38NlClCyI(Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$q5IGBdc1AaHqNU-75bINybZcO1c(Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public refreshList()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->getTaskCardAdapter()Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->notifyDataInvalid()V

    .line 30
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->getTaskCardAdapter()Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->notifyDataSetChanged()V

    .line 31
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->getTaskCardAdapter()Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->toggleNotice(Ljava/lang/Boolean;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->refreshList()V

    return-void
.end method

.method public syncData()V
    .locals 4

    .line 36
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    const v1, 0x7f0f0129

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;->a:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->cancelRefresh()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getTasksFromServer()Lio/reactivex/Observable;

    move-result-object v0

    .line 41
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListPresenter$4KM9nZ9TfinzDbDl5H38NlClCyI;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListPresenter$4KM9nZ9TfinzDbDl5H38NlClCyI;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;)V

    new-instance v2, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListPresenter$q5IGBdc1AaHqNU-75bINybZcO1c;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskListPresenter$q5IGBdc1AaHqNU-75bINybZcO1c;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;)V

    .line 42
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method
