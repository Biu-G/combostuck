.class Landroid/support/v7/widget/b$a;
.super Landroid/support/v7/view/menu/MenuPopupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/b;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 6

    .line 747
    iput-object p1, p0, Landroid/support/v7/widget/b$a;->a:Landroid/support/v7/widget/b;

    .line 748
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 750
    invoke-virtual {p3}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 751
    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p2

    if-nez p2, :cond_1

    .line 753
    iget-object p2, p1, Landroid/support/v7/widget/b;->a:Landroid/support/v7/widget/b$d;

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/b;->c(Landroid/support/v7/widget/b;)Landroid/support/v7/view/menu/MenuView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroid/support/v7/widget/b;->a:Landroid/support/v7/widget/b$d;

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/b$a;->setAnchorView(Landroid/view/View;)V

    .line 756
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/b;->e:Landroid/support/v7/widget/b$f;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/b$a;->setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/b$a;->a:Landroid/support/v7/widget/b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/b$a;

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/b$a;->a:Landroid/support/v7/widget/b;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/b;->f:I

    .line 764
    invoke-super {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
