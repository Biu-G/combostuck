.class Landroid/support/v7/widget/b$b;
.super Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/b;)V
    .locals 0

    .line 814
    iput-object p1, p0, Landroid/support/v7/widget/b$b;->a:Landroid/support/v7/widget/b;

    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/b$b;->a:Landroid/support/v7/widget/b;

    iget-object v0, v0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/b$b;->a:Landroid/support/v7/widget/b;

    iget-object v0, v0, Landroid/support/v7/widget/b;->c:Landroid/support/v7/widget/b$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/b$a;->getPopup()Landroid/support/v7/view/menu/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
