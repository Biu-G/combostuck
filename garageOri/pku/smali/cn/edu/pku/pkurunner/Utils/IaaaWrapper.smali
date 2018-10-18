.class public abstract Lcn/edu/pku/pkurunner/Utils/IaaaWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Utils/IaaaWrapper$IAAAException;
    }
.end annotation


# static fields
.field public static final ACTIVITY_iAAA:I = 0x673

.field public static final EXTRA_iAAA_APPID:Ljava/lang/String; = "iAAA_APPID"

.field public static final EXTRA_iAAA_RESULT:Ljava/lang/String; = "iAAA_RESULT"

.field public static final EXTRA_iAAA_TOKEN:Ljava/lang/String; = "iAAA_TOKEN"

.field public static final EXTRA_iAAA_UID:Ljava/lang/String; = "iAAA_UID"

.field public static final RESULT_CANCEL:Ljava/lang/String; = "cancel"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HandleIaaaResult(Landroid/content/Context;IILandroid/content/Intent;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Landroid/content/Intent;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;

    invoke-direct {v0, p1, p2, p3, p0}, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$IaaaWrapper$KcwTb2E_pHxJqRDpLwr1_it_RoE;-><init>(IILandroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 59
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static LaunchIaaaLogin(Landroid/app/Activity;)V
    .locals 3

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "iAAA_APPID"

    const-string v2, "PKU_Runner"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x673

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static LaunchIaaaLogin(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "iAAA_APPID"

    const-string v2, "PKU_Runner"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x673

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static synthetic a(IILandroid/content/Intent;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x673

    if-ne p0, v0, :cond_2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "iAAA_RESULT"

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cancel"

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    new-instance p0, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper$IAAAException;

    const p1, 0x7f0f0001

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper$IAAAException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "iAAA_UID"

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "iAAA_TOKEN"

    .line 51
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper$IAAAException;

    const p1, 0x7f0f0003

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper$IAAAException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$KcwTb2E_pHxJqRDpLwr1_it_RoE(IILandroid/content/Intent;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper;->a(IILandroid/content/Intent;Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
