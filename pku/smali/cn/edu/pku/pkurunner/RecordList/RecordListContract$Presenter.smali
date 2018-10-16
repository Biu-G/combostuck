.class public interface abstract Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/Contract/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract deleteRecord(II)V
.end method

.method public abstract refreshList()V
.end method

.method public abstract showRecordDetail(I)V
.end method

.method public abstract start(Z)V
.end method

.method public abstract syncData()V
.end method

.method public abstract uploadVerifyRecord(II)V
.end method
