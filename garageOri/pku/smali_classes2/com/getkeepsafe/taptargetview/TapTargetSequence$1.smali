.class Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;
.super Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetSequence;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    invoke-direct {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOuterCircleClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->b:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    :cond_0
    return-void
.end method

.method public onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 228
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-boolean v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->c:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;->onSequenceStep(Lcom/getkeepsafe/taptargetview/TapTarget;Z)V

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    invoke-virtual {p1}, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a()V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    invoke-interface {v0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;->onSequenceCanceled(Lcom/getkeepsafe/taptargetview/TapTarget;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 212
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->n:Lcom/getkeepsafe/taptargetview/TapTarget;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/getkeepsafe/taptargetview/TapTargetSequence$Listener;->onSequenceStep(Lcom/getkeepsafe/taptargetview/TapTarget;Z)V

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetSequence$1;->a:Lcom/getkeepsafe/taptargetview/TapTargetSequence;

    invoke-virtual {p1}, Lcom/getkeepsafe/taptargetview/TapTargetSequence;->a()V

    return-void
.end method
