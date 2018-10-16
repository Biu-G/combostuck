.class Lcom/getkeepsafe/taptargetview/TapTargetView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/taptargetview/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$10;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$10;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Z)V

    .line 344
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$10;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->m:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$10;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {v0, v1}, Lcom/getkeepsafe/taptargetview/f;->a(Landroid/view/ViewManager;Landroid/view/View;)V

    return-void
.end method
