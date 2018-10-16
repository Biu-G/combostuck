.class public interface abstract Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/Contract/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/edu/pku/pkurunner/Contract/BaseView<",
        "Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract callSystemCamera(Ljava/io/File;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancelRefresh()V
.end method

.method public abstract dismissWaitDialog()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getExternalPhotoDir()Ljava/io/File;
.end method

.method public abstract getMainActivity()Lcn/edu/pku/pkurunner/MainActivity;
.end method

.method public abstract getRecordCardAdapter()Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;
.end method

.method public abstract launchIaaaLogin()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public varargs abstract makeSnackBar(II[Ljava/lang/Object;)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public varargs abstract makeToast(II[Ljava/lang/Object;)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract scrollRecyclerViewToTop()V
.end method

.method public abstract setWaitingDialogMessage(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showConfirmDialog(II)Lio/reactivex/Observable;
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showPhotoDialog(II)Lio/reactivex/Observable;
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showRecordDetailSheet(Landroid/os/Bundle;)V
.end method

.method public abstract showWaitingDialog()V
.end method

.method public abstract toggleLoadingNotice(Z)V
.end method

.method public abstract toggleNoDataNotice(Z)V
.end method
