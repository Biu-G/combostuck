.class Landroid/support/v7/view/menu/d$a;
.super Landroid/support/v7/view/menu/MenuItemWrapperICS$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field c:Landroid/support/v4/view/ActionProvider$VisibilityListener;

.field final synthetic d:Landroid/support/v7/view/menu/d;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/d;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 51
    iput-object p1, p0, Landroid/support/v7/view/menu/d$a;->d:Landroid/support/v7/view/menu/d;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/MenuItemWrapperICS$a;-><init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/support/v7/view/menu/d$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/support/v7/view/menu/d$a;->c:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/view/menu/d$a;->c:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/support/v7/view/menu/d$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/support/v7/view/menu/d$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/support/v7/view/menu/d$a;->a:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    return-void
.end method

.method public setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V
    .locals 1

    .line 77
    iput-object p1, p0, Landroid/support/v7/view/menu/d$a;->c:Landroid/support/v4/view/ActionProvider$VisibilityListener;

    .line 78
    iget-object v0, p0, Landroid/support/v7/view/menu/d$a;->a:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method
