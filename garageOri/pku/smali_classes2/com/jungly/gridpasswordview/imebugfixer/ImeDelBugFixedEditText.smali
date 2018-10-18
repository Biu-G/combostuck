.class public Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;,
        Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;
    }
.end annotation


# instance fields
.field private a:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->a:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    return-object p0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 33
    new-instance v0, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$a;-><init>(Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public setDelKeyEventListener(Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->a:Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;

    return-void
.end method
