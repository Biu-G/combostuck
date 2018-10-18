.class Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;


# direct methods
.method public constructor <init>(Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;->a:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    .line 39
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 57
    new-instance p1, Landroid/view/KeyEvent;

    const/16 p2, 0x43

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v0, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 60
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;->a:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    invoke-static {v0}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->a(Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;->a:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->a(Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;->onDeleteClick()V

    const/4 p1, 0x1

    return p1

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
