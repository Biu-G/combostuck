.class Lcom/jungly/gridpasswordview/GridPasswordView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 224
    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 238
    iget-object p2, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p2}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object p2

    aput-object p1, p2, p3

    .line 239
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->d(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    goto/16 :goto_2

    .line 240
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 241
    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v0

    aput-object p1, v0, p2

    .line 245
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->c(Lcom/jungly/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->d(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 250
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->e(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->e(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p2}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->e(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lt p1, p4, :cond_4

    .line 253
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->e(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->setSelection(I)V

    .line 255
    :cond_4
    iget-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$3;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {p1}, Lcom/jungly/gridpasswordview/GridPasswordView;->e(Lcom/jungly/gridpasswordview/GridPasswordView;)Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_5
    :goto_2
    return-void
.end method
