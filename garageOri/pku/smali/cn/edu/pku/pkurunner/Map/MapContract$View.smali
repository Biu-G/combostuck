.class public interface abstract Lcn/edu/pku/pkurunner/Map/MapContract$View;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/Contract/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/MapContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/edu/pku/pkurunner/Contract/BaseView<",
        "Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract dismissNotification()V
.end method

.method public abstract dismissWaitingDialog()V
.end method

.method public abstract getAMap()Lcom/amap/api/maps2d/AMap;
.end method

.method public abstract getActivityFromContract()Lcn/edu/pku/pkurunner/MainActivity;
.end method

.method public abstract getFragmentContext()Landroid/content/Context;
.end method

.method public abstract getLocationListener()Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;
.end method

.method public abstract indicatorShowUpAnimation()V
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

.method public varargs abstract makeWaitingDialog(I[Ljava/lang/Object;)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract notifyGPSInfo()V
.end method

.method public abstract openDevelopSettings()V
.end method

.method public abstract openGPSSettings()V
.end method

.method public abstract registerMapCenterHelper()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract requireWakeLock()V
.end method

.method public varargs abstract setAssistantText(ID[Ljava/lang/Object;)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setLocatingPointEnabled(Z)V
.end method

.method public abstract showNotification()V
.end method

.method public abstract switchToPaused()V
.end method

.method public abstract switchToReset()V
.end method

.method public abstract switchToRunning()V
.end method

.method public abstract toggleGPSAssistantIndication(Z)V
.end method

.method public abstract toggleRunningIndication(Z)V
.end method

.method public abstract unregisterMapCenterHelper()V
.end method

.method public abstract updateTextSci(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)V
.end method

.method public abstract updateTextView(DDDZ)V
.end method

.method public varargs abstract updateWaitingDialog(I[Ljava/lang/Object;)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method
