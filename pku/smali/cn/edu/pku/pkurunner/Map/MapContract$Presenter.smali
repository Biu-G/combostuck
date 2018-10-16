.class public interface abstract Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/Contract/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/MapContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract isRunning()Z
.end method

.method public abstract isRunningPaused()Z
.end method

.method public abstract onFabPauseClick(Z)Z
.end method

.method public abstract onFabRunClick(Z)Z
.end method

.method public abstract onStep()V
.end method

.method public abstract pauseAutoLocating()V
.end method

.method public abstract pauseGPSAssistant()V
.end method

.method public abstract startAutoLocating()V
.end method

.method public abstract startGPSAssistant()V
.end method

.method public abstract stopAndSwitchToIdle()V
.end method

.method public abstract syncData()V
.end method

.method public abstract syncOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract updateUnitPreference()V
.end method
