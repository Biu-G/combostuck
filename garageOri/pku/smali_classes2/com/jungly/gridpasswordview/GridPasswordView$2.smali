.class Lcom/jungly/gridpasswordview/GridPasswordView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jungly/gridpasswordview/imebugfixer/ImeDelBugFixedEditText$OnDelKeyEventListener;


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

    .line 207
    iput-object p1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$2;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView$2;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 212
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$2;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$2;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/jungly/gridpasswordview/GridPasswordView;->b(Lcom/jungly/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v1

    aput-object v2, v1, v0

    .line 214
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$2;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/jungly/gridpasswordview/GridPasswordView;->c(Lcom/jungly/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/jungly/gridpasswordview/GridPasswordView$2;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v0}, Lcom/jungly/gridpasswordview/GridPasswordView;->d(Lcom/jungly/gridpasswordview/GridPasswordView;)V

    goto :goto_1

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/jungly/gridpasswordview/GridPasswordView$2;->a:Lcom/jungly/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/jungly/gridpasswordview/GridPasswordView;->c(Lcom/jungly/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
