.class Landroid/support/v7/app/AppCompatDelegateImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImpl;

.field private b:Landroid/support/v7/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 0

    .line 2155
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2156
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->b:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2171
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 2161
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 2176
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 2177
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->j:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2178
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2181
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    .line 2182
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()V

    .line 2183
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2184
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$c$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$c$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$c;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2199
    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz p1, :cond_2

    .line 2200
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 2202
    :cond_2
    iget-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->a:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 2166
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$c;->b:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
