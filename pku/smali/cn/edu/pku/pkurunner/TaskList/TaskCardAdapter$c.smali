.class Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;
.super Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field p:Landroid/widget/Button;

.field q:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 165
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;-><init>(Landroid/view/View;)V

    const v0, 0x7f09013b

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->p:Landroid/widget/Button;

    const v0, 0x7f09013a

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->q:Landroid/widget/Button;

    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 183
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Network/Network;->signUpActivity20180420(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 184
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$Jz7Xm3QN2JJLGCORTjvOeMNteVg;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$Jz7Xm3QN2JJLGCORTjvOeMNteVg;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V

    sget-object p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 185
    invoke-virtual {p1, v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    invoke-interface {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;->syncData()V

    const-string p0, "Sign up blue."

    .line 188
    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Cannot sign up."

    .line 190
    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic b(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 172
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Network/Network;->signUpActivity20180420(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 173
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$CJPHfzVQ3d3i5M_ewdozVgpD-HA;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$CJPHfzVQ3d3i5M_ewdozVgpD-HA;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V

    sget-object p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 174
    invoke-virtual {p1, v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static synthetic b(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    invoke-interface {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;->syncData()V

    const-string p0, "Sign up red."

    .line 177
    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Cannot sign up."

    .line 179
    invoke-static {p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$CJPHfzVQ3d3i5M_ewdozVgpD-HA(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->b(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$IrdvLinCJnPXxjfeC3yiO8IoYhA(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->a(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Jz7Xm3QN2JJLGCORTjvOeMNteVg(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->a(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$ckdpsnL384u4-qUzPnaQ8L6jDhI(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->b(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(Lcn/edu/pku/pkurunner/Model/Task;Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->p:Landroid/widget/Button;

    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$ckdpsnL384u4-qUzPnaQ8L6jDhI;

    invoke-direct {v0, p2}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$ckdpsnL384u4-qUzPnaQ8L6jDhI;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;->q:Landroid/widget/Button;

    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$IrdvLinCJnPXxjfeC3yiO8IoYhA;

    invoke-direct {v0, p2}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$c$IrdvLinCJnPXxjfeC3yiO8IoYhA;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
