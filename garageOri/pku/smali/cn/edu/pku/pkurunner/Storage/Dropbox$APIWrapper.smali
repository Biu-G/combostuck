.class public abstract Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Storage/Dropbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "APIWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "storage-dropbox"

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "access-token"

    const/4 v1, 0x0

    .line 22
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "access-token"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    if-nez v0, :cond_1

    .line 31
    new-instance p0, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;-><init>(I)V

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getUid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user-id"

    .line 36
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "user-id"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    :cond_2
    invoke-static {v0}, Lcn/edu/pku/pkurunner/Storage/Dropbox$ClientFactory;->init(Ljava/lang/String;)V

    .line 42
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static getToken(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcn/edu/pku/pkurunner/Storage/-$$Lambda$Dropbox$APIWrapper$BP0b9MjrevyUlEAUD_VLSXnCjEs;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Storage/-$$Lambda$Dropbox$APIWrapper$BP0b9MjrevyUlEAUD_VLSXnCjEs;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 43
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static hasToken(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "storage-dropbox"

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "access-token"

    const/4 v2, 0x0

    .line 48
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic lambda$BP0b9MjrevyUlEAUD_VLSXnCjEs(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper;->a(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
