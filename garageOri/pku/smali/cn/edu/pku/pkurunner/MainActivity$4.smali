.class Lcn/edu/pku/pkurunner/MainActivity$4;
.super Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/MainActivity;->i()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/MainActivity;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/MainActivity;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity$4;->a:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-direct {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 550
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity$4;->a:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/MainActivity;->switchFromRecordListToRunning()V

    return-void
.end method
