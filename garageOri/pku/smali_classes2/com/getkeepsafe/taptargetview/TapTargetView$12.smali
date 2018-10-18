.class Lcom/getkeepsafe/taptargetview/TapTargetView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTarget;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;Lcom/getkeepsafe/taptargetview/TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->a:Lcom/getkeepsafe/taptargetview/TapTarget;

    iput-object p3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->b()V

    .line 437
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->a:Lcom/getkeepsafe/taptargetview/TapTarget;

    new-instance v1, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;

    invoke-direct {v1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView$12;)V

    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->onReady(Ljava/lang/Runnable;)V

    return-void
.end method
