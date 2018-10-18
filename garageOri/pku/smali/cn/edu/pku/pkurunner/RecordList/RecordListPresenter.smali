.class public Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;


# instance fields
.field private a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

.field private b:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;)V
    .locals 0
    .param p1    # Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    .line 41
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1, p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->setPresenter(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 269
    :try_start_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getExternalPhotoDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Photo/PhotoFile;->createPhotoFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v1, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->callSystemCamera(Ljava/io/File;)Lio/reactivex/Observable;

    move-result-object v1

    .line 276
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;

    invoke-direct {v2, p0, v0, p1}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/io/File;Lcn/edu/pku/pkurunner/Model/Record;)V

    .line 277
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 290
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    new-instance v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0104

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(IILjava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 210
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->deleteRecordById(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const p3, 0x7f0f00f7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, v0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyItemChanged(I)V

    .line 214
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter$1;->a:[I

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "???"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "cancel"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/4 p1, 0x1

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 113
    :pswitch_2
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->b(Lcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 111
    :pswitch_3
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Lcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic a(Ljava/io/File;Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    .line 280
    new-instance p1, Ljava/lang/Throwable;

    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f0106

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 282
    :cond_0
    iget-object p3, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getExternalPhotoDir()Ljava/io/File;

    move-result-object p3

    new-instance v0, Lid/zelory/compressor/Compressor;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    .line 283
    invoke-interface {v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lid/zelory/compressor/Compressor;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p3, v0, p1}, Lcn/edu/pku/pkurunner/Photo/PhotoCompression;->compressPhoto(Ljava/io/File;Lid/zelory/compressor/Compressor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p2, p1}, Lcn/edu/pku/pkurunner/Data;->setPhotoForRecord(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    new-instance p1, Ljava/lang/Throwable;

    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f0103

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->scrollRecyclerViewToTop()V

    .line 63
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyFirstElementElevation()V

    :cond_0
    return-void
.end method

.method private synthetic a(IILandroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p3, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->handleIaaaLogin(Landroid/util/Pair;II)V

    return-void
.end method

.method private synthetic a(ILcn/edu/pku/pkurunner/Model/Record;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/Record;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f010d

    goto :goto_0

    :cond_0
    const v1, 0x7f0f010b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v2, 0x7f0f010c

    const/4 v3, -0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/Record;->isVerified()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p2, ""

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/Record;->getInvalidReason()I

    move-result p2

    invoke-static {p2}, Lcn/edu/pku/pkurunner/Exception/ServerException;->getLocalizedMessage(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    aput-object p2, v4, v0

    .line 156
    invoke-interface {v1, v2, v3, v4}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 159
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyItemChanged(I)V

    .line 161
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->refreshUserStatus()Lio/reactivex/Observable;

    move-result-object p1

    .line 162
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$eUaeOkal5SEjord7ovU_PaBn29A;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$eUaeOkal5SEjord7ovU_PaBn29A;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Wk1fmF_shBg1iVw3hiw-E7PMhRo;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Wk1fmF_shBg1iVw3hiw-E7PMhRo;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 163
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 174
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->dismissWaitDialog()V

    return-void
.end method

.method private synthetic a(ILjava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 222
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v1, 0x7f0f00fb

    const/4 v2, -0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, v1, v2, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 223
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyDataInvalid()V

    .line 224
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const p2, 0x7f0f00fa

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Record;ILio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->isDetailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {p2, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->getSingleRecordFromServer(I)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$CwNn8qJkSDYfulJpLxnhJPG3NPE;

    invoke-direct {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$CwNn8qJkSDYfulJpLxnhJPG3NPE;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;

    invoke-direct {v0, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 247
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method private synthetic a(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getMainActivity()Lcn/edu/pku/pkurunner/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/MainActivity;->refreshUserStatusNotice()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->dismissWaitDialog()V

    .line 261
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0f00fe

    invoke-interface {v0, p1, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeToast(II[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyDataInvalid()V

    .line 88
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->toggleNoDataNotice(Z)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v1, 0x7f0f010a

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->cancelRefresh()V

    return-void
.end method

.method private b(Lcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getLastUsedPhoto()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance p1, Ljava/lang/Throwable;

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 300
    :cond_0
    invoke-static {p1, v0}, Lcn/edu/pku/pkurunner/Data;->setPhotoForRecord(Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic b(ILjava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->uploadRecordToServer(I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f0f00f9

    invoke-interface {v0, p1, v2, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->login()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Lcn/edu/pku/pkurunner/Model/Record;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->dismissWaitDialog()V

    .line 255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "record"

    .line 256
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->showRecordDetailSheet(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Exception/ServerException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 178
    move-object v0, p1

    check-cast v0, Lcn/edu/pku/pkurunner/Exception/ServerException;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Exception/ServerException;->getErrorCode()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_0

    .line 179
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v0, 0x7f0f0102

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 180
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->showVersionLowDialog(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    .line 181
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$xXMlIUaclMRt_YT3BRJ7hw_yg4c;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$xXMlIUaclMRt_YT3BRJ7hw_yg4c;

    .line 182
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v3, 0x7f0f0101

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v2, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_1
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Exception/DataException;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v3, 0x7f0f00ff

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v2, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v3, 0x7f0f0100

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v2, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeSnackBar(II[Ljava/lang/Object;)V

    .line 192
    :goto_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->dismissWaitDialog()V

    return-void
.end method

.method private synthetic d(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->launchIaaaLogin()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic d(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Exception/ServerException;

    if-eqz v0, :cond_0

    check-cast p1, Lcn/edu/pku/pkurunner/Exception/ServerException;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Exception/ServerException;->getErrorCode()I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->showVersionLowDialog(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    .line 168
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$8GUMcuYdQRSPGN8ArBeFZ92Qukg;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$8GUMcuYdQRSPGN8ArBeFZ92Qukg;

    .line 169
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private synthetic e(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->showWaitingDialog()V

    .line 129
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v0, 0x7f0f010f

    invoke-interface {p1, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->setWaitingDialogMessage(I)V

    const/4 p1, 0x1

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic e(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f0f0109

    invoke-interface {v0, p1, v2, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->cancelRefresh()V

    return-void
.end method

.method public static synthetic lambda$5An_RL-PczYVDiUfPn1CU6R4Zv4(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$8GUMcuYdQRSPGN8ArBeFZ92Qukg(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$DA-e70eP_hhYCrqg6yOzCsU_qdQ(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->d(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$EBdi0g2AXFLY5wnz49vMLZsWtLk(ILjava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->b(ILjava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$F1qV9parfRHK3OX61PYRaDEkCCY(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$Gyh0hH67M0_HK2UZr4CHrWLHYQI(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;ILcn/edu/pku/pkurunner/Model/Record;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(ILcn/edu/pku/pkurunner/Model/Record;)V

    return-void
.end method

.method public static synthetic lambda$M-koaPgwP2Xdyf-Wx--yN37Qj04(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$NAqtrOkTwe8dddL7P45qVFfTDJs(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->c(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Q-sCTOsGI-ZIwQM0mrF7_x9rF6w(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$RkXN8f-ZcZIRpRWbr0_GiJ30yq0(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;IILjava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(IILjava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$S4QcdbDTcV5r-go3wO9pB5wtyq8(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$UA-Oyjxv4TzbopTJCg-u88c5qJ0(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$WEddssAP6mOLF7LHIgZJEiZUU9I(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;IILandroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(IILandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic lambda$Wk1fmF_shBg1iVw3hiw-E7PMhRo(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$Ws6RBo0i2jO0CCLbAyfPd-KiuFk(Lcn/edu/pku/pkurunner/Model/Record;ILio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Lcn/edu/pku/pkurunner/Model/Record;ILio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$eQ8yGUcbZ5ENUsPZwaquXpwtJhY(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Lcn/edu/pku/pkurunner/Model/Record;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->c(Lcn/edu/pku/pkurunner/Model/Record;)V

    return-void
.end method

.method public static synthetic lambda$eUaeOkal5SEjord7ovU_PaBn29A(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V

    return-void
.end method

.method public static synthetic lambda$e_CHSI5w0ngqjDxgfEx-iSJ9ZBM(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/io/File;Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Ljava/io/File;Lcn/edu/pku/pkurunner/Model/Record;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$qmGJgpQ4uvz-1GbYycUdi3DV5PM(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->e(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$xXMlIUaclMRt_YT3BRJ7hw_yg4c(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$zbTduRgE5DVTV8nrjih2ftc_z6w(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a(ILjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public deleteRecord(II)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v1, 0x7f0f00fc

    const v2, 0x7f0f00f8

    invoke-interface {v0, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->showConfirmDialog(II)Lio/reactivex/Observable;

    move-result-object v0

    .line 207
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;

    invoke-direct {v1, p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$RkXN8f-ZcZIRpRWbr0_GiJ30yq0;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;II)V

    .line 208
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 218
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$zbTduRgE5DVTV8nrjih2ftc_z6w;

    invoke-direct {v0, p0, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$zbTduRgE5DVTV8nrjih2ftc_z6w;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;I)V

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$M-koaPgwP2Xdyf-Wx--yN37Qj04;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$M-koaPgwP2Xdyf-Wx--yN37Qj04;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 219
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public handleIaaaLogin(Landroid/util/Pair;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v1, 0x7f0f010e

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->setWaitingDialogMessage(I)V

    .line 145
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->changeUserToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 147
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$NAqtrOkTwe8dddL7P45qVFfTDJs;

    .line 148
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 149
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$EBdi0g2AXFLY5wnz49vMLZsWtLk;

    invoke-direct {v0, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$EBdi0g2AXFLY5wnz49vMLZsWtLk;-><init>(I)V

    .line 150
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 151
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Gyh0hH67M0_HK2UZr4CHrWLHYQI;

    invoke-direct {p2, p0, p3}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Gyh0hH67M0_HK2UZr4CHrWLHYQI;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;I)V

    new-instance p3, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$S4QcdbDTcV5r-go3wO9pB5wtyq8;

    invoke-direct {p3, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$S4QcdbDTcV5r-go3wO9pB5wtyq8;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 152
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public handleIaaaLoginError(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "cancel"

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v1, 0x7f0f0100

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v3, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeToast(II[Ljava/lang/Object;)V

    .line 201
    :cond_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->dismissWaitDialog()V

    return-void
.end method

.method public refreshList()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyDataInvalid()V

    .line 70
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->notifyDataSetChanged()V

    .line 71
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->toggleNoDataNotice(Z)V

    .line 72
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->toggleLoadingNotice(Z)V

    return-void
.end method

.method public showRecordDetail(I)V
    .locals 3

    .line 234
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->getSingleRecord(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    iget-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v0, 0x7f0f00fd

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->makeToast(II[Ljava/lang/Object;)V

    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->showWaitingDialog()V

    .line 241
    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v2, 0x7f0f010e

    invoke-interface {v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->setWaitingDialogMessage(I)V

    .line 242
    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Ws6RBo0i2jO0CCLbAyfPd-KiuFk;

    invoke-direct {v1, v0, p1}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Ws6RBo0i2jO0CCLbAyfPd-KiuFk;-><init>(Lcn/edu/pku/pkurunner/Model/Record;I)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 250
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 251
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$eQ8yGUcbZ5ENUsPZwaquXpwtJhY;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$eQ8yGUcbZ5ENUsPZwaquXpwtJhY;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$5An_RL-PczYVDiUfPn1CU6R4Zv4;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$5An_RL-PczYVDiUfPn1CU6R4Zv4;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 252
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->start(Z)V

    return-void
.end method

.method public start(Z)V
    .locals 2

    .line 51
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->toggleLoadingNotice(Z)V

    .line 53
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->refreshList()V

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a()V

    :cond_0
    return-void
.end method

.method public syncData()V
    .locals 3

    .line 77
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->cancelRefresh()V

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getRecordsFromServer()Lio/reactivex/Observable;

    move-result-object v0

    .line 83
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$F1qV9parfRHK3OX61PYRaDEkCCY;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$F1qV9parfRHK3OX61PYRaDEkCCY;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    new-instance v2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Q-sCTOsGI-ZIwQM0mrF7_x9rF6w;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$Q-sCTOsGI-ZIwQM0mrF7_x9rF6w;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 84
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public uploadVerifyRecord(II)V
    .locals 4

    .line 103
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Data;->getSingleRecord(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;->a:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;

    const v2, 0x7f0f0108

    const v3, 0x7f0f0107

    invoke-interface {v1, v2, v3}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;->showPhotoDialog(II)Lio/reactivex/Observable;

    move-result-object v1

    .line 107
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$UA-Oyjxv4TzbopTJCg-u88c5qJ0;

    invoke-direct {v2, p0, v0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$UA-Oyjxv4TzbopTJCg-u88c5qJ0;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;Lcn/edu/pku/pkurunner/Model/Record;)V

    .line 108
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 126
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$qmGJgpQ4uvz-1GbYycUdi3DV5PM;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$qmGJgpQ4uvz-1GbYycUdi3DV5PM;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 127
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 133
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$DA-e70eP_hhYCrqg6yOzCsU_qdQ;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$DA-e70eP_hhYCrqg6yOzCsU_qdQ;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 134
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 135
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;

    invoke-direct {v1, p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordListPresenter$WEddssAP6mOLF7LHIgZJEiZUU9I;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;II)V

    new-instance p1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$tj-jlNMxKhaOBuaoDCCcEIo7Xsg;

    invoke-direct {p1, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$tj-jlNMxKhaOBuaoDCCcEIo7Xsg;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;)V

    .line 136
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
