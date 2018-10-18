.class Landroid/support/v7/widget/b$e;
.super Landroid/support/v7/view/menu/MenuPopupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/b;Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    .line 729
    iput-object p1, p0, Landroid/support/v7/widget/b$e;->a:Landroid/support/v7/widget/b;

    .line 730
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 731
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/b$e;->setGravity(I)V

    .line 732
    iget-object p1, p1, Landroid/support/v7/widget/b;->e:Landroid/support/v7/widget/b$f;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/b$e;->setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 737
    iget-object v0, p0, Landroid/support/v7/widget/b$e;->a:Landroid/support/v7/widget/b;

    invoke-static {v0}, Landroid/support/v7/widget/b;->a(Landroid/support/v7/widget/b;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/b$e;->a:Landroid/support/v7/widget/b;

    invoke-static {v0}, Landroid/support/v7/widget/b;->b(Landroid/support/v7/widget/b;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 740
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b$e;->a:Landroid/support/v7/widget/b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/b$e;

    .line 742
    invoke-super {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
