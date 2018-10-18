.class public abstract Lcn/edu/pku/pkurunner/Offline/QuickOfflineSignin;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f090074

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputEditText;

    const v2, 0x7f090073

    .line 26
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 28
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;

    invoke-direct {v0, v1, v2, p1}, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$ERlhCsyqeMrJInDWnCR_ZhMhBs4;-><init>(Landroid/support/design/widget/TextInputEditText;Landroid/widget/RadioGroup;Lio/reactivex/ObservableEmitter;)V

    const v1, 0x7f0f0088

    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$XTqUxejQurGY4G3Tg6LYtvdtk-s;

    invoke-direct {v0, p1}, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$XTqUxejQurGY4G3Tg6LYtvdtk-s;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/support/design/widget/TextInputEditText;Landroid/widget/RadioGroup;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7f090072

    if-ne p1, p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 34
    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V
    .locals 1

    .line 37
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Cancelled."

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createDialog(Landroid/app/Activity;)Lio/reactivex/Observable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$sKOP1sRZnjWl6psFtzzZgQ4f-PU;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$sKOP1sRZnjWl6psFtzzZgQ4f-PU;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 40
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ERlhCsyqeMrJInDWnCR_ZhMhBs4(Landroid/support/design/widget/TextInputEditText;Landroid/widget/RadioGroup;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/edu/pku/pkurunner/Offline/QuickOfflineSignin;->a(Landroid/support/design/widget/TextInputEditText;Landroid/widget/RadioGroup;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$XTqUxejQurGY4G3Tg6LYtvdtk-s(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Offline/QuickOfflineSignin;->a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$sKOP1sRZnjWl6psFtzzZgQ4f-PU(Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Offline/QuickOfflineSignin;->a(Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
