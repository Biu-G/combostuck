.class public interface abstract Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/Contract/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/TaskList/TaskListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/edu/pku/pkurunner/Contract/BaseView<",
        "Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancelRefresh()V
.end method

.method public abstract dismissWaitingDialog()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getTaskCardAdapter()Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;
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

.method public abstract showCongratulationsDialog(II)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showTaskDetailDialog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showWaitingDialog(I)V
.end method

.method public abstract toggleNotice(Ljava/lang/Boolean;)V
.end method

.method public abstract updateWaitingDialog(I)V
.end method
