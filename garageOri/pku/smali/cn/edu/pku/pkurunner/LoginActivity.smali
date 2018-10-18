.class public Lcn/edu/pku/pkurunner/LoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/util/Pair;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 127
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 128
    new-instance v1, Lcn/edu/pku/pkurunner/Model/User;

    invoke-direct {v1, v0, p1}, Lcn/edu/pku/pkurunner/Model/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/edu/pku/pkurunner/Data;->setUser(Lcn/edu/pku/pkurunner/Model/User;)V

    .line 129
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/LoginActivity;->a()V

    .line 130
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->login()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic a(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->loadSpecificUser(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->loadByUser()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 149
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    .line 150
    iget-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 151
    iget-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    const v2, 0x7f0f0005

    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 153
    iget-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 154
    iget-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 91
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance p1, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$LdS0xCyVBN0yyQay9Cr7WNJ7Dm4;

    invoke-direct {p1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$LdS0xCyVBN0yyQay9Cr7WNJ7Dm4;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$I71DnGdAUMA4_2kz77H6GKwMmrs;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$I71DnGdAUMA4_2kz77H6GKwMmrs;

    .line 98
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 102
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$z0h8qY8afjz-UnwRYRMeIS2s2ck;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$z0h8qY8afjz-UnwRYRMeIS2s2ck;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$y1ojR8oScECxSoBGxrndYXDnrrE;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$y1ojR8oScECxSoBGxrndYXDnrrE;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    .line 103
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getDatabaseUsers()Ljava/util/List;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090012

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no saved offline user."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 82
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/edu/pku/pkurunner/Model/User;

    .line 83
    invoke-virtual {v3}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v3}, Lcn/edu/pku/pkurunner/Model/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0008

    .line 90
    invoke-virtual {p0, v3}, Lcn/edu/pku/pkurunner/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0f0007

    .line 91
    invoke-virtual {p0, v3}, Lcn/edu/pku/pkurunner/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$Iz7qXUEBLzYT8-7QfBOxkNvk9H0;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$Iz7qXUEBLzYT8-7QfBOxkNvk9H0;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$niYgiFoLVmkpeUWIkKrIj6dDQ7o;

    invoke-direct {v3, v2, p1}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$niYgiFoLVmkpeUWIkKrIj6dDQ7o;-><init>(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    .line 92
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4

    .line 163
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Exception/ServerException;

    if-eqz v0, :cond_0

    .line 164
    move-object v0, p1

    check-cast v0, Lcn/edu/pku/pkurunner/Exception/ServerException;

    .line 165
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Exception/ServerException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v1, v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/LoginActivity;->b()V

    return-void

    .line 172
    :cond_0
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper$IAAAException;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0004

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcn/edu/pku/pkurunner/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 175
    :goto_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 93
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/Model/User;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/User;->getId()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, ""

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    return v1

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic b(Landroid/util/Pair;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 55
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 56
    invoke-direct {p0, v0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    invoke-static {p1, v0}, Lcn/edu/pku/pkurunner/Model/User;->createOfflineUser(ILjava/lang/String;)Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->setUser(Lcn/edu/pku/pkurunner/Model/User;)V

    .line 59
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->saveUserToDatabase()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const v0, 0x7f0f000a

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 179
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->showVersionLowDialog(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    .line 180
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$lBhO2QwPQkHAH16lPD0bHxOANt4;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$lBhO2QwPQkHAH16lPD0bHxOANt4;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    .line 181
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Offline/QuickOfflineSignin;->createDialog(Landroid/app/Activity;)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$DrhxqQ0gQSfXOL36pOPFOJlLh6Y;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$DrhxqQ0gQSfXOL36pOPFOJlLh6Y;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    .line 53
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$76WmMWiWGFIRlYLD4L-ba17NSn4;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$76WmMWiWGFIRlYLD4L-ba17NSn4;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$n5XOTCVj1zJkOUDMmrunOzcOhjE;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$n5XOTCVj1zJkOUDMmrunOzcOhjE;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    .line 65
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic b(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object p1, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/LoginActivity;->finish()V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/edu/pku/pkurunner/LoginActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper;->LaunchIaaaLogin(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/LoginActivity;->finish()V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    instance-of v0, p1, Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0009

    const/4 v2, 0x1

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcn/edu/pku/pkurunner/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic d(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/LoginActivity;->finish()V

    return-void
.end method

.method private synthetic d(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic lambda$1_xgIslBHjpruAXjQPTB3aHr5ao(Lcn/edu/pku/pkurunner/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$76WmMWiWGFIRlYLD4L-ba17NSn4(Lcn/edu/pku/pkurunner/LoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$9t2_m1YP78AA2Jb8uOVKb_D0efI(Lcn/edu/pku/pkurunner/LoginActivity;Landroid/util/Pair;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Landroid/util/Pair;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$DrhxqQ0gQSfXOL36pOPFOJlLh6Y(Lcn/edu/pku/pkurunner/LoginActivity;Landroid/util/Pair;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->b(Landroid/util/Pair;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$I71DnGdAUMA4_2kz77H6GKwMmrs(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Iz7qXUEBLzYT8-7QfBOxkNvk9H0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$Jc0edaaKmkHb-2fNiXlHXcXWZoQ(Lcn/edu/pku/pkurunner/LoginActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$LdS0xCyVBN0yyQay9Cr7WNJ7Dm4(Lcn/edu/pku/pkurunner/LoginActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$d6VHadpb7dR5G5pGVifj8hdiUrY(Lcn/edu/pku/pkurunner/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$jETAjfkzl4DzWBCb_7nh-Gg6IZQ(Lcn/edu/pku/pkurunner/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$lBhO2QwPQkHAH16lPD0bHxOANt4(Lcn/edu/pku/pkurunner/LoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$n5XOTCVj1zJkOUDMmrunOzcOhjE(Lcn/edu/pku/pkurunner/LoginActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$niYgiFoLVmkpeUWIkKrIj6dDQ7o(Ljava/util/List;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/LoginActivity;->a(Ljava/util/List;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$y1ojR8oScECxSoBGxrndYXDnrrE(Lcn/edu/pku/pkurunner/LoginActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$y_nJKiFuZyUyEvPTYCimsVLwZdI(Lcn/edu/pku/pkurunner/LoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$z0h8qY8afjz-UnwRYRMeIS2s2ck(Lcn/edu/pku/pkurunner/LoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->c(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    invoke-static {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/Utils/IaaaWrapper;->HandleIaaaResult(Landroid/content/Context;IILandroid/content/Intent;)Lio/reactivex/Observable;

    move-result-object p1

    .line 124
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$9t2_m1YP78AA2Jb8uOVKb_D0efI;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$9t2_m1YP78AA2Jb8uOVKb_D0efI;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    .line 125
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 132
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$y_nJKiFuZyUyEvPTYCimsVLwZdI;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$y_nJKiFuZyUyEvPTYCimsVLwZdI;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    new-instance p3, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$Jc0edaaKmkHb-2fNiXlHXcXWZoQ;

    invoke-direct {p3, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$Jc0edaaKmkHb-2fNiXlHXcXWZoQ;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    .line 133
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/LoginActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0c001d

    .line 37
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "logout"

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->setUser(Lcn/edu/pku/pkurunner/Model/User;)V

    .line 42
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->setUserStatus(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V

    .line 43
    invoke-static {v1}, Lcn/edu/pku/pkurunner/Data;->setValid(Z)V

    .line 44
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->saveCurrentUserIdToFile()V

    :cond_0
    const p1, 0x7f090007

    .line 47
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 48
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$d6VHadpb7dR5G5pGVifj8hdiUrY;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$d6VHadpb7dR5G5pGVifj8hdiUrY;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090008

    .line 50
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 51
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$jETAjfkzl4DzWBCb_7nh-Gg6IZQ;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$jETAjfkzl4DzWBCb_7nh-Gg6IZQ;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090009

    .line 70
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 71
    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$1_xgIslBHjpruAXjQPTB3aHr5ao;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$1_xgIslBHjpruAXjQPTB3aHr5ao;-><init>(Lcn/edu/pku/pkurunner/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
