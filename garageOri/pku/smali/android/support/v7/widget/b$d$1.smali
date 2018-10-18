.class Landroid/support/v7/widget/b$d$1;
.super Landroid/support/v7/widget/ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/b$d;-><init>(Landroid/support/v7/widget/b;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/b;

.field final synthetic b:Landroid/support/v7/widget/b$d;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/b$d;Landroid/view/View;Landroid/support/v7/widget/b;)V
    .locals 0

    .line 652
    iput-object p1, p0, Landroid/support/v7/widget/b$d$1;->b:Landroid/support/v7/widget/b$d;

    iput-object p3, p0, Landroid/support/v7/widget/b$d$1;->a:Landroid/support/v7/widget/b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/b$d$1;->b:Landroid/support/v7/widget/b$d;

    iget-object v0, v0, Landroid/support/v7/widget/b$d;->a:Landroid/support/v7/widget/b;

    iget-object v0, v0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/b$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 659
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b$d$1;->b:Landroid/support/v7/widget/b$d;

    iget-object v0, v0, Landroid/support/v7/widget/b$d;->a:Landroid/support/v7/widget/b;

    iget-object v0, v0, Landroid/support/v7/widget/b;->b:Landroid/support/v7/widget/b$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/b$e;->getPopup()Landroid/support/v7/view/menu/e;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 664
    iget-object v0, p0, Landroid/support/v7/widget/b$d$1;->b:Landroid/support/v7/widget/b$d;

    iget-object v0, v0, Landroid/support/v7/widget/b$d;->a:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->b()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/b$d$1;->b:Landroid/support/v7/widget/b$d;

    iget-object v0, v0, Landroid/support/v7/widget/b$d;->a:Landroid/support/v7/widget/b;

    iget-object v0, v0, Landroid/support/v7/widget/b;->d:Landroid/support/v7/widget/b$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 677
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b$d$1;->b:Landroid/support/v7/widget/b$d;

    iget-object v0, v0, Landroid/support/v7/widget/b$d;->a:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->c()Z

    const/4 v0, 0x1

    return v0
.end method
