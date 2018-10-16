.class final Landroid/support/v7/app/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/d;


# direct methods
.method constructor <init>(Landroid/support/v7/app/d;)V
    .locals 0

    .line 583
    iput-object p1, p0, Landroid/support/v7/app/d$b;->a:Landroid/support/v7/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4

    .line 593
    iget-object v0, p0, Landroid/support/v7/app/d$b;->a:Landroid/support/v7/app/d;

    iget-object v0, v0, Landroid/support/v7/app/d;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Landroid/support/v7/app/d$b;->a:Landroid/support/v7/app/d;

    iget-object v0, v0, Landroid/support/v7/app/d;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroid/support/v7/app/d$b;->a:Landroid/support/v7/app/d;

    iget-object v0, v0, Landroid/support/v7/app/d;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/d$b;->a:Landroid/support/v7/app/d;

    iget-object v0, v0, Landroid/support/v7/app/d;->c:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Landroid/support/v7/app/d$b;->a:Landroid/support/v7/app/d;

    iget-object v0, v0, Landroid/support/v7/app/d;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    :goto_0
    return-void
.end method
