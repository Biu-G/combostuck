.class Lcom/jungly/gridpasswordview/GridPasswordView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jungly/gridpasswordview/GridPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jungly/gridpasswordview/GridPasswordView;


# direct methods
.method constructor <init>(Lcom/jungly/gridpasswordview/GridPasswordView;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$4;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 269
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x43

    if-ne p1, p2, :cond_0

    .line 270
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$4;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->f(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;->onDeleteClick()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
