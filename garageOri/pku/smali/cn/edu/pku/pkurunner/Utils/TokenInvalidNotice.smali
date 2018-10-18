.class public abstract Lcn/edu/pku/pkurunner/Utils/TokenInvalidNotice;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f004f

    .line 18
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0f004d

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$TokenInvalidNotice$P9OdmPviOjLW7gZNdzrfRPkSJkg;

    invoke-direct {v0, p1}, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$TokenInvalidNotice$P9OdmPviOjLW7gZNdzrfRPkSJkg;-><init>(Lio/reactivex/ObservableEmitter;)V

    const p1, 0x7f0f004e

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$LSg2IUuoGgWPetMHDxUCYlhkrBA(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Utils/TokenInvalidNotice;->a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$P9OdmPviOjLW7gZNdzrfRPkSJkg(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Utils/TokenInvalidNotice;->a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static showTokenInvalidDialog(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$TokenInvalidNotice$LSg2IUuoGgWPetMHDxUCYlhkrBA;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$TokenInvalidNotice$LSg2IUuoGgWPetMHDxUCYlhkrBA;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 23
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
