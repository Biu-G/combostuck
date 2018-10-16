.class public abstract Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 23
    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->downloadLatestVersion(Landroid/content/Context;Z)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f000f

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f000c

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$ClientUpdateNotice$bNexrmZiKbOSfbHwitxnffB7OTc;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$ClientUpdateNotice$bNexrmZiKbOSfbHwitxnffB7OTc;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0f000e

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$ClientUpdateNotice$65uH3G4TDIs8aGfFiKlu4Q52Csk;

    invoke-direct {v0, p1}, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$ClientUpdateNotice$65uH3G4TDIs8aGfFiKlu4Q52Csk;-><init>(Lio/reactivex/ObservableEmitter;)V

    const p1, 0x7f0f000d

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static downloadLatestVersion(Landroid/content/Context;Z)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "https://github.com/pku-runner/pku-runner.github.io/releases/latest"

    goto :goto_0

    :cond_0
    const-string p1, "https://pkunewyouth.pku.edu.cn/public/apks/pkurunner-latest.apk"

    .line 32
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$65uH3G4TDIs8aGfFiKlu4Q52Csk(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$aD-3QTIMVj1fxMbqdaFWMe6lLFY(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$bNexrmZiKbOSfbHwitxnffB7OTc(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->a(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static showVersionLowDialog(Landroid/content/Context;)Lio/reactivex/Observable;
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

    .line 20
    new-instance v0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$ClientUpdateNotice$aD-3QTIMVj1fxMbqdaFWMe6lLFY;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$ClientUpdateNotice$aD-3QTIMVj1fxMbqdaFWMe6lLFY;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 27
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
