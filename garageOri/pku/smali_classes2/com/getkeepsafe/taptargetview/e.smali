.class Lcom/getkeepsafe/taptargetview/e;
.super Lcom/getkeepsafe/taptargetview/TapTarget;
.source "SourceFile"


# instance fields
.field final o:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/getkeepsafe/taptargetview/TapTarget;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/e;->o:Landroid/view/View;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given null view to target"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onReady(Ljava/lang/Runnable;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/e;->o:Landroid/view/View;

    new-instance v1, Lcom/getkeepsafe/taptargetview/e$1;

    invoke-direct {v1, p0, p1}, Lcom/getkeepsafe/taptargetview/e$1;-><init>(Lcom/getkeepsafe/taptargetview/e;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/getkeepsafe/taptargetview/f;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
